.class public Lcom/android/server/job/JobSchedulerService;
.super Lcom/android/server/SystemService;
.source "JobSchedulerService.java"

# interfaces
.implements Lcom/android/server/job/StateChangedListener;
.implements Lcom/android/server/job/JobCompletedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;,
        Lcom/android/server/job/JobSchedulerService$DeferredJobCounter;,
        Lcom/android/server/job/JobSchedulerService$StandbyTracker;,
        Lcom/android/server/job/JobSchedulerService$LocalService;,
        Lcom/android/server/job/JobSchedulerService$HeartbeatAlarmListener;,
        Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;,
        Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;,
        Lcom/android/server/job/JobSchedulerService$JobHandler;,
        Lcom/android/server/job/JobSchedulerService$Constants;,
        Lcom/android/server/job/JobSchedulerService$ConstantsObserver;
    }
.end annotation


# static fields
.field static final ACTIVE_INDEX:I = 0x0

.field public static final DEBUG:Z

.field public static final DEBUG_STANDBY:Z

.field private static final ENFORCE_MAX_JOBS:Z = true

.field static final FREQUENT_INDEX:I = 0x2

.field static final HEARTBEAT_TAG:Ljava/lang/String; = "*job.heartbeat*"

.field private static final MAX_JOBS_PER_APP:I = 0x64

.field private static final MAX_JOB_CONTEXTS_COUNT:I = 0x10

.field static final MSG_CHECK_JOB:I = 0x1

.field static final MSG_CHECK_JOB_GREEDY:I = 0x3

.field static final MSG_JOB_EXPIRED:I = 0x0

.field static final MSG_STOP_JOB:I = 0x2

.field static final MSG_UID_ACTIVE:I = 0x6

.field static final MSG_UID_GONE:I = 0x5

.field static final MSG_UID_IDLE:I = 0x7

.field static final MSG_UID_STATE_CHANGED:I = 0x4

.field static final NEVER_INDEX:I = 0x4

.field static final RARE_INDEX:I = 0x3

.field public static final TAG:Ljava/lang/String; = "JobScheduler"

.field static final WORKING_INDEX:I = 0x1

.field static final mEnqueueTimeComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static sElapsedRealtimeClock:Ljava/time/Clock;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static sSystemClock:Ljava/time/Clock;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static sUptimeMillisClock:Ljava/time/Clock;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field final mActiveServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/job/JobServiceContext;",
            ">;"
        }
    .end annotation
.end field

.field mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field mAppStateTracker:Lcom/android/server/AppStateTracker;

.field final mBackingUpUids:Landroid/util/SparseIntArray;

.field private final mBatteryController:Lcom/android/server/job/controllers/BatteryController;

.field mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBeingUltraPowerSavingMode:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field final mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

.field final mConstantsObserver:Lcom/android/server/job/JobSchedulerService$ConstantsObserver;

.field private final mControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/StateController;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceIdleJobsController:Lcom/android/server/job/controllers/DeviceIdleJobsController;

.field final mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

.field mHeartbeat:J

.field final mHeartbeatAlarm:Lcom/android/server/job/JobSchedulerService$HeartbeatAlarmListener;

.field volatile mInParole:Z

.field private final mIsUidActivePredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

.field final mJobSchedulerStub:Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

.field private final mJobTimeUpdater:Ljava/lang/Runnable;

.field final mJobs:Lcom/android/server/job/JobStore;

.field mLastHeartbeatTime:J

.field final mLastJobHeartbeats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

.field mLocalPM:Landroid/content/pm/PackageManagerInternal;

.field final mLock:Ljava/lang/Object;

.field mMaxActiveJobs:I

.field private final mMaybeQueueFunctor:Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

