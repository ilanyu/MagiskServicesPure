.class Lcom/android/server/am/ActivityMetricsLogger;
.super Ljava/lang/Object;
.source "ActivityMetricsLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;,
        Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;,
        Lcom/android/server/am/ActivityMetricsLogger$H;
    }
.end annotation


# static fields
.field private static final INVALID_START_TIME:J = -0x1L

.field private static final MSG_CHECK_VISIBILITY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TRON_WINDOW_STATE_VARZ_STRINGS:[Ljava/lang/String;

.field private static final WINDOW_STATE_ASSISTANT:I = 0x3

.field private static final WINDOW_STATE_FREEFORM:I = 0x2

.field private static final WINDOW_STATE_INVALID:I = -0x1

.field private static final WINDOW_STATE_SIDE_BY_SIDE:I = 0x1

.field private static final WINDOW_STATE_STANDARD:I


# instance fields
.field private mArtManagerInternal:Landroid/content/pm/dex/ArtManagerInternal;

.field private final mContext:Landroid/content/Context;

.field private mCurrentTransitionDelayMs:I

.field private mCurrentTransitionDeviceUptime:I

.field private mCurrentTransitionStartTime:J

.field private final mHandler:Lcom/android/server/am/ActivityMetricsLogger$H;

.field private mLastLogTimeSecs:J

.field private mLastTransitionStartTime:J

.field private final mLastWindowingModeTransitionInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLoggedTransitionStarting:Z

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private mWindowState:I

.field private final mWindowingModeTransitionInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 81
    const-string/jumbo v0, "window_time_0"

    const-string/jumbo v1, "window_time_1"

    const-string/jumbo v2, "window_time_2"

    const-string/jumbo v3, "window_time_3"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityMetricsLogger;->TRON_WINDOW_STATE_VARZ_STRINGS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/content/Context;Landroid/os/Looper;)V
    .registers 8
    .param p1, "supervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    .line 88
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 90
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    .line 91
    iput-wide v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLastTransitionStartTime:J

    .line 97
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    .line 99
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLastWindowingModeTransitionInfo:Landroid/util/SparseArray;

    .line 169
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLastLogTimeSecs:J

    .line 170
    iput-object p1, p0, Lcom/android/server/am/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 171
    iput-object p2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mContext:Landroid/content/Context;

    .line 172
    new-instance v0, Lcom/android/server/am/ActivityMetricsLogger$H;

    invoke-direct {v0, p0, p3}, Lcom/android/server/am/ActivityMetricsLogger$H;-><init>(Lcom/android/server/am/ActivityMetricsLogger;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mHandler:Lcom/android/server/am/ActivityMetricsLogger$H;

    .line 173
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/ActivityMetricsLogger;Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/ActivityMetricsLogger;
    .param p1, "x1"    # Lcom/android/server/am/TaskRecord;
    .param p2, "x2"    # Lcom/android/server/am/ActivityRecord;

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityMetricsLogger;->checkVisibility(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/am/ActivityMetricsLogger;Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/ActivityMetricsLogger;
    .param p1, "x1"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 63
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityMetricsLogger;->getTransitionType(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/am/ActivityMetricsLogger;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ProcessRecord;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/ActivityMetricsLogger;
    .param p1, "x1"    # Lcom/android/server/am/ActivityRecord;

    .line 63
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityMetricsLogger;->findProcessForActivity(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    return-object v0
.end method

.method private allWindowsDrawn()Z
    .registers 4

    .line 446
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "index":I
    :goto_8
    if-ltz v0, :cond_1d

    .line 447
    iget-object v2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;

    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->loggedWindowsDrawn:Z
    invoke-static {v2}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 448
    const/4 v1, 0x0

    return v1

    .line 446
    :cond_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 451
    .end local v0    # "index":I
    :cond_1d
    return v1
.end method

.method private calculateCurrentDelay()I
    .registers 5

    .line 473
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private calculateDelay(J)I
    .registers 5
    .param p1, "timestamp"    # J

    .line 478
    iget-wide v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    return v0
.end method

.method private checkVisibility(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V
    .registers 7
    .param p1, "t"    # Lcom/android/server/am/TaskRecord;
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 410
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 412
    iget-object v1, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    .line 413
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getWindowingMode()I

    move-result v2

    .line 412
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 417
    .local v1, "info":Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;
    if-eqz v1, :cond_34

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isVisible()Z

    move-result v2

    if-nez v2, :cond_34

    .line 420
    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityMetricsLogger;->logAppTransitionCancel(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)V

    .line 421
    iget-object v2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getWindowingMode()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 422
    iget-object v2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_34

    .line 423
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/am/ActivityMetricsLogger;->reset(Z)V

    .line 426
    .end local v1    # "info":Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;
    :cond_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_5 .. :try_end_35} :catchall_39

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 427
    return-void

    .line 426
    :catchall_39
    move-exception v1

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private convertAppStartTransitionType(I)I
    .registers 3
    .param p1, "tronType"    # I

    .line 584
    const/4 v0, 0x7

    if-ne p1, v0, :cond_5

    .line 585
    const/4 v0, 0x3

    return v0

    .line 587
    :cond_5
    const/16 v0, 0x8

    if-ne p1, v0, :cond_b

    .line 588
    const/4 v0, 0x1

    return v0

    .line 590
    :cond_b
    const/16 v0, 0x9

    if-ne p1, v0, :cond_11

    .line 591
    const/4 v0, 0x2

    return v0

    .line 593
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method private findProcessForActivity(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ProcessRecord;
    .registers 5
    .param p1, "launchedActivity"    # Lcom/android/server/am/ActivityRecord;

    .line 665
    if-eqz p1, :cond_15

    .line 666
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    goto :goto_16

    .line 668
    :cond_15
    const/4 v0, 0x0

    .line 665
    :goto_16
    return-object v0
.end method

.method private getArtManagerInternal()Landroid/content/pm/dex/ArtManagerInternal;
    .registers 2

    .line 672
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mArtManagerInternal:Landroid/content/pm/dex/ArtManagerInternal;

    if-nez v0, :cond_e

    .line 676
    const-class v0, Landroid/content/pm/dex/ArtManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/dex/ArtManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mArtManagerInternal:Landroid/content/pm/dex/ArtManagerInternal;

    .line 678
    :cond_e
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mArtManagerInternal:Landroid/content/pm/dex/ArtManagerInternal;

    return-object v0
.end method

.method private getTransitionType(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)I
    .registers 4
    .param p1, "info"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 626
    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->currentTransitionProcessRunning:Z
    invoke-static {p1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$900(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 627
    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->startResult:I
    invoke-static {p1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1000(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v0

    if-nez v0, :cond_f

    .line 628
    const/16 v0, 0x8

    return v0

    .line 629
    :cond_f
    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->startResult:I
    invoke-static {p1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1000(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_21

    .line 630
    const/16 v0, 0x9

    return v0

    .line 632
    :cond_19
    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->startResult:I
    invoke-static {p1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1000(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v0

    if-nez v0, :cond_21

    .line 633
    const/4 v0, 0x7

    return v0

    .line 635
    :cond_21
    const/4 v0, -0x1

    return v0
.end method

.method private hasStartedActivity(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)Z
    .registers 8
    .param p1, "record"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "launchedActivity"    # Lcom/android/server/am/ActivityRecord;

    .line 251
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    .line 252
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_1b

    .line 253
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 254
    .local v3, "activity":Lcom/android/server/am/ActivityRecord;
    if-ne p2, v3, :cond_13

    .line 255
    goto :goto_18

    .line 257
    :cond_13
    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-nez v4, :cond_18

    .line 258
    return v2

    .line 252
    .end local v3    # "activity":Lcom/android/server/am/ActivityRecord;
    :cond_18
    :goto_18
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 261
    .end local v1    # "i":I
    :cond_1b
    const/4 v1, 0x0

    return v1
.end method

.method private isAnyTransitionActive()Z
    .registers 5

    .line 455
    iget-wide v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    .line 456
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 455
    :goto_13
    return v0
.end method

.method private isLoggableResultCode(I)Z
    .registers 3
    .param p1, "resultCode"    # I

    .line 329
    if-eqz p1, :cond_8

    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

.method public static synthetic lambda$logAppTransitionMultiEvents$0(Lcom/android/server/am/ActivityMetricsLogger;IILcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V
    .registers 4
    .param p1, "currentTransitionDeviceUptime"    # I
    .param p2, "currentTransitionDelayMs"    # I
    .param p3, "infoSnapshot"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    .line 514
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/ActivityMetricsLogger;->logAppTransition(IILcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V

    return-void
.end method

.method private logAppStartMemoryStateCapture(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V
    .registers 22
    .param p1, "info"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    .line 639
    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->processRecord:Lcom/android/server/am/ProcessRecord;
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$2500(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-nez v0, :cond_7

    .line 641
    return-void

    .line 644
    :cond_7
    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->processRecord:Lcom/android/server/am/ProcessRecord;
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$2500(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 645
    .local v0, "pid":I
    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1700(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 646
    .local v1, "uid":I
    invoke-static {v1, v0}, Lcom/android/server/am/MemoryStatUtil;->readMemoryStatFromFilesystem(II)Lcom/android/server/am/MemoryStatUtil$MemoryStat;

    move-result-object v14

    .line 647
    .local v14, "memoryStat":Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    if-nez v14, :cond_1a

    .line 649
    return-void

    .line 652
    :cond_1a
    const/16 v2, 0x37

    .line 655
    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->processName:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$2600(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v4

    .line 656
    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1600(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v5

    iget-wide v6, v14, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgfault:J

    iget-wide v8, v14, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgmajfault:J

    iget-wide v10, v14, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->rssInBytes:J

    iget-wide v12, v14, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->cacheInBytes:J

    move-wide/from16 v16, v12

    iget-wide v12, v14, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->swapInBytes:J

    .line 652
    move v3, v1

    move-wide/from16 v18, v12

    move-wide/from16 v12, v16

    move-object/from16 v16, v14

    move-wide/from16 v14, v18

    .end local v14    # "memoryStat":Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    .local v16, "memoryStat":Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    invoke-static/range {v2 .. v15}, Landroid/util/StatsLog;->write(IILjava/lang/String;Ljava/lang/String;JJJJJ)I

    .line 662
    return-void
.end method

.method private logAppTransition(IILcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V
    .registers 29
    .param p1, "currentTransitionDeviceUptime"    # I
    .param p2, "currentTransitionDelayMs"    # I
    .param p3, "info"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    move-object/from16 v0, p0

    .line 524
    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x2f9

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 525
    .local v1, "builder":Landroid/metrics/LogMaker;
    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->packageName:Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1400(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    .line 526
    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->type:I
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1500(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 527
    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1600(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x367

    invoke-virtual {v1, v3, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 528
    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1700(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v2

    .line 529
    .local v2, "isInstantApp":Z
    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityLaunchedFromPackage:Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1800(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 530
    const/16 v3, 0x388

    .line 531
    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityLaunchedFromPackage:Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1800(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v4

    .line 530
    invoke-virtual {v1, v3, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 533
    :cond_37
    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityLaunchToken:Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1900(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v15

    .line 534
    .local v15, "launchToken":Ljava/lang/String;
    if-eqz v15, :cond_42

    .line 535
    const/16 v3, 0x387

    invoke-virtual {v1, v3, v15}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 537
    :cond_42
    const/16 v3, 0x389

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 538
    const/16 v3, 0x145

    .line 539
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 538
    invoke-virtual {v1, v3, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 540
    const/16 v3, 0x13f

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 541
    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->reason:I
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$2000(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    .line 542
    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->startingWindowDelayMs:I
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$2100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_78

    .line 543
    const/16 v3, 0x141

    .line 544
    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->startingWindowDelayMs:I
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$2100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 543
    invoke-virtual {v1, v3, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 546
    :cond_78
    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->bindApplicationDelayMs:I
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$2200(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I

    move-result v3

    if-eq v3, v4, :cond_8b

    .line 547
    const/16 v3, 0x3b1

    .line 548
    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->bindApplicationDelayMs:I
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$2200(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 547
    invoke-virtual {v1, v3, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 550
    :cond_8b
    const/16 v3, 0x142

    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->windowsDrawnDelayMs:I
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$2300(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 551
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityMetricsLogger;->getArtManagerInternal()Landroid/content/pm/dex/ArtManagerInternal;

    move-result-object v14

    .line 553
    .local v14, "artManagerInternal":Landroid/content/pm/dex/ArtManagerInternal;
    if-eqz v14, :cond_b3

    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityAppRecordRequiredAbi:Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$2400(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_a5

    goto :goto_b3

    .line 555
    :cond_a5
    nop

    .line 556
    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1700(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 557
    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityAppRecordRequiredAbi:Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$2400(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v4

    .line 555
    invoke-virtual {v14, v3, v4}, Landroid/content/pm/dex/ArtManagerInternal;->getPackageOptimizationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Landroid/content/pm/dex/PackageOptimizationInfo;

    move-result-object v3

    goto :goto_b7

    .line 554
    :cond_b3
    :goto_b3
    invoke-static {}, Landroid/content/pm/dex/PackageOptimizationInfo;->createWithNoInfo()Landroid/content/pm/dex/PackageOptimizationInfo;

    move-result-object v3

    .line 555
    :goto_b7
    move-object v13, v3

    .line 558
    .local v13, "packageOptimizationInfo":Landroid/content/pm/dex/PackageOptimizationInfo;
    const/16 v3, 0x529

    .line 559
    invoke-virtual {v13}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationReason()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 558
    invoke-virtual {v1, v3, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 560
    const/16 v3, 0x528

    .line 561
    invoke-virtual {v13}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationFilter()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 560
    invoke-virtual {v1, v3, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 562
    iget-object v3, v0, Lcom/android/server/am/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v3, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 563
    const/16 v3, 0x30

    .line 565
    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1700(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 566
    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->packageName:Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1400(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v5

    .line 567
    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->type:I
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1500(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I

    move-result v6

    invoke-direct {v0, v6}, Lcom/android/server/am/ActivityMetricsLogger;->convertAppStartTransitionType(I)I

    move-result v6

    .line 568
    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1600(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v7

    .line 569
    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityLaunchedFromPackage:Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1800(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v8

    move/from16 v12, p1

    mul-int/lit16 v9, v12, 0x3e8

    int-to-long v10, v9

    .line 572
    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->reason:I
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$2000(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I

    move-result v16

    .line 574
    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->startingWindowDelayMs:I
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$2100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I

    move-result v17

    .line 575
    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->bindApplicationDelayMs:I
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$2200(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I

    move-result v18

    .line 576
    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->windowsDrawnDelayMs:I
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$2300(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I

    move-result v19

    .line 578
    invoke-virtual {v13}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationReason()I

    move-result v20

    .line 579
    invoke-virtual {v13}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationFilter()I

    move-result v21

    .line 563
    move v9, v2

    move/from16 v12, v16

    move-object/from16 v22, v13

    move/from16 v13, p2

    .end local v13    # "packageOptimizationInfo":Landroid/content/pm/dex/PackageOptimizationInfo;
    .local v22, "packageOptimizationInfo":Landroid/content/pm/dex/PackageOptimizationInfo;
    move-object/from16 v23, v14

    move/from16 v14, v17

    .end local v14    # "artManagerInternal":Landroid/content/pm/dex/ArtManagerInternal;
    .local v23, "artManagerInternal":Landroid/content/pm/dex/ArtManagerInternal;
    move-object/from16 v24, v15

    move/from16 v15, v18

    .end local v15    # "launchToken":Ljava/lang/String;
    .local v24, "launchToken":Ljava/lang/String;
    move/from16 v16, v19

    move-object/from16 v17, v24

    move/from16 v18, v20

    move/from16 v19, v21

    invoke-static/range {v3 .. v19}, Landroid/util/StatsLog;->write(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZJIIIIILjava/lang/String;II)I

    .line 580
    move-object/from16 v3, p3

    invoke-direct {v0, v3}, Lcom/android/server/am/ActivityMetricsLogger;->logAppStartMemoryStateCapture(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V

    .line 581
    return-void
.end method

.method private logAppTransitionCancel(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)V
    .registers 9
    .param p1, "info"    # Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 482
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityMetricsLogger;->getTransitionType(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v0

    .line 483
    .local v0, "type":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 484
    return-void

    .line 486
    :cond_8
    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x478

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 487
    .local v1, "builder":Landroid/metrics/LogMaker;
    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->launchedActivity:Lcom/android/server/am/ActivityRecord;
    invoke-static {p1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    .line 488
    invoke-virtual {v1, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 489
    const/16 v2, 0x367

    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->launchedActivity:Lcom/android/server/am/ActivityRecord;
    invoke-static {p1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 490
    iget-object v2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v2, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 491
    const/16 v2, 0x31

    .line 493
    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->launchedActivity:Lcom/android/server/am/ActivityRecord;
    invoke-static {p1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 494
    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->launchedActivity:Lcom/android/server/am/ActivityRecord;
    invoke-static {p1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 495
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityMetricsLogger;->convertAppStartTransitionType(I)I

    move-result v5

    .line 496
    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->launchedActivity:Lcom/android/server/am/ActivityRecord;
    invoke-static {p1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 491
    invoke-static {v2, v3, v4, v5, v6}, Landroid/util/StatsLog;->write(IILjava/lang/String;ILjava/lang/String;)I

    .line 497
    return-void
.end method

.method private logAppTransitionMultiEvents()V
    .registers 10

    .line 501
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "index":I
    :goto_8
    if-ltz v0, :cond_3b

    .line 502
    iget-object v1, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 503
    .local v1, "info":Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;
    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityMetricsLogger;->getTransitionType(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v2

    .line 504
    .local v2, "type":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1a

    .line 505
    return-void

    .line 510
    :cond_1a
    new-instance v3, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v1, v4}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;-><init>(Lcom/android/server/am/ActivityMetricsLogger;Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;Lcom/android/server/am/ActivityMetricsLogger$1;)V

    .line 512
    .local v3, "infoSnapshot":Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;
    iget v5, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionDeviceUptime:I

    .line 513
    .local v5, "currentTransitionDeviceUptime":I
    iget v6, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionDelayMs:I

    .line 514
    .local v6, "currentTransitionDelayMs":I
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Lcom/android/server/am/-$$Lambda$ActivityMetricsLogger$EXtnEt47a9lJOX0u5R1TXhfh0XE;

    invoke-direct {v8, p0, v5, v6, v3}, Lcom/android/server/am/-$$Lambda$ActivityMetricsLogger$EXtnEt47a9lJOX0u5R1TXhfh0XE;-><init>(Lcom/android/server/am/ActivityMetricsLogger;IILcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 517
    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->launchedActivity:Lcom/android/server/am/ActivityRecord;
    invoke-static {v1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iput-object v4, v7, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    .line 501
    .end local v1    # "info":Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;
    .end local v2    # "type":I
    .end local v3    # "infoSnapshot":Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;
    .end local v5    # "currentTransitionDeviceUptime":I
    .end local v6    # "currentTransitionDelayMs":I
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 519
    .end local v0    # "index":I
    :cond_3b
    return-void
.end method

.method private notifyActivityLaunched(ILcom/android/server/am/ActivityRecord;ZZ)V
    .registers 13
    .param p1, "resultCode"    # I
    .param p2, "launchedActivity"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "processRunning"    # Z
    .param p4, "processSwitch"    # Z

    .line 286
    const/4 v0, 0x0

    if-eqz p2, :cond_8

    .line 287
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getWindowingMode()I

    move-result v1

    goto :goto_9

    .line 288
    :cond_8
    move v1, v0

    .line 290
    .local v1, "windowingMode":I
    :goto_9
    iget-wide v2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_12

    .line 291
    return-void

    .line 294
    :cond_12
    iget-object v2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 295
    .local v2, "info":Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;
    if-eqz p2, :cond_22

    if-eqz v2, :cond_22

    .line 296
    # setter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->launchedActivity:Lcom/android/server/am/ActivityRecord;
    invoke-static {v2, p2}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$102(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    .line 297
    return-void

    .line 300
    :cond_22
    iget-object v3, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    .line 301
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x1

    if-lez v3, :cond_2f

    if-nez v2, :cond_2f

    move v0, v4

    nop

    .line 302
    .local v0, "otherWindowModesLaunching":Z
    :cond_2f
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityMetricsLogger;->isLoggableResultCode(I)Z

    move-result v3

    if-eqz v3, :cond_3b

    if-eqz p2, :cond_3b

    if-eqz p4, :cond_3b

    if-nez v1, :cond_41

    :cond_3b
    if-nez v0, :cond_41

    .line 306
    invoke-direct {p0, v4}, Lcom/android/server/am/ActivityMetricsLogger;->reset(Z)V

    .line 307
    return-void

    .line 308
    :cond_41
    if-eqz v0, :cond_44

    .line 310
    return-void

    .line 315
    :cond_44
    new-instance v3, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;-><init>(Lcom/android/server/am/ActivityMetricsLogger;Lcom/android/server/am/ActivityMetricsLogger$1;)V

    .line 316
    .local v3, "newInfo":Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;
    # setter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->launchedActivity:Lcom/android/server/am/ActivityRecord;
    invoke-static {v3, p2}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$102(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    .line 317
    # setter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->currentTransitionProcessRunning:Z
    invoke-static {v3, p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$902(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;Z)Z

    .line 318
    # setter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->startResult:I
    invoke-static {v3, p1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1002(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;I)I

    .line 319
    iget-object v4, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 320
    iget-object v4, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLastWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 321
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionDeviceUptime:I

    .line 322
    return-void
.end method

.method private reset(Z)V
    .registers 4
    .param p1, "abort"    # Z

    .line 461
    if-nez p1, :cond_b

    invoke-direct {p0}, Lcom/android/server/am/ActivityMetricsLogger;->isAnyTransitionActive()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 462
    invoke-direct {p0}, Lcom/android/server/am/ActivityMetricsLogger;->logAppTransitionMultiEvents()V

    .line 464
    :cond_b
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    .line 465
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionDelayMs:I

    .line 466
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLoggedTransitionStarting:Z

    .line 467
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 468
    return-void
.end method


# virtual methods
.method logAppTransitionReportedDrawn(Lcom/android/server/am/ActivityRecord;Z)V
    .registers 19
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "restoredFromBundle"    # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 597
    iget-object v2, v0, Lcom/android/server/am/ActivityMetricsLogger;->mLastWindowingModeTransitionInfo:Landroid/util/SparseArray;

    .line 598
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getWindowingMode()I

    move-result v3

    .line 597
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 599
    .local v2, "info":Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;
    if-nez v2, :cond_13

    .line 600
    return-void

    .line 602
    :cond_13
    new-instance v3, Landroid/metrics/LogMaker;

    const/16 v4, 0x442

    invoke-direct {v3, v4}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 603
    .local v3, "builder":Landroid/metrics/LogMaker;
    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    .line 604
    const/16 v4, 0x367

    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 605
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/android/server/am/ActivityMetricsLogger;->mLastTransitionStartTime:J

    sub-long/2addr v4, v6

    .line 606
    .local v4, "startupTimeMs":J
    const/16 v6, 0x443

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 607
    if-eqz p2, :cond_3d

    .line 608
    const/16 v6, 0xd

    goto :goto_3f

    .line 609
    :cond_3d
    const/16 v6, 0xc

    .line 607
    :goto_3f
    invoke-virtual {v3, v6}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 610
    const/16 v6, 0x144

    .line 611
    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->currentTransitionProcessRunning:Z
    invoke-static {v2}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$900(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 610
    invoke-virtual {v3, v6, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 612
    iget-object v6, v0, Lcom/android/server/am/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v6, v3}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 613
    const/16 v8, 0x32

    .line 615
    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->launchedActivity:Lcom/android/server/am/ActivityRecord;
    invoke-static {v2}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 616
    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->launchedActivity:Lcom/android/server/am/ActivityRecord;
    invoke-static {v2}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    iget-object v10, v6, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 617
    if-eqz p2, :cond_69

    .line 618
    const/4 v6, 0x1

    .line 620
    :goto_67
    move v11, v6

    goto :goto_6b

    .line 619
    :cond_69
    const/4 v6, 0x2

    goto :goto_67

    .line 620
    :goto_6b
    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->launchedActivity:Lcom/android/server/am/ActivityRecord;
    invoke-static {v2}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v12, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 621
    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->currentTransitionProcessRunning:Z
    invoke-static {v2}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$900(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Z

    move-result v13

    .line 613
    move-wide v14, v4

    invoke-static/range {v8 .. v15}, Landroid/util/StatsLog;->write(IILjava/lang/String;ILjava/lang/String;ZJ)I

    .line 623
    return-void
.end method

.method logWindowState()V
    .registers 8

    .line 176
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 177
    .local v0, "now":J
    iget v2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1c

    .line 181
    iget-object v2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/server/am/ActivityMetricsLogger;->TRON_WINDOW_STATE_VARZ_STRINGS:[Ljava/lang/String;

    iget v5, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    aget-object v4, v4, v5

    iget-wide v5, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLastLogTimeSecs:J

    sub-long v5, v0, v5

    long-to-int v5, v5

    invoke-static {v2, v4, v5}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 184
    :cond_1c
    iput-wide v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLastLogTimeSecs:J

    .line 186
    iput v3, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    .line 187
    iget-object v2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 188
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isActivityTypeAssistant()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 189
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    .line 190
    return-void

    .line 193
    :cond_30
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v3

    .line 194
    .local v3, "windowingMode":I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_41

    .line 195
    iget-object v5, p0, Lcom/android/server/am/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, v2}, Lcom/android/server/am/ActivityStackSupervisor;->findStackBehind(Lcom/android/server/am/ActivityStack;)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 196
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v3

    .line 198
    :cond_41
    const/4 v5, 0x1

    if-eq v3, v5, :cond_6f

    packed-switch v3, :pswitch_data_74

    .line 210
    if-nez v3, :cond_4a

    goto :goto_73

    .line 211
    :cond_4a
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown windowing mode for stack="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " windowingMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 207
    :pswitch_69
    iput v4, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    .line 208
    goto :goto_73

    .line 204
    :pswitch_6c
    iput v5, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    .line 205
    goto :goto_73

    .line 200
    :cond_6f
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    .line 201
    nop

    .line 215
    :goto_73
    return-void

    :pswitch_data_74
    .packed-switch 0x3
        :pswitch_6c
        :pswitch_6c
        :pswitch_69
    .end packed-switch
.end method

.method notifyActivityLaunched(ILcom/android/server/am/ActivityRecord;)V
    .registers 8
    .param p1, "resultCode"    # I
    .param p2, "launchedActivity"    # Lcom/android/server/am/ActivityRecord;

    .line 237
    invoke-direct {p0, p2}, Lcom/android/server/am/ActivityMetricsLogger;->findProcessForActivity(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 238
    .local v0, "processRecord":Lcom/android/server/am/ProcessRecord;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    move v3, v2

    goto :goto_b

    :cond_a
    move v3, v1

    .line 244
    .local v3, "processRunning":Z
    :goto_b
    if-eqz v0, :cond_15

    .line 245
    invoke-direct {p0, v0, p2}, Lcom/android/server/am/ActivityMetricsLogger;->hasStartedActivity(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)Z

    move-result v4

    if-nez v4, :cond_14

    goto :goto_15

    :cond_14
    goto :goto_16

    :cond_15
    :goto_15
    move v1, v2

    .line 247
    .local v1, "processSwitch":Z
    :goto_16
    invoke-direct {p0, p1, p2, v3, v1}, Lcom/android/server/am/ActivityMetricsLogger;->notifyActivityLaunched(ILcom/android/server/am/ActivityRecord;ZZ)V

    .line 248
    return-void
.end method

.method notifyActivityLaunching()V
    .registers 3

    .line 222
    invoke-direct {p0}, Lcom/android/server/am/ActivityMetricsLogger;->isAnyTransitionActive()Z

    move-result v0

    if-nez v0, :cond_10

    .line 224
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    .line 225
    iget-wide v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    iput-wide v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLastTransitionStartTime:J

    .line 227
    :cond_10
    return-void
.end method

.method notifyBindApplication(Lcom/android/server/am/ProcessRecord;)V
    .registers 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 435
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_26

    .line 436
    iget-object v1, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 439
    .local v1, "info":Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;
    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->launchedActivity:Lcom/android/server/am/ActivityRecord;
    invoke-static {v1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-ne v2, v3, :cond_23

    .line 440
    invoke-direct {p0}, Lcom/android/server/am/ActivityMetricsLogger;->calculateCurrentDelay()I

    move-result v2

    # setter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->bindApplicationDelayMs:I
    invoke-static {v1, v2}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$402(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;I)I

    .line 435
    .end local v1    # "info":Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;
    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 443
    .end local v0    # "i":I
    :cond_26
    return-void
.end method

.method notifyStartingWindowDrawn(IJ)V
    .registers 6
    .param p1, "windowingMode"    # I
    .param p2, "timestamp"    # J

    .line 353
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 354
    .local v0, "info":Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;
    if-eqz v0, :cond_1d

    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->loggedStartingWindowDrawn:Z
    invoke-static {v0}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1200(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_1d

    .line 357
    :cond_11
    const/4 v1, 0x1

    # setter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->loggedStartingWindowDrawn:Z
    invoke-static {v0, v1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1202(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;Z)Z

    .line 358
    invoke-direct {p0, p2, p3}, Lcom/android/server/am/ActivityMetricsLogger;->calculateDelay(J)I

    move-result v1

    # setter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->startingWindowDelayMs:I
    invoke-static {v0, v1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$302(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;I)I

    .line 359
    return-void

    .line 355
    :cond_1d
    :goto_1d
    return-void
.end method

.method notifyTransitionStarting(Landroid/util/SparseIntArray;J)V
    .registers 8
    .param p1, "windowingModeToReason"    # Landroid/util/SparseIntArray;
    .param p2, "timestamp"    # J

    .line 368
    invoke-direct {p0}, Lcom/android/server/am/ActivityMetricsLogger;->isAnyTransitionActive()Z

    move-result v0

    if-eqz v0, :cond_40

    iget-boolean v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLoggedTransitionStarting:Z

    if-eqz v0, :cond_b

    goto :goto_40

    .line 372
    :cond_b
    invoke-direct {p0, p2, p3}, Lcom/android/server/am/ActivityMetricsLogger;->calculateDelay(J)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionDelayMs:I

    .line 373
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLoggedTransitionStarting:Z

    .line 374
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .local v1, "index":I
    :goto_19
    move v0, v1

    .end local v1    # "index":I
    .local v0, "index":I
    if-ltz v0, :cond_35

    .line 375
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 376
    .local v1, "windowingMode":I
    iget-object v2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 378
    .local v2, "info":Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;
    if-nez v2, :cond_2b

    .line 379
    goto :goto_32

    .line 381
    :cond_2b
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    # setter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->reason:I
    invoke-static {v2, v3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$202(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;I)I

    .line 374
    .end local v1    # "windowingMode":I
    .end local v2    # "info":Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;
    :goto_32
    add-int/lit8 v1, v0, -0x1

    .end local v0    # "index":I
    .local v1, "index":I
    goto :goto_19

    .line 383
    .end local v1    # "index":I
    :cond_35
    invoke-direct {p0}, Lcom/android/server/am/ActivityMetricsLogger;->allWindowsDrawn()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 384
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityMetricsLogger;->reset(Z)V

    .line 386
    :cond_3f
    return-void

    .line 369
    :cond_40
    :goto_40
    return-void
.end method

.method notifyVisibilityChanged(Lcom/android/server/am/ActivityRecord;)V
    .registers 7
    .param p1, "activityRecord"    # Lcom/android/server/am/ActivityRecord;

    .line 394
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    .line 395
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getWindowingMode()I

    move-result v1

    .line 394
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 396
    .local v0, "info":Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;
    if-nez v0, :cond_f

    .line 397
    return-void

    .line 399
    :cond_f
    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->launchedActivity:Lcom/android/server/am/ActivityRecord;
    invoke-static {v0}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-eq v1, p1, :cond_16

    .line 400
    return-void

    .line 402
    :cond_16
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 403
    .local v1, "t":Lcom/android/server/am/TaskRecord;
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    .line 404
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iput-object v1, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 405
    iput-object p1, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 406
    iget-object v3, p0, Lcom/android/server/am/ActivityMetricsLogger;->mHandler:Lcom/android/server/am/ActivityMetricsLogger$H;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lcom/android/server/am/ActivityMetricsLogger$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 407
    return-void
.end method

.method notifyWindowsDrawn(IJ)V
    .registers 6
    .param p1, "windowingMode"    # I
    .param p2, "timestamp"    # J

    .line 338
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 339
    .local v0, "info":Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;
    if-eqz v0, :cond_2b

    # getter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->loggedWindowsDrawn:Z
    invoke-static {v0}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_2b

    .line 342
    :cond_11
    invoke-direct {p0, p2, p3}, Lcom/android/server/am/ActivityMetricsLogger;->calculateDelay(J)I

    move-result v1

    # setter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->windowsDrawnDelayMs:I
    invoke-static {v0, v1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$502(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;I)I

    .line 343
    const/4 v1, 0x1

    # setter for: Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->loggedWindowsDrawn:Z
    invoke-static {v0, v1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1102(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;Z)Z

    .line 344
    invoke-direct {p0}, Lcom/android/server/am/ActivityMetricsLogger;->allWindowsDrawn()Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-boolean v1, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLoggedTransitionStarting:Z

    if-eqz v1, :cond_2a

    .line 345
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityMetricsLogger;->reset(Z)V

    .line 347
    :cond_2a
    return-void

    .line 340
    :cond_2b
    :goto_2b
    return-void
.end method
