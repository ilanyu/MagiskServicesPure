.class public Lcom/android/server/MountServiceDefragIdler;
.super Landroid/app/job/JobService;
.source "MountServiceDefragIdler.java"


# static fields
.field private static DEFRAG_JOB_ID:I = 0x0

.field private static final MINIMUM_BATTERY_LEVEL:I = 0x28

.field private static final TAG:Ljava/lang/String; = "MountServiceDefragIdler"

.field private static sIdleService:Landroid/content/ComponentName;


# instance fields
.field private mFinishCallback:Ljava/lang/Runnable;

.field private mJobParams:Landroid/app/job/JobParameters;

.field private mStarted:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 36
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-class v2, Lcom/android/server/MountServiceDefragIdler;

    .line 37
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/MountServiceDefragIdler;->sIdleService:Landroid/content/ComponentName;

    .line 39
    const/16 v0, 0x329

    sput v0, Lcom/android/server/MountServiceDefragIdler;->DEFRAG_JOB_ID:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 45
    new-instance v0, Lcom/android/server/MountServiceDefragIdler$1;

    invoke-direct {v0, p0}, Lcom/android/server/MountServiceDefragIdler$1;-><init>(Lcom/android/server/MountServiceDefragIdler;)V

    iput-object v0, p0, Lcom/android/server/MountServiceDefragIdler;->mFinishCallback:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/MountServiceDefragIdler;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountServiceDefragIdler;

    .line 33
    iget-object v0, p0, Lcom/android/server/MountServiceDefragIdler;->mFinishCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/MountServiceDefragIdler;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountServiceDefragIdler;

    .line 33
    iget-boolean v0, p0, Lcom/android/server/MountServiceDefragIdler;->mStarted:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/MountServiceDefragIdler;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountServiceDefragIdler;
    .param p1, "x1"    # Z

    .line 33
    iput-boolean p1, p0, Lcom/android/server/MountServiceDefragIdler;->mStarted:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/MountServiceDefragIdler;)Landroid/app/job/JobParameters;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountServiceDefragIdler;

    .line 33
    iget-object v0, p0, Lcom/android/server/MountServiceDefragIdler;->mJobParams:Landroid/app/job/JobParameters;

    return-object v0
.end method

.method public static scheduleDefrag(Landroid/content/Context;)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .line 107
    const-string/jumbo v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 109
    .local v0, "tm":Landroid/app/job/JobScheduler;
    invoke-static {}, Lcom/android/server/MountServiceDefragIdler;->tomorrowMidnight()Ljava/util/Calendar;

    move-result-object v1

    .line 110
    .local v1, "calendar":Ljava/util/Calendar;
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 112
    .local v2, "timeToMidnight":J
    new-instance v4, Landroid/app/job/JobInfo$Builder;

    sget v5, Lcom/android/server/MountServiceDefragIdler;->DEFRAG_JOB_ID:I

    sget-object v6, Lcom/android/server/MountServiceDefragIdler;->sIdleService:Landroid/content/ComponentName;

    invoke-direct {v4, v5, v6}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 113
    .local v4, "builder":Landroid/app/job/JobInfo$Builder;
    invoke-virtual {v4, v2, v3}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 114
    invoke-virtual {v4}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 115
    return-void
.end method

.method private static tomorrowMidnight()Ljava/util/Calendar;
    .registers 3

    .line 118
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 119
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 120
    const/16 v1, 0xb

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 121
    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 122
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 123
    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 124
    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 125
    return-object v0
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 10
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 65
    iput-object p1, p0, Lcom/android/server/MountServiceDefragIdler;->mJobParams:Landroid/app/job/JobParameters;

    .line 67
    const-string v0, "batterymanager"

    invoke-virtual {p0, v0}, Lcom/android/server/MountServiceDefragIdler;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    .line 68
    .local v0, "bm":Landroid/os/BatteryManager;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v1

    .line 70
    .local v1, "batteryLevel":I
    const-string/jumbo v2, "power"

    invoke-virtual {p0, v2}, Lcom/android/server/MountServiceDefragIdler;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 71
    .local v2, "pm":Landroid/os/PowerManager;
    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    .line 75
    .local v3, "isInteractive":Z
    const/4 v4, 0x0

    if-nez v3, :cond_3c

    const/16 v5, 0x28

    if-lt v1, v5, :cond_3c

    .line 76
    sget-object v5, Lcom/android/server/StorageManagerService;->sSelf:Lcom/android/server/StorageManagerService;

    .line 77
    .local v5, "ms":Lcom/android/server/StorageManagerService;
    const/4 v6, 0x1

    if-eqz v5, :cond_37

    .line 78
    iget-object v7, p0, Lcom/android/server/MountServiceDefragIdler;->mFinishCallback:Ljava/lang/Runnable;

    monitor-enter v7

    .line 79
    :try_start_2b
    iput-boolean v6, p0, Lcom/android/server/MountServiceDefragIdler;->mStarted:Z

    .line 80
    monitor-exit v7
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_34

    .line 81
    iget-object v7, p0, Lcom/android/server/MountServiceDefragIdler;->mFinishCallback:Ljava/lang/Runnable;

    invoke-virtual {v5, v7}, Lcom/android/server/StorageManagerService;->runDefrag(Ljava/lang/Runnable;)V

    goto :goto_37

    .line 80
    :catchall_34
    move-exception v4

    :try_start_35
    monitor-exit v7
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v4

    .line 83
    :cond_37
    :goto_37
    if-eqz v5, :cond_3b

    move v4, v6

    nop

    :cond_3b
    return v4

    .line 86
    .end local v5    # "ms":Lcom/android/server/StorageManagerService;
    :cond_3c
    const-string v5, "MountServiceDefragIdler"

    const-string v6, "defrag job scheduled failed, reschedule it"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-static {p0}, Lcom/android/server/MountServiceDefragIdler;->scheduleDefrag(Landroid/content/Context;)V

    .line 88
    return v4
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 4
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 97
    iget-object v0, p0, Lcom/android/server/MountServiceDefragIdler;->mFinishCallback:Ljava/lang/Runnable;

    monitor-enter v0

    .line 98
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/MountServiceDefragIdler;->mStarted:Z

    .line 99
    monitor-exit v0

    .line 100
    return v1

    .line 99
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method