.field final mNextBucketHeartbeat:[J

.field final mPendingJobs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final mReadyQueueFunctor:Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;

.field mReadyToRock:Z

.field mReportedActive:Z

.field final mStandbyTracker:Lcom/android/server/job/JobSchedulerService$StandbyTracker;

.field mStartedUsers:[I

.field private final mStorageController:Lcom/android/server/job/controllers/StorageController;

.field private final mTimeSetReceiver:Landroid/content/BroadcastReceiver;

.field mTmpAssignAct:[Z

.field mTmpAssignContextIdToJobMap:[Lcom/android/server/job/controllers/JobStatus;

.field mTmpAssignPreferredUidForContext:[I

.field private final mUidObserver:Landroid/app/IUidObserver;

.field final mUidPriorityOverride:Landroid/util/SparseIntArray;

.field private mUltraPowerSaverController:Lcom/android/server/job/controllers/UltraPowerSaverController;

.field final mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 134
    const-string v0, "JobScheduler"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 135
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_f

    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    const/4 v0, 0x1

    :goto_10
    sput-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    .line 145
    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v0

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    .line 147
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillisClock()Ljava/time/Clock;

    move-result-object v0

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    .line 149
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeClock()Ljava/time/Clock;

    move-result-object v0

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 643
    sget-object v0, Lcom/android/server/job/-$$Lambda$JobSchedulerService$V6_ZmVmzJutg4w0s0LktDOsRAss;->INSTANCE:Lcom/android/server/job/-$$Lambda$JobSchedulerService$V6_ZmVmzJutg4w0s0LktDOsRAss;

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->mEnqueueTimeComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 1120
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 152
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 158
    new-instance v0, Lcom/android/server/job/JobPackageTracker;

    invoke-direct {v0}, Lcom/android/server/job/JobPackageTracker;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    .line 190
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    .line 221
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/job/JobSchedulerService;->mMaxActiveJobs:I

    .line 226
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    .line 231
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseIntArray;

    .line 240
    const/4 v0, 0x5

    new-array v0, v0, [J

    fill-array-data v0, :array_18a

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mNextBucketHeartbeat:[J

    .line 241
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/job/JobSchedulerService;->mHeartbeat:J

    .line 242
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/JobSchedulerService;->mLastHeartbeatTime:J

    .line 264
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLastJobHeartbeats:Landroid/util/SparseArray;

    .line 267
    new-instance v0, Lcom/android/server/job/JobSchedulerService$HeartbeatAlarmListener;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$HeartbeatAlarmListener;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHeartbeatAlarm:Lcom/android/server/job/JobSchedulerService$HeartbeatAlarmListener;

    .line 277
    const/16 v0, 0x10

    new-array v1, v0, [Lcom/android/server/job/controllers/JobStatus;

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mTmpAssignContextIdToJobMap:[Lcom/android/server/job/controllers/JobStatus;

    .line 281
    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mTmpAssignAct:[Z

    .line 285
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mTmpAssignPreferredUidForContext:[I

    .line 662
    new-instance v0, Lcom/android/server/job/JobSchedulerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$1;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 769
    new-instance v0, Lcom/android/server/job/JobSchedulerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$2;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mUidObserver:Landroid/app/IUidObserver;

    .line 831
    new-instance v0, Lcom/android/server/job/-$$Lambda$JobSchedulerService$AauD0it1BcgWldVm_V1m2Jo7_Zc;

    invoke-direct {v0, p0}, Lcom/android/server/job/-$$Lambda$JobSchedulerService$AauD0it1BcgWldVm_V1m2Jo7_Zc;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mIsUidActivePredicate:Ljava/util/function/Predicate;

    .line 1170
    new-instance v0, Lcom/android/server/job/JobSchedulerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$3;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mTimeSetReceiver:Landroid/content/BroadcastReceiver;

    .line 1190
    new-instance v0, Lcom/android/server/job/-$$Lambda$JobSchedulerService$nXpbkYDrU0yC5DuTafFiblXBdTY;

    invoke-direct {v0, p0}, Lcom/android/server/job/-$$Lambda$JobSchedulerService$nXpbkYDrU0yC5DuTafFiblXBdTY;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobTimeUpdater:Ljava/lang/Runnable;

    .line 1746
    new-instance v0, Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mReadyQueueFunctor:Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;

    .line 1852
    new-instance v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mMaybeQueueFunctor:Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

    .line 1122
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLocalPM:Landroid/content/pm/PackageManagerInternal;

    .line 1123
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 1124
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 1123
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 1128
    new-instance v0, Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-static {}, Lcom/android/server/MiuiFgThread;->get()Lcom/android/server/MiuiFgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/MiuiFgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;-><init>(Lcom/android/server/job/JobSchedulerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    .line 1129
    new-instance v0, Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-direct {v0}, Lcom/android/server/job/JobSchedulerService$Constants;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 1130
    new-instance v0, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;-><init>(Lcom/android/server/job/JobSchedulerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConstantsObserver:Lcom/android/server/job/JobSchedulerService$ConstantsObserver;

    .line 1131
    new-instance v0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobSchedulerStub:Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

    .line 1134
    new-instance v0, Lcom/android/server/job/JobSchedulerService$StandbyTracker;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$StandbyTracker;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mStandbyTracker:Lcom/android/server/job/JobSchedulerService$StandbyTracker;

    .line 1135
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 1136
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStandbyTracker:Lcom/android/server/job/JobSchedulerService$StandbyTracker;

    invoke-virtual {v0, v1}, Landroid/app/usage/UsageStatsManagerInternal;->addAppIdleStateChangeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V

    .line 1139
    const-class v0, Lcom/android/server/job/JobSchedulerInternal;

    new-instance v1, Lcom/android/server/job/JobSchedulerService$LocalService;

    invoke-direct {v1, p0}, Lcom/android/server/job/JobSchedulerService$LocalService;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/JobSchedulerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1142
    invoke-static {p0}, Lcom/android/server/job/JobStore;->initAndGet(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/JobStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 1145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 1146
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/server/job/controllers/ConnectivityController;

    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/ConnectivityController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1147
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/server/job/controllers/TimeController;

    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/TimeController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1148
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/server/job/controllers/IdleController;

    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/IdleController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1149
    new-instance v0, Lcom/android/server/job/controllers/BatteryController;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/BatteryController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryController:Lcom/android/server/job/controllers/BatteryController;

    .line 1150
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryController:Lcom/android/server/job/controllers/BatteryController;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1151
    new-instance v0, Lcom/android/server/job/controllers/StorageController;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/StorageController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mStorageController:Lcom/android/server/job/controllers/StorageController;

    .line 1152
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStorageController:Lcom/android/server/job/controllers/StorageController;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1153
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/server/job/controllers/BackgroundJobsController;

    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/BackgroundJobsController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1154
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/server/job/controllers/ContentObserverController;

    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/ContentObserverController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1155
    new-instance v0, Lcom/android/server/job/controllers/DeviceIdleJobsController;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/DeviceIdleJobsController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mDeviceIdleJobsController:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    .line 1156
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mDeviceIdleJobsController:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1158
    new-instance v0, Lcom/android/server/job/controllers/UltraPowerSaverController;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/UltraPowerSaverController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mUltraPowerSaverController:Lcom/android/server/job/controllers/UltraPowerSaverController;

    .line 1159
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mUltraPowerSaverController:Lcom/android/server/job/controllers/UltraPowerSaverController;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1164
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0}, Lcom/android/server/job/JobStore;->jobTimesInflatedValid()Z

    move-result v0

    if-nez v0, :cond_189

    .line 1165
    const-string v0, "JobScheduler"

    const-string v1, "!!! RTC not yet good; tracking time updates for job scheduling"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mTimeSetReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.TIME_SET"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1168
    :cond_189
    return-void

    :array_18a
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x7fffffffffffffffL
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/server/job/JobSchedulerService;Landroid/content/Intent;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/job/JobSchedulerService;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 131
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/job/JobSchedulerService;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/job/JobSchedulerService;

    .line 131
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobTimeUpdater:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/job/JobSchedulerService;
    .param p1, "x1"    # Lcom/android/server/job/controllers/JobStatus;

    .line 131
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/job/JobSchedulerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/job/JobSchedulerService;

    .line 131
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService;->queueReadyJobsForExecutionLocked()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/job/JobSchedulerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/job/JobSchedulerService;

    .line 131
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService;->maybeQueueReadyJobsForExecutionLocked()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/job/JobSchedulerService;
    .param p1, "x1"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "x2"    # Lcom/android/server/job/controllers/JobStatus;
    .param p3, "x3"    # Ljava/lang/String;

    .line 131
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/DeviceIdleJobsController;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/job/JobSchedulerService;

    .line 131
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mDeviceIdleJobsController:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/job/JobSchedulerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/job/JobSchedulerService;

    .line 131
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService;->maybeRunPendingJobsLocked()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/job/JobSchedulerService;
    .param p1, "x1"    # Lcom/android/server/job/controllers/JobStatus;

    .line 131
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyActiveLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    return v0
.end method

.method static addOrderedItem(Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/Comparator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;TT;",
            "Ljava/util/Comparator<",
            "TT;>;)V"
        }
    .end annotation

    .line 651
    .local p0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p1, "newItem":Ljava/lang/Object;, "TT;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    invoke-static {p0, p1, p2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 652
    .local v0, "where":I
    if-gez v0, :cond_7

    .line 653
    not-int v0, v0

    .line 655
    :cond_7
    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 656
    return-void
.end method

.method private adjustJobPriority(ILcom/android/server/job/controllers/JobStatus;)I
    .registers 5
    .param p1, "curPriority"    # I
    .param p2, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 2081
    const/16 v0, 0x28

    if-ge p1, v0, :cond_1f

    .line 2082
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v0, p2}, Lcom/android/server/job/JobPackageTracker;->getLoadFactor(Lcom/android/server/job/controllers/JobStatus;)F

    move-result v0

    .line 2083
    .local v0, "factor":F
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->HEAVY_USE_FACTOR:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_15

    .line 2084
    add-int/lit8 p1, p1, -0x50

    goto :goto_1f

    .line 2085
    :cond_15
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->MODERATE_USE_FACTOR:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1f

    .line 2086
    add-int/lit8 p1, p1, -0x28

    .line 2089
    .end local v0    # "factor":F
    :cond_1f
    :goto_1f
    return p1
.end method

.method private assignJobsToContextsLocked()V
    .registers 20

    .line 2111
    move-object/from16 v1, p0

    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 2112
    const-string v0, "JobScheduler"

    invoke-direct/range {p0 .. p0}, Lcom/android/server/job/JobSchedulerService;->printPendingQueue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2117
    :cond_f
    const/4 v2, 0x0

    :try_start_10
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getMemoryTrimLevel()I

    move-result v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_18} :catch_19

    .line 2120
    .local v0, "memLevel":I
    goto :goto_1c

    .line 2118
    .end local v0    # "memLevel":I
    :catch_19
    move-exception v0

    .line 2119
    .local v0, "e":Landroid/os/RemoteException;
    nop

    .line 2119
    .end local v0    # "e":Landroid/os/RemoteException;
    move v0, v2

    .line 2121
    .local v0, "memLevel":I
    :goto_1c
    packed-switch v0, :pswitch_data_208

    .line 2132
    iget-object v3, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v3, v3, Lcom/android/server/job/JobSchedulerService$Constants;->BG_NORMAL_JOB_COUNT:I

    iput v3, v1, Lcom/android/server/job/JobSchedulerService;->mMaxActiveJobs:I

    goto :goto_3b

    .line 2129
    :pswitch_26
    iget-object v3, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v3, v3, Lcom/android/server/job/JobSchedulerService$Constants;->BG_CRITICAL_JOB_COUNT:I

    iput v3, v1, Lcom/android/server/job/JobSchedulerService;->mMaxActiveJobs:I

    .line 2130
    goto :goto_3b

    .line 2126
    :pswitch_2d
    iget-object v3, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v3, v3, Lcom/android/server/job/JobSchedulerService$Constants;->BG_LOW_JOB_COUNT:I

    iput v3, v1, Lcom/android/server/job/JobSchedulerService;->mMaxActiveJobs:I

    .line 2127
    goto :goto_3b

    .line 2123
    :pswitch_34
    iget-object v3, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v3, v3, Lcom/android/server/job/JobSchedulerService$Constants;->BG_MODERATE_JOB_COUNT:I

    iput v3, v1, Lcom/android/server/job/JobSchedulerService;->mMaxActiveJobs:I

    .line 2124
    nop

    .line 2136
    :goto_3b
    iget-object v3, v1, Lcom/android/server/job/JobSchedulerService;->mTmpAssignContextIdToJobMap:[Lcom/android/server/job/controllers/JobStatus;

    .line 2137
    .local v3, "contextIdToJobMap":[Lcom/android/server/job/controllers/JobStatus;
    iget-object v4, v1, Lcom/android/server/job/JobSchedulerService;->mTmpAssignAct:[Z

    .line 2138
    .local v4, "act":[Z
    iget-object v5, v1, Lcom/android/server/job/JobSchedulerService;->mTmpAssignPreferredUidForContext:[I

    .line 2139
    .local v5, "preferredUidForContext":[I
    const/4 v6, 0x0

    .line 2140
    .local v6, "numActive":I
    const/4 v7, 0x0

    .line 2141
    .local v7, "numForeground":I
    move v8, v7

    move v7, v6

    move v6, v2

    .line 2141
    .local v6, "i":I
    .local v7, "numActive":I
    .local v8, "numForeground":I
    :goto_46
    const/16 v9, 0x28

    const/16 v10, 0x10

    if-ge v6, v10, :cond_6f

    .line 2142
    iget-object v10, v1, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/job/JobServiceContext;

    .line 2143
    .local v10, "js":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v10}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v11

    .line 2144
    .local v11, "status":Lcom/android/server/job/controllers/JobStatus;
    aput-object v11, v3, v6

    if-eqz v11, :cond_64

    .line 2145
    add-int/lit8 v7, v7, 0x1

    .line 2146
    iget v12, v11, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedPriority:I

    if-lt v12, v9, :cond_64

    .line 2147
    add-int/lit8 v8, v8, 0x1

    .line 2150
    :cond_64
    aput-boolean v2, v4, v6

    .line 2151
    invoke-virtual {v10}, Lcom/android/server/job/JobServiceContext;->getPreferredUid()I

    move-result v9

    aput v9, v5, v6

    .line 2141
    .end local v10    # "js":Lcom/android/server/job/JobServiceContext;
    .end local v11    # "status":Lcom/android/server/job/controllers/JobStatus;
    add-int/lit8 v6, v6, 0x1

    goto :goto_46

    .line 2153
    .end local v6    # "i":I
    :cond_6f
    sget-boolean v6, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v6, :cond_7f

    .line 2154
    const-string v6, "JobScheduler"

    const-string/jumbo v11, "running jobs initial"

    invoke-direct {v1, v3, v11}, Lcom/android/server/job/JobSchedulerService;->printContextIdToJobMap([Lcom/android/server/job/controllers/JobStatus;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    :cond_7f
    move v6, v2

    .line 2156
    .restart local v6    # "i":I
    :goto_80
    iget-object v11, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v6, v11, :cond_121

    .line 2157
    iget-object v11, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/job/controllers/JobStatus;

    .line 2160
    .local v11, "nextPending":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v1, v11, v3}, Lcom/android/server/job/JobSchedulerService;->findJobContextIdFromMap(Lcom/android/server/job/controllers/JobStatus;[Lcom/android/server/job/controllers/JobStatus;)I

    move-result v12

    .line 2161
    .local v12, "jobRunningContext":I
    const/4 v13, -0x1

    if-eq v12, v13, :cond_9c

    .line 2162
    nop

    .line 2156
    move/from16 v17, v0

    goto/16 :goto_118

    .line 2165
    :cond_9c
    invoke-direct {v1, v11}, Lcom/android/server/job/JobSchedulerService;->evaluateJobPriorityLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v14

    .line 2166
    .local v14, "priority":I
    iput v14, v11, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedPriority:I

    .line 2171
    const v15, 0x7fffffff

    .line 2172
    .local v15, "minPriority":I
    const/16 v16, -0x1

    .line 2173
    .local v16, "minPriorityContextId":I
    move/from16 v18, v15

    move v15, v2

    move/from16 v2, v18

    .line 2173
    .local v2, "minPriority":I
    .local v15, "j":I
    :goto_ac
    if-ge v15, v10, :cond_101

    .line 2174
    aget-object v10, v3, v15

    .line 2175
    .local v10, "job":Lcom/android/server/job/controllers/JobStatus;
    aget v13, v5, v15

    .line 2176
    .local v13, "preferredUid":I
    if-nez v10, :cond_d7

    .line 2177
    iget v9, v1, Lcom/android/server/job/JobSchedulerService;->mMaxActiveJobs:I

    if-lt v7, v9, :cond_c6

    const/16 v9, 0x28

    if-lt v14, v9, :cond_c3

    iget-object v9, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v9, v9, Lcom/android/server/job/JobSchedulerService$Constants;->FG_JOB_COUNT:I

    if-ge v8, v9, :cond_c3

    goto :goto_c6

    .line 2173
    .end local v10    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v13    # "preferredUid":I
    :cond_c3
    move/from16 v17, v0

    goto :goto_f7

    .line 2180
    .restart local v10    # "job":Lcom/android/server/job/controllers/JobStatus;
    .restart local v13    # "preferredUid":I
    :cond_c6
    :goto_c6
    invoke-virtual {v11}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v9

    if-eq v13, v9, :cond_cf

    const/4 v9, -0x1

    if-ne v13, v9, :cond_c3

    .line 2184
    :cond_cf
    move/from16 v16, v15

    .line 2185
    nop

    .line 2203
    move/from16 v17, v0

    move/from16 v0, v16

    goto :goto_105

    .line 2192
    :cond_d7
    invoke-virtual {v10}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v9

    move/from16 v17, v0

    invoke-virtual {v11}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v0

    .line 2192
    .end local v0    # "memLevel":I
    .local v17, "memLevel":I
    if-eq v9, v0, :cond_e4

    .line 2193
    goto :goto_f7

    .line 2195
    :cond_e4
    invoke-direct {v1, v10}, Lcom/android/server/job/JobSchedulerService;->evaluateJobPriorityLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v0

    iget v9, v11, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedPriority:I

    if-lt v0, v9, :cond_ed

    .line 2196
    goto :goto_f7

    .line 2198
    :cond_ed
    iget v0, v11, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedPriority:I

    if-le v2, v0, :cond_f7

    .line 2199
    iget v0, v11, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedPriority:I

    .line 2200
    .end local v2    # "minPriority":I
    .local v0, "minPriority":I
    move v2, v15

    .line 2173
    .end local v10    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v13    # "preferredUid":I
    .end local v16    # "minPriorityContextId":I
    .local v2, "minPriorityContextId":I
    move/from16 v16, v2

    move v2, v0

    .line 2173
    .end local v0    # "minPriority":I
    .local v2, "minPriority":I
    .restart local v16    # "minPriorityContextId":I
    :cond_f7
    :goto_f7
    add-int/lit8 v15, v15, 0x1

    move/from16 v0, v17

    const/16 v9, 0x28

    const/16 v10, 0x10

    const/4 v13, -0x1

    goto :goto_ac

    .line 2203
    .end local v15    # "j":I
    .end local v17    # "memLevel":I
    .local v0, "memLevel":I
    :cond_101
    move/from16 v17, v0

    move/from16 v0, v16

    .line 2203
    .end local v16    # "minPriorityContextId":I
    .local v0, "minPriorityContextId":I
    .restart local v17    # "memLevel":I
    :goto_105
    const/4 v9, -0x1

    if-eq v0, v9, :cond_116

    .line 2204
    aput-object v11, v3, v0

    .line 2205
    const/4 v9, 0x1

    aput-boolean v9, v4, v0

    .line 2206
    add-int/lit8 v7, v7, 0x1

    .line 2207
    const/16 v9, 0x28

    if-lt v14, v9, :cond_118

    .line 2208
    add-int/lit8 v8, v8, 0x1

    .line 2208
    .end local v0    # "minPriorityContextId":I
    .end local v2    # "minPriority":I
    .end local v11    # "nextPending":Lcom/android/server/job/controllers/JobStatus;
    .end local v12    # "jobRunningContext":I
    .end local v14    # "priority":I
    goto :goto_118

    .line 2156
    :cond_116
    const/16 v9, 0x28

    :cond_118
    :goto_118
    add-int/lit8 v6, v6, 0x1

    move/from16 v0, v17

    const/4 v2, 0x0

    const/16 v10, 0x10

    goto/16 :goto_80

    .line 2212
    .end local v6    # "i":I
    .end local v17    # "memLevel":I
    .local v0, "memLevel":I
    :cond_121
    move/from16 v17, v0

    .line 2212
    .end local v0    # "memLevel":I
    .restart local v17    # "memLevel":I
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_133

    .line 2213
    const-string v0, "JobScheduler"

    const-string/jumbo v2, "running jobs final"

    invoke-direct {v1, v3, v2}, Lcom/android/server/job/JobSchedulerService;->printContextIdToJobMap([Lcom/android/server/job/controllers/JobStatus;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2215
    :cond_133
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v0, v7, v8}, Lcom/android/server/job/JobPackageTracker;->noteConcurrency(II)V

    .line 2216
    const/4 v0, 0x0

    .line 2216
    .local v0, "i":I
    :goto_139
    const/16 v2, 0x10

    if-ge v0, v2, :cond_205

    .line 2217
    const/4 v6, 0x0

    .line 2218
    .local v6, "preservePreferredUid":Z
    aget-boolean v9, v4, v0

    if-eqz v9, :cond_1f4

    .line 2219
    iget-object v9, v1, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v9}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v9

    .line 2220
    .local v9, "js":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v9, :cond_184

    .line 2221
    sget-boolean v10, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v10, :cond_177

    .line 2222
    const-string v10, "JobScheduler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "preempting job: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v12}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2225
    :cond_177
    iget-object v10, v1, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v10}, Lcom/android/server/job/JobServiceContext;->preemptExecutingJobLocked()V

    .line 2226
    const/4 v6, 0x1

    goto :goto_1f4

    .line 2228
    :cond_184
    aget-object v10, v3, v0

    .line 2229
    .local v10, "pendingJob":Lcom/android/server/job/controllers/JobStatus;
    sget-boolean v11, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v11, :cond_1ac

    .line 2230
    const-string v11, "JobScheduler"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "About to run job on context "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2231
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", job: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2230
    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2233
    :cond_1ac
    const/4 v11, 0x0

    .line 2233
    .local v11, "ic":I
    :goto_1ad
    iget-object v12, v1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_1c3

    .line 2234
    iget-object v12, v1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v12, v10}, Lcom/android/server/job/controllers/StateController;->prepareForExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 2233
    add-int/lit8 v11, v11, 0x1

    goto :goto_1ad

    .line 2236
    .end local v11    # "ic":I
    :cond_1c3
    iget-object v11, v1, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v11, v10}, Lcom/android/server/job/JobServiceContext;->executeRunnableJob(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v11

    if-nez v11, :cond_1e7

    .line 2237
    const-string v11, "JobScheduler"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error executing "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2239
    :cond_1e7
    iget-object v11, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1f4

    .line 2240
    iget-object v11, v1, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v11, v10}, Lcom/android/server/job/JobPackageTracker;->noteNonpending(Lcom/android/server/job/controllers/JobStatus;)V

    .line 2244
    .end local v9    # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local v10    # "pendingJob":Lcom/android/server/job/controllers/JobStatus;
    :cond_1f4
    :goto_1f4
    if-nez v6, :cond_201

    .line 2245
    iget-object v9, v1, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v9}, Lcom/android/server/job/JobServiceContext;->clearPreferredUid()V

    .line 2216
    .end local v6    # "preservePreferredUid":Z
    :cond_201
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_139

    .line 2248
    .end local v0    # "i":I
    :cond_205
    return-void

    nop

    nop

    :pswitch_data_208
    .packed-switch 0x1
        :pswitch_34
        :pswitch_2d
        :pswitch_26
    .end packed-switch
.end method

.method private cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Ljava/lang/String;)V
    .registers 7
    .param p1, "cancelled"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "incomingJob"    # Lcom/android/server/job/controllers/JobStatus;
    .param p3, "reason"    # Ljava/lang/String;

    .line 1021
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_1e

    const-string v0, "JobScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CANCEL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    :cond_1e
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->unprepareLocked(Landroid/app/IActivityManager;)V

    .line 1023
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/job/JobSchedulerService;->stopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)Z

    .line 1025
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1026
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobPackageTracker;->noteNonpending(Lcom/android/server/job/controllers/JobStatus;)V

    .line 1029
    :cond_36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/job/JobSchedulerService;->stopJobOnServiceContextLocked(Lcom/android/server/job/controllers/JobStatus;ILjava/lang/String;)Z

    .line 1030
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->reportActiveLocked()V

    .line 1031
    return-void
.end method

.method private cancelJobsForNonExistentUsers()V
    .registers 5

    .line 953
    const-class v0, Landroid/os/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    .line 954
    .local v0, "umi":Landroid/os/UserManagerInternal;
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 955
    :try_start_b
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0}, Landroid/os/UserManagerInternal;->getUserIds()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/job/JobStore;->removeJobsOfNonUsers([I)V

    .line 956
    monitor-exit v1

    .line 957
    return-void

    .line 956
    :catchall_16
    move-exception v2

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_16

    throw v2
.end method

.method static dumpHelp(Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 3060
    const-string v0, "Job Scheduler (jobscheduler) dump options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3061
    const-string v0, "  [-h] [package] ..."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3062
    const-string v0, "    -h: print this help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3063
    const-string v0, "  [package] is an optional package name to limit the output to."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3064
    return-void
.end method

.method private evaluateJobPriorityLocked(Lcom/android/server/job/controllers/JobStatus;)I
    .registers 6
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 2093
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getPriority()I

    move-result v0

    .line 2094
    .local v0, "priority":I
    const/16 v1, 0x1e

    if-lt v0, v1, :cond_d

    .line 2095
    invoke-direct {p0, v0, p1}, Lcom/android/server/job/JobSchedulerService;->adjustJobPriority(ILcom/android/server/job/controllers/JobStatus;)I

    move-result v1

    return v1

    .line 2097
    :cond_d
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 2098
    .local v1, "override":I
    if-eqz v1, :cond_1f

    .line 2099
    invoke-direct {p0, v1, p1}, Lcom/android/server/job/JobSchedulerService;->adjustJobPriority(ILcom/android/server/job/controllers/JobStatus;)I

    move-result v2

    return v2

    .line 2101
    :cond_1f
    invoke-direct {p0, v0, p1}, Lcom/android/server/job/JobSchedulerService;->adjustJobPriority(ILcom/android/server/job/controllers/JobStatus;)I

    move-result v2

    return v2
.end method

.method private getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 764
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 765
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    .line 766
    .local v1, "pkg":Ljava/lang/String;
    :goto_c
    return-object v1
.end method

.method private getRescheduleJobForFailureLocked(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;
    .registers 28
    .param p1, "failureToReschedule"    # Lcom/android/server/job/controllers/JobStatus;

    move-object/from16 v0, p0

    .line 1384
    move-object/from16 v14, p1

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v15

    .line 1385
    .local v15, "elapsedNowMillis":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v12

    .line 1387
    .local v12, "job":Landroid/app/job/JobInfo;
    invoke-virtual {v12}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    move-result-wide v17

    .line 1388
    .local v17, "initialBackoffMillis":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getNumFailures()I

    move-result v1

    add-int/lit8 v13, v1, 0x1

    .line 1391
    .local v13, "backoffAttempts":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->hasWorkLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_50

    .line 1392
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_WORK_RESCHEDULE_COUNT:I

    if-le v13, v1, :cond_81

    .line 1393
    const-string v1, "JobScheduler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not rescheduling "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": attempt #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " > work limit "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v4, v4, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_STANDARD_RESCHEDULE_COUNT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    return-object v2

    .line 1398
    :cond_50
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_STANDARD_RESCHEDULE_COUNT:I

    if-le v13, v1, :cond_81

    .line 1399
    const-string v1, "JobScheduler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not rescheduling "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": attempt #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " > std limit "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v4, v4, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_STANDARD_RESCHEDULE_COUNT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    return-object v2

    .line 1404
    :cond_81
    invoke-virtual {v12}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v1

    packed-switch v1, :pswitch_data_fe

    .line 1413
    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v1, :cond_a5

    .line 1414
    const-string v1, "JobScheduler"

    const-string v2, "Unrecognised back-off policy, defaulting to exponential."

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a5

    .line 1406
    :pswitch_94
    move-wide/from16 v1, v17

    .line 1407
    .local v1, "backoff":J
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v3, v3, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_LINEAR_BACKOFF_TIME:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_a2

    .line 1408
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v1, v3, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_LINEAR_BACKOFF_TIME:J

    .line 1410
    :cond_a2
    int-to-long v3, v13

    mul-long/2addr v1, v3

    .line 1411
    .local v1, "delayMillis":J
    goto :goto_bb

    .line 1417
    .end local v1    # "delayMillis":J
    :cond_a5
    :goto_a5
    :pswitch_a5
    move-wide/from16 v1, v17

    .line 1418
    .local v1, "backoff":J
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v3, v3, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_EXP_BACKOFF_TIME:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_b3

    .line 1419
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v1, v3, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_EXP_BACKOFF_TIME:J

    .line 1421
    :cond_b3
    long-to-float v3, v1

    add-int/lit8 v4, v13, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->scalb(FI)F

    move-result v3

    float-to-long v1, v3

    .line 1424
    .local v1, "delayMillis":J
    :goto_bb
    const-wide/32 v3, 0x112a880

    .line 1425
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v19

    .line 1426
    .end local v1    # "delayMillis":J
    .local v19, "delayMillis":J
    new-instance v21, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/JobSchedulerService;->getCurrentHeartbeat()J

    move-result-wide v3

    add-long v5, v15, v19

    const-wide v7, 0x7fffffffffffffffL

    .line 1429
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getLastSuccessfulRunTime()J

    move-result-wide v10

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v22

    move-object/from16 v1, v21

    move-object v2, v14

    move v9, v13

    move-object/from16 v24, v12

    move/from16 v25, v13

    move-wide/from16 v12, v22

    .end local v12    # "job":Landroid/app/job/JobInfo;
    .end local v13    # "backoffAttempts":I
    .local v24, "job":Landroid/app/job/JobInfo;
    .local v25, "backoffAttempts":I
    invoke-direct/range {v1 .. v13}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;JJJIJJ)V

    .line 1430
    .local v1, "newJob":Lcom/android/server/job/controllers/JobStatus;
    const/4 v2, 0x0

    .local v2, "ic":I
    :goto_e7
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_fd

    .line 1431
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/StateController;

    .line 1432
    .local v3, "controller":Lcom/android/server/job/controllers/StateController;
    invoke-virtual {v3, v1, v14}, Lcom/android/server/job/controllers/StateController;->rescheduleForFailureLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    .line 1430
    .end local v3    # "controller":Lcom/android/server/job/controllers/StateController;
    add-int/lit8 v2, v2, 0x1

    goto :goto_e7

    .line 1434
    .end local v2    # "ic":I
    :cond_fd
    return-object v1

    :pswitch_data_fe
    .packed-switch 0x0
        :pswitch_94
        :pswitch_a5
    .end packed-switch
.end method

.method private getRescheduleJobForPeriodic(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;
    .registers 28
    .param p1, "periodicToReschedule"    # Lcom/android/server/job/controllers/JobStatus;

    .line 1451
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 1453
    .local v0, "elapsedNow":J
    const-wide/16 v2, 0x0

    .line 1456
    .local v2, "runEarly":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1457
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v4

    sub-long/2addr v4, v0

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 1459
    :cond_19
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v4

    .line 1460
    .local v4, "flex":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v6

    .line 1461
    .local v6, "period":J
    add-long v8, v0, v2

    add-long/2addr v8, v6

    .line 1462
    .local v8, "newLatestRuntimeElapsed":J
    sub-long v23, v8, v4

    .line 1464
    .local v23, "newEarliestRunTimeElapsed":J
    sget-boolean v10, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v10, :cond_5b

    .line 1465
    const-string v10, "JobScheduler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Rescheduling executed periodic. New execution window ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v12, 0x3e8

    div-long v14, v23, v12

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, ", "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v12, v8, v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, "]s"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    :cond_5b
    new-instance v25, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/JobSchedulerService;->getCurrentHeartbeat()J

    move-result-wide v12

    const/16 v18, 0x0

    sget-object v10, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    .line 1471
    invoke-virtual {v10}, Ljava/time/Clock;->millis()J

    move-result-wide v19

    .line 1472
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getLastFailedRunTime()J

    move-result-wide v21

    move-object/from16 v10, v25

    move-object/from16 v11, p1

    move-wide/from16 v14, v23

    move-wide/from16 v16, v8

    invoke-direct/range {v10 .. v22}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;JJJIJJ)V

    .line 1468
    return-object v25
.end method

.method private isCurrentlyActiveLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 8
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 1347
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2b

    .line 1348
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/JobServiceContext;

    .line 1349
    .local v2, "serviceContext":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v2}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v3

    .line 1350
    .local v3, "running":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v3, :cond_28

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/job/controllers/JobStatus;->matches(II)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 1351
    const/4 v0, 0x1

    return v0

    .line 1347
    .end local v2    # "serviceContext":Lcom/android/server/job/JobServiceContext;
    .end local v3    # "running":Lcom/android/server/job/controllers/JobStatus;
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1354
    .end local v1    # "i":I
    :cond_2b
    return v0
.end method

.method private isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 16
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 1945
    iget-boolean v0, p0, Lcom/android/server/job/JobSchedulerService;->mBeingUltraPowerSavingMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 1946
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_11

    .line 1947
    const-string v0, "JobScheduler"

    const-string/jumbo v2, "isReadyToBeExecutedLocked: in ultra power saving mode, return false."

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    :cond_11
    return v1

    .line 1952
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v0

    .line 1954
    .local v0, "jobReady":Z
    sget-boolean v2, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v2, :cond_3d

    .line 1955
    const-string v2, "JobScheduler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isReadyToBeExecutedLocked: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ready="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    :cond_3d
    if-nez v0, :cond_62

    .line 1963
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.jobscheduler.cts.jobtestapp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 1964
    const-string v2, "JobScheduler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    NOT READY: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    :cond_61
    return v1

    .line 1969
    :cond_62
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v2, p1}, Lcom/android/server/job/JobStore;->containsJob(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v2

    .line 1971
    .local v2, "jobExists":Z
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v3

    .line 1972
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-static {v4, v3}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v4

    .line 1974
    .local v4, "userStarted":Z
    sget-boolean v5, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v5, :cond_a1

    .line 1975
    const-string v5, "JobScheduler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isReadyToBeExecutedLocked: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " exists="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " userStarted="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    :cond_a1
    if-eqz v2, :cond_249

    if-nez v4, :cond_a7

    goto/16 :goto_249

    .line 1985
    :cond_a7
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 1986
    .local v5, "jobPending":Z
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyActiveLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v6

    .line 1988
    .local v6, "jobActive":Z
    sget-boolean v7, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v7, :cond_e0

    .line 1989
    const-string v7, "JobScheduler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isReadyToBeExecutedLocked: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " pending="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " active="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    :cond_e0
    if-nez v5, :cond_248

    if-eqz v6, :cond_e6

    goto/16 :goto_248

    .line 2006
    :cond_e6
    sget-boolean v7, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    if-eqz v7, :cond_129

    .line 2007
    const-string v7, "JobScheduler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isReadyToBeExecutedLocked: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " parole="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/android/server/job/JobSchedulerService;->mInParole:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " active="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p1, Lcom/android/server/job/controllers/JobStatus;->uidActive:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " exempt="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2009
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/job/JobInfo;->isExemptedFromAppStandby()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2007
    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2011
    :cond_129
    iget-boolean v7, p0, Lcom/android/server/job/JobSchedulerService;->mInParole:Z

    if-nez v7, :cond_206

    iget-boolean v7, p1, Lcom/android/server/job/controllers/JobStatus;->uidActive:Z

    if-nez v7, :cond_206

    .line 2013
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/job/JobInfo;->isExemptedFromAppStandby()Z

    move-result v7

    if-nez v7, :cond_206

    .line 2014
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v7

    .line 2015
    .local v7, "bucket":I
    sget-boolean v8, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    if-eqz v8, :cond_16f

    .line 2016
    const-string v8, "JobScheduler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  bucket="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " heartbeat="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, p0, Lcom/android/server/job/JobSchedulerService;->mHeartbeat:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " next="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/job/JobSchedulerService;->mNextBucketHeartbeat:[J

    aget-wide v10, v10, v7

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2019
    :cond_16f
    iget-wide v8, p0, Lcom/android/server/job/JobSchedulerService;->mHeartbeat:J

    iget-object v10, p0, Lcom/android/server/job/JobSchedulerService;->mNextBucketHeartbeat:[J

    aget-wide v10, v10, v7

    cmp-long v8, v8, v10

    if-gez v8, :cond_206

    .line 2024
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->heartbeatWhenJobsLastRun(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v8

    .line 2025
    .local v8, "appLastRan":J
    iget-object v10, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-object v10, v10, Lcom/android/server/job/JobSchedulerService$Constants;->STANDBY_BEATS:[I

    array-length v10, v10

    if-ge v7, v10, :cond_1be

    iget-wide v10, p0, Lcom/android/server/job/JobSchedulerService;->mHeartbeat:J

    cmp-long v10, v10, v8

    if-lez v10, :cond_199

    iget-wide v10, p0, Lcom/android/server/job/JobSchedulerService;->mHeartbeat:J

    iget-object v12, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-object v12, v12, Lcom/android/server/job/JobSchedulerService$Constants;->STANDBY_BEATS:[I

    aget v12, v12, v7

    int-to-long v12, v12

    add-long/2addr v12, v8

    cmp-long v10, v10, v12

    if-gez v10, :cond_199

    goto :goto_1be

    .line 2039
    :cond_199
    sget-boolean v10, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    if-eqz v10, :cond_206

    .line 2040
    const-string v10, "JobScheduler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bucket deferred job aged into runnability at "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, p0, Lcom/android/server/job/JobSchedulerService;->mHeartbeat:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v7    # "bucket":I
    .end local v8    # "appLastRan":J
    goto :goto_206

    .line 2029
    .restart local v7    # "bucket":I
    .restart local v8    # "appLastRan":J
    :cond_1be
    :goto_1be
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getWhenStandbyDeferred()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_205

    .line 2030
    sget-boolean v10, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    if-eqz v10, :cond_1fc

    .line 2031
    const-string v10, "JobScheduler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bucket deferral: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, p0, Lcom/android/server/job/JobSchedulerService;->mHeartbeat:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " < "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-object v12, v12, Lcom/android/server/job/JobSchedulerService$Constants;->STANDBY_BEATS:[I

    aget v12, v12, v7

    int-to-long v12, v12

    add-long/2addr v12, v8

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2035
    :cond_1fc
    sget-object v10, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v10}, Ljava/time/Clock;->millis()J

    move-result-wide v10

    invoke-virtual {p1, v10, v11}, Lcom/android/server/job/controllers/JobStatus;->setWhenStandbyDeferred(J)V

    .line 2037
    :cond_205
    return v1

    .line 2051
    .end local v7    # "bucket":I
    .end local v8    # "appLastRan":J
    :cond_206
    :goto_206
    :try_start_206
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    .line 2052
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v8

    const/high16 v9, 0x10000000

    .line 2051
    invoke-interface {v7, v8, v9, v3}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v7
    :try_end_214
    .catch Landroid/os/RemoteException; {:try_start_206 .. :try_end_214} :catch_242

    if-eqz v7, :cond_218

    const/4 v1, 0x1

    nop

    .line 2056
    .local v1, "componentPresent":Z
    :cond_218
    nop

    .line 2055
    nop

    .line 2058
    sget-boolean v7, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v7, :cond_241

    .line 2059
    const-string v7, "JobScheduler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isReadyToBeExecutedLocked: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " componentPresent="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2064
    :cond_241
    return v1

    .line 2054
    .end local v1    # "componentPresent":Z
    :catch_242
    move-exception v1

    .line 2055
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v7

    throw v7

    .line 1997
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_248
    :goto_248
    return v1

    .line 1982
    .end local v5    # "jobPending":Z
    .end local v6    # "jobActive":Z
    :cond_249
    :goto_249
    return v1
.end method

.method private isUidActive(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 828
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/AppStateTracker;->isUidActiveSynced(I)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$AauD0it1BcgWldVm_V1m2Jo7_Zc(Lcom/android/server/job/JobSchedulerService;I)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isUidActive(I)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$dumpInternal$4(ILcom/android/server/job/controllers/JobStatus;)Z
    .registers 3
    .param p0, "filterUidFinal"    # I
    .param p1, "js"    # Lcom/android/server/job/controllers/JobStatus;

    .line 3088
    const/4 v0, -0x1

    if-eq p0, v0, :cond_1a

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-eq v0, p0, :cond_1a

    .line 3089
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-ne v0, p0, :cond_18

    goto :goto_1a

    :cond_18
    const/4 v0, 0x0

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 v0, 0x1

    .line 3088
    :goto_1b
    return v0
.end method

.method static synthetic lambda$dumpInternalProto$5(ILcom/android/server/job/controllers/JobStatus;)Z
    .registers 3
    .param p0, "filterUidFinal"    # I
    .param p1, "js"    # Lcom/android/server/job/controllers/JobStatus;

    .line 3271
    const/4 v0, -0x1

    if-eq p0, v0, :cond_1a

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-eq v0, p0, :cond_1a

    .line 3272
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-ne v0, p0, :cond_18

    goto :goto_1a

    :cond_18
    const/4 v0, 0x0

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 v0, 0x1

    .line 3271
    :goto_1b
    return v0
.end method

.method public static synthetic lambda$new$1(Lcom/android/server/job/JobSchedulerService;)V
    .registers 11

    .line 1191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1192
    .local v0, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/job/controllers/JobStatus;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1193
    .local v1, "toAdd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1196
    :try_start_d
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/android/server/job/JobStore;->getRtcCorrectedJobsLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1200
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1201
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_19
    if-ge v4, v3, :cond_51

    .line 1202
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/JobStatus;

    .line 1203
    .local v5, "oldJob":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/controllers/JobStatus;

    .line 1204
    .local v6, "newJob":Lcom/android/server/job/controllers/JobStatus;
    sget-boolean v7, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v7, :cond_49

    .line 1205
    const-string v7, "JobScheduler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  replacing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " with "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    :cond_49
    const-string v7, "deferred rtc calculation"

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Ljava/lang/String;)V

    .line 1201
    .end local v5    # "oldJob":Lcom/android/server/job/controllers/JobStatus;
    .end local v6    # "newJob":Lcom/android/server/job/controllers/JobStatus;
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 1209
    .end local v3    # "N":I
    .end local v4    # "i":I
    :cond_51
    monitor-exit v2

    .line 1210
    return-void

    .line 1209
    :catchall_53
    move-exception v3

    monitor-exit v2
    :try_end_55
    .catchall {:try_start_d .. :try_end_55} :catchall_53

    throw v3
.end method

.method public static synthetic lambda$onBootPhase$2(Lcom/android/server/job/JobSchedulerService;Z)V
    .registers 2
    .param p1, "ultraPowerSaving"    # Z

    .line 1251
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->updateUltraPowerSavingState(Z)V

    return-void
.end method

.method public static synthetic lambda$onBootPhase$3(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 5
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 1271
    const/4 v0, 0x0

    .local v0, "controller":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 1272
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/StateController;

    .line 1273
    .local v1, "sc":Lcom/android/server/job/controllers/StateController;
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/job/controllers/StateController;->maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    .line 1271
    .end local v1    # "sc":Lcom/android/server/job/controllers/StateController;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1275
    .end local v0    # "controller":I
    :cond_18
    return-void
.end method

.method static synthetic lambda$static$0(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)I
    .registers 6
    .param p0, "o1"    # Lcom/android/server/job/controllers/JobStatus;
    .param p1, "o2"    # Lcom/android/server/job/controllers/JobStatus;

    .line 644
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    iget-wide v2, p1, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_a

    .line 645
    const/4 v0, -0x1

    return v0

    .line 647
    :cond_a
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    iget-wide v2, p1, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method private maybeQueueReadyJobsForExecutionLocked()V
    .registers 3

    .line 1855
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "JobScheduler"

    const-string v1, "Maybe queuing ready jobs..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    :cond_b
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerService;->noteJobsNonpending(Ljava/util/List;)V

    .line 1858
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1859
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService;->stopNonReadyActiveJobsLocked()V

    .line 1860
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mMaybeQueueFunctor:Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    .line 1861
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mMaybeQueueFunctor:Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->postProcess()V

    .line 1862
    return-void
.end method

.method private maybeRunPendingJobsLocked()V
    .registers 4

    .line 2073
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_26

    .line 2074
    const-string v0, "JobScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pending queue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " jobs."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    :cond_26
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService;->assignJobsToContextsLocked()V

    .line 2077
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->reportActiveLocked()V

    .line 2078
    return-void
.end method

.method private printContextIdToJobMap([Lcom/android/server/job/controllers/JobStatus;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "map"    # [Lcom/android/server/job/controllers/JobStatus;
    .param p2, "initial"    # Ljava/lang/String;

    .line 3035
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3036
    .local v0, "s":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    array-length v2, p1

    if-ge v1, v2, :cond_45

    .line 3037
    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3038
    aget-object v2, p1, v1

    const/4 v3, -0x1

    if-nez v2, :cond_26

    move v2, v3

    goto :goto_2c

    :cond_26
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v2

    :goto_2c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3039
    aget-object v2, p1, v1

    if-nez v2, :cond_34

    goto :goto_3a

    :cond_34
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v3

    :goto_3a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    .line 3040
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3036
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 3042
    .end local v1    # "i":I
    :cond_45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private printPendingQueue()Ljava/lang/String;
    .registers 5

    .line 3046
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Pending queue: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3047
    .local v0, "s":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3048
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/job/controllers/JobStatus;>;"
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 3049
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    .line 3050
    .local v2, "js":Lcom/android/server/job/controllers/JobStatus;
    const-string v3, "("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3051
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    .line 3052
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3053
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") "

    .line 3054
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3055
    .end local v2    # "js":Lcom/android/server/job/controllers/JobStatus;
    goto :goto_d

    .line 3056
    :cond_3b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private queueReadyJobsForExecutionLocked()V
    .registers 5

    .line 1700
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 1701
    const-string v0, "JobScheduler"

    const-string/jumbo v1, "queuing all ready jobs for execution:"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    :cond_c
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerService;->noteJobsNonpending(Ljava/util/List;)V

    .line 1704
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1705
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService;->stopNonReadyActiveJobsLocked()V

    .line 1706
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mReadyQueueFunctor:Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    .line 1707
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mReadyQueueFunctor:Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;->postProcess()V

    .line 1709
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_4f

    .line 1710
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1711
    .local v0, "queuedJobs":I
    if-nez v0, :cond_39

    .line 1712
    const-string v1, "JobScheduler"

    const-string v2, "No jobs pending."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    .line 1714
    :cond_39
    const-string v1, "JobScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " jobs queued."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    .end local v0    # "queuedJobs":I
    :cond_4f
    :goto_4f
    return-void
.end method

.method private static sortJobs(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 3068
    .local p0, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    new-instance v0, Lcom/android/server/job/JobSchedulerService$4;

    invoke-direct {v0}, Lcom/android/server/job/JobSchedulerService$4;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3081
    return-void
.end method

.method public static standbyBucketForPackage(Ljava/lang/String;IJ)I
    .registers 9
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "elapsedNow"    # J

    .line 2483
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 2485
    .local v0, "usageStats":Landroid/app/usage/UsageStatsManagerInternal;
    if-eqz v0, :cond_f

    .line 2486
    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/app/usage/UsageStatsManagerInternal;->getAppStandbyBucket(Ljava/lang/String;IJ)I

    move-result v1

    goto :goto_10

    .line 2487
    :cond_f
    const/4 v1, 0x0

    .line 2489
    .local v1, "bucket":I
    :goto_10
    invoke-static {v1}, Lcom/android/server/job/JobSchedulerService;->standbyBucketToBucketIndex(I)I

    move-result v1

    .line 2491
    sget-boolean v2, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    if-eqz v2, :cond_39

    .line 2492
    const-string v2, "JobScheduler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " standby bucket index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2494
    :cond_39
    return v1
.end method

.method public static standbyBucketToBucketIndex(I)I
    .registers 2
    .param p0, "bucket"    # I

    .line 2474
    const/16 v0, 0x32

    if-ne p0, v0, :cond_6

    const/4 v0, 0x4

    return v0

    .line 2475
    :cond_6
    const/16 v0, 0x1e

    if-le p0, v0, :cond_c

    const/4 v0, 0x3

    return v0

    .line 2476
    :cond_c
    const/16 v0, 0x14

    if-le p0, v0, :cond_12

    const/4 v0, 0x2

    return v0

    .line 2477
    :cond_12
    const/16 v0, 0xa

    if-le p0, v0, :cond_18

    const/4 v0, 0x1

    return v0

    .line 2478
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method private startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 8
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "lastJob"    # Lcom/android/server/job/controllers/JobStatus;

    .line 1293
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isPreparedLocked()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1294
    const-string v0, "JobScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not yet prepared when started tracking: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    :cond_1c
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    .line 1297
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore;->add(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    .line 1298
    .local v0, "update":Z
    iget-boolean v1, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    if-eqz v1, :cond_4c

    .line 1299
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2f
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4c

    .line 1300
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/StateController;

    .line 1301
    .local v2, "controller":Lcom/android/server/job/controllers/StateController;
    if-eqz v0, :cond_46

    .line 1302
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/job/controllers/StateController;->maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V

    .line 1304
    :cond_46
    invoke-virtual {v2, p1, p2}, Lcom/android/server/job/controllers/StateController;->maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    .line 1299
    .end local v2    # "controller":Lcom/android/server/job/controllers/StateController;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 1307
    .end local v1    # "i":I
    :cond_4c
    return-void
.end method

.method private stopJobOnServiceContextLocked(Lcom/android/server/job/controllers/JobStatus;ILjava/lang/String;)Z
    .registers 10
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "reason"    # I
    .param p3, "debugReason"    # Ljava/lang/String;

    .line 1330
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2e

    .line 1331
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/JobServiceContext;

    .line 1332
    .local v2, "jsc":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v2}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v3

    .line 1333
    .local v3, "executing":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v3, :cond_2b

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/job/controllers/JobStatus;->matches(II)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 1334
    invoke-virtual {v2, p2, p3}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(ILjava/lang/String;)V

    .line 1335
    const/4 v0, 0x1

    return v0

    .line 1330
    .end local v2    # "jsc":Lcom/android/server/job/JobServiceContext;
    .end local v3    # "executing":Lcom/android/server/job/controllers/JobStatus;
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1338
    .end local v1    # "i":I
    :cond_2e
    return v0
.end method

.method private stopNonReadyActiveJobsLocked()V
    .registers 6

    .line 1684
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 1685
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/JobServiceContext;

    .line 1686
    .local v1, "serviceContext":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    .line 1687
    .local v2, "running":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v2, :cond_23

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v3

    if-nez v3, :cond_23

    .line 1688
    const-string v3, "cancelled due to unsatisfied constraints"

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v3}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(ILjava/lang/String;)V

    .line 1684
    .end local v1    # "serviceContext":Lcom/android/server/job/JobServiceContext;
    .end local v2    # "running":Lcom/android/server/job/controllers/JobStatus;
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1693
    .end local v0    # "i":I
    :cond_26
    return-void
.end method

.method private stopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)Z
    .registers 8
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "incomingJob"    # Lcom/android/server/job/controllers/JobStatus;
    .param p3, "writeBack"    # Z

    .line 1316
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/android/server/job/controllers/JobStatus;->stopTrackingJobLocked(Landroid/app/IActivityManager;Lcom/android/server/job/controllers/JobStatus;)V

    .line 1319
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/job/JobStore;->remove(Lcom/android/server/job/controllers/JobStatus;Z)Z

    move-result v0

    .line 1320
    .local v0, "removed":Z
    if-eqz v0, :cond_2b

    iget-boolean v1, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    if-eqz v1, :cond_2b

    .line 1321
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_15
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2b

    .line 1322
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/StateController;

    .line 1323
    .local v3, "controller":Lcom/android/server/job/controllers/StateController;
    invoke-virtual {v3, p1, p2, v1}, Lcom/android/server/job/controllers/StateController;->maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V

    .line 1321
    .end local v3    # "controller":Lcom/android/server/job/controllers/StateController;
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 1326
    .end local v2    # "i":I
    :cond_2b
    return v0
.end method

.method private updateUltraPowerSavingState(Z)V
    .registers 8
    .param p1, "ultraPowerSaving"    # Z

    .line 2499
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2500
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/job/JobSchedulerService;->mBeingUltraPowerSavingMode:Z

    .line 2501
    if-eqz p1, :cond_27

    .line 2503
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_9
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_31

    .line 2504
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/JobServiceContext;

    .line 2505
    .local v3, "jsc":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v3}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v4

    .line 2506
    .local v4, "executing":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v4, :cond_24

    .line 2507
    const-string v5, "cancelled due to ultra power saver"

    invoke-virtual {v3, v1, v5}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(ILjava/lang/String;)V

    .line 2503
    .end local v3    # "jsc":Lcom/android/server/job/JobServiceContext;
    .end local v4    # "executing":Lcom/android/server/job/controllers/JobStatus;
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 2512
    .end local v2    # "i":I
    :cond_27
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2514
    :cond_31
    monitor-exit v0

    .line 2515
    return-void

    .line 2514
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw v1
.end method


# virtual methods
.method advanceHeartbeatLocked(J)V
    .registers 11
    .param p1, "beatsElapsed"    # J

    .line 1885
    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService;->mHeartbeat:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/job/JobSchedulerService;->mHeartbeat:J

    .line 1886
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    if-eqz v0, :cond_29

    .line 1887
    const-string v0, "JobScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Advancing standby heartbeat by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/job/JobSchedulerService;->mHeartbeat:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    :cond_29
    const/4 v0, 0x0

    .line 1895
    .local v0, "didAdvanceBucket":Z
    const/4 v1, 0x1

    move v2, v0

    move v0, v1

    .local v0, "i":I
    .local v2, "didAdvanceBucket":Z
    :goto_2d
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mNextBucketHeartbeat:[J

    array-length v3, v3

    sub-int/2addr v3, v1

    if-ge v0, v3, :cond_80

    .line 1897
    iget-wide v3, p0, Lcom/android/server/job/JobSchedulerService;->mHeartbeat:J

    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mNextBucketHeartbeat:[J

    aget-wide v5, v5, v0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_3e

    .line 1898
    const/4 v2, 0x1

    .line 1900
    :cond_3e
    :goto_3e
    iget-wide v3, p0, Lcom/android/server/job/JobSchedulerService;->mHeartbeat:J

    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mNextBucketHeartbeat:[J

    aget-wide v5, v5, v0

    cmp-long v3, v3, v5

    if-lez v3, :cond_57

    .line 1901
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mNextBucketHeartbeat:[J

    aget-wide v4, v3, v0

    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-object v6, v6, Lcom/android/server/job/JobSchedulerService$Constants;->STANDBY_BEATS:[I

    aget v6, v6, v0

    int-to-long v6, v6

    add-long/2addr v4, v6

    aput-wide v4, v3, v0

    goto :goto_3e

    .line 1903
    :cond_57
    sget-boolean v3, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    if-eqz v3, :cond_7d

    .line 1904
    const-string v3, "JobScheduler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   Bucket "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " next heartbeat "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mNextBucketHeartbeat:[J

    aget-wide v5, v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    :cond_7d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 1909
    .end local v0    # "i":I
    :cond_80
    if-eqz v2, :cond_96

    .line 1910
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    if-eqz v0, :cond_8d

    .line 1911
    const-string v0, "JobScheduler"

    const-string v3, "Hit bucket boundary; reevaluating job runnability"

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1913
    :cond_8d
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1915
    :cond_96
    return-void
.end method

.method public cancelJob(III)Z
    .registers 9
    .param p1, "uid"    # I
    .param p2, "jobId"    # I
    .param p3, "callingUid"    # I

    .line 1009
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1010
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/job/JobStore;->getJobByUidAndJobId(II)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v1

    .line 1011
    .local v1, "toCancel":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v1, :cond_30

    .line 1012
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancel() called by app, callingUid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " jobId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Ljava/lang/String;)V

    .line 1016
    :cond_30
    if-eqz v1, :cond_34

    const/4 v2, 0x1

    goto :goto_35

    :cond_34
    const/4 v2, 0x0

    :goto_35
    monitor-exit v0

    return v2

    .line 1017
    .end local v1    # "toCancel":Lcom/android/server/job/controllers/JobStatus;
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v1
.end method

.method cancelJobsForPackageAndUid(Ljava/lang/String;ILjava/lang/String;)V
    .registers 9
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .line 960
    const-string v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 961
    const-string v0, "JobScheduler"

    const-string v1, "Can\'t cancel all jobs for system package"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    return-void

    .line 964
    :cond_10
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 965
    :try_start_13
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v1, p2}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Ljava/util/List;

    move-result-object v1

    .line 966
    .local v1, "jobsForUid":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_1f
    if-ltz v2, :cond_38

    .line 967
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    .line 968
    .local v3, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 969
    const/4 v4, 0x0

    invoke-direct {p0, v3, v4, p3}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Ljava/lang/String;)V

    .line 966
    .end local v3    # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_35
    add-int/lit8 v2, v2, -0x1

    goto :goto_1f

    .line 972
    .end local v1    # "jobsForUid":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v2    # "i":I
    :cond_38
    monitor-exit v0

    .line 973
    return-void

    .line 972
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_13 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method public cancelJobsForUid(ILjava/lang/String;)Z
    .registers 9
    .param p1, "uid"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 983
    const/4 v0, 0x0

    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_d

    .line 984
    const-string v1, "JobScheduler"

    const-string v2, "Can\'t cancel all jobs for system uid"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    return v0

    .line 988
    :cond_d
    const/4 v1, 0x0

    .line 989
    .local v1, "jobsCanceled":Z
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 990
    :try_start_11
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v3, p1}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Ljava/util/List;

    move-result-object v3

    .line 991
    .local v3, "jobsForUid":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    nop

    .local v0, "i":I
    :goto_18
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2c

    .line 992
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    .line 993
    .local v4, "toRemove":Lcom/android/server/job/controllers/JobStatus;
    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, p2}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Ljava/lang/String;)V

    .line 994
    const/4 v1, 0x1

    .line 991
    .end local v4    # "toRemove":Lcom/android/server/job/controllers/JobStatus;
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 996
    .end local v0    # "i":I
    .end local v3    # "jobsForUid":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_2c
    monitor-exit v2

    .line 997
    return v1

    .line 996
    :catchall_2e
    move-exception v0

    monitor-exit v2
    :try_end_30
    .catchall {:try_start_11 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method cancelJobsForUser(I)V
    .registers 8
    .param p1, "userHandle"    # I

    .line 943
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 944
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobStore;->getJobsByUser(I)Ljava/util/List;

    move-result-object v1

    .line 945
    .local v1, "jobsForUser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    const/4 v2, 0x0

    .line 945
    .local v2, "i":I
    :goto_a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_20

    .line 946
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    .line 947
    .local v3, "toRemove":Lcom/android/server/job/controllers/JobStatus;
    const/4 v4, 0x0

    const-string/jumbo v5, "user removed"

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Ljava/lang/String;)V

    .line 945
    .end local v3    # "toRemove":Lcom/android/server/job/controllers/JobStatus;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 949
    .end local v1    # "jobsForUser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v2    # "i":I
    :cond_20
    monitor-exit v0

    .line 950
    return-void

    .line 949
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method dumpInternal(Lcom/android/internal/util/IndentingPrintWriter;I)V
    .registers 25
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "filterUid"    # I

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    .line 3084
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    .line 3085
    .local v9, "filterUidFinal":I
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v10

    .line 3086
    .local v10, "nowElapsed":J
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v12

    .line 3087
    .local v12, "nowUptime":J
    new-instance v14, Lcom/android/server/job/-$$Lambda$JobSchedulerService$VVCk0M0TpfxhVRrY-28dggbYJQc;

    .line 3087
    .local v14, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-direct {v14, v9}, Lcom/android/server/job/-$$Lambda$JobSchedulerService$VVCk0M0TpfxhVRrY-28dggbYJQc;-><init>(I)V

    .line 3091
    iget-object v15, v1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 3092
    :try_start_1c
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-virtual {v0, v8}, Lcom/android/server/job/JobSchedulerService$Constants;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3093
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3095
    const-string v0, "  Heartbeat:"

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3096
    const-string v0, "    Current:    "

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v1, Lcom/android/server/job/JobSchedulerService;->mHeartbeat:J

    invoke-virtual {v8, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    .line 3097
    const-string v0, "    Next"

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3098
    const-string v0, "      ACTIVE:   "

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mNextBucketHeartbeat:[J

    const/16 v16, 0x0

    aget-wide v2, v0, v16

    invoke-virtual {v8, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    .line 3099
    const-string v0, "      WORKING:  "

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mNextBucketHeartbeat:[J

    const/16 v17, 0x1

    aget-wide v2, v0, v17

    invoke-virtual {v8, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    .line 3100
    const-string v0, "      FREQUENT: "

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mNextBucketHeartbeat:[J

    const/4 v2, 0x2

    aget-wide v2, v0, v2

    invoke-virtual {v8, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    .line 3101
    const-string v0, "      RARE:     "

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mNextBucketHeartbeat:[J

    const/4 v2, 0x3

    aget-wide v2, v0, v2

    invoke-virtual {v8, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    .line 3102
    const-string v0, "    Last heartbeat: "

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3103
    iget-wide v2, v1, Lcom/android/server/job/JobSchedulerService;->mLastHeartbeatTime:J

    invoke-static {v2, v3, v10, v11, v8}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3104
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3105
    const-string v0, "    Next heartbeat: "

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3106
    iget-wide v2, v1, Lcom/android/server/job/JobSchedulerService;->mLastHeartbeatTime:J

    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v4, v0, Lcom/android/server/job/JobSchedulerService$Constants;->STANDBY_HEARTBEAT_TIME:J

    add-long/2addr v2, v4

    invoke-static {v2, v3, v10, v11, v8}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3108
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3109
    const-string v0, "    In parole?: "

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3110
    iget-boolean v0, v1, Lcom/android/server/job/JobSchedulerService;->mInParole:Z

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 3111
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3112
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Started users: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3115
    const-string v0, "Registered "

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3116
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0}, Lcom/android/server/job/JobStore;->size()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3117
    const-string v0, " jobs:"

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3118
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0}, Lcom/android/server/job/JobStore;->size()I

    move-result v0
    :try_end_d0
    .catchall {:try_start_1c .. :try_end_d0} :catchall_405

    if-lez v0, :cond_1c7

    .line 3119
    :try_start_d2
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v0, v0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0}, Lcom/android/server/job/JobStore$JobSet;->getAllJobs()Ljava/util/List;

    move-result-object v0

    move-object v6, v0

    .line 3120
    .local v6, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-static {v6}, Lcom/android/server/job/JobSchedulerService;->sortJobs(Ljava/util/List;)V

    .line 3121
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_e2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1bd

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/JobStatus;

    move-object v5, v0

    .line 3122
    .local v5, "job":Lcom/android/server/job/controllers/JobStatus;
    const-string v0, "  JOB #"

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    const-string v0, ": "

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3123
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->toShortStringExceptUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3126
    invoke-interface {v14, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10a

    .line 3127
    goto :goto_e2

    .line 3130
    :cond_10a
    const-string v4, "    "
    :try_end_10c
    .catchall {:try_start_d2 .. :try_end_10c} :catchall_1c0

    const/4 v0, 0x1

    move-object v2, v5

    move-object v3, v8

    move-wide/from16 v18, v12

    move-object v12, v5

    move v5, v0

    .line 3130
    .end local v5    # "job":Lcom/android/server/job/controllers/JobStatus;
    .local v12, "job":Lcom/android/server/job/controllers/JobStatus;
    .local v18, "nowUptime":J
    move-object v13, v6

    move-object/from16 v20, v7

    move-wide v6, v10

    .line 3130
    .end local v6    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .local v13, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :try_start_117
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/job/controllers/JobStatus;->dump(Ljava/io/PrintWriter;Ljava/lang/String;ZJ)V

    .line 3131
    const-string v0, "    Last run heartbeat: "

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3132
    invoke-virtual {v1, v12}, Lcom/android/server/job/JobSchedulerService;->heartbeatWhenJobsLastRun(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v2

    invoke-virtual {v8, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    .line 3133
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3135
    const-string v0, "    Ready: "

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3136
    invoke-direct {v1, v12}, Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 3137
    const-string v0, " (job="

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3138
    invoke-virtual {v12}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 3139
    const-string v0, " user="

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3140
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-virtual {v12}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 3141
    const-string v0, " !pending="

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3142
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 3143
    const-string v0, " !active="

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3144
    invoke-direct {v1, v12}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyActiveLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 3145
    const-string v0, " !backingup="

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3146
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseIntArray;

    invoke-virtual {v12}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_185

    move/from16 v0, v17

    goto :goto_187

    :cond_185
    move/from16 v0, v16

    :goto_187
    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 3147
    const-string v0, " comp="

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V
    :try_end_18f
    .catchall {:try_start_117 .. :try_end_18f} :catchall_401

    .line 3148
    move/from16 v2, v16

    .line 3150
    .local v2, "componentPresent":Z
    :try_start_191
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 3151
    invoke-virtual {v12}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v3

    const/high16 v4, 0x10000000

    .line 3153
    invoke-virtual {v12}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v5

    .line 3150
    invoke-interface {v0, v3, v4, v5}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v0
    :try_end_1a3
    .catch Landroid/os/RemoteException; {:try_start_191 .. :try_end_1a3} :catch_1ac
    .catchall {:try_start_191 .. :try_end_1a3} :catchall_401

    if-eqz v0, :cond_1a8

    move/from16 v0, v17

    goto :goto_1aa

    :cond_1a8
    move/from16 v0, v16

    :goto_1aa
    move v2, v0

    .line 3155
    goto :goto_1ad

    .line 3154
    :catch_1ac
    move-exception v0

    .line 3156
    :goto_1ad
    :try_start_1ad
    invoke-virtual {v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 3157
    const-string v0, ")"

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3158
    .end local v2    # "componentPresent":Z
    .end local v12    # "job":Lcom/android/server/job/controllers/JobStatus;
    nop

    .line 3121
    move-object v6, v13

    move-wide/from16 v12, v18

    move-object/from16 v7, v20

    goto/16 :goto_e2

    .line 3159
    .end local v13    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v18    # "nowUptime":J
    .local v12, "nowUptime":J
    :cond_1bd
    move-wide/from16 v18, v12

    .line 3159
    .end local v12    # "nowUptime":J
    .restart local v18    # "nowUptime":J
    goto :goto_1ce

    .line 3261
    .end local v18    # "nowUptime":J
    .restart local v12    # "nowUptime":J
    :catchall_1c0
    move-exception v0

    move-wide/from16 v18, v12

    move/from16 v2, p2

    goto/16 :goto_40a

    .line 3160
    :cond_1c7
    move-wide/from16 v18, v12

    .line 3160
    .end local v12    # "nowUptime":J
    .restart local v18    # "nowUptime":J
    const-string v0, "  None."

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3162
    :goto_1ce
    move/from16 v0, v16

    .line 3162
    .local v0, "i":I
    :goto_1d0
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_213

    .line 3163
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3165
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3166
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v2, v8, v14}, Lcom/android/server/job/controllers/StateController;->dumpControllerStateLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V

    .line 3167
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3162
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d0

    .line 3169
    .end local v0    # "i":I
    :cond_213
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3170
    const-string v0, "Uid priority overrides:"

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3171
    move/from16 v0, v16

    .line 3171
    .restart local v0    # "i":I
    :goto_21d
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    const/4 v12, -0x1

    if-ge v0, v2, :cond_251

    .line 3172
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 3173
    .local v2, "uid":I
    if-eq v9, v12, :cond_234

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    if-ne v9, v3, :cond_24e

    .line 3174
    :cond_234
    const-string v3, "  "

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3175
    const-string v3, ": "

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 3171
    .end local v2    # "uid":I
    :cond_24e
    add-int/lit8 v0, v0, 0x1

    goto :goto_21d

    .line 3178
    .end local v0    # "i":I
    :cond_251
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_296

    .line 3179
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3180
    const-string v0, "Backing up uids:"

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3181
    const/4 v0, 0x1

    .line 3182
    .local v0, "first":Z
    move v2, v0

    move/from16 v0, v16

    .line 3182
    .local v0, "i":I
    .local v2, "first":Z
    :goto_265
    iget-object v3, v1, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_293

    .line 3183
    iget-object v3, v1, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 3184
    .local v3, "uid":I
    if-eq v9, v12, :cond_27b

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    if-ne v9, v4, :cond_290

    .line 3185
    :cond_27b
    if-eqz v2, :cond_284

    .line 3186
    const-string v4, "  "

    invoke-virtual {v8, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3187
    const/4 v2, 0x0

    goto :goto_289

    .line 3189
    :cond_284
    const-string v4, ", "

    invoke-virtual {v8, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3191
    :goto_289
    invoke-static {v3}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3182
    .end local v3    # "uid":I
    :cond_290
    add-int/lit8 v0, v0, 0x1

    goto :goto_265

    .line 3194
    .end local v0    # "i":I
    :cond_293
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3196
    .end local v2    # "first":Z
    :cond_296
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3197
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    const-string v2, ""

    invoke-virtual {v0, v8, v2, v9}, Lcom/android/server/job/JobPackageTracker;->dump(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 3198
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3199
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    const-string v2, ""

    invoke-virtual {v0, v8, v2, v9}, Lcom/android/server/job/JobPackageTracker;->dumpHistory(Ljava/io/PrintWriter;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2b0

    .line 3200
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3202
    :cond_2b0
    const-string v0, "Pending queue:"

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3203
    move/from16 v0, v16

    .line 3203
    .restart local v0    # "i":I
    :goto_2b7
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_311

    .line 3204
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    move-object v13, v2

    .line 3205
    .local v13, "job":Lcom/android/server/job/controllers/JobStatus;
    const-string v2, "  Pending #"

    invoke-virtual {v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v2, ": "

    invoke-virtual {v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3206
    invoke-virtual {v13}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3207
    const-string v4, "    "

    const/4 v5, 0x0

    move-object v2, v13

    move-object v3, v8

    move-wide v6, v10

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/job/controllers/JobStatus;->dump(Ljava/io/PrintWriter;Ljava/lang/String;ZJ)V

    .line 3208
    invoke-direct {v1, v13}, Lcom/android/server/job/JobSchedulerService;->evaluateJobPriorityLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v2

    .line 3209
    .local v2, "priority":I
    if-eqz v2, :cond_2f3

    .line 3210
    const-string v3, "    Evaluated priority: "

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 3212
    :cond_2f3
    const-string v3, "    Tag: "

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/android/server/job/controllers/JobStatus;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3213
    const-string v3, "    Enq: "

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3214
    iget-wide v3, v13, Lcom/android/server/job/controllers/JobStatus;->madePending:J

    sub-long v3, v3, v18

    invoke-static {v3, v4, v8}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3215
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3203
    .end local v2    # "priority":I
    .end local v13    # "job":Lcom/android/server/job/controllers/JobStatus;
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b7

    .line 3217
    .end local v0    # "i":I
    :cond_311
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3218
    const-string v0, "Active jobs:"

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3219
    nop

    .line 3219
    .local v16, "i":I
    :goto_31a
    move/from16 v0, v16

    .line 3219
    .end local v16    # "i":I
    .restart local v0    # "i":I
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3c2

    .line 3220
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/JobServiceContext;

    move-object v13, v2

    .line 3221
    .local v13, "jsc":Lcom/android/server/job/JobServiceContext;
    const-string v2, "  Slot #"

    invoke-virtual {v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v2, ": "

    invoke-virtual {v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3222
    invoke-virtual {v13}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    move-object v6, v2

    .line 3223
    .local v6, "job":Lcom/android/server/job/controllers/JobStatus;
    if-nez v6, :cond_360

    .line 3224
    iget-object v2, v13, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    if-eqz v2, :cond_35a

    .line 3225
    const-string v2, "inactive since "

    invoke-virtual {v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3226
    iget-wide v2, v13, Lcom/android/server/job/JobServiceContext;->mStoppedTime:J

    invoke-static {v2, v3, v10, v11, v8}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3227
    const-string v2, ", stopped because: "

    invoke-virtual {v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3228
    iget-object v2, v13, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    invoke-virtual {v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3bd

    .line 3230
    :cond_35a
    const-string v2, "inactive"

    invoke-virtual {v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3232
    goto :goto_3bd

    .line 3234
    :cond_360
    invoke-virtual {v6}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3235
    const-string v2, "    Running for: "

    invoke-virtual {v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3236
    invoke-virtual {v13}, Lcom/android/server/job/JobServiceContext;->getExecutionStartTimeElapsed()J

    move-result-wide v2

    sub-long v2, v10, v2

    invoke-static {v2, v3, v8}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3237
    const-string v2, ", timeout at: "

    invoke-virtual {v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3238
    invoke-virtual {v13}, Lcom/android/server/job/JobServiceContext;->getTimeoutElapsed()J

    move-result-wide v2

    sub-long/2addr v2, v10

    invoke-static {v2, v3, v8}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3239
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3240
    const-string v4, "    "

    const/4 v5, 0x0

    move-object v2, v6

    move-object v3, v8

    move-object v12, v6

    move-wide v6, v10

    .line 3240
    .end local v6    # "job":Lcom/android/server/job/controllers/JobStatus;
    .local v12, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/job/controllers/JobStatus;->dump(Ljava/io/PrintWriter;Ljava/lang/String;ZJ)V

    .line 3241
    invoke-virtual {v13}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/job/JobSchedulerService;->evaluateJobPriorityLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v2

    .line 3242
    .restart local v2    # "priority":I
    if-eqz v2, :cond_3a1

    .line 3243
    const-string v3, "    Evaluated priority: "

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 3245
    :cond_3a1
    const-string v3, "    Active at "

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3246
    iget-wide v3, v12, Lcom/android/server/job/controllers/JobStatus;->madeActive:J

    sub-long v3, v3, v18

    invoke-static {v3, v4, v8}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3247
    const-string v3, ", pending for "

    invoke-virtual {v8, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3248
    iget-wide v3, v12, Lcom/android/server/job/controllers/JobStatus;->madeActive:J

    iget-wide v5, v12, Lcom/android/server/job/controllers/JobStatus;->madePending:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4, v8}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3249
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V
    :try_end_3bd
    .catchall {:try_start_1ad .. :try_end_3bd} :catchall_401

    .line 3219
    .end local v2    # "priority":I
    .end local v12    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v13    # "jsc":Lcom/android/server/job/JobServiceContext;
    :goto_3bd
    add-int/lit8 v16, v0, 0x1

    .line 3219
    .end local v0    # "i":I
    .restart local v16    # "i":I
    const/4 v12, -0x1

    goto/16 :goto_31a

    .line 3252
    .end local v16    # "i":I
    :cond_3c2
    move/from16 v2, p2

    const/4 v0, -0x1

    if-ne v2, v0, :cond_3eb

    .line 3253
    :try_start_3c7
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3254
    const-string/jumbo v0, "mReadyToRock="

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 3255
    const-string/jumbo v0, "mReportedActive="

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 3256
    const-string/jumbo v0, "mMaxActiveJobs="

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, v1, Lcom/android/server/job/JobSchedulerService;->mMaxActiveJobs:I

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 3258
    :cond_3eb
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3259
    const-string v0, "PersistStats: "

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3260
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0}, Lcom/android/server/job/JobStore;->getPersistStats()Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3261
    monitor-exit v15
    :try_end_3fd
    .catchall {:try_start_3c7 .. :try_end_3fd} :catchall_40c

    .line 3262
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3263
    return-void

    .line 3261
    :catchall_401
    move-exception v0

    move/from16 v2, p2

    goto :goto_40a

    .line 3261
    .end local v18    # "nowUptime":J
    .local v12, "nowUptime":J
    :catchall_405
    move-exception v0

    move/from16 v2, p2

    move-wide/from16 v18, v12

    .line 3261
    .end local v12    # "nowUptime":J
    .restart local v18    # "nowUptime":J
    :goto_40a
    :try_start_40a
    monitor-exit v15
    :try_end_40b
    .catchall {:try_start_40a .. :try_end_40b} :catchall_40c

    throw v0

    :catchall_40c
    move-exception v0

    goto :goto_40a
.end method

.method dumpInternalProto(Ljava/io/FileDescriptor;I)V
    .registers 31
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "filterUid"    # I

    move-object/from16 v1, p0

    .line 3266
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v2, p1

    invoke-direct {v0, v2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v10, v0

    .line 3267
    .local v10, "proto":Landroid/util/proto/ProtoOutputStream;
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v11

    .line 3268
    .local v11, "filterUidFinal":I
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v12

    .line 3269
    .local v12, "nowElapsed":J
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v14

    .line 3270
    .local v14, "nowUptime":J
    new-instance v8, Lcom/android/server/job/-$$Lambda$JobSchedulerService$eQqdX2w3FwBMn_LMfN2Y0HQCDq4;

    .local v8, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-direct {v8, v11}, Lcom/android/server/job/-$$Lambda$JobSchedulerService$eQqdX2w3FwBMn_LMfN2Y0HQCDq4;-><init>(I)V

    .line 3275
    iget-object v9, v1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 3276
    :try_start_22
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    const-wide v5, 0x10b00000001L

    invoke-virtual {v0, v10, v5, v6}, Lcom/android/server/job/JobSchedulerService$Constants;->dump(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3277
    const-wide v3, 0x1050000000eL

    iget-wide v5, v1, Lcom/android/server/job/JobSchedulerService;->mHeartbeat:J

    invoke-virtual {v10, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3278
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mNextBucketHeartbeat:[J

    const/16 v18, 0x0

    aget-wide v3, v0, v18

    const-wide v5, 0x2050000000fL

    invoke-virtual {v10, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3279
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mNextBucketHeartbeat:[J

    const/16 v19, 0x1

    aget-wide v3, v0, v19

    invoke-virtual {v10, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3280
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mNextBucketHeartbeat:[J

    const/4 v3, 0x2

    aget-wide v3, v0, v3

    invoke-virtual {v10, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3281
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mNextBucketHeartbeat:[J

    const/4 v3, 0x3

    aget-wide v3, v0, v3

    invoke-virtual {v10, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3282
    const-wide v3, 0x10300000010L

    iget-wide v5, v1, Lcom/android/server/job/JobSchedulerService;->mLastHeartbeatTime:J

    sub-long/2addr v5, v14

    invoke-virtual {v10, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3284
    iget-wide v5, v1, Lcom/android/server/job/JobSchedulerService;->mLastHeartbeatTime:J

    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v3, v0, Lcom/android/server/job/JobSchedulerService$Constants;->STANDBY_HEARTBEAT_TIME:J

    add-long/2addr v5, v3

    sub-long/2addr v5, v14

    const-wide v3, 0x10300000011L

    invoke-virtual {v10, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3286
    const-wide v3, 0x10800000012L

    iget-boolean v0, v1, Lcom/android/server/job/JobSchedulerService;->mInParole:Z

    invoke-virtual {v10, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3288
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    array-length v3, v0
    :try_end_85
    .catchall {:try_start_22 .. :try_end_85} :catchall_3cd

    move/from16 v4, v18

    :goto_87
    if-ge v4, v3, :cond_a2

    :try_start_89
    aget v5, v0, v4

    .line 3289
    .local v5, "u":I
    const-wide v6, 0x20500000002L

    invoke-virtual {v10, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V
    :try_end_93
    .catchall {:try_start_89 .. :try_end_93} :catchall_96

    .line 3288
    .end local v5    # "u":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_87

    .line 3416
    :catchall_96
    move-exception v0

    move/from16 v2, p2

    move-object/from16 v17, v9

    move/from16 v24, v11

    move-wide/from16 v21, v14

    move-object v11, v8

    goto/16 :goto_3d7

    .line 3291
    :cond_a2
    :try_start_a2
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0}, Lcom/android/server/job/JobStore;->size()I

    move-result v0
    :try_end_a8
    .catchall {:try_start_a2 .. :try_end_a8} :catchall_3cd

    if-lez v0, :cond_1af

    .line 3292
    :try_start_aa
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v0, v0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0}, Lcom/android/server/job/JobStore$JobSet;->getAllJobs()Ljava/util/List;

    move-result-object v0

    move-object v7, v0

    .line 3293
    .local v7, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-static {v7}, Lcom/android/server/job/JobSchedulerService;->sortJobs(Ljava/util/List;)V

    .line 3294
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_ba
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1af

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/JobStatus;

    move-object v6, v0

    .line 3295
    .local v6, "job":Lcom/android/server/job/controllers/JobStatus;
    const-wide v3, 0x20b00000003L

    invoke-virtual {v10, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3
    :try_end_d0
    .catchall {:try_start_aa .. :try_end_d0} :catchall_1a1

    .line 3296
    .local v3, "rjToken":J
    move-wide/from16 v21, v14

    const-wide v14, 0x10b00000001L

    :try_start_d7
    invoke-virtual {v6, v10, v14, v15}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3299
    .end local v14    # "nowUptime":J
    .local v21, "nowUptime":J
    invoke-interface {v8, v6}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0
    :try_end_de
    .catchall {:try_start_d7 .. :try_end_de} :catchall_195

    if-nez v0, :cond_e4

    .line 3300
    nop

    .line 3294
    move-wide/from16 v14, v21

    goto :goto_ba

    .line 3303
    :cond_e4
    const-wide v16, 0x10b00000002L

    const/4 v0, 0x1

    move-wide v14, v3

    move-object v3, v6

    .end local v3    # "rjToken":J
    .local v14, "rjToken":J
    move-object v4, v10

    move-object/from16 v20, v5

    move-object v2, v6

    move-wide/from16 v5, v16

    .end local v6    # "job":Lcom/android/server/job/controllers/JobStatus;
    .local v2, "job":Lcom/android/server/job/controllers/JobStatus;
    move-object/from16 v16, v7

    move v7, v0

    .end local v7    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .local v16, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    move-object/from16 v17, v9

    move/from16 v23, v11

    move-object v11, v8

    move-wide v8, v12

    .end local v8    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .local v11, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .local v23, "filterUidFinal":I
    :try_start_fb
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/job/controllers/JobStatus;->dump(Landroid/util/proto/ProtoOutputStream;JZJ)V

    .line 3306
    const-wide v3, 0x10800000003L

    .line 3307
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v0

    .line 3306
    invoke-virtual {v10, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3308
    const-wide v3, 0x10800000004L

    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    .line 3309
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v5

    invoke-static {v0, v5}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    .line 3308
    invoke-virtual {v10, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3310
    const-wide v3, 0x10800000005L

    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    .line 3311
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 3310
    invoke-virtual {v10, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3312
    const-wide v3, 0x10800000006L

    .line 3313
    invoke-direct {v1, v2}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyActiveLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    .line 3312
    invoke-virtual {v10, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3314
    const-wide v3, 0x10800000007L

    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseIntArray;

    .line 3315
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_14a

    .line 3314
    move/from16 v0, v19

    goto :goto_14d

    .line 3315
    :cond_14a
    nop

    .line 3314
    move/from16 v0, v18

    :goto_14d
    invoke-virtual {v10, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V
    :try_end_150
    .catchall {:try_start_fb .. :try_end_150} :catchall_1d1

    .line 3316
    move/from16 v3, v18

    .line 3318
    .local v3, "componentPresent":Z
    :try_start_152
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 3319
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v4

    const/high16 v5, 0x10000000

    .line 3321
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v6

    .line 3318
    invoke-interface {v0, v4, v5, v6}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v0
    :try_end_164
    .catch Landroid/os/RemoteException; {:try_start_152 .. :try_end_164} :catch_16d
    .catchall {:try_start_152 .. :try_end_164} :catchall_1d1

    if-eqz v0, :cond_169

    move/from16 v0, v19

    goto :goto_16b

    :cond_169
    move/from16 v0, v18

    :goto_16b
    move v3, v0

    .line 3323
    goto :goto_16e

    .line 3322
    :catch_16d
    move-exception v0

    .line 3324
    :goto_16e
    const-wide v4, 0x10800000008L

    :try_start_173
    invoke-virtual {v10, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3326
    const-wide v4, 0x10300000009L

    invoke-virtual {v1, v2}, Lcom/android/server/job/JobSchedulerService;->heartbeatWhenJobsLastRun(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v6

    invoke-virtual {v10, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3328
    invoke-virtual {v10, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_185
    .catchall {:try_start_173 .. :try_end_185} :catchall_1d1

    .line 3329
    .end local v2    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v3    # "componentPresent":Z
    .end local v14    # "rjToken":J
    nop

    .line 3294
    move-object v8, v11

    move-object/from16 v7, v16

    move-object/from16 v9, v17

    move-object/from16 v5, v20

    move-wide/from16 v14, v21

    move/from16 v11, v23

    move-object/from16 v2, p1

    goto/16 :goto_ba

    .line 3416
    .end local v16    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v23    # "filterUidFinal":I
    .restart local v8    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .local v11, "filterUidFinal":I
    :catchall_195
    move-exception v0

    move-object/from16 v17, v9

    move/from16 v23, v11

    move-object v11, v8

    move/from16 v2, p2

    move/from16 v24, v23

    .end local v8    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .local v11, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v23    # "filterUidFinal":I
    goto/16 :goto_3d7

    .end local v21    # "nowUptime":J
    .end local v23    # "filterUidFinal":I
    .restart local v8    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .local v11, "filterUidFinal":I
    .local v14, "nowUptime":J
    :catchall_1a1
    move-exception v0

    move-object/from16 v17, v9

    move/from16 v23, v11

    move-wide/from16 v21, v14

    move-object v11, v8

    move/from16 v2, p2

    move/from16 v24, v23

    .end local v8    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v14    # "nowUptime":J
    .local v11, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v21    # "nowUptime":J
    .restart local v23    # "filterUidFinal":I
    goto/16 :goto_3d7

    .line 3331
    .end local v21    # "nowUptime":J
    .end local v23    # "filterUidFinal":I
    .restart local v8    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .local v11, "filterUidFinal":I
    .restart local v14    # "nowUptime":J
    :cond_1af
    move-object/from16 v17, v9

    move/from16 v23, v11

    move-wide/from16 v21, v14

    move-object v11, v8

    .end local v8    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v14    # "nowUptime":J
    .local v11, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v21    # "nowUptime":J
    .restart local v23    # "filterUidFinal":I
    :try_start_1b6
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1bc
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_1c0
    .catchall {:try_start_1b6 .. :try_end_1c0} :catchall_3c7

    if-eqz v2, :cond_1d8

    :try_start_1c2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/StateController;

    .line 3332
    .local v2, "controller":Lcom/android/server/job/controllers/StateController;
    const-wide v3, 0x20b00000004L

    invoke-virtual {v2, v10, v3, v4, v11}, Lcom/android/server/job/controllers/StateController;->dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V
    :try_end_1d0
    .catchall {:try_start_1c2 .. :try_end_1d0} :catchall_1d1

    .line 3334
    .end local v2    # "controller":Lcom/android/server/job/controllers/StateController;
    goto :goto_1bc

    .line 3416
    :catchall_1d1
    move-exception v0

    move/from16 v2, p2

    move/from16 v24, v23

    goto/16 :goto_3d7

    .line 3335
    :cond_1d8
    move/from16 v0, v18

    .local v0, "i":I
    :goto_1da
    :try_start_1da
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2
    :try_end_1e0
    .catchall {:try_start_1da .. :try_end_1e0} :catchall_3c7

    const/4 v14, -0x1

    if-ge v0, v2, :cond_229

    .line 3336
    :try_start_1e3
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2
    :try_end_1e9
    .catchall {:try_start_1e3 .. :try_end_1e9} :catchall_222

    .line 3337
    .local v2, "uid":I
    move/from16 v15, v23

    if-eq v15, v14, :cond_1fb

    .end local v23    # "filterUidFinal":I
    .local v15, "filterUidFinal":I
    :try_start_1ed
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    if-ne v15, v3, :cond_21d

    goto :goto_1fb

    .line 3416
    .end local v0    # "i":I
    .end local v2    # "uid":I
    :catchall_1f4
    move-exception v0

    move/from16 v2, p2

    move/from16 v24, v15

    goto/16 :goto_3d7

    .line 3338
    .restart local v0    # "i":I
    .restart local v2    # "uid":I
    :cond_1fb
    :goto_1fb
    const-wide v3, 0x20b00000005L

    invoke-virtual {v10, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 3339
    .local v3, "pToken":J
    const-wide v5, 0x10500000001L

    invoke-virtual {v10, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3340
    const-wide v5, 0x11100000002L

    iget-object v7, v1, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    .line 3341
    invoke-virtual {v7, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    .line 3340
    invoke-virtual {v10, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3342
    invoke-virtual {v10, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_21d
    .catchall {:try_start_1ed .. :try_end_21d} :catchall_1f4

    .line 3335
    .end local v2    # "uid":I
    .end local v3    # "pToken":J
    :cond_21d
    add-int/lit8 v0, v0, 0x1

    move/from16 v23, v15

    goto :goto_1da

    .line 3416
    .end local v0    # "i":I
    .end local v15    # "filterUidFinal":I
    .restart local v23    # "filterUidFinal":I
    :catchall_222
    move-exception v0

    move/from16 v2, p2

    move/from16 v24, v23

    .end local v23    # "filterUidFinal":I
    .restart local v15    # "filterUidFinal":I
    goto/16 :goto_3d7

    .line 3345
    .end local v15    # "filterUidFinal":I
    .restart local v23    # "filterUidFinal":I
    :cond_229
    move/from16 v15, v23

    .end local v23    # "filterUidFinal":I
    .restart local v15    # "filterUidFinal":I
    .local v18, "i":I
    :goto_22b
    move/from16 v0, v18

    .end local v18    # "i":I
    .restart local v0    # "i":I
    :try_start_22d
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2
    :try_end_233
    .catchall {:try_start_22d .. :try_end_233} :catchall_3c1

    if-ge v0, v2, :cond_24e

    .line 3346
    :try_start_235
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 3347
    .restart local v2    # "uid":I
    if-eq v15, v14, :cond_243

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    if-ne v15, v3, :cond_24b

    .line 3348
    :cond_243
    const-wide v3, 0x20500000006L

    invoke-virtual {v10, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V
    :try_end_24b
    .catchall {:try_start_235 .. :try_end_24b} :catchall_1f4

    .line 3345
    .end local v2    # "uid":I
    :cond_24b
    add-int/lit8 v18, v0, 0x1

    .end local v0    # "i":I
    .restart local v18    # "i":I
    goto :goto_22b

    .line 3352
    .end local v18    # "i":I
    :cond_24e
    :try_start_24e
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    const-wide v2, 0x10b00000008L

    invoke-virtual {v0, v10, v2, v3, v15}, Lcom/android/server/job/JobPackageTracker;->dump(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 3354
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    const-wide v2, 0x10b00000007L

    invoke-virtual {v0, v10, v2, v3, v15}, Lcom/android/server/job/JobPackageTracker;->dumpHistory(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 3357
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_268
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_26c
    .catchall {:try_start_24e .. :try_end_26c} :catchall_3c1

    if-eqz v2, :cond_2c1

    :try_start_26e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    .line 3358
    .local v2, "job":Lcom/android/server/job/controllers/JobStatus;
    const-wide v3, 0x20b00000009L

    invoke-virtual {v10, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    move-wide v8, v3

    .line 3360
    .local v8, "pjToken":J
    const-wide v5, 0x10b00000001L

    invoke-virtual {v2, v10, v5, v6}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V
    :try_end_286
    .catchall {:try_start_26e .. :try_end_286} :catchall_2ba

    .line 3361
    const-wide v18, 0x10b00000002L

    const/4 v7, 0x0

    move-object v3, v2

    move-object v4, v10

    move/from16 v24, v15

    move-wide v14, v5

    move-wide/from16 v5, v18

    .end local v15    # "filterUidFinal":I
    .local v24, "filterUidFinal":I
    move-wide v14, v8

    move-wide v8, v12

    .end local v8    # "pjToken":J
    .local v14, "pjToken":J
    :try_start_295
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/job/controllers/JobStatus;->dump(Landroid/util/proto/ProtoOutputStream;JZJ)V

    .line 3362
    invoke-direct {v1, v2}, Lcom/android/server/job/JobSchedulerService;->evaluateJobPriorityLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v3

    .line 3363
    .local v3, "priority":I
    if-eqz v3, :cond_2a6

    .line 3364
    const-wide v4, 0x11100000003L

    invoke-virtual {v10, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3366
    :cond_2a6
    const-wide v4, 0x10300000004L

    iget-wide v6, v2, Lcom/android/server/job/controllers/JobStatus;->madePending:J

    sub-long v6, v21, v6

    invoke-virtual {v10, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3368
    invoke-virtual {v10, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3369
    .end local v2    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v3    # "priority":I
    .end local v14    # "pjToken":J
    nop

    .line 3357
    move/from16 v15, v24

    const/4 v14, -0x1

    goto :goto_268

    .line 3416
    .end local v24    # "filterUidFinal":I
    .restart local v15    # "filterUidFinal":I
    :catchall_2ba
    move-exception v0

    move/from16 v24, v15

    move/from16 v2, p2

    goto/16 :goto_3c6

    .line 3370
    :cond_2c1
    move/from16 v24, v15

    .end local v15    # "filterUidFinal":I
    .restart local v24    # "filterUidFinal":I
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_395

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/JobServiceContext;

    .line 3371
    .local v2, "jsc":Lcom/android/server/job/JobServiceContext;
    const-wide v3, 0x20b0000000aL

    invoke-virtual {v10, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    move-wide v14, v3

    .line 3372
    .local v14, "ajToken":J
    invoke-virtual {v2}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v3

    move-object v8, v3

    .line 3374
    .local v8, "job":Lcom/android/server/job/controllers/JobStatus;
    if-nez v8, :cond_31a

    .line 3375
    const-wide v3, 0x10b00000001L

    invoke-virtual {v10, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    move-wide v3, v5

    .line 3377
    .local v3, "ijToken":J
    iget-wide v5, v2, Lcom/android/server/job/JobServiceContext;->mStoppedTime:J

    sub-long v5, v12, v5

    move-wide/from16 v25, v14

    const-wide v14, 0x10300000001L

    invoke-virtual {v10, v14, v15, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3379
    .end local v14    # "ajToken":J
    .local v25, "ajToken":J
    iget-object v5, v2, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    if-eqz v5, :cond_30c

    .line 3380
    const-wide v5, 0x10900000002L

    iget-object v7, v2, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    invoke-virtual {v10, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3384
    :cond_30c
    invoke-virtual {v10, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3385
    .end local v3    # "ijToken":J
    nop

    .line 3409
    move-object/from16 v27, v0

    move-object v0, v8

    const-wide v18, 0x10b00000001L

    goto/16 :goto_38b

    .line 3386
    .end local v25    # "ajToken":J
    .restart local v14    # "ajToken":J
    :cond_31a
    move-wide/from16 v25, v14

    .end local v14    # "ajToken":J
    .restart local v25    # "ajToken":J
    const-wide v3, 0x10b00000002L

    invoke-virtual {v10, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    move-wide v14, v3

    .line 3388
    .local v14, "rjToken":J
    const-wide v5, 0x10b00000001L

    invoke-virtual {v8, v10, v5, v6}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3390
    const-wide v3, 0x10300000002L

    .line 3391
    invoke-virtual {v2}, Lcom/android/server/job/JobServiceContext;->getExecutionStartTimeElapsed()J

    move-result-wide v18

    sub-long v5, v12, v18

    .line 3390
    invoke-virtual {v10, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3392
    const-wide v3, 0x10300000003L

    .line 3393
    invoke-virtual {v2}, Lcom/android/server/job/JobServiceContext;->getTimeoutElapsed()J

    move-result-wide v5

    sub-long/2addr v5, v12

    .line 3392
    invoke-virtual {v10, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3395
    const-wide v5, 0x10b00000004L

    const/4 v7, 0x0

    move-object v3, v8

    move-object v4, v10

    const-wide v18, 0x10b00000001L

    move-object/from16 v27, v0

    move-object v0, v8

    move-wide v8, v12

    .end local v8    # "job":Lcom/android/server/job/controllers/JobStatus;
    .local v0, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/job/controllers/JobStatus;->dump(Landroid/util/proto/ProtoOutputStream;JZJ)V

    .line 3397
    invoke-virtual {v2}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/server/job/JobSchedulerService;->evaluateJobPriorityLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v3

    .line 3398
    .local v3, "priority":I
    if-eqz v3, :cond_36f

    .line 3399
    const-wide v4, 0x11100000005L

    invoke-virtual {v10, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3402
    :cond_36f
    const-wide v4, 0x10300000006L

    iget-wide v6, v0, Lcom/android/server/job/controllers/JobStatus;->madeActive:J

    sub-long v6, v21, v6

    invoke-virtual {v10, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3404
    const-wide v4, 0x10300000007L

    iget-wide v6, v0, Lcom/android/server/job/controllers/JobStatus;->madeActive:J

    iget-wide v8, v0, Lcom/android/server/job/controllers/JobStatus;->madePending:J

    sub-long/2addr v6, v8

    invoke-virtual {v10, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3407
    invoke-virtual {v10, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3409
    .end local v3    # "priority":I
    .end local v14    # "rjToken":J
    :goto_38b
    move-wide/from16 v3, v25

    invoke-virtual {v10, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_390
    .catchall {:try_start_295 .. :try_end_390} :catchall_3bd

    .line 3410
    .end local v0    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v2    # "jsc":Lcom/android/server/job/JobServiceContext;
    .end local v25    # "ajToken":J
    nop

    .line 3370
    move-object/from16 v0, v27

    goto/16 :goto_2c9

    .line 3411
    :cond_395
    move/from16 v2, p2

    const/4 v0, -0x1

    if-ne v2, v0, :cond_3b8

    .line 3412
    const-wide v3, 0x1080000000bL

    :try_start_39f
    iget-boolean v0, v1, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    invoke-virtual {v10, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3413
    const-wide v3, 0x1080000000cL

    iget-boolean v0, v1, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    invoke-virtual {v10, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3414
    const-wide v3, 0x1050000000dL

    iget v0, v1, Lcom/android/server/job/JobSchedulerService;->mMaxActiveJobs:I

    invoke-virtual {v10, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3416
    :cond_3b8
    monitor-exit v17
    :try_end_3b9
    .catchall {:try_start_39f .. :try_end_3b9} :catchall_3d9

    .line 3418
    invoke-virtual {v10}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 3419
    return-void

    .line 3416
    :catchall_3bd
    move-exception v0

    move/from16 v2, p2

    goto :goto_3d7

    .end local v24    # "filterUidFinal":I
    .restart local v15    # "filterUidFinal":I
    :catchall_3c1
    move-exception v0

    move/from16 v2, p2

    move/from16 v24, v15

    .end local v15    # "filterUidFinal":I
    .restart local v24    # "filterUidFinal":I
    :goto_3c6
    goto :goto_3d7

    .end local v24    # "filterUidFinal":I
    .restart local v23    # "filterUidFinal":I
    :catchall_3c7
    move-exception v0

    move/from16 v2, p2

    move/from16 v24, v23

    .end local v23    # "filterUidFinal":I
    .restart local v24    # "filterUidFinal":I
    goto :goto_3d7

    .end local v21    # "nowUptime":J
    .end local v24    # "filterUidFinal":I
    .local v8, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .local v11, "filterUidFinal":I
    .local v14, "nowUptime":J
    :catchall_3cd
    move-exception v0

    move/from16 v2, p2

    move-object/from16 v17, v9

    move/from16 v24, v11

    move-wide/from16 v21, v14

    move-object v11, v8

    .end local v8    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v14    # "nowUptime":J
    .local v11, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v21    # "nowUptime":J
    .restart local v24    # "filterUidFinal":I
    :goto_3d7
    :try_start_3d7
    monitor-exit v17
    :try_end_3d8
    .catchall {:try_start_3d7 .. :try_end_3d8} :catchall_3d9

    throw v0

    :catchall_3d9
    move-exception v0

    goto :goto_3d7
.end method

.method executeCancelCommand(Ljava/io/PrintWriter;Ljava/lang/String;IZI)I
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "hasJobId"    # Z
    .param p5, "jobId"    # I

    .line 2852
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_2a

    .line 2853
    const-string v0, "JobScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executeCancelCommand(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2856
    :cond_2a
    const/4 v0, -0x1

    .line 2858
    .local v0, "pkgUid":I
    const/4 v1, 0x0

    :try_start_2c
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 2859
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    invoke-interface {v2, p2, v1, p3}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v3
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_34} :catch_36

    move v0, v3

    .line 2860
    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    goto :goto_37

    :catch_36
    move-exception v2

    .line 2862
    :goto_37
    if-gez v0, :cond_55

    .line 2863
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2864
    const/16 v1, -0x3e8

    return v1

    .line 2867
    :cond_55
    if-nez p4, :cond_81

    .line 2868
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Canceling all jobs for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2869
    const-string v2, "cancel shell command for package"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b2

    .line 2870
    const-string v2, "No matching jobs found."

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_b2

    .line 2873
    :cond_81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Canceling job "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " in user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2874
    const/16 v2, 0x7d0

    invoke-virtual {p0, v0, p5, v2}, Lcom/android/server/job/JobSchedulerService;->cancelJob(III)Z

    move-result v2

    if-nez v2, :cond_b2

    .line 2875
    const-string v2, "No matching job found."

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2879
    :cond_b2
    :goto_b2
    return v1
.end method

.method executeHeartbeatCommand(Ljava/io/PrintWriter;I)I
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "numBeats"    # I

    .line 3009
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p2, v1, :cond_c

    .line 3010
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getCurrentHeartbeat()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 3011
    return v0

    .line 3014
    :cond_c
    const-string v1, "Advancing standby heartbeat by "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3015
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 3016
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3017
    int-to-long v2, p2

    :try_start_18
    invoke-virtual {p0, v2, v3}, Lcom/android/server/job/JobSchedulerService;->advanceHeartbeatLocked(J)V

    .line 3018
    monitor-exit v1

    .line 3019
    return v0

    .line 3018
    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method executeRunCommand(Ljava/lang/String;IIZ)I
    .registers 10
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "jobId"    # I
    .param p4, "force"    # Z

    .line 2789
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_32

    .line 2790
    const-string v0, "JobScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executeRunCommand(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " f="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2795
    :cond_32
    const/4 v0, 0x0

    :try_start_33
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 2796
    const/4 v2, -0x1

    if-eq p2, v2, :cond_3c

    .line 2795
    move v2, p2

    goto :goto_3e

    .line 2796
    :cond_3c
    nop

    .line 2795
    move v2, v0

    :goto_3e
    invoke-interface {v1, p1, v0, v2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v1

    .line 2797
    .local v1, "uid":I
    if-gez v1, :cond_47

    .line 2798
    const/16 v0, -0x3e8

    return v0

    .line 2801
    :cond_47
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_4a} :catch_74

    .line 2802
    :try_start_4a
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v3, v1, p3}, Lcom/android/server/job/JobStore;->getJobByUidAndJobId(II)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v3

    .line 2803
    .local v3, "js":Lcom/android/server/job/controllers/JobStatus;
    if-nez v3, :cond_56

    .line 2804
    const/16 v4, -0x3e9

    monitor-exit v2

    return v4

    .line 2807
    :cond_56
    if-eqz p4, :cond_5a

    const/4 v4, 0x2

    goto :goto_5b

    :cond_5a
    const/4 v4, 0x1

    :goto_5b
    iput v4, v3, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    .line 2808
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->isConstraintsSatisfied()Z

    move-result v4

    if-nez v4, :cond_69

    .line 2809
    iput v0, v3, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    .line 2810
    const/16 v4, -0x3ea

    monitor-exit v2

    return v4

    .line 2813
    :cond_69
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService;->queueReadyJobsForExecutionLocked()V

    .line 2814
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService;->maybeRunPendingJobsLocked()V

    .line 2815
    .end local v3    # "js":Lcom/android/server/job/controllers/JobStatus;
    monitor-exit v2

    .line 2818
    .end local v1    # "uid":I
    goto :goto_75

    .line 2815
    .restart local v1    # "uid":I
    :catchall_71
    move-exception v3

    monitor-exit v2
    :try_end_73
    .catchall {:try_start_4a .. :try_end_73} :catchall_71

    :try_start_73
    throw v3
    :try_end_74
    .catch Landroid/os/RemoteException; {:try_start_73 .. :try_end_74} :catch_74

    .line 2816
    .end local v1    # "uid":I
    :catch_74
    move-exception v1

    .line 2819
    :goto_75
    return v0
.end method

.method executeTimeoutCommand(Ljava/io/PrintWriter;Ljava/lang/String;IZI)I
    .registers 24
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "hasJobId"    # Z
    .param p5, "jobId"    # I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 2825
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_35

    .line 2826
    const-string v0, "JobScheduler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "executeTimeoutCommand(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p5

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 2829
    :cond_35
    move-object/from16 v4, p2

    move/from16 v11, p3

    move/from16 v12, p5

    :goto_3b
    iget-object v3, v1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2830
    const/4 v0, 0x0

    .line 2831
    .local v0, "foundSome":Z
    move v14, v0

    const/4 v0, 0x0

    .line 2831
    .local v0, "i":I
    .local v14, "foundSome":Z
    :goto_41
    :try_start_41
    iget-object v5, v1, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_86

    .line 2832
    iget-object v5, v1, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/JobServiceContext;

    move-object v15, v5

    .line 2833
    .local v15, "jc":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v15}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v5

    move-object v10, v5

    .line 2834
    .local v10, "js":Lcom/android/server/job/controllers/JobStatus;
    const-string/jumbo v16, "shell"

    move-object v5, v15

    move-object v6, v4

    move v7, v11

    move/from16 v8, p4

    move v9, v12

    move-object v13, v10

    move-object/from16 v10, v16

    .line 2834
    .end local v10    # "js":Lcom/android/server/job/controllers/JobStatus;
    .local v13, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/job/JobServiceContext;->timeoutIfExecutingLocked(Ljava/lang/String;IZILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_83

    .line 2835
    const/4 v5, 0x1

    .line 2836
    .end local v14    # "foundSome":Z
    .local v5, "foundSome":Z
    const-string v6, "Timing out: "

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2837
    invoke-virtual {v13, v2}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 2838
    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2839
    invoke-virtual {v13}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2831
    .end local v13    # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local v15    # "jc":Lcom/android/server/job/JobServiceContext;
    move v14, v5

    .line 2831
    .end local v5    # "foundSome":Z
    .restart local v14    # "foundSome":Z
    :cond_83
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 2842
    .end local v0    # "i":I
    :cond_86
    if-nez v14, :cond_8d

    .line 2843
    const-string v0, "No matching executing jobs found."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2845
    .end local v14    # "foundSome":Z
    :cond_8d
    monitor-exit v3

    .line 2846
    const/4 v0, 0x0

    return v0

    .line 2845
    :catchall_90
    move-exception v0

    monitor-exit v3
    :try_end_92
    .catchall {:try_start_41 .. :try_end_92} :catchall_90

    throw v0
.end method

.method findJobContextIdFromMap(Lcom/android/server/job/controllers/JobStatus;[Lcom/android/server/job/controllers/JobStatus;)I
    .registers 7
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "map"    # [Lcom/android/server/job/controllers/JobStatus;

    .line 2251
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_1c

    .line 2252
    aget-object v1, p2, v0

    if-eqz v1, :cond_19

    aget-object v1, p2, v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/job/controllers/JobStatus;->matches(II)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2253
    return v0

    .line 2251
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2256
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, -0x1

    return v0
.end method

.method getBatteryCharging()Z
    .registers 3

    .line 2897
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2898
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryController:Lcom/android/server/job/controllers/BatteryController;

    if-eqz v1, :cond_12

    .line 2899
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryController:Lcom/android/server/job/controllers/BatteryController;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/BatteryController;->getTracker()Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->isOnStablePower()Z

    move-result v1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    monitor-exit v0

    .line 2898
    return v1

    .line 2900
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method getBatteryNotLow()Z
    .registers 3

    .line 2904
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2905
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryController:Lcom/android/server/job/controllers/BatteryController;

    if-eqz v1, :cond_12

    .line 2906
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryController:Lcom/android/server/job/controllers/BatteryController;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/BatteryController;->getTracker()Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->isBatteryNotLow()Z

    move-result v1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    monitor-exit v0

    .line 2905
    return v1

    .line 2907
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method getBatterySeq()I
    .registers 3

    .line 2891
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2892
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryController:Lcom/android/server/job/controllers/BatteryController;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryController:Lcom/android/server/job/controllers/BatteryController;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/BatteryController;->getTracker()Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->getSeq()I

    move-result v1

    goto :goto_13

    :cond_12
    const/4 v1, -0x1

    :goto_13
    monitor-exit v0

    return v1

    .line 2893
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public getConstants()Lcom/android/server/job/JobSchedulerService$Constants;
    .registers 2

    .line 803
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    return-object v0
.end method

.method getCurrentHeartbeat()J
    .registers 4

    .line 2924
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2925
    :try_start_3
    iget-wide v1, p0, Lcom/android/server/job/JobSchedulerService;->mHeartbeat:J

    monitor-exit v0

    return-wide v1

    .line 2926
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method getJobState(Ljava/io/PrintWriter;Ljava/lang/String;II)I
    .registers 15
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "jobId"    # I

    .line 2932
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 2933
    const/4 v2, -0x1

    if-eq p3, v2, :cond_a

    .line 2932
    move v2, p3

    goto :goto_c

    .line 2933
    :cond_a
    nop

    .line 2932
    move v2, v0

    :goto_c
    invoke-interface {v1, p2, v0, v2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v1

    .line 2934
    .local v1, "uid":I
    if-gez v1, :cond_23

    .line 2935
    const-string/jumbo v2, "unknown("

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, ")"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2936
    const/16 v0, -0x3e8

    return v0

    .line 2939
    :cond_23
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_26} :catch_117

    .line 2940
    :try_start_26
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v3, v1, p4}, Lcom/android/server/job/JobStore;->getJobByUidAndJobId(II)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v3

    .line 2941
    .local v3, "js":Lcom/android/server/job/controllers/JobStatus;
    sget-boolean v4, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v4, :cond_56

    const-string v4, "JobScheduler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get-job-state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2942
    :cond_56
    if-nez v3, :cond_72

    .line 2943
    const-string/jumbo v4, "unknown("

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p1, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 2944
    const-string v4, "/jid"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ")"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2945
    const/16 v4, -0x3e9

    monitor-exit v2

    return v4

    .line 2948
    :cond_72
    const/4 v4, 0x0

    .line 2949
    .local v4, "printed":Z
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_82

    .line 2950
    const-string/jumbo v5, "pending"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2951
    const/4 v4, 0x1

    .line 2953
    :cond_82
    invoke-direct {p0, v3}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyActiveLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v5

    if-eqz v5, :cond_95

    .line 2954
    if-eqz v4, :cond_8f

    .line 2955
    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2957
    :cond_8f
    const/4 v4, 0x1

    .line 2958
    const-string v5, "active"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2960
    :cond_95
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v5

    if-nez v5, :cond_af

    .line 2961
    if-eqz v4, :cond_a8

    .line 2962
    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2964
    :cond_a8
    const/4 v4, 0x1

    .line 2965
    const-string/jumbo v5, "user-stopped"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2967
    :cond_af
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v5

    if-ltz v5, :cond_c8

    .line 2968
    if-eqz v4, :cond_c2

    .line 2969
    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2971
    :cond_c2
    const/4 v4, 0x1

    .line 2972
    const-string v5, "backing-up"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_c8
    .catchall {:try_start_26 .. :try_end_c8} :catchall_114

    .line 2974
    :cond_c8
    move v5, v0

    .line 2976
    .local v5, "componentPresent":Z
    :try_start_c9
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    .line 2977
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v7

    const/high16 v8, 0x10000000

    .line 2979
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v9

    .line 2976
    invoke-interface {v6, v7, v8, v9}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v6
    :try_end_db
    .catch Landroid/os/RemoteException; {:try_start_c9 .. :try_end_db} :catch_e2
    .catchall {:try_start_c9 .. :try_end_db} :catchall_114

    if-eqz v6, :cond_df

    const/4 v6, 0x1

    goto :goto_e0

    :cond_df
    move v6, v0

    :goto_e0
    move v5, v6

    .line 2981
    goto :goto_e3

    .line 2980
    :catch_e2
    move-exception v6

    .line 2982
    :goto_e3
    if-nez v5, :cond_f3

    .line 2983
    if-eqz v4, :cond_ec

    .line 2984
    :try_start_e7
    const-string v6, " "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2986
    :cond_ec
    const/4 v4, 0x1

    .line 2987
    const-string/jumbo v6, "no-component"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2989
    :cond_f3
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v6

    if-eqz v6, :cond_107

    .line 2990
    if-eqz v4, :cond_100

    .line 2991
    const-string v6, " "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2993
    :cond_100
    const/4 v4, 0x1

    .line 2994
    const-string/jumbo v6, "ready"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2996
    :cond_107
    if-nez v4, :cond_10f

    .line 2997
    const-string/jumbo v6, "waiting"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2999
    :cond_10f
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3000
    .end local v3    # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local v4    # "printed":Z
    .end local v5    # "componentPresent":Z
    monitor-exit v2

    .line 3003
    .end local v1    # "uid":I
    goto :goto_118

    .line 3000
    .restart local v1    # "uid":I
    :catchall_114
    move-exception v3

    monitor-exit v2
    :try_end_116
    .catchall {:try_start_e7 .. :try_end_116} :catchall_114

    :try_start_116
    throw v3
    :try_end_117
    .catch Landroid/os/RemoteException; {:try_start_116 .. :try_end_117} :catch_117

    .line 3001
    .end local v1    # "uid":I
    :catch_117
    move-exception v1

    .line 3004
    :goto_118
    return v0
.end method

.method public getJobStore()Lcom/android/server/job/JobStore;
    .registers 2

    .line 799
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    return-object v0
.end method

.method public getLock()Ljava/lang/Object;
    .registers 2

    .line 795
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getPendingJob(II)Landroid/app/job/JobInfo;
    .registers 8
    .param p1, "uid"    # I
    .param p2, "jobId"    # I

    .line 930
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 931
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Ljava/util/List;

    move-result-object v1

    .line 932
    .local v1, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_f
    if-ltz v2, :cond_26

    .line 933
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    .line 934
    .local v3, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v4

    if-ne v4, p2, :cond_23

    .line 935
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v4

    monitor-exit v0

    return-object v4

    .line 932
    .end local v3    # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_23
    add-int/lit8 v2, v2, -0x1

    goto :goto_f

    .line 938
    .end local v2    # "i":I
    :cond_26
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 939
    .end local v1    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public getPendingJobs(I)Ljava/util/List;
    .registers 8
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation

    .line 918
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 919
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Ljava/util/List;

    move-result-object v1

    .line 920
    .local v1, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 921
    .local v2, "outList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/job/JobInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_18
    if-ltz v3, :cond_2a

    .line 922
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    .line 923
    .local v4, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 921
    .end local v4    # "job":Lcom/android/server/job/controllers/JobStatus;
    add-int/lit8 v3, v3, -0x1

    goto :goto_18

    .line 925
    .end local v3    # "i":I
    :cond_2a
    monitor-exit v0

    return-object v2

    .line 926
    .end local v1    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v2    # "outList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/job/JobInfo;>;"
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method getStorageNotLow()Z
    .registers 3

    .line 2917
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2918
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStorageController:Lcom/android/server/job/controllers/StorageController;

    if-eqz v1, :cond_12

    .line 2919
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStorageController:Lcom/android/server/job/controllers/StorageController;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/StorageController;->getTracker()Lcom/android/server/job/controllers/StorageController$StorageTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/job/controllers/StorageController$StorageTracker;->isStorageNotLow()Z

    move-result v1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    monitor-exit v0

    .line 2918
    return v1

    .line 2920
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method getStorageSeq()I
    .registers 3

    .line 2911
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2912
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStorageController:Lcom/android/server/job/controllers/StorageController;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStorageController:Lcom/android/server/job/controllers/StorageController;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/StorageController;->getTracker()Lcom/android/server/job/controllers/StorageController$StorageTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/job/controllers/StorageController$StorageTracker;->getSeq()I

    move-result v1

    goto :goto_13

    :cond_12
    const/4 v1, -0x1

    :goto_13
    monitor-exit v0

    return v1

    .line 2913
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public getTestableContext()Landroid/content/Context;
    .registers 2

    .line 791
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method heartbeatWhenJobsLastRun(Lcom/android/server/job/controllers/JobStatus;)J
    .registers 4
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 1514
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/JobSchedulerService;->heartbeatWhenJobsLastRun(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method heartbeatWhenJobsLastRun(Ljava/lang/String;I)J
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1482
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->STANDBY_BEATS:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    neg-int v0, v0

    int-to-long v0, v0

    .line 1483
    .local v0, "heartbeat":J
    const/4 v2, 0x0

    .line 1484
    .local v2, "cacheHit":Z
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1485
    :try_start_d
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mLastJobHeartbeats:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 1486
    .local v4, "jobPackages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const-wide v5, 0x7fffffffffffffffL

    if-eqz v4, :cond_30

    .line 1487
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, p1, v7}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 1488
    .local v7, "cachedValue":J
    cmp-long v9, v7, v5

    if-gez v9, :cond_30

    .line 1489
    const/4 v2, 0x1

    .line 1490
    move-wide v0, v7

    .line 1493
    .end local v7    # "cachedValue":J
    :cond_30
    if-nez v2, :cond_49

    .line 1495
    iget-object v7, p0, Lcom/android/server/job/JobSchedulerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v7, p1, p2}, Landroid/app/usage/UsageStatsManagerInternal;->getTimeSinceLastJobRun(Ljava/lang/String;I)J

    move-result-wide v7

    .line 1496
    .local v7, "timeSinceJob":J
    cmp-long v5, v7, v5

    if-gez v5, :cond_46

    .line 1499
    iget-wide v5, p0, Lcom/android/server/job/JobSchedulerService;->mHeartbeat:J

    iget-object v9, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v9, v9, Lcom/android/server/job/JobSchedulerService$Constants;->STANDBY_HEARTBEAT_TIME:J

    div-long v9, v7, v9

    sub-long/2addr v5, v9

    .line 1503
    .end local v0    # "heartbeat":J
    .local v5, "heartbeat":J
    move-wide v0, v5

    .end local v5    # "heartbeat":J
    .restart local v0    # "heartbeat":J
    :cond_46
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/job/JobSchedulerService;->setLastJobHeartbeatLocked(Ljava/lang/String;IJ)V

    .line 1505
    .end local v4    # "jobPackages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v7    # "timeSinceJob":J
    :cond_49
    monitor-exit v3
    :try_end_4a
    .catchall {:try_start_d .. :try_end_4a} :catchall_75

    .line 1506
    sget-boolean v3, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    if-eqz v3, :cond_74

    .line 1507
    const-string v3, "JobScheduler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Last job heartbeat "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    :cond_74
    return-wide v0

    .line 1505
    :catchall_75
    move-exception v4

    :try_start_76
    monitor-exit v3
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    throw v4
.end method

.method noteJobsNonpending(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 1365
    .local p1, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_16

    .line 1366
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 1367
    .local v1, "job":Lcom/android/server/job/controllers/JobStatus;
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v2, v1}, Lcom/android/server/job/JobPackageTracker;->noteNonpending(Lcom/android/server/job/controllers/JobStatus;)V

    .line 1365
    .end local v1    # "job":Lcom/android/server/job/controllers/JobStatus;
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1369
    .end local v0    # "i":I
    :cond_16
    return-void
.end method

.method noteJobsPending(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 1358
    .local p1, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_16

    .line 1359
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 1360
    .local v1, "job":Lcom/android/server/job/controllers/JobStatus;
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v2, v1}, Lcom/android/server/job/JobPackageTracker;->notePending(Lcom/android/server/job/controllers/JobStatus;)V

    .line 1358
    .end local v1    # "job":Lcom/android/server/job/controllers/JobStatus;
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1362
    .end local v0    # "i":I
    :cond_16
    return-void
.end method

.method public onBootPhase(I)V
    .registers 15
    .param p1, "phase"    # I

    .line 1219
    const/16 v0, 0x1f4

    if-ne v0, p1, :cond_87

    .line 1220
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConstantsObserver:Lcom/android/server/job/JobSchedulerService$ConstantsObserver;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->start(Landroid/content/ContentResolver;)V

    .line 1222
    const-class v0, Lcom/android/server/AppStateTracker;

    .line 1223
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppStateTracker;

    .line 1222
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppStateTracker;

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    .line 1224
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->setNextHeartbeatAlarm()V

    .line 1227
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1228
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1229
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1230
    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1231
    const-string v1, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1232
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1233
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1235
    new-instance v10, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-direct {v10, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1236
    .local v10, "userFilter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1239
    :try_start_65
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mUidObserver:Landroid/app/IUidObserver;

    const/16 v3, 0xf

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_72
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_72} :catch_73

    .line 1245
    goto :goto_74

    .line 1243
    :catch_73
    move-exception v1

    .line 1247
    :goto_74
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForNonExistentUsers()V

    .line 1249
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mUltraPowerSaverController:Lcom/android/server/job/controllers/UltraPowerSaverController;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/UltraPowerSaverController;->registerObserver()V

    .line 1250
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mUltraPowerSaverController:Lcom/android/server/job/controllers/UltraPowerSaverController;

    new-instance v2, Lcom/android/server/job/-$$Lambda$JobSchedulerService$Yz9H6DD3BaWGzbkIF1ux9tikN2g;

    invoke-direct {v2, p0}, Lcom/android/server/job/-$$Lambda$JobSchedulerService$Yz9H6DD3BaWGzbkIF1ux9tikN2g;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-virtual {v1, v2}, Lcom/android/server/job/controllers/UltraPowerSaverController;->setCallback(Lcom/android/server/job/controllers/UltraPowerSaverController$Callback;)V

    .line 1253
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v10    # "userFilter":Landroid/content/IntentFilter;
    goto :goto_e1

    :cond_87
    const/16 v0, 0x258

    const/4 v1, 0x1

    if-ne p1, v0, :cond_d4

    .line 1254
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1256
    :try_start_8f
    iput-boolean v1, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    .line 1257
    const-string v1, "batterystats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 1259
    const-class v1, Lcom/android/server/DeviceIdleController$LocalService;

    .line 1260
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DeviceIdleController$LocalService;

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    .line 1262
    const/4 v1, 0x0

    .line 1262
    .local v1, "i":I
    :goto_a8
    const/16 v2, 0x10

    if-ge v1, v2, :cond_c5

    .line 1263
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    new-instance v3, Lcom/android/server/job/JobServiceContext;

    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    .line 1267
    invoke-static {}, Lcom/android/server/MiuiFgThread;->get()Lcom/android/server/MiuiFgThread;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/MiuiFgThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/android/server/job/JobServiceContext;-><init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/job/JobPackageTracker;Landroid/os/Looper;)V

    .line 1263
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1262
    add-int/lit8 v1, v1, 0x1

    goto :goto_a8

    .line 1270
    .end local v1    # "i":I
    :cond_c5
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    new-instance v2, Lcom/android/server/job/-$$Lambda$JobSchedulerService$0Wz_b63Vzxu3lYEmfPzreSihZzE;

    invoke-direct {v2, p0}, Lcom/android/server/job/-$$Lambda$JobSchedulerService$0Wz_b63Vzxu3lYEmfPzreSihZzE;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-virtual {v1, v2}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    .line 1279
    monitor-exit v0

    goto :goto_e1

    :catchall_d1
    move-exception v1

    monitor-exit v0
    :try_end_d3
    .catchall {:try_start_8f .. :try_end_d3} :catchall_d1

    throw v1

    .line 1281
    :cond_d4
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_e1

    .line 1282
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1285
    :cond_e1
    :goto_e1
    return-void
.end method

.method public onControllerStateChanged()V
    .registers 3

    .line 1589
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1590
    return-void
.end method

.method public onDeviceIdleStateChanged(Z)V
    .registers 9
    .param p1, "deviceIdle"    # Z

    .line 1050
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1051
    const/4 v1, 0x1

    if-eqz p1, :cond_2d

    .line 1054
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    :try_start_7
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_49

    .line 1055
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/JobServiceContext;

    .line 1056
    .local v3, "jsc":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v3}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v4

    .line 1057
    .local v4, "executing":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v4, :cond_2a

    .line 1058
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getFlags()I

    move-result v5

    and-int/2addr v5, v1

    if-nez v5, :cond_2a

    .line 1059
    const/4 v5, 0x4

    const-string v6, "cancelled due to doze"

    invoke-virtual {v3, v5, v6}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(ILjava/lang/String;)V

    .line 1054
    .end local v3    # "jsc":Lcom/android/server/job/JobServiceContext;
    .end local v4    # "executing":Lcom/android/server/job/controllers/JobStatus;
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1065
    .end local v2    # "i":I
    :cond_2d
    iget-boolean v2, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    if-eqz v2, :cond_49

    .line 1066
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    if-eqz v2, :cond_40

    .line 1067
    iget-boolean v2, p0, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    if-nez v2, :cond_40

    .line 1068
    iput-boolean v1, p0, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    .line 1069
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    invoke-virtual {v2, v1}, Lcom/android/server/DeviceIdleController$LocalService;->setJobsActive(Z)V

    .line 1072
    :cond_40
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1075
    :cond_49
    monitor-exit v0

    .line 1076
    return-void

    .line 1075
    :catchall_4b
    move-exception v1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_7 .. :try_end_4d} :catchall_4b

    throw v1
.end method

.method public onJobCompletedLocked(Lcom/android/server/job/controllers/JobStatus;Z)V
    .registers 10
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "needsReschedule"    # Z

    .line 1537
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_22

    .line 1538
    const-string v0, "JobScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Completed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", reschedule="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    :cond_22
    if-eqz p2, :cond_29

    .line 1545
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->getRescheduleJobForFailureLocked(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v0

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    .line 1549
    .local v0, "rescheduledJob":Lcom/android/server/job/controllers/JobStatus;
    :goto_2a
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/job/JobSchedulerService;->stopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)Z

    move-result v1

    const/4 v2, 0x3

    if-nez v1, :cond_50

    .line 1550
    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v1, :cond_46

    .line 1551
    const-string v1, "JobScheduler"

    const-string v3, "Could not find job to remove. Was job removed while executing?"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    :cond_46
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1556
    return-void

    .line 1559
    :cond_50
    if-eqz v0, :cond_75

    .line 1561
    :try_start_52
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/job/controllers/JobStatus;->prepareLocked(Landroid/app/IActivityManager;)V
    :try_end_59
    .catch Ljava/lang/SecurityException; {:try_start_52 .. :try_end_59} :catch_5a

    .line 1564
    goto :goto_71

    .line 1562
    :catch_5a
    move-exception v1

    .line 1563
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v3, "JobScheduler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to regrant job permissions for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    .end local v1    # "e":Ljava/lang/SecurityException;
    :goto_71
    invoke-direct {p0, v0, p1}, Lcom/android/server/job/JobSchedulerService;->startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    goto :goto_a5

    .line 1566
    :cond_75
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v1

    if-eqz v1, :cond_a5

    .line 1567
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->getRescheduleJobForPeriodic(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v1

    .line 1569
    .local v1, "rescheduledPeriodic":Lcom/android/server/job/controllers/JobStatus;
    :try_start_83
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/job/controllers/JobStatus;->prepareLocked(Landroid/app/IActivityManager;)V
    :try_end_8a
    .catch Ljava/lang/SecurityException; {:try_start_83 .. :try_end_8a} :catch_8b

    .line 1572
    goto :goto_a2

    .line 1570
    :catch_8b
    move-exception v3

    .line 1571
    .local v3, "e":Ljava/lang/SecurityException;
    const-string v4, "JobScheduler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to regrant job permissions for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    .end local v3    # "e":Ljava/lang/SecurityException;
    :goto_a2
    invoke-direct {p0, v1, p1}, Lcom/android/server/job/JobSchedulerService;->startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    .line 1575
    .end local v1    # "rescheduledPeriodic":Lcom/android/server/job/controllers/JobStatus;
    :cond_a5
    :goto_a5
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/job/controllers/JobStatus;->unprepareLocked(Landroid/app/IActivityManager;)V

    .line 1576
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->reportActiveLocked()V

    .line 1577
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1578
    return-void
.end method

.method public onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 4
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 1594
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1595
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 1214
    const-string/jumbo v0, "jobscheduler"

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobSchedulerStub:Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/JobSchedulerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1215
    return-void
.end method

.method public onStartUser(I)V
    .registers 4
    .param p1, "userHandle"    # I

    .line 808
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    .line 810
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 811
    return-void
.end method

.method public onStopUser(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .line 821
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    .line 822
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 4
    .param p1, "userHandle"    # I

    .line 816
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 817
    return-void
.end method

.method reportActiveLocked()V
    .registers 7

    .line 1080
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_c

    move v0, v2

    goto :goto_d

    :cond_c
    move v0, v1

    .line 1081
    .local v0, "active":Z
    :goto_d
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_44

    .line 1082
    nop

    .local v1, "i":I
    :goto_16
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_44

    .line 1083
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/JobServiceContext;

    .line 1084
    .local v3, "jsc":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v3}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v4

    .line 1085
    .local v4, "job":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v4, :cond_41

    .line 1086
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v5

    and-int/2addr v5, v2

    if-nez v5, :cond_41

    iget-boolean v5, v4, Lcom/android/server/job/controllers/JobStatus;->dozeWhitelisted:Z

    if-nez v5, :cond_41

    iget-boolean v5, v4, Lcom/android/server/job/controllers/JobStatus;->uidActive:Z

    if-nez v5, :cond_41

    .line 1091
    const/4 v0, 0x1

    .line 1092
    goto :goto_44

    .line 1082
    .end local v3    # "jsc":Lcom/android/server/job/JobServiceContext;
    .end local v4    # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 1097
    .end local v1    # "i":I
    :cond_44
    :goto_44
    iget-boolean v1, p0, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    if-eq v1, v0, :cond_53

    .line 1098
    iput-boolean v0, p0, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    .line 1099
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    if-eqz v1, :cond_53

    .line 1100
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    invoke-virtual {v1, v0}, Lcom/android/server/DeviceIdleController$LocalService;->setJobsActive(Z)V

    .line 1103
    :cond_53
    return-void
.end method

.method reportAppUsage(Ljava/lang/String;I)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1108
    return-void
.end method

.method public scheduleAsPackage(Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;ILjava/lang/String;ILjava/lang/String;)I
    .registers 25
    .param p1, "job"    # Landroid/app/job/JobInfo;
    .param p2, "work"    # Landroid/app/job/JobWorkItem;
    .param p3, "uId"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .param p6, "tag"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v10, p3

    move-object/from16 v11, p4

    .line 836
    :try_start_a
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 837
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 836
    invoke-interface {v0, v10, v4}, Landroid/app/IActivityManager;->isAppStartModeDisabled(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 838
    const-string v0, "JobScheduler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not scheduling job "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " -- package not allowed to start"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_43} :catch_46

    .line 840
    const/4 v0, 0x0

    return v0

    .line 843
    :cond_45
    goto :goto_47

    .line 842
    :catch_46
    move-exception v0

    .line 845
    :goto_47
    iget-object v12, v1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 846
    :try_start_4a
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getId()I

    move-result v4

    invoke-virtual {v0, v10, v4}, Lcom/android/server/job/JobStore;->getJobByUidAndJobId(II)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v0

    .line 848
    .local v0, "toCancel":Lcom/android/server/job/controllers/JobStatus;
    const/4 v13, 0x1

    if-eqz v3, :cond_71

    if-eqz v0, :cond_71

    .line 851
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/job/JobInfo;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_71

    .line 853
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lcom/android/server/job/controllers/JobStatus;->enqueueWorkLocked(Landroid/app/IActivityManager;Landroid/app/job/JobWorkItem;)V

    .line 857
    iget-object v4, v1, Lcom/android/server/job/JobSchedulerService;->mIsUidActivePredicate:Ljava/util/function/Predicate;

    invoke-virtual {v0, v4}, Lcom/android/server/job/controllers/JobStatus;->maybeAddForegroundExemption(Ljava/util/function/Predicate;)V

    .line 859
    monitor-exit v12
    :try_end_70
    .catchall {:try_start_4a .. :try_end_70} :catchall_10c

    return v13

    .line 863
    :cond_71
    move/from16 v14, p5

    move-object/from16 v15, p6

    :try_start_75
    invoke-static {v2, v10, v11, v14, v15}, Lcom/android/server/job/controllers/JobStatus;->createFromJobInfo(Landroid/app/job/JobInfo;ILjava/lang/String;ILjava/lang/String;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v4

    move-object v9, v4

    .line 869
    .local v9, "jobStatus":Lcom/android/server/job/controllers/JobStatus;
    iget-object v4, v1, Lcom/android/server/job/JobSchedulerService;->mIsUidActivePredicate:Ljava/util/function/Predicate;

    invoke-virtual {v9, v4}, Lcom/android/server/job/controllers/JobStatus;->maybeAddForegroundExemption(Ljava/util/function/Predicate;)V

    .line 871
    sget-boolean v4, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v4, :cond_9d

    const-string v4, "JobScheduler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SCHEDULE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    :cond_9d
    if-nez v11, :cond_c8

    .line 874
    iget-object v4, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v4, v10}, Lcom/android/server/job/JobStore;->countJobsForUid(I)I

    move-result v4

    const/16 v5, 0x64

    if-gt v4, v5, :cond_aa

    goto :goto_c8

    .line 875
    :cond_aa
    const-string v4, "JobScheduler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Too many jobs for uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Apps may not schedule more than 100 distinct jobs"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 882
    :cond_c8
    :goto_c8
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/android/server/job/controllers/JobStatus;->prepareLocked(Landroid/app/IActivityManager;)V

    .line 884
    if-eqz v0, :cond_d7

    .line 885
    const-string/jumbo v4, "job rescheduled by app"

    invoke-direct {v1, v0, v9, v4}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Ljava/lang/String;)V

    .line 887
    :cond_d7
    if-eqz v3, :cond_e0

    .line 889
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-virtual {v9, v4, v3}, Lcom/android/server/job/controllers/JobStatus;->enqueueWorkLocked(Landroid/app/IActivityManager;Landroid/app/job/JobWorkItem;)V

    .line 891
    :cond_e0
    invoke-direct {v1, v9, v0}, Lcom/android/server/job/JobSchedulerService;->startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    .line 892
    const/16 v4, 0x8

    const/4 v6, 0x0

    .line 893
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getBatteryName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    const/16 v16, 0x0

    .line 892
    move v5, v10

    move-object v13, v9

    move/from16 v9, v16

    .line 892
    .end local v9    # "jobStatus":Lcom/android/server/job/controllers/JobStatus;
    .local v13, "jobStatus":Lcom/android/server/job/controllers/JobStatus;
    invoke-static/range {v4 .. v9}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;II)I

    .line 906
    invoke-direct {v1, v13}, Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v4

    if-eqz v4, :cond_109

    .line 909
    iget-object v4, v1, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v4, v13}, Lcom/android/server/job/JobPackageTracker;->notePending(Lcom/android/server/job/controllers/JobStatus;)V

    .line 910
    iget-object v4, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    sget-object v5, Lcom/android/server/job/JobSchedulerService;->mEnqueueTimeComparator:Ljava/util/Comparator;

    invoke-static {v4, v13, v5}, Lcom/android/server/job/JobSchedulerService;->addOrderedItem(Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 911
    invoke-direct/range {p0 .. p0}, Lcom/android/server/job/JobSchedulerService;->maybeRunPendingJobsLocked()V

    .line 913
    .end local v0    # "toCancel":Lcom/android/server/job/controllers/JobStatus;
    .end local v13    # "jobStatus":Lcom/android/server/job/controllers/JobStatus;
    :cond_109
    monitor-exit v12

    .line 914
    const/4 v0, 0x1

    return v0

    .line 913
    :catchall_10c
    move-exception v0

    move/from16 v14, p5

    move-object/from16 v15, p6

    :goto_111
    monitor-exit v12
    :try_end_112
    .catchall {:try_start_75 .. :try_end_112} :catchall_113

    throw v0

    :catchall_113
    move-exception v0

    goto :goto_111
.end method

.method setLastJobHeartbeatLocked(Ljava/lang/String;IJ)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "heartbeat"    # J

    .line 1518
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLastJobHeartbeats:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 1519
    .local v0, "jobPackages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    if-nez v0, :cond_15

    .line 1520
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v0, v1

    .line 1521
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLastJobHeartbeats:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1523
    :cond_15
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1524
    return-void
.end method

.method setMonitorBattery(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 2883
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2884
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryController:Lcom/android/server/job/controllers/BatteryController;

    if-eqz v1, :cond_10

    .line 2885
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryController:Lcom/android/server/job/controllers/BatteryController;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/BatteryController;->getTracker()Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->setMonitorBatteryLocked(Z)V

    .line 2887
    :cond_10
    monitor-exit v0

    .line 2888
    return-void

    .line 2887
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method setNextHeartbeatAlarm()V
    .registers 20

    .line 1919
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1920
    :try_start_5
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v3, v0, Lcom/android/server/job/JobSchedulerService$Constants;->STANDBY_HEARTBEAT_TIME:J

    .line 1921
    .local v3, "heartbeatLength":J
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_5d

    .line 1922
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    .line 1923
    .local v5, "now":J
    add-long v7, v5, v3

    div-long/2addr v7, v3

    .line 1924
    .local v7, "nextBeatOrdinal":J
    mul-long v14, v7, v3

    .line 1925
    .local v14, "nextHeartbeat":J
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    if-eqz v0, :cond_3d

    .line 1926
    const-string v0, "JobScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Setting heartbeat alarm for "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " = "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v9, v14, v5

    .line 1927
    invoke-static {v9, v10}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1926
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1929
    :cond_3d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1930
    .local v0, "am":Landroid/app/AlarmManager;
    const/4 v10, 0x3

    const-string v13, "*job.heartbeat*"

    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mHeartbeatAlarm:Lcom/android/server/job/JobSchedulerService$HeartbeatAlarmListener;

    iget-object v11, v1, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    move-object v9, v0

    move-object/from16 v16, v11

    move-wide v11, v14

    move-wide/from16 v17, v14

    move-object v14, v2

    .end local v14    # "nextHeartbeat":J
    .local v17, "nextHeartbeat":J
    move-object/from16 v15, v16

    invoke-virtual/range {v9 .. v15}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 1932
    return-void

    .line 1921
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v3    # "heartbeatLength":J
    .end local v5    # "now":J
    .end local v7    # "nextBeatOrdinal":J
    .end local v17    # "nextHeartbeat":J
    :catchall_5d
    move-exception v0

    :try_start_5e
    monitor-exit v2
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw v0
.end method

.method triggerDockState(Z)V
    .registers 5
    .param p1, "idleState"    # Z

    .line 3024
    if-eqz p1, :cond_a

    .line 3025
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DOCK_IDLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "dockIntent":Landroid/content/Intent;
    goto :goto_11

    .line 3027
    .end local v0    # "dockIntent":Landroid/content/Intent;
    :cond_a
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DOCK_ACTIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3029
    .restart local v0    # "dockIntent":Landroid/content/Intent;
    :goto_11
    const-string v1, "android"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3030
    const/high16 v1, 0x50000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3031
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3032
    return-void
.end method

.method updateUidState(II)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    .line 1034
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1035
    const/4 v1, 0x2

    if-ne p2, v1, :cond_10

    .line 1039
    :try_start_6
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    const/16 v2, 0x28

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_20

    .line 1045
    :catchall_e
    move-exception v1

    goto :goto_22

    .line 1040
    :cond_10
    const/4 v1, 0x4

    if-gt p2, v1, :cond_1b

    .line 1041
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    const/16 v2, 0x1e

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_20

    .line 1043
    :cond_1b
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mUidPriorityOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1045
    :goto_20
    monitor-exit v0

    .line 1046
    return-void

    .line 1045
    :goto_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_6 .. :try_end_23} :catchall_e

    throw v1
.end method
