.class public Lcom/android/server/NetworkTimeUpdateService;
.super Landroid/os/Binder;
.source "NetworkTimeUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;,
        Lcom/android/server/NetworkTimeUpdateService$NetworkTimeUpdateCallback;,
        Lcom/android/server/NetworkTimeUpdateService$MyHandler;
    }
.end annotation


# static fields
.field private static final ACTION_POLL:Ljava/lang/String; = "com.android.server.NetworkTimeUpdateService.action.POLL"

.field private static final DBG:Z = true

.field private static final EVENT_AUTO_TIME_CHANGED:I = 0x1

.field private static final EVENT_NETWORK_CHANGED:I = 0x3

.field private static final EVENT_POLL_NETWORK_TIME:I = 0x2

.field private static final NOT_SET:J = -0x1L

.field private static final POLL_REQUEST:I = 0x0

.field private static final TAG:Ljava/lang/String; = "NetworkTimeUpdateService"


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mCM:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDefaultNetwork:Landroid/net/Network;

.field private mHandler:Landroid/os/Handler;

.field private mLastNtpFetchTime:J

.field private mNetworkTimeUpdateCallback:Lcom/android/server/NetworkTimeUpdateService$NetworkTimeUpdateCallback;

.field private mNitzReceiver:Landroid/content/BroadcastReceiver;

.field private mNitzTimeSetTime:J

.field private final mPendingPollIntent:Landroid/app/PendingIntent;

.field private final mPollingIntervalMs:J

.field private final mPollingIntervalShorterMs:J

.field private mSettingsObserver:Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;

.field private final mTime:Landroid/util/NtpTrustedTime;

.field private final mTimeErrorThresholdMs:I

.field private mTryAgainCounter:I

.field private final mTryAgainTimesMax:I

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 107
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 75
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzTimeSetTime:J

    .line 76
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mDefaultNetwork:Landroid/net/Network;

    .line 87
    iput-wide v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mLastNtpFetchTime:J

    .line 261
    new-instance v0, Lcom/android/server/NetworkTimeUpdateService$2;

    invoke-direct {v0, p0}, Lcom/android/server/NetworkTimeUpdateService$2;-><init>(Lcom/android/server/NetworkTimeUpdateService;)V

    iput-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzReceiver:Landroid/content/BroadcastReceiver;

    .line 108
    iput-object p1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    .line 109
    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/NtpTrustedTime;

    .line 110
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 111
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mCM:Landroid/net/ConnectivityManager;

    .line 113
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.NetworkTimeUpdateService.action.POLL"

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 114
    .local v0, "pollIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mPendingPollIntent:Landroid/app/PendingIntent;

    .line 116
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e007d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    .line 118
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e007e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalShorterMs:J

    .line 120
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e007f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainTimesMax:I

    .line 122
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0080

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mTimeErrorThresholdMs:I

    .line 125
    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const-string v2, "NetworkTimeUpdateService"

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 128
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/NtpTrustedTime;

    invoke-static {p1, v1}, Lcom/android/server/NetworkTimeUpdateServiceInjector;->initNtpServers(Landroid/content/Context;Landroid/util/TrustedTime;)V

    .line 129
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/NetworkTimeUpdateService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NetworkTimeUpdateService;

    .line 58
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/NetworkTimeUpdateService;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/NetworkTimeUpdateService;
    .param p1, "x1"    # J

    .line 58
    iput-wide p1, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzTimeSetTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/android/server/NetworkTimeUpdateService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NetworkTimeUpdateService;
    .param p1, "x1"    # I

    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/NetworkTimeUpdateService;->onPollNetworkTime(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/NetworkTimeUpdateService;)Landroid/net/Network;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NetworkTimeUpdateService;

    .line 58
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mDefaultNetwork:Landroid/net/Network;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/NetworkTimeUpdateService;Landroid/net/Network;)Landroid/net/Network;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/NetworkTimeUpdateService;
    .param p1, "x1"    # Landroid/net/Network;

    .line 58
    iput-object p1, p0, Lcom/android/server/NetworkTimeUpdateService;->mDefaultNetwork:Landroid/net/Network;

    return-object p1
