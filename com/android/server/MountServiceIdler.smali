.class public Lcom/android/server/MountServiceIdler;
.super Landroid/app/job/JobService;
.source "MountServiceIdler.java"


# static fields
.field private static MOUNT_JOB_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MountServiceIdler"

.field private static sIdleService:Landroid/content/ComponentName;


# instance fields
.field private mFinishCallback:Ljava/lang/Runnable;

.field private mJobParams:Landroid/app/job/JobParameters;

.field private mStarted:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 34
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-class v2, Lcom/android/server/MountServiceIdler;

    .line 35
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/MountServiceIdler;->sIdleService:Landroid/content/ComponentName;

    .line 37
    const/16 v0, 0x328

    sput v0, Lcom/android/server/MountServiceIdler;->MOUNT_JOB_ID:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 41
    new-instance v0, Lcom/android/server/MountServiceIdler$1;

    invoke-direct {v0, p0}, Lcom/android/server/MountServiceIdler$1;-><init>(Lcom/android/server/MountServiceIdler;)V

    iput-object v0, p0, Lcom/android/server/MountServiceIdler;->mFinishCallback:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/MountServiceIdler;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountServiceIdler;

    .line 31
    iget-object v0, p0, Lcom/android/server/MountServiceIdler;->mFinishCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/MountServiceIdler;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountServiceIdler;

    .line 31
    iget-boolean v0, p0, Lcom/android/server/MountServiceIdler;->mStarted:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/MountServiceIdler;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountServiceIdler;
    .param p1, "x1"    # Z

    .line 31
    iput-boolean p1, p0, Lcom/android/server/MountServiceIdler;->mStarted:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/MountServiceIdler;)Landroid/app/job/JobParameters;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MountServiceIdler;

    .line 31
    iget-object v0, p0, Lcom/android/server/MountServiceIdler;->mJobParams:Landroid/app/job/JobParameters;

    return-object v0
.end method

.method public static scheduleIdlePass(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 127
    sget v0, Lcom/android/server/MountServiceIdler;->MOUNT_JOB_ID:I

    sget-object v1, Lcom/android/server/MountServiceIdler;->sIdleService:Landroid/content/ComponentName;

    invoke-static {p0, v0, v1}, Lcom/android/server/MountServiceIdlerInjector;->internalScheduleIdlePass(Landroid/content/Context;ILandroid/content/ComponentName;)V

    .line 129
    return-void
.end method

.method private static tomorrowMidnight()Ljava/util/Calendar;
    .registers 3

    .line 132
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 133
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 134
    const/16 v1, 0xb

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 135
    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 136
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 137
    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 138
    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 139
    return-object v0
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 6
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 64
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->performIdleMaintenance()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 66
    goto :goto_9

    .line 65
    :catch_8
    move-exception v0

    .line 71
    :goto_9
    iput-object p1, p0, Lcom/android/server/MountServiceIdler;->mJobParams:Landroid/app/job/JobParameters;

    .line 74
    invoke-static {p0}, Lcom/android/server/MountServiceIdlerInjector;->canExecuteAsyncDiscard(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    .line 75
    invoke-static {}, Lcom/android/server/MountServiceIdlerInjector;->resetNextTrimDuration()V

    .line 77
    sget-object v0, Lcom/android/server/StorageManagerService;->sSelf:Lcom/android/server/StorageManagerService;

    .line 78
    .local v0, "ms":Lcom/android/server/StorageManagerService;
    const/4 v2, 0x1

    if-eqz v0, :cond_29

    .line 79
    iget-object v3, p0, Lcom/android/server/MountServiceIdler;->mFinishCallback:Ljava/lang/Runnable;

    monitor-enter v3

    .line 80
    :try_start_1d
    iput-boolean v2, p0, Lcom/android/server/MountServiceIdler;->mStarted:Z

    .line 81
    monitor-exit v3
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_26

    .line 82
    iget-object v3, p0, Lcom/android/server/MountServiceIdler;->mFinishCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Lcom/android/server/StorageManagerService;->runIdleMaint(Ljava/lang/Runnable;)V

    goto :goto_29

    .line 81
    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v3
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v1

    .line 84
    :cond_29
    :goto_29
    if-eqz v0, :cond_2d

    move v1, v2

    nop

    :cond_2d
    return v1

    .line 89
    .end local v0    # "ms":Lcom/android/server/StorageManagerService;
    :cond_2e
    invoke-static {}, Lcom/android/server/MountServiceIdlerInjector;->halveNextTrimDuration()V

    .line 90
    invoke-static {p0}, Lcom/android/server/MountServiceIdler;->scheduleIdlePass(Landroid/content/Context;)V

    .line 91
    return v1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 5
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 101
    sget-object v0, Lcom/android/server/StorageManagerService;->sSelf:Lcom/android/server/StorageManagerService;

    .line 102
    .local v0, "ms":Lcom/android/server/StorageManagerService;
    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 103
    iget-object v2, p0, Lcom/android/server/MountServiceIdler;->mFinishCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/android/server/StorageManagerService;->abortIdleMaint(Ljava/lang/Runnable;)V

    .line 104
    iget-object v2, p0, Lcom/android/server/MountServiceIdler;->mFinishCallback:Ljava/lang/Runnable;

    monitor-enter v2

    .line 105
    :try_start_d
    iput-boolean v1, p0, Lcom/android/server/MountServiceIdler;->mStarted:Z

    .line 106
    monitor-exit v2

    goto :goto_14

    :catchall_11
    move-exception v1

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_11

    throw v1

    .line 108
    :cond_14
    :goto_14
    return v1
.end method
