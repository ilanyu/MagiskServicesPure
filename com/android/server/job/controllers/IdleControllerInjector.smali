.class public Lcom/android/server/job/controllers/IdleControllerInjector;
.super Ljava/lang/Object;
.source "IdleControllerInjector.java"


# static fields
.field private static final DEBUG:Z

.field private static final IS_INTERNATIONAL:Z

.field private static final TAG:Ljava/lang/String; = "JobScheduler.Idle"

.field private static final WHITELISTFORIDLE:[Ljava/lang/String;

.field private static volatile mInstance:Lcom/android/server/job/controllers/IdleControllerInjector;


# instance fields
.field private mAlarm:Landroid/app/AlarmManager;

.field private mContext:Landroid/content/Context;

.field private mDockIdle:Z

.field private mIdleOnlyWhiteList:Z

.field private mIdleOnlyWhiteListAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mIdleWindowSlop:J

.field private mInactivityIdleOnlyWhiteListThreshold:J

.field private mLock:Ljava/lang/Object;

.field private mScreenOn:Z

.field private mStateChangedListener:Lcom/android/server/job/StateChangedListener;

.field private final mTrackedTasksOnlyWhiteList:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 18
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    const/4 v1, 0x0

    if-nez v0, :cond_10

    const-string/jumbo v0, "persist.sys.job_debug_idle"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_10

    :cond_f
    goto :goto_11

    :cond_10
    :goto_10
    const/4 v1, 0x1

    :goto_11
    sput-boolean v1, Lcom/android/server/job/controllers/IdleControllerInjector;->DEBUG:Z

    .line 24
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    sput-boolean v0, Lcom/android/server/job/controllers/IdleControllerInjector;->IS_INTERNATIONAL:Z

    .line 26
    const-string v0, "com.xiaomi.market"

    const-string v1, "com.miui.cloudbackup"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/job/controllers/IdleControllerInjector;->WHITELISTFORIDLE:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/IdleControllerInjector;->mTrackedTasksOnlyWhiteList:Landroid/util/ArraySet;

    .line 39
    new-instance v0, Lcom/android/server/job/controllers/-$$Lambda$IdleControllerInjector$JDwZpzuDzR_cVaIb1E7gjaGmQmM;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/-$$Lambda$IdleControllerInjector$JDwZpzuDzR_cVaIb1E7gjaGmQmM;-><init>(Lcom/android/server/job/controllers/IdleControllerInjector;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/IdleControllerInjector;->mIdleOnlyWhiteListAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 43
    return-void
.end method

.method public static getInstance()Lcom/android/server/job/controllers/IdleControllerInjector;
    .registers 2

    .line 46
    sget-object v0, Lcom/android/server/job/controllers/IdleControllerInjector;->mInstance:Lcom/android/server/job/controllers/IdleControllerInjector;

    if-nez v0, :cond_17

    .line 47
    const-class v0, Lcom/android/server/job/controllers/IdleControllerInjector;

    monitor-enter v0

    .line 48
    :try_start_7
    sget-object v1, Lcom/android/server/job/controllers/IdleControllerInjector;->mInstance:Lcom/android/server/job/controllers/IdleControllerInjector;

    if-nez v1, :cond_12

    .line 49
    new-instance v1, Lcom/android/server/job/controllers/IdleControllerInjector;

    invoke-direct {v1}, Lcom/android/server/job/controllers/IdleControllerInjector;-><init>()V

    sput-object v1, Lcom/android/server/job/controllers/IdleControllerInjector;->mInstance:Lcom/android/server/job/controllers/IdleControllerInjector;

    .line 51
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 53
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/server/job/controllers/IdleControllerInjector;->mInstance:Lcom/android/server/job/controllers/IdleControllerInjector;

    return-object v0
.end method

.method private handleIdleTriggerOnlyWhiteList()V
    .registers 5

    .line 114
    iget-boolean v0, p0, Lcom/android/server/job/controllers/IdleControllerInjector;->mIdleOnlyWhiteList:Z

    if-nez v0, :cond_31

    iget-boolean v0, p0, Lcom/android/server/job/controllers/IdleControllerInjector;->mScreenOn:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/job/controllers/IdleControllerInjector;->mDockIdle:Z

    if-eqz v0, :cond_31

    .line 115
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/job/controllers/IdleControllerInjector;->mIdleOnlyWhiteList:Z

    .line 116
    const-string v0, "JobScheduler.Idle"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Idle only for whitelist trigger fired @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-boolean v0, p0, Lcom/android/server/job/controllers/IdleControllerInjector;->mIdleOnlyWhiteList:Z

    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/IdleControllerInjector;->reportNewIdleStateOnlyWhiteList(Z)V

    goto :goto_57

    .line 119
    :cond_31
    sget-boolean v0, Lcom/android/server/job/controllers/IdleControllerInjector;->DEBUG:Z

    if-eqz v0, :cond_57

    .line 120
    const-string v0, "JobScheduler.Idle"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TRIGGER_IDLE received but not changing state; idle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/job/controllers/IdleControllerInjector;->mIdleOnlyWhiteList:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " screen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/job/controllers/IdleControllerInjector;->mScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_57
    :goto_57
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/job/controllers/IdleControllerInjector;)V
    .registers 1

    .line 40
    invoke-direct {p0}, Lcom/android/server/job/controllers/IdleControllerInjector;->handleIdleTriggerOnlyWhiteList()V

    .line 41
    return-void
.end method

.method private reportNewIdleStateOnlyWhiteList(Z)V
    .registers 6
    .param p1, "isIdle"    # Z

    .line 127
    const/4 v0, 0x0

    .line 128
    .local v0, "change":Z
    iget-object v1, p0, Lcom/android/server/job/controllers/IdleControllerInjector;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 129
    :try_start_4
    iget-object v2, p0, Lcom/android/server/job/controllers/IdleControllerInjector;->mTrackedTasksOnlyWhiteList:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_c
    if-ltz v2, :cond_1e

    .line 130
    iget-object v3, p0, Lcom/android/server/job/controllers/IdleControllerInjector;->mTrackedTasksOnlyWhiteList:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v3, p1}, Lcom/android/server/job/controllers/JobStatus;->setIdleConstraintSatisfied(Z)Z

    move-result v3

    or-int/2addr v0, v3

    .line 129
    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    .line 132
    .end local v2    # "i":I
    :cond_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_27

    .line 133
    if-eqz v0, :cond_26

    .line 134
    iget-object v1, p0, Lcom/android/server/job/controllers/IdleControllerInjector;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v1}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    .line 136
    :cond_26
    return-void

    .line 132
    :catchall_27
    move-exception v2

    :try_start_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v2
