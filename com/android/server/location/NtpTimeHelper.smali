.class Lcom/android/server/location/NtpTimeHelper;
.super Ljava/lang/Object;
.source "NtpTimeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/NtpTimeHelper$InjectNtpTimeCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final MAX_RETRY_INTERVAL:J = 0xdbba00L

.field static final NTP_INTERVAL:J = 0x5265c00L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final RETRY_INTERVAL:J = 0x493e0L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final STATE_IDLE:I = 0x2

.field private static final STATE_PENDING_NETWORK:I = 0x0

.field private static final STATE_RETRIEVING_AND_INJECTING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NtpTimeHelper"

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "NtpTimeHelper"

.field private static final WAKELOCK_TIMEOUT_MILLIS:J = 0xea60L


# instance fields
.field private final mCallback:Lcom/android/server/location/NtpTimeHelper$InjectNtpTimeCallback;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mConnMgr:Landroid/net/ConnectivityManager;

.field private final mHandler:Landroid/os/Handler;

.field private mInjectNtpTimeState:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mNtpBackOff:Lcom/android/server/location/ExponentialBackOff;

.field private final mNtpTime:Landroid/util/NtpTrustedTime;

.field private mOnDemandTimeInjection:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 27
    const-string v0, "NtpTimeHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/NtpTimeHelper;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/location/NtpTimeHelper$InjectNtpTimeCallback;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "callback"    # Lcom/android/server/location/NtpTimeHelper$InjectNtpTimeCallback;

    .line 88
    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/location/NtpTimeHelper;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/location/NtpTimeHelper$InjectNtpTimeCallback;Landroid/util/NtpTrustedTime;)V

    .line 89
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/location/NtpTimeHelper$InjectNtpTimeCallback;Landroid/util/NtpTrustedTime;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "callback"    # Lcom/android/server/location/NtpTimeHelper$InjectNtpTimeCallback;
    .param p4, "ntpTime"    # Landroid/util/NtpTrustedTime;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/android/server/location/ExponentialBackOff;

    const-wide/32 v1, 0x493e0

    const-wide/32 v3, 0xdbba00

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/location/ExponentialBackOff;-><init>(JJ)V

    iput-object v0, p0, Lcom/android/server/location/NtpTimeHelper;->mNtpBackOff:Lcom/android/server/location/ExponentialBackOff;

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/NtpTimeHelper;->mInjectNtpTimeState:I

    .line 79
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/location/NtpTimeHelper;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 80
    iput-object p3, p0, Lcom/android/server/location/NtpTimeHelper;->mCallback:Lcom/android/server/location/NtpTimeHelper$InjectNtpTimeCallback;

    .line 81
    iput-object p4, p0, Lcom/android/server/location/NtpTimeHelper;->mNtpTime:Landroid/util/NtpTrustedTime;

    .line 82
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/location/NtpTimeHelper;->mHandler:Landroid/os/Handler;

    .line 83
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 84
    .local v0, "powerManager":Landroid/os/PowerManager;
    const-string v1, "NtpTimeHelper"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/NtpTimeHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 85
    return-void
.end method