.end method

.method private getNitzAge()J
    .registers 5

    .line 211
    iget-wide v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzTimeSetTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    .line 212
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    .line 214
    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzTimeSetTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private isAutomaticTimeRequested()Z
    .registers 4

    .line 256
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    .line 257
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time"

    .line 256
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_11

    const/4 v2, 0x1

    nop

    :cond_11
    return v2
.end method

.method private onPollNetworkTime(I)V
    .registers 4
    .param p1, "event"    # I

    .line 165
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mDefaultNetwork:Landroid/net/Network;

    if-nez v0, :cond_5

    return-void

    .line 166
    :cond_5
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 168
    :try_start_a
    invoke-direct {p0, p1}, Lcom/android/server/NetworkTimeUpdateService;->onPollNetworkTimeUnderWakeLock(I)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_14

    .line 170
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 171
    nop

    .line 172
    return-void

    .line 170
    :catchall_14
    move-exception v0

    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method

.method private onPollNetworkTimeUnderWakeLock(I)V
    .registers 8
    .param p1, "event"    # I

    .line 176
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 177
    .local v0, "refTime":J
    const-string v2, "NetworkTimeUpdateService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mNitzTimeSetTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzTimeSetTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", refTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", mLastNtpFetchTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/NetworkTimeUpdateService;->mLastNtpFetchTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v2}, Landroid/util/NtpTrustedTime;->getCacheAge()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_47

    .line 182
    const-string v2, "NetworkTimeUpdateService"

    const-string v3, "Stale NTP fix; forcing refresh"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    invoke-static {v2}, Lcom/android/server/NetworkTimeUpdateServiceInjector;->switchNtpServer(I)V

    .line 188
    :cond_47
    iget-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v2}, Landroid/util/NtpTrustedTime;->getCacheAge()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_68

    .line 190
    iget-wide v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    invoke-direct {p0, v2, v3}, Lcom/android/server/NetworkTimeUpdateService;->resetAlarm(J)V

    .line 191
    invoke-direct {p0}, Lcom/android/server/NetworkTimeUpdateService;->isAutomaticTimeRequested()Z

    move-result v2

    if-eqz v2, :cond_61

    .line 192
    invoke-direct {p0, p1}, Lcom/android/server/NetworkTimeUpdateService;->updateSystemClock(I)V

    .line 196
    :cond_61
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mLastNtpFetchTime:J

    goto :goto_87

    .line 199
    :cond_68
    iget v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    .line 200
    iget v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainTimesMax:I

    if-ltz v2, :cond_82

    iget v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    iget v3, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainTimesMax:I

    if-gt v2, v3, :cond_79

    goto :goto_82

    .line 204
    :cond_79
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    .line 205
    iget-wide v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    invoke-direct {p0, v2, v3}, Lcom/android/server/NetworkTimeUpdateService;->resetAlarm(J)V

    goto :goto_87

    .line 201
    :cond_82
    :goto_82
    iget-wide v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalShorterMs:J

    invoke-direct {p0, v2, v3}, Lcom/android/server/NetworkTimeUpdateService;->resetAlarm(J)V

    .line 208
    :goto_87
    return-void
.end method