.end method

.method private setAlarm(J)V
    .registers 20
    .param p1, "nowElapsed"    # J

    move-object/from16 v0, p0

    .line 100
    move-wide/from16 v1, p1

    sget-boolean v3, Lcom/android/server/job/controllers/IdleControllerInjector;->DEBUG:Z

    const-wide/32 v4, 0xea60

    if-eqz v3, :cond_d

    move-wide v6, v4

    goto :goto_f

    :cond_d
    iget-wide v6, v0, Lcom/android/server/job/controllers/IdleControllerInjector;->mInactivityIdleOnlyWhiteListThreshold:J

    :goto_f
    add-long/2addr v6, v1

    .line 101
    .local v6, "whenForWhiteList":J
    sget-boolean v3, Lcom/android/server/job/controllers/IdleControllerInjector;->DEBUG:Z

    if-eqz v3, :cond_32

    .line 102
    const-string v3, "JobScheduler.Idle"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Scheduling idle only for packages in whitelist:  now:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " when="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_32
    sget-boolean v3, Lcom/android/server/job/controllers/IdleControllerInjector;->DEBUG:Z

    if-eqz v3, :cond_38

    :goto_36
    move-wide v12, v4

    goto :goto_3b

    :cond_38
    iget-wide v4, v0, Lcom/android/server/job/controllers/IdleControllerInjector;->mIdleWindowSlop:J

    goto :goto_36

    .line 107
    .local v12, "duration":J
    :goto_3b
    iget-object v8, v0, Lcom/android/server/job/controllers/IdleControllerInjector;->mAlarm:Landroid/app/AlarmManager;

    const/4 v9, 0x2

    const-string v14, "JS in whitelist idleness"

    iget-object v15, v0, Lcom/android/server/job/controllers/IdleControllerInjector;->mIdleOnlyWhiteListAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    const/16 v16, 0x0

    move-wide v10, v6

    invoke-virtual/range {v8 .. v16}, Landroid/app/AlarmManager;->setWindow(IJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 110
    return-void
.end method


# virtual methods
.method public initInjector(Landroid/content/Context;Lcom/android/server/job/StateChangedListener;JJLjava/lang/Object;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/server/job/StateChangedListener;
    .param p3, "threshold"    # J
    .param p5, "duration"    # J
    .param p7, "lock"    # Ljava/lang/Object;

    .line 57
    sget-boolean v0, Lcom/android/server/job/controllers/IdleControllerInjector;->IS_INTERNATIONAL:Z

    if-eqz v0, :cond_5

    return-void

    .line 58
    :cond_5
    iput-object p1, p0, Lcom/android/server/job/controllers/IdleControllerInjector;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/android/server/job/controllers/IdleControllerInjector;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    .line 60
    const-wide/16 v0, 0x2

    div-long v0, p3, v0

    iput-wide v0, p0, Lcom/android/server/job/controllers/IdleControllerInjector;->mInactivityIdleOnlyWhiteListThreshold:J

    .line 61
    iput-wide p5, p0, Lcom/android/server/job/controllers/IdleControllerInjector;->mIdleWindowSlop:J

    .line 62
    iput-object p7, p0, Lcom/android/server/job/controllers/IdleControllerInjector;->mLock:Ljava/lang/Object;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/job/controllers/IdleControllerInjector;->mIdleOnlyWhiteList:Z

    .line 64
    iget-object v0, p0, Lcom/android/server/job/controllers/IdleControllerInjector;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/job/controllers/IdleControllerInjector;->mAlarm:Landroid/app/AlarmManager;

    .line 65
    return-void
.end method

.method public isInIdleWhiteListLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 6
    .param p1, "taskStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 87
    sget-boolean v0, Lcom/android/server/job/controllers/IdleControllerInjector;->IS_INTERNATIONAL:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 88
    :cond_6
    move v0, v1

    .local v0, "i":I
    :goto_7
    sget-object v2, Lcom/android/server/job/controllers/IdleControllerInjector;->WHITELISTFORIDLE:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_29

    .line 89
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/server/job/controllers/IdleControllerInjector;->WHITELISTFORIDLE:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 90
    iget-object v1, p0, Lcom/android/server/job/controllers/IdleControllerInjector;->mTrackedTasksOnlyWhiteList:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 91
    iget-boolean v1, p0, Lcom/android/server/job/controllers/IdleControllerInjector;->mIdleOnlyWhiteList:Z

    invoke-virtual {p1, v1}, Lcom/android/server/job/controllers/JobStatus;->setIdleConstraintSatisfied(Z)Z

    .line 92
    const/4 v1, 0x1

    return v1

    .line 88
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 95
    .end local v0    # "i":I
    :cond_29
    return v1
.end method

.method public removeTaskLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 3
    .param p1, "taskStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 139
    sget-boolean v0, Lcom/android/server/job/controllers/IdleControllerInjector;->IS_INTERNATIONAL:Z

    if-eqz v0, :cond_5

    return-void

    .line 140
    :cond_5
    iget-object v0, p0, Lcom/android/server/job/controllers/IdleControllerInjector;->mTrackedTasksOnlyWhiteList:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 141
    return-void
.end method

.method public updateIdleTrackerState(ZZ)V
    .registers 6
    .param p1, "screenOn"    # Z
    .param p2, "dockIdle"    # Z

    .line 68
    sget-boolean v0, Lcom/android/server/job/controllers/IdleControllerInjector;->IS_INTERNATIONAL:Z

    if-eqz v0, :cond_5

    return-void

    .line 69
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/job/controllers/IdleControllerInjector;->mScreenOn:Z

    .line 70
    iput-boolean p2, p0, Lcom/android/server/job/controllers/IdleControllerInjector;->mDockIdle:Z

    .line 71
    sget-boolean v0, Lcom/android/server/job/controllers/IdleControllerInjector;->DEBUG:Z

    if-eqz v0, :cond_30

    .line 72
    const-string v0, "JobScheduler.Idle"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state has changed: mScreenOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/job/controllers/IdleControllerInjector;->mScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mDockIdle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/job/controllers/IdleControllerInjector;->mDockIdle:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_30
    iget-boolean v0, p0, Lcom/android/server/job/controllers/IdleControllerInjector;->mScreenOn:Z

    if-eqz v0, :cond_4d

    iget-boolean v0, p0, Lcom/android/server/job/controllers/IdleControllerInjector;->mDockIdle:Z

    if-eqz v0, :cond_39

    goto :goto_4d

    .line 78
    :cond_39
    iget-object v0, p0, Lcom/android/server/job/controllers/IdleControllerInjector;->mAlarm:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/job/controllers/IdleControllerInjector;->mIdleOnlyWhiteListAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 79
    iget-boolean v0, p0, Lcom/android/server/job/controllers/IdleControllerInjector;->mIdleOnlyWhiteList:Z

    if-eqz v0, :cond_57

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/job/controllers/IdleControllerInjector;->mIdleOnlyWhiteList:Z

    .line 81
    iget-boolean v0, p0, Lcom/android/server/job/controllers/IdleControllerInjector;->mIdleOnlyWhiteList:Z

    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/IdleControllerInjector;->reportNewIdleStateOnlyWhiteList(Z)V

    goto :goto_57

    .line 75
    :cond_4d
    :goto_4d
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 76
    .local v0, "nowElapsed":J
    invoke-direct {p0, v0, v1}, Lcom/android/server/job/controllers/IdleControllerInjector;->setAlarm(J)V

    .line 77
    .end local v0    # "nowElapsed":J
    nop

    .line 84
    :cond_57
    :goto_57
    return-void
.end method