.method private blockingGetNtpTimeAndInject()V
    .registers 19

    .line 132
    move-object/from16 v9, p0

    const/4 v0, 0x1

    .line 133
    .local v0, "refreshSuccess":Z
    iget-object v1, v9, Lcom/android/server/location/NtpTimeHelper;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v1}, Landroid/util/NtpTrustedTime;->getCacheAge()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    cmp-long v1, v1, v3

    if-ltz v1, :cond_16

    .line 135
    iget-object v1, v9, Lcom/android/server/location/NtpTimeHelper;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v1}, Landroid/util/NtpTrustedTime;->forceRefresh()Z

    move-result v0

    .line 138
    .end local v0    # "refreshSuccess":Z
    .local v10, "refreshSuccess":Z
    :cond_16
    move v10, v0

    monitor-enter p0

    .line 139
    const/4 v0, 0x2

    :try_start_19
    iput v0, v9, Lcom/android/server/location/NtpTimeHelper;->mInjectNtpTimeState:I

    .line 143
    iget-object v1, v9, Lcom/android/server/location/NtpTimeHelper;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v1}, Landroid/util/NtpTrustedTime;->getCacheAge()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-gez v1, :cond_99

    .line 144
    iget-object v1, v9, Lcom/android/server/location/NtpTimeHelper;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v1}, Landroid/util/NtpTrustedTime;->getCachedNtpTime()J

    move-result-wide v1

    move-wide v11, v1

    .line 145
    .local v11, "time":J
    iget-object v1, v9, Lcom/android/server/location/NtpTimeHelper;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v1}, Landroid/util/NtpTrustedTime;->getCachedNtpTimeReference()J

    move-result-wide v1

    move-wide v13, v1

    .line 146
    .local v13, "timeReference":J
    iget-object v1, v9, Lcom/android/server/location/NtpTimeHelper;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v1}, Landroid/util/NtpTrustedTime;->getCacheCertainty()J

    move-result-wide v1

    move-wide v7, v1

    .line 148
    .local v7, "certainty":J
    sget-boolean v1, Lcom/android/server/location/NtpTimeHelper;->DEBUG:Z

    if-eqz v1, :cond_7f

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 150
    .local v1, "now":J
    const-string v3, "NtpTimeHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NTP server returned: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ") reference: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " certainty: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " system time offset: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v5, v11, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .end local v1    # "now":J
    :cond_7f
    iget-object v15, v9, Lcom/android/server/location/NtpTimeHelper;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/location/-$$Lambda$NtpTimeHelper$xPxgficKWFyuwUj60WMuiGEEjdg;

    move-object v1, v5

    move-object v2, v9

    move-wide v3, v11

    move-object v0, v5

    move-wide v5, v13

    move-wide/from16 v16, v7

    .line 158
    .end local v7    # "certainty":J
    .local v16, "certainty":J
    invoke-direct/range {v1 .. v8}, Lcom/android/server/location/-$$Lambda$NtpTimeHelper$xPxgficKWFyuwUj60WMuiGEEjdg;-><init>(Lcom/android/server/location/NtpTimeHelper;JJJ)V

    invoke-virtual {v15, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 160
    const-wide/32 v0, 0x5265c00

    .line 161
    .local v0, "delay":J
    iget-object v2, v9, Lcom/android/server/location/NtpTimeHelper;->mNtpBackOff:Lcom/android/server/location/ExponentialBackOff;

    invoke-virtual {v2}, Lcom/android/server/location/ExponentialBackOff;->reset()V

    .line 162
    .end local v11    # "time":J
    .end local v13    # "timeReference":J
    .end local v16    # "certainty":J
    goto :goto_a7

    .line 163
    .end local v0    # "delay":J
    :cond_99
    const-string v0, "NtpTimeHelper"

    const-string/jumbo v1, "requestTime failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, v9, Lcom/android/server/location/NtpTimeHelper;->mNtpBackOff:Lcom/android/server/location/ExponentialBackOff;

    invoke-virtual {v0}, Lcom/android/server/location/ExponentialBackOff;->nextBackoffMillis()J

    move-result-wide v0

    .line 167
    .restart local v0    # "delay":J
    :goto_a7
    sget-boolean v2, Lcom/android/server/location/NtpTimeHelper;->DEBUG:Z

    if-eqz v2, :cond_d1

    .line 168
    const-string v2, "NtpTimeHelper"

    const-string/jumbo v3, "onDemandTimeInjection=%s, refreshSuccess=%s, delay=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-boolean v6, v9, Lcom/android/server/location/NtpTimeHelper;->mOnDemandTimeInjection:Z

    .line 170
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 171
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    .line 172
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 168
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_d1
    iget-boolean v2, v9, Lcom/android/server/location/NtpTimeHelper;->mOnDemandTimeInjection:Z

    if-nez v2, :cond_d7

    if-nez v10, :cond_e1

    .line 181
    :cond_d7
    iget-object v2, v9, Lcom/android/server/location/NtpTimeHelper;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/location/-$$Lambda$7zgzwOWgEFtr6DuyW9EYKot7bHU;

    invoke-direct {v3, v9}, Lcom/android/server/location/-$$Lambda$7zgzwOWgEFtr6DuyW9EYKot7bHU;-><init>(Lcom/android/server/location/NtpTimeHelper;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 183
    :cond_e1
    monitor-exit p0
    :try_end_e2
    .catchall {:try_start_19 .. :try_end_e2} :catchall_eb

    move-wide v1, v0

    .line 186
    .end local v0    # "delay":J
    .local v1, "delay":J
    :try_start_e3
    iget-object v0, v9, Lcom/android/server/location/NtpTimeHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_e8} :catch_e9

    .line 189
    goto :goto_ea

    .line 187
    :catch_e9
    move-exception v0

    .line 190
    :goto_ea
    return-void

    .line 183
    .end local v1    # "delay":J
    :catchall_eb
    move-exception v0

    :try_start_ec
    monitor-exit p0
    :try_end_ed
    .catchall {:try_start_ec .. :try_end_ed} :catchall_eb

    throw v0
.end method

.method private isNetworkConnected()Z
    .registers 3

    .line 106
    iget-object v0, p0, Lcom/android/server/location/NtpTimeHelper;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 107
    .local v0, "activeNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method public static synthetic lambda$blockingGetNtpTimeAndInject$0(Lcom/android/server/location/NtpTimeHelper;JJJ)V
    .registers 13
    .param p1, "time"    # J
    .param p3, "timeReference"    # J
    .param p5, "certainty"    # J

    .line 158
    iget-object v0, p0, Lcom/android/server/location/NtpTimeHelper;->mCallback:Lcom/android/server/location/NtpTimeHelper$InjectNtpTimeCallback;

    long-to-int v5, p5

    move-wide v1, p1

    move-wide v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/server/location/NtpTimeHelper$InjectNtpTimeCallback;->injectTime(JJI)V

    return-void
.end method

.method public static synthetic lambda$xWqlqJuq4jBJ5-xhFLCwEKGVB0k(Lcom/android/server/location/NtpTimeHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/NtpTimeHelper;->blockingGetNtpTimeAndInject()V

    return-void
.end method


# virtual methods
.method declared-synchronized enablePeriodicTimeInjection()V
    .registers 2

    monitor-enter p0

    .line 92
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/location/NtpTimeHelper;->mOnDemandTimeInjection:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 93
    monitor-exit p0

    return-void

    .line 91
    :catchall_6
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/location/NtpTimeHelper;
    throw v0
.end method

.method declared-synchronized onNetworkAvailable()V
    .registers 2

    monitor-enter p0

    .line 96
    :try_start_1
    iget v0, p0, Lcom/android/server/location/NtpTimeHelper;->mInjectNtpTimeState:I

    if-nez v0, :cond_8

    .line 97
    invoke-virtual {p0}, Lcom/android/server/location/NtpTimeHelper;->retrieveAndInjectNtpTime()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 99
    :cond_8
    monitor-exit p0

    return-void

    .line 95
    :catchall_a
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/location/NtpTimeHelper;
    throw v0
.end method

.method declared-synchronized retrieveAndInjectNtpTime()V
    .registers 4

    monitor-enter p0

    .line 111
    :try_start_1
    iget v0, p0, Lcom/android/server/location/NtpTimeHelper;->mInjectNtpTimeState:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2c

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 113
    monitor-exit p0

    return-void

    .line 115
    :cond_8
    :try_start_8
    invoke-direct {p0}, Lcom/android/server/location/NtpTimeHelper;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_13

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/NtpTimeHelper;->mInjectNtpTimeState:I
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_2c

    .line 118
    monitor-exit p0

    return-void

    .line 120
    :cond_13
    :try_start_13
    iput v1, p0, Lcom/android/server/location/NtpTimeHelper;->mInjectNtpTimeState:I

    .line 123
    iget-object v0, p0, Lcom/android/server/location/NtpTimeHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 124
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/location/-$$Lambda$NtpTimeHelper$xWqlqJuq4jBJ5-xhFLCwEKGVB0k;

    invoke-direct {v1, p0}, Lcom/android/server/location/-$$Lambda$NtpTimeHelper$xWqlqJuq4jBJ5-xhFLCwEKGVB0k;-><init>(Lcom/android/server/location/NtpTimeHelper;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_2c

    .line 125
    monitor-exit p0

    return-void

    .line 110
    :catchall_2c
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/location/NtpTimeHelper;
    throw v0
.end method