.method private registerForAlarms()V
    .registers 5

    .line 153
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/NetworkTimeUpdateService$1;

    invoke-direct {v1, p0}, Lcom/android/server/NetworkTimeUpdateService$1;-><init>(Lcom/android/server/NetworkTimeUpdateService;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.server.NetworkTimeUpdateService.action.POLL"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 160
    return-void
.end method

.method private registerForTelephonyIntents()V
    .registers 4

    .line 147
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 148
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.NETWORK_SET_TIME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 150
    return-void
.end method

.method private resetAlarm(J)V
    .registers 10
    .param p1, "interval"    # J

    .line 246
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mPendingPollIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 247
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 248
    .local v0, "now":J
    add-long v2, v0, p1

    .line 249
    .local v2, "next":J
    iget-object v4, p0, Lcom/android/server/NetworkTimeUpdateService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mPendingPollIntent:Landroid/app/PendingIntent;

    const/4 v6, 0x3

    invoke-virtual {v4, v6, v2, v3, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 250
    return-void
.end method

.method private updateSystemClock(I)V
    .registers 7
    .param p1, "event"    # I

    .line 223
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 224
    .local v0, "forceUpdate":Z
    :goto_5
    if-nez v0, :cond_37

    .line 225
    invoke-direct {p0}, Lcom/android/server/NetworkTimeUpdateService;->getNitzAge()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_19

    .line 226
    const-string v1, "NetworkTimeUpdateService"

    const-string v2, "Ignoring NTP update due to recent NITZ"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return-void

    .line 230
    :cond_19
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v1}, Landroid/util/NtpTrustedTime;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    .line 231
    .local v1, "skew":J
    iget v3, p0, Lcom/android/server/NetworkTimeUpdateService;->mTimeErrorThresholdMs:I

    int-to-long v3, v3

    cmp-long v3, v1, v3

    if-gez v3, :cond_37

    .line 232
    const-string v3, "NetworkTimeUpdateService"

    const-string v4, "Ignoring NTP update due to low skew"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return-void

    .line 237
    .end local v1    # "skew":J
    :cond_37
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v1}, Landroid/util/NtpTrustedTime;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 238
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 333
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    const-string v1, "NetworkTimeUpdateService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 334
    :cond_b
    const-string v0, "PollingIntervalMs: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 335
    iget-wide v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 336
    const-string v0, "\nPollingIntervalShorterMs: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 337
    iget-wide v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalShorterMs:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nTryAgainTimesMax: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainTimesMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 339
    const-string v0, "TimeErrorThresholdMs: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 340
    iget v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mTimeErrorThresholdMs:I

    int-to-long v0, v0

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nTryAgainCounter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NTP cache age: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v1}, Landroid/util/NtpTrustedTime;->getCacheAge()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NTP cache certainty: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v1}, Landroid/util/NtpTrustedTime;->getCacheCertainty()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 345
    return-void
.end method

.method public systemRunning()V
    .registers 5

    .line 133
    invoke-direct {p0}, Lcom/android/server/NetworkTimeUpdateService;->registerForTelephonyIntents()V

    .line 134
    invoke-direct {p0}, Lcom/android/server/NetworkTimeUpdateService;->registerForAlarms()V

    .line 136
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NetworkTimeUpdateService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 137
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 138
    new-instance v1, Lcom/android/server/NetworkTimeUpdateService$MyHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/NetworkTimeUpdateService$MyHandler;-><init>(Lcom/android/server/NetworkTimeUpdateService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    .line 139
    new-instance v1, Lcom/android/server/NetworkTimeUpdateService$NetworkTimeUpdateCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/NetworkTimeUpdateService$NetworkTimeUpdateCallback;-><init>(Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/NetworkTimeUpdateService$1;)V

    iput-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mNetworkTimeUpdateCallback:Lcom/android/server/NetworkTimeUpdateService$NetworkTimeUpdateCallback;

    .line 140
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mCM:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mNetworkTimeUpdateCallback:Lcom/android/server/NetworkTimeUpdateService$NetworkTimeUpdateCallback;

    iget-object v3, p0, Lcom/android/server/NetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 142
    new-instance v1, Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;-><init>(Landroid/os/Handler;I)V

    iput-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mSettingsObserver:Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;

    .line 143
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mSettingsObserver:Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;->observe(Landroid/content/Context;)V

    .line 144
    return-void
.end method
