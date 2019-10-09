.class public Lcom/android/server/am/ActivityStackSupervisor;
.super Lcom/android/server/wm/ConfigurationContainer;
.source "ActivityStackSupervisor.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;
.implements Lcom/android/server/am/RecentTasks$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityStackSupervisor$AnimationHelperDeathRecipient;,
        Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;,
        Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;,
        Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;,
        Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;,
        Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;,
        Lcom/android/server/am/ActivityStackSupervisor$AnyTaskForIdMatchTaskMode;
    }
.end annotation


# static fields
.field private static final ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ACTIVITY_RESTRICTION_APPOP:I = 0x2

.field private static final ACTIVITY_RESTRICTION_NONE:I = 0x0

.field private static final ACTIVITY_RESTRICTION_PERMISSION:I = 0x1

.field static final CREATE_IF_NEEDED:Z = true

.field static final DEFER_RESUME:Z = true

.field static final HANDLE_DISPLAY_ADDED:I = 0x69

.field static final HANDLE_DISPLAY_CHANGED:I = 0x6a

.field static final HANDLE_DISPLAY_REMOVED:I = 0x6b

.field static final IDLE_NOW_MSG:I = 0x65

.field static final IDLE_TIMEOUT:I = 0x2710

.field static final IDLE_TIMEOUT_MSG:I = 0x64

.field static final LAUNCH_TASK_BEHIND_COMPLETE:I = 0x70

.field static final LAUNCH_TIMEOUT:I = 0x2710

.field static final LAUNCH_TIMEOUT_MSG:I = 0x68

.field static final MATCH_TASK_IN_STACKS_ONLY:I = 0x0

.field static final MATCH_TASK_IN_STACKS_OR_RECENT_TASKS:I = 0x1

.field static final MATCH_TASK_IN_STACKS_OR_RECENT_TASKS_AND_RESTORE:I = 0x2

.field private static final MAX_TASK_IDS_PER_USER:I = 0x186a0

.field static final ON_TOP:Z = true

.field static final PAUSE_IMMEDIATELY:Z = true

.field static final PRESERVE_WINDOWS:Z = true

.field static final REMOVE_FROM_RECENTS:Z = true

.field static final REPORT_MULTI_WINDOW_MODE_CHANGED_MSG:I = 0x72

.field static final REPORT_PIP_MODE_CHANGED_MSG:I = 0x73

.field static final RESUME_TOP_ACTIVITY_MSG:I = 0x66

.field static final SLEEP_TIMEOUT:I = 0x1388

.field static final SLEEP_TIMEOUT_MSG:I = 0x67

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_FOCUS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_IDLE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_PAUSE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_RECENTS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_RELEASE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_STACK:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_STATES:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_SWITCH:Ljava/lang/String; = "ActivityManager"

.field static final TAG_TASKS:Ljava/lang/String; = "ActivityManager"

.field static final VALIDATE_WAKE_LOCK_CALLER:Z = false

.field private static final VIRTUAL_DISPLAY_BASE_NAME:Ljava/lang/String; = "ActivityViewVirtualDisplay"

.field public static mPerfSendTapHint:Z


# instance fields
.field inResumeTopActivity:Z

.field final mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityDisplays:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/ActivityDisplay;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityMetricsLogger:Lcom/android/server/am/ActivityMetricsLogger;

.field private mAllowDockedStackResize:Z

.field mAnimationHelperDeathRecipient:Lcom/android/server/am/ActivityStackSupervisor$AnimationHelperDeathRecipient;

.field mAppVisibilitiesChangedSinceLastPause:Z

.field private final mCurTaskIdForUser:Landroid/util/SparseIntArray;

.field mCurrentUser:I

.field private final mDefaultExecutor:Ljava/util/concurrent/ExecutorService;

.field mDefaultMinSizeOfResizeableTask:I

.field private mDeferResumeCount:I

.field private final mDisplayAccessUIDs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/IntArray;",
            ">;"
        }
    .end annotation
.end field

.field mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private mDockedStackResizing:Z

.field final mFinishingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mFocusedStack:Lcom/android/server/am/ActivityStack;

.field mGoingToSleep:Landroid/os/PowerManager$WakeLock;

.field final mGoingToSleepActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

.field private mHasPendingDockedBounds:Z

.field mHasResumeRecentsBehind:Z

.field mHomeStack:Lcom/android/server/am/ActivityStack;

.field private mInitialized:Z

.field mIsDockMinimized:Z

.field private mKeyguardController:Lcom/android/server/am/KeyguardController;

.field private mLastFocusedStack:Lcom/android/server/am/ActivityStack;

.field private mLaunchParamsController:Lcom/android/server/am/LaunchParamsController;

.field mLaunchRecentsFromGesture:Z

.field private mLaunchTimeTracker:Lcom/android/server/am/LaunchTimeTracker;

.field mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

.field final mLooper:Landroid/os/Looper;

.field private mMiuiAppTransitionAnimationHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

.field final mMultiWindowModeChangedActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mNeedScheduleIdle:Z

.field final mNoAnimActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingDockedBounds:Landroid/graphics/Rect;

.field private mPendingTempDockedTaskBounds:Landroid/graphics/Rect;

.field private mPendingTempDockedTaskInsetBounds:Landroid/graphics/Rect;

.field private mPendingTempOtherTaskBounds:Landroid/graphics/Rect;

.field private mPendingTempOtherTaskInsetBounds:Landroid/graphics/Rect;

.field public mPerfBoost:Landroid/util/BoostFramework;

.field final mPipModeChangedActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mPipModeChangedTargetStackBounds:Landroid/graphics/Rect;

.field private mPowerHintSent:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field mRecentTasks:Lcom/android/server/am/RecentTasks;

.field private final mResizingTasksDuringAnimation:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRunningTasks:Lcom/android/server/am/RunningTasks;

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field final mSleepTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ActivityManagerInternal$SleepToken;",
            ">;"
        }
    .end annotation
.end field

.field final mStartingUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/UserState;",
            ">;"
        }
    .end annotation
.end field

.field mStopLaunchRecentsBehind:Z

.field final mStoppingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskLayersChanged:Z

.field private final mTmpActivityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

.field private final mTmpOptions:Landroid/app/ActivityOptions;

.field private mTmpOrderedDisplayIds:Landroid/util/SparseIntArray;

.field mUserLeaving:Z

.field mUserStackInFront:Landroid/util/SparseIntArray;

.field public mUxPerf:Landroid/util/BoostFramework;

.field final mWaitingActivityLaunched:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/WaitResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mWaitingForActivityVisible:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;",
            ">;"
        }
    .end annotation
.end field

.field mWindowManager:Lcom/android/server/wm/WindowManagerService;

.field private final tempRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 233
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfSendTapHint:Z

    .line 300
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    .line 304
    sget-object v0, Lcom/android/server/am/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    const-string v2, "android.permission.CAMERA"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v0, Lcom/android/server/am/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    const-string v2, "android.permission.CAMERA"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object v0, Lcom/android/server/am/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    const-string v1, "android.intent.action.CALL"

    const-string v2, "android.permission.CALL_PHONE"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .registers 6
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 637
    invoke-direct {p0}, Lcom/android/server/wm/ConfigurationContainer;-><init>()V

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    .line 235
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUxPerf:Landroid/util/BoostFramework;

    .line 346
    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    .line 367
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    .line 370
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    .line 373
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    .line 377
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    .line 381
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    .line 384
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    .line 388
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mMultiWindowModeChangedActivities:Ljava/util/ArrayList;

    .line 392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPipModeChangedActivities:Ljava/util/ArrayList;

    .line 398
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    .line 405
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    .line 409
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    .line 434
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTokens:Ljava/util/ArrayList;

    .line 437
    new-instance v1, Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    .line 441
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    .line 443
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    .line 454
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->tempRect:Landroid/graphics/Rect;

    .line 455
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOptions:Landroid/app/ActivityOptions;

    .line 459
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDefaultMinSizeOfResizeableTask:I

    .line 462
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTaskLayersChanged:Z

    .line 465
    new-instance v2, Lcom/android/server/am/LaunchTimeTracker;

    invoke-direct {v2}, Lcom/android/server/am/LaunchTimeTracker;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchTimeTracker:Lcom/android/server/am/LaunchTimeTracker;

    .line 467
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpActivityList:Ljava/util/ArrayList;

    .line 551
    new-instance v2, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    invoke-direct {v2}, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    .line 558
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOrderedDisplayIds:Landroid/util/SparseIntArray;

    .line 569
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mResizingTasksDuringAnimation:Landroid/util/ArraySet;

    .line 578
    iput-boolean v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    .line 594
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDefaultExecutor:Ljava/util/concurrent/ExecutorService;

    .line 600
    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchRecentsFromGesture:Z

    .line 601
    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHasResumeRecentsBehind:Z

    .line 602
    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStopLaunchRecentsBehind:Z

    .line 638
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 639
    iput-object p2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLooper:Landroid/os/Looper;

    .line 640
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-direct {v0, p0, p2}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    .line 641
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/ActivityStackSupervisor;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p1, "x1"    # I

    .line 205
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->handleDisplayAdded(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/ActivityStackSupervisor;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p1, "x1"    # I

    .line 205
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->handleDisplayChanged(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/am/ActivityStackSupervisor;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p1, "x1"    # I

    .line 205
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->handleDisplayRemoved(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityRecord;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p1, "x1"    # Lcom/android/server/am/ActivityRecord;

    .line 205
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->handleLaunchTaskBehindCompleteLocked(Lcom/android/server/am/ActivityRecord;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p1, "x1"    # Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;

    .line 205
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeSleepTokenLocked(Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;

    .line 205
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mMiuiAppTransitionAnimationHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    return-object v0
.end method

.method private allResumedActivitiesVisible()Z
    .registers 8

    .line 1081
    const/4 v0, 0x0

    .line 1082
    .local v0, "foundResumed":Z
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "displayNdx":I
    :goto_9
    if-ltz v1, :cond_3c

    .line 1083
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityDisplay;

    .line 1084
    .local v2, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "stackNdx":I
    :goto_19
    if-ltz v3, :cond_39

    .line 1085
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 1086
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getResumedActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 1087
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_36

    .line 1088
    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v6, :cond_34

    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32

    goto :goto_34

    .line 1091
    :cond_32
    const/4 v0, 0x1

    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    goto :goto_36

    .line 1089
    .restart local v4    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_34
    :goto_34
    const/4 v6, 0x0

    return v6

    .line 1084
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_36
    :goto_36
    add-int/lit8 v3, v3, -0x1

    goto :goto_19

    .line 1082
    .end local v2    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v3    # "stackNdx":I
    :cond_39
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1095
    .end local v1    # "displayNdx":I
    :cond_3c
    return v0
.end method

.method private beginDeferResume()V
    .registers 2

    .line 4900
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDeferResumeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDeferResumeCount:I

    .line 4901
    return-void
.end method

.method private calculateDefaultMinimalSizeOfResizeableTasks(Lcom/android/server/am/ActivityDisplay;)V
    .registers 4
    .param p1, "display"    # Lcom/android/server/am/ActivityDisplay;

    .line 4566
    const-string/jumbo v0, "persist.sys.miui_optimization"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 4567
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 4568
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050129

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDefaultMinSizeOfResizeableTask:I

    .line 4572
    :cond_1b
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 4573
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105007a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDefaultMinSizeOfResizeableTask:I

    .line 4575
    return-void
.end method

.method private canLaunchOnDisplay(Lcom/android/server/am/ActivityRecord;I)Z
    .registers 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "displayId"    # I

    .line 2680
    if-nez p1, :cond_4

    .line 2681
    const/4 v0, 0x1

    return v0

    .line 2683
    :cond_4
    invoke-virtual {p1, p2}, Lcom/android/server/am/ActivityRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v0

    return v0
.end method

.method private checkFinishBootingLocked()Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mService"
    .end annotation

    .line 2094
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    .line 2095
    .local v0, "booting":Z
    const/4 v1, 0x0

    .line 2096
    .local v1, "enableScreen":Z
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    .line 2097
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-nez v2, :cond_16

    .line 2098
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    .line 2099
    const/4 v1, 0x1

    .line 2101
    :cond_16
    if-nez v0, :cond_1a

    if-eqz v1, :cond_1f

    .line 2102
    :cond_1a
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/ActivityManagerService;->postFinishBooting(ZZ)V

    .line 2104
    :cond_1f
    return v0
.end method

.method private displayConfigMatchesGlobal(I)Z
    .registers 6
    .param p1, "displayId"    # I

    .line 534
    if-nez p1, :cond_4

    .line 535
    const/4 v0, 0x1

    return v0

    .line 537
    :cond_4
    const/4 v0, -0x1

    if-ne p1, v0, :cond_9

    .line 538
    const/4 v0, 0x0

    return v0

    .line 540
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplayOrCreateLocked(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    .line 541
    .local v0, "targetDisplay":Lcom/android/server/am/ActivityDisplay;
    if-eqz v0, :cond_1c

    .line 544
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v1

    return v1

    .line 542
    :cond_1c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No display found with id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Lcom/android/server/am/TaskRecord;)Z
    .registers 30
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "complete"    # Z
    .param p6, "brief"    # Z
    .param p7, "client"    # Z
    .param p8, "dumpPackage"    # Ljava/lang/String;
    .param p9, "needNL"    # Z
    .param p10, "header"    # Ljava/lang/String;
    .param p11, "lastTask"    # Lcom/android/server/am/TaskRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "Ljava/io/PrintWriter;",
            "Ljava/util/List<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZ",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Lcom/android/server/am/TaskRecord;",
            ")Z"
        }
    .end annotation

    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v4, p8

    .line 4387
    const/4 v0, 0x0

    .line 4388
    .local v0, "innerPrefix":Ljava/lang/String;
    const/4 v5, 0x0

    .line 4389
    .local v5, "args":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 4390
    .local v6, "printed":Z
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    move/from16 v11, p9

    move-object v9, v0

    move-object v10, v5

    move-object/from16 v0, p10

    move-object/from16 v5, p11

    .end local p9    # "needNL":Z
    .end local p10    # "header":Ljava/lang/String;
    .end local p11    # "lastTask":Lcom/android/server/am/TaskRecord;
    .local v0, "header":Ljava/lang/String;
    .local v5, "lastTask":Lcom/android/server/am/TaskRecord;
    .local v7, "i":I
    .local v9, "innerPrefix":Ljava/lang/String;
    .local v10, "args":[Ljava/lang/String;
    .local v11, "needNL":Z
    :goto_17
    if-ltz v7, :cond_181

    .line 4391
    move-object/from16 v12, p2

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ActivityRecord;

    .line 4392
    .local v13, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_32

    iget-object v14, v13, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_32

    .line 4393
    nop

    .line 4390
    move-object/from16 v17, v5

    move-object/from16 v5, p0

    goto/16 :goto_176

    .line 4395
    :cond_32
    const/4 v14, 0x0

    if-nez v9, :cond_48

    .line 4396
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "      "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 4397
    new-array v10, v14, [Ljava/lang/String;

    .line 4399
    :cond_48
    const/4 v6, 0x1

    .line 4400
    if-nez p6, :cond_55

    if-nez p5, :cond_53

    invoke-virtual {v13}, Lcom/android/server/am/ActivityRecord;->isInHistory()Z

    move-result v15

    if-nez v15, :cond_55

    :cond_53
    const/4 v14, 0x1

    nop

    .line 4401
    .local v14, "full":Z
    :cond_55
    if-eqz v11, :cond_5d

    .line 4402
    const-string v15, ""

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4403
    const/4 v11, 0x0

    .line 4405
    :cond_5d
    if-eqz v0, :cond_63

    .line 4406
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4407
    const/4 v0, 0x0

    .line 4409
    .end local v0    # "header":Ljava/lang/String;
    .local v15, "header":Ljava/lang/String;
    :cond_63
    move-object v15, v0

    invoke-virtual {v13}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-eq v5, v0, :cond_ac

    .line 4410
    invoke-virtual {v13}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    .line 4411
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4412
    if-eqz v14, :cond_76

    const-string v0, "* "

    goto :goto_78

    :cond_76
    const-string v0, "  "

    :goto_78
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4413
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4414
    if-eqz v14, :cond_95

    .line 4415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Lcom/android/server/am/TaskRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_ac

    .line 4416
    :cond_95
    if-eqz p5, :cond_ac

    .line 4418
    iget-object v0, v5, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_ac

    .line 4419
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4420
    iget-object v0, v5, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->toInsecureStringWithClip()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4424
    :cond_ac
    :goto_ac
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v14, :cond_b4

    const-string v0, "  * "

    goto :goto_b6

    :cond_b4
    const-string v0, "    "

    :goto_b6
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v4, p4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4425
    const-string v0, " #"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4426
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4427
    if-eqz v14, :cond_d4

    .line 4428
    invoke-virtual {v13, v1, v9}, Lcom/android/server/am/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_ee

    .line 4429
    :cond_d4
    if-eqz p5, :cond_ee

    .line 4431
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->toInsecureString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4432
    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_ee

    .line 4433
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4436
    :cond_ee
    :goto_ee
    if-eqz p7, :cond_171

    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_171

    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_171

    .line 4439
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->flush()V

    .line 4441
    :try_start_fd
    new-instance v0, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v0}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_102
    .catch Ljava/io/IOException; {:try_start_fd .. :try_end_102} :catch_151
    .catch Landroid/os/RemoteException; {:try_start_fd .. :try_end_102} :catch_137

    move-object/from16 v16, v0

    .line 4443
    .local v16, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_104
    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_108
    .catchall {:try_start_104 .. :try_end_108} :catchall_128

    move-object/from16 v2, v16

    :try_start_10a
    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .end local v16    # "tp":Lcom/android/internal/os/TransferPipe;
    .local v2, "tp":Lcom/android/internal/os/TransferPipe;
    iget-object v4, v13, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v0, v3, v4, v9, v10}, Landroid/app/IApplicationThread;->dumpActivity(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_113
    .catchall {:try_start_10a .. :try_end_113} :catchall_122

    .line 4446
    const-wide/16 v3, 0x7d0

    move-object/from16 v17, v5

    move-object/from16 v5, p0

    :try_start_119
    invoke-virtual {v2, v5, v3, v4}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_11c
    .catchall {:try_start_119 .. :try_end_11c} :catchall_120

    .line 4448
    .end local v5    # "lastTask":Lcom/android/server/am/TaskRecord;
    .local v17, "lastTask":Lcom/android/server/am/TaskRecord;
    :try_start_11c
    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 4449
    goto :goto_16d

    .line 4448
    :catchall_120
    move-exception v0

    goto :goto_12f

    .end local v17    # "lastTask":Lcom/android/server/am/TaskRecord;
    .restart local v5    # "lastTask":Lcom/android/server/am/TaskRecord;
    :catchall_122
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v5, p0

    .end local v5    # "lastTask":Lcom/android/server/am/TaskRecord;
    .restart local v17    # "lastTask":Lcom/android/server/am/TaskRecord;
    goto :goto_12f

    .end local v2    # "tp":Lcom/android/internal/os/TransferPipe;
    .end local v17    # "lastTask":Lcom/android/server/am/TaskRecord;
    .restart local v5    # "lastTask":Lcom/android/server/am/TaskRecord;
    .restart local v16    # "tp":Lcom/android/internal/os/TransferPipe;
    :catchall_128
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v2, v16

    move-object/from16 v5, p0

    .end local v5    # "lastTask":Lcom/android/server/am/TaskRecord;
    .end local v16    # "tp":Lcom/android/internal/os/TransferPipe;
    .restart local v2    # "tp":Lcom/android/internal/os/TransferPipe;
    .restart local v17    # "lastTask":Lcom/android/server/am/TaskRecord;
    :goto_12f
    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->kill()V

    throw v0
    :try_end_133
    .catch Ljava/io/IOException; {:try_start_11c .. :try_end_133} :catch_135
    .catch Landroid/os/RemoteException; {:try_start_11c .. :try_end_133} :catch_133

    .line 4452
    .end local v2    # "tp":Lcom/android/internal/os/TransferPipe;
    :catch_133
    move-exception v0

    goto :goto_13c

    .line 4450
    :catch_135
    move-exception v0

    goto :goto_156

    .line 4452
    .end local v17    # "lastTask":Lcom/android/server/am/TaskRecord;
    .restart local v5    # "lastTask":Lcom/android/server/am/TaskRecord;
    :catch_137
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v5, p0

    .line 4453
    .end local v5    # "lastTask":Lcom/android/server/am/TaskRecord;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v17    # "lastTask":Lcom/android/server/am/TaskRecord;
    :goto_13c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Got a RemoteException while dumping the activity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_16e

    .line 4450
    .end local v17    # "lastTask":Lcom/android/server/am/TaskRecord;
    .restart local v5    # "lastTask":Lcom/android/server/am/TaskRecord;
    :catch_151
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v5, p0

    .line 4451
    .end local v5    # "lastTask":Lcom/android/server/am/TaskRecord;
    .local v0, "e":Ljava/io/IOException;
    .restart local v17    # "lastTask":Lcom/android/server/am/TaskRecord;
    :goto_156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Failure while dumping the activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4454
    .end local v0    # "e":Ljava/io/IOException;
    :goto_16d
    nop

    .line 4455
    :goto_16e
    const/4 v0, 0x1

    .line 4390
    .end local v11    # "needNL":Z
    .end local v13    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v14    # "full":Z
    .local v0, "needNL":Z
    move v11, v0

    goto :goto_175

    .end local v0    # "needNL":Z
    .end local v17    # "lastTask":Lcom/android/server/am/TaskRecord;
    .restart local v5    # "lastTask":Lcom/android/server/am/TaskRecord;
    .restart local v11    # "needNL":Z
    :cond_171
    move-object/from16 v17, v5

    move-object/from16 v5, p0

    .end local v5    # "lastTask":Lcom/android/server/am/TaskRecord;
    .end local v15    # "header":Ljava/lang/String;
    .local v0, "header":Ljava/lang/String;
    .restart local v17    # "lastTask":Lcom/android/server/am/TaskRecord;
    :goto_175
    move-object v0, v15

    :goto_176
    add-int/lit8 v7, v7, -0x1

    move-object/from16 v5, v17

    move-object/from16 v2, p3

    move-object/from16 v4, p8

    const/4 v8, 0x1

    goto/16 :goto_17

    .line 4458
    .end local v7    # "i":I
    .end local v17    # "lastTask":Lcom/android/server/am/TaskRecord;
    .restart local v5    # "lastTask":Lcom/android/server/am/TaskRecord;
    :cond_181
    move-object/from16 v12, p2

    move-object/from16 v17, v5

    move-object/from16 v5, p0

    .end local v5    # "lastTask":Lcom/android/server/am/TaskRecord;
    .restart local v17    # "lastTask":Lcom/android/server/am/TaskRecord;
    return v6
.end method

.method private endDeferResume()V
    .registers 2

    .line 4907
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDeferResumeCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDeferResumeCount:I

    .line 4908
    return-void
.end method

.method private getActionRestrictionForCallingPackage(Ljava/lang/String;Ljava/lang/String;IILcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;)I
    .registers 12
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I
    .param p5, "checker"    # Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;

    .line 2022
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 2023
    return v0

    .line 2026
    :cond_4
    sget-object v1, Lcom/android/server/am/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2027
    .local v1, "permission":Ljava/lang/String;
    if-nez v1, :cond_f

    .line 2028
    return v0

    .line 2033
    :cond_f
    :try_start_f
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x1000

    .line 2034
    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_1d} :catch_45

    .line 2038
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    nop

    .line 2037
    nop

    .line 2040
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 2041
    return v0

    .line 2044
    :cond_28
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v1, p3, p4}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_33

    .line 2045
    const/4 v0, 0x1

    return v0

    .line 2048
    :cond_33
    invoke-static {v1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v3

    .line 2049
    .local v3, "opCode":I
    if-ne v3, v4, :cond_3a

    .line 2050
    return v0

    .line 2056
    :cond_3a
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-static {v3, p4, p2, v4, p5}, Lcom/android/server/am/ActivityStackSupervisorInjector;->noteOperationLocked(IILjava/lang/String;Landroid/os/Handler;Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;)I

    move-result v4

    if-eqz v4, :cond_44

    .line 2059
    const/4 v0, 0x2

    return v0

    .line 2062
    :cond_44
    return v0

    .line 2035
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "opCode":I
    :catch_45
    move-exception v2

    .line 2036
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot find package info for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    return v0
.end method

.method private getComponentRestrictionForCallingPackage(Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIZ)I
    .registers 13
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I
    .param p5, "ignoreTargetSecurity"    # Z

    .line 1991
    const/4 v0, -0x1

    if-nez p5, :cond_17

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v6, p1, Landroid/content/pm/ActivityInfo;->exported:Z

    move v3, p3

    move v4, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v1

    if-ne v1, v0, :cond_17

    .line 1994
    const/4 v0, 0x1

    return v0

    .line 1997
    :cond_17
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_1d

    .line 1998
    return v2

    .line 2001
    :cond_1d
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-static {v1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v1

    .line 2002
    .local v1, "opCode":I
    if-ne v1, v0, :cond_26

    .line 2003
    return v2

    .line 2008
    :cond_26
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    invoke-virtual {v0, v1, p4, p2}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_34

    .line 2010
    if-nez p5, :cond_34

    .line 2011
    const/4 v0, 0x2

    return v0

    .line 2015
    :cond_34
    return v2
.end method

.method private getStack(II)Lcom/android/server/am/ActivityStack;
    .registers 5
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/am/ActivityStack;",
            ">(II)TT;"
        }
    .end annotation

    .line 2542
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 2543
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/ActivityDisplay;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 2544
    .local v1, "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    if-eqz v1, :cond_19

    .line 2545
    return-object v1

    .line 2542
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2548
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method private getStackInfo(Lcom/android/server/am/ActivityStack;)Landroid/app/ActivityManager$StackInfo;
    .registers 15
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .line 4667
    iget v0, p1, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    .line 4668
    .local v0, "displayId":I
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 4669
    .local v1, "display":Lcom/android/server/am/ActivityDisplay;
    new-instance v2, Landroid/app/ActivityManager$StackInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$StackInfo;-><init>()V

    .line 4670
    .local v2, "info":Landroid/app/ActivityManager$StackInfo;
    iget-object v3, v2, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Lcom/android/server/am/ActivityStack;->getWindowContainerBounds(Landroid/graphics/Rect;)V

    .line 4671
    iput v0, v2, Landroid/app/ActivityManager$StackInfo;->displayId:I

    .line 4672
    iget v3, p1, Lcom/android/server/am/ActivityStack;->mStackId:I

    iput v3, v2, Landroid/app/ActivityManager$StackInfo;->stackId:I

    .line 4673
    iget v3, p1, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    iput v3, v2, Landroid/app/ActivityManager$StackInfo;->userId:I

    .line 4674
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result v4

    iput-boolean v4, v2, Landroid/app/ActivityManager$StackInfo;->visible:Z

    .line 4676
    const/4 v4, 0x0

    if-eqz v1, :cond_2d

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityDisplay;->getIndexOf(Lcom/android/server/am/ActivityStack;)I

    move-result v5

    goto :goto_2e

    :cond_2d
    move v5, v4

    :goto_2e
    iput v5, v2, Landroid/app/ActivityManager$StackInfo;->position:I

    .line 4677
    iget-object v5, v2, Landroid/app/ActivityManager$StackInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 4679
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v5

    .line 4680
    .local v5, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 4681
    .local v6, "numTasks":I
    new-array v7, v6, [I

    .line 4682
    .local v7, "taskIds":[I
    new-array v8, v6, [Ljava/lang/String;

    .line 4683
    .local v8, "taskNames":[Ljava/lang/String;
    new-array v9, v6, [Landroid/graphics/Rect;

    .line 4684
    .local v9, "taskBounds":[Landroid/graphics/Rect;
    new-array v10, v6, [I

    .line 4685
    .local v10, "taskUserIds":[I
    nop

    .line 4685
    .local v4, "i":I
    :goto_4a
    if-ge v4, v6, :cond_91

    .line 4686
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/TaskRecord;

    .line 4687
    .local v11, "task":Lcom/android/server/am/TaskRecord;
    iget v12, v11, Lcom/android/server/am/TaskRecord;->taskId:I

    aput v12, v7, v4

    .line 4688
    iget-object v12, v11, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    if-eqz v12, :cond_61

    iget-object v12, v11, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v12

    goto :goto_7c

    .line 4689
    :cond_61
    iget-object v12, v11, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v12, :cond_6c

    iget-object v12, v11, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v12

    goto :goto_7c

    .line 4690
    :cond_6c
    invoke-virtual {v11}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    if-eqz v12, :cond_79

    invoke-virtual {v11}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    iget-object v12, v12, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_7c

    .line 4691
    :cond_79
    const-string/jumbo v12, "unknown"

    :goto_7c
    aput-object v12, v8, v4

    .line 4692
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    aput-object v12, v9, v4

    .line 4693
    aget-object v12, v9, v4

    invoke-virtual {v11, v12}, Lcom/android/server/am/TaskRecord;->getWindowContainerBounds(Landroid/graphics/Rect;)V

    .line 4694
    iget v12, v11, Lcom/android/server/am/TaskRecord;->userId:I

    aput v12, v10, v4

    .line 4685
    .end local v11    # "task":Lcom/android/server/am/TaskRecord;
    add-int/lit8 v4, v4, 0x1

    goto :goto_4a

    .line 4696
    .end local v4    # "i":I
    :cond_91
    iput-object v7, v2, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    .line 4697
    iput-object v8, v2, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    .line 4698
    iput-object v9, v2, Landroid/app/ActivityManager$StackInfo;->taskBounds:[Landroid/graphics/Rect;

    .line 4699
    iput-object v10, v2, Landroid/app/ActivityManager$StackInfo;->taskUserIds:[I

    .line 4701
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 4702
    .local v4, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_a6

    iget-object v3, v4, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    nop

    :cond_a6
    iput-object v3, v2, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    .line 4703
    return-object v2
.end method

.method private handleDisplayAdded(I)V
    .registers 4
    .param p1, "displayId"    # I

    .line 4512
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4513
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplayOrCreateLocked(I)Lcom/android/server/am/ActivityDisplay;

    .line 4514
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 4515
    return-void

    .line 4514
    :catchall_e
    move-exception v1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private handleDisplayChanged(I)V
    .registers 7
    .param p1, "displayId"    # I

    .line 4597
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4598
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 4600
    .local v1, "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    if-eqz v1, :cond_3c

    .line 4602
    if-eqz p1, :cond_39

    .line 4603
    iget-object v2, v1, Lcom/android/server/am/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getState()I

    move-result v2

    .line 4604
    .local v2, "displayState":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2a

    iget-object v3, v1, Lcom/android/server/am/ActivityDisplay;->mOffToken:Landroid/app/ActivityManagerInternal$SleepToken;

    if-nez v3, :cond_2a

    .line 4605
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "Display-off"

    .line 4606
    invoke-virtual {v3, v4, p1}, Lcom/android/server/am/ActivityManagerService;->acquireSleepToken(Ljava/lang/String;I)Landroid/app/ActivityManagerInternal$SleepToken;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/am/ActivityDisplay;->mOffToken:Landroid/app/ActivityManagerInternal$SleepToken;

    goto :goto_39

    .line 4607
    :cond_2a
    const/4 v3, 0x2

    if-ne v2, v3, :cond_39

    iget-object v3, v1, Lcom/android/server/am/ActivityDisplay;->mOffToken:Landroid/app/ActivityManagerInternal$SleepToken;

    if-eqz v3, :cond_39

    .line 4609
    iget-object v3, v1, Lcom/android/server/am/ActivityDisplay;->mOffToken:Landroid/app/ActivityManagerInternal$SleepToken;

    invoke-virtual {v3}, Landroid/app/ActivityManagerInternal$SleepToken;->release()V

    .line 4610
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/server/am/ActivityDisplay;->mOffToken:Landroid/app/ActivityManagerInternal$SleepToken;

    .line 4614
    .end local v2    # "displayState":I
    :cond_39
    :goto_39
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->updateBounds()V

    .line 4616
    :cond_3c
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowManagerService;->onDisplayChanged(I)V

    .line 4617
    .end local v1    # "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_46

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 4618
    return-void

    .line 4617
    :catchall_46
    move-exception v1

    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private handleDisplayRemoved(I)V
    .registers 5
    .param p1, "displayId"    # I

    .line 4578
    if-eqz p1, :cond_2d

    .line 4582
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4583
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 4584
    .local v1, "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    if-nez v1, :cond_17

    .line 4585
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_27

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4588
    :cond_17
    :try_start_17
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->remove()V

    .line 4590
    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->releaseSleepTokens(Lcom/android/server/am/ActivityDisplay;)V

    .line 4592
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4593
    .end local v1    # "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_17 .. :try_end_23} :catchall_27

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 4594
    return-void

    .line 4593
    :catchall_27
    move-exception v1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 4579
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t remove the primary display."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleLaunchTaskBehindCompleteLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 3901
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 3902
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 3904
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    const/4 v2, 0x0

    iput-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    .line 3905
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v3, v0}, Lcom/android/server/am/RecentTasks;->add(Lcom/android/server/am/TaskRecord;)V

    .line 3906
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-virtual {v3}, Lcom/android/server/am/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 3909
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchRecentsFromGesture:Z

    if-nez v3, :cond_1e

    .line 3910
    invoke-virtual {p1, v2}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V

    .line 3916
    :cond_1e
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 3917
    .local v2, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_2b

    .line 3918
    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 3920
    :cond_2b
    return-void
.end method

.method private isValidLaunchStack(Lcom/android/server/am/ActivityStack;ILcom/android/server/am/ActivityRecord;)Z
    .registers 7
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "displayId"    # I
    .param p3, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 2724
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getActivityType()I

    move-result v0

    packed-switch v0, :pswitch_data_58

    .line 2729
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v0

    packed-switch v0, :pswitch_data_62

    .line 2737
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 2738
    invoke-virtual {p3, p2}, Lcom/android/server/am/ActivityRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v0

    return v0

    .line 2727
    :pswitch_19
    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->isActivityTypeAssistant()Z

    move-result v0

    return v0

    .line 2726
    :pswitch_1e
    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->isActivityTypeRecents()Z

    move-result v0

    return v0

    .line 2725
    :pswitch_23
    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->isActivityTypeHome()Z

    move-result v0

    return v0

    .line 2731
    :pswitch_28
    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->supportsFreeform()Z

    move-result v0

    return v0

    .line 2734
    :pswitch_2d
    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->supportsSplitScreenWindowingMode()Z

    move-result v0

    return v0

    .line 2733
    :pswitch_32
    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->supportsSplitScreenWindowingMode()Z

    move-result v0

    return v0

    .line 2732
    :pswitch_37
    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->supportsPictureInPicture()Z

    move-result v0

    return v0

    .line 2730
    :pswitch_3c
    const/4 v0, 0x1

    return v0

    .line 2740
    :cond_3e
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isValidLaunchStack: Unexpected stack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2741
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_58
    .packed-switch 0x2
        :pswitch_23
        :pswitch_1e
        :pswitch_19
    .end packed-switch

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_37
        :pswitch_32
        :pswitch_2d
        :pswitch_28
    .end packed-switch
.end method

.method private isValidTopRunningActivity(Lcom/android/server/am/ActivityRecord;Z)Z
    .registers 5
    .param p1, "record"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "considerKeyguardState"    # Z

    .line 1333
    const/4 v0, 0x1

    if-nez p2, :cond_4

    .line 1334
    return v0

    .line 1337
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/KeyguardController;->isKeyguardLocked()Z

    move-result v1

    .line 1339
    .local v1, "keyguardLocked":Z
    if-nez v1, :cond_f

    .line 1340
    return v0

    .line 1343
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->canShowWhenLocked()Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$moveTasksToFullscreenStackLocked$0(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStack;IZ)V
    .registers 4
    .param p1, "fromStack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "toDisplayId"    # I
    .param p3, "onTop"    # Z

    .line 3007
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackInSurfaceTransaction(Lcom/android/server/am/ActivityStack;IZ)V

    return-void
.end method

.method public static synthetic lambda$removeStack$1(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStack;)V
    .registers 2
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .line 3205
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeStackInSurfaceTransaction(Lcom/android/server/am/ActivityStack;)V

    return-void
.end method

.method private logIfTransactionTooLarge(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "icicle"    # Landroid/os/Bundle;

    .line 1729
    const/4 v0, 0x0

    .line 1730
    .local v0, "extrasSize":I
    if-eqz p1, :cond_d

    .line 1731
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1732
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_d

    .line 1733
    invoke-virtual {v1}, Landroid/os/Bundle;->getSize()I

    move-result v0

    .line 1736
    .end local v1    # "extras":Landroid/os/Bundle;
    :cond_d
    if-nez p2, :cond_11

    const/4 v1, 0x0

    goto :goto_15

    :cond_11
    invoke-virtual {p2}, Landroid/os/Bundle;->getSize()I

    move-result v1

    .line 1737
    .local v1, "icicleSize":I
    :goto_15
    add-int v2, v0, v1

    const v3, 0x30d40

    if-le v2, v3, :cond_42

    .line 1738
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transaction too large, intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", extras size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", icicle size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    :cond_42
    return-void
.end method

.method private moveTasksToFullscreenStackInSurfaceTransaction(Lcom/android/server/am/ActivityStack;IZ)V
    .registers 33
    .param p1, "fromStack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "toDisplayId"    # I
    .param p3, "onTop"    # Z

    move-object/from16 v9, p0

    .line 2931
    iget-object v0, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 2933
    const/4 v10, 0x1

    :try_start_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v0

    .line 2934
    .local v0, "windowingMode":I
    const/4 v1, 0x2

    const/4 v11, 0x0

    if-ne v0, v1, :cond_12

    move v1, v10

    goto :goto_13

    :cond_12
    move v1, v11

    :goto_13
    move/from16 v20, v1

    .line 2935
    .local v20, "inPinnedWindowingMode":Z
    move/from16 v15, p2

    invoke-virtual {v9, v15}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplay(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    move-object v14, v1

    .line 2937
    .local v14, "toDisplay":Lcom/android/server/am/ActivityDisplay;
    const/4 v1, 0x3

    if-ne v0, v1, :cond_46

    .line 2939
    invoke-virtual {v14}, Lcom/android/server/am/ActivityDisplay;->onExitingSplitScreenMode()V

    .line 2943
    invoke-virtual {v14}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v10

    .line 2943
    .local v1, "i":I
    :goto_27
    move v12, v1

    .line 2943
    .end local v1    # "i":I
    .local v12, "i":I
    if-ltz v12, :cond_44

    .line 2944
    invoke-virtual {v14, v12}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    move-object v13, v1

    .line 2945
    .local v13, "otherStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v13}, Lcom/android/server/am/ActivityStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v1

    if-nez v1, :cond_36

    .line 2946
    goto :goto_41

    .line 2948
    :cond_36
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v1, v9

    move-object v2, v13

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ActivityStackSupervisor;->resizeStackLocked(Lcom/android/server/am/ActivityStack;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)V

    .line 2943
    .end local v13    # "otherStack":Lcom/android/server/am/ActivityStack;
    :goto_41
    add-int/lit8 v1, v12, -0x1

    .line 2943
    .end local v12    # "i":I
    .restart local v1    # "i":I
    goto :goto_27

    .line 2956
    .end local v1    # "i":I
    :cond_44
    iput-boolean v11, v9, Lcom/android/server/am/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    .line 2961
    :cond_46
    move/from16 v18, v20

    .line 2962
    .local v18, "schedulePictureInPictureModeChange":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v1

    .line 2964
    .local v1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_bf

    .line 2965
    iget-object v2, v9, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2, v10}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 2966
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v8, v2

    .line 2967
    .local v8, "size":I
    move v2, v11

    .line 2967
    .local v2, "i":I
    :goto_5d
    move v12, v2

    .line 2967
    .end local v2    # "i":I
    .restart local v12    # "i":I
    if-ge v12, v8, :cond_bf

    .line 2968
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    move-object v13, v2

    .line 2969
    .local v13, "task":Lcom/android/server/am/TaskRecord;
    const/4 v3, 0x0

    iget-object v4, v9, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOptions:Landroid/app/ActivityOptions;

    .line 2970
    invoke-virtual {v13}, Lcom/android/server/am/TaskRecord;->getActivityType()I

    move-result v6

    .line 2969
    move-object v2, v14

    move-object v5, v13

    move/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityDisplay;->getOrCreateStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;IZ)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    move-object v3, v13

    move-object v13, v2

    .line 2972
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    .local v13, "toStack":Lcom/android/server/am/ActivityStack;
    if-eqz p3, :cond_a2

    .line 2973
    add-int/lit8 v4, v8, -0x1

    if-ne v12, v4, :cond_81

    move/from16 v16, v10

    goto :goto_83

    :cond_81
    move/from16 v16, v11

    .line 2975
    .local v16, "isTopTask":Z
    :goto_83
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v17, 0x1

    const-string/jumbo v19, "moveTasksToFullscreenStack - onTop"

    move v6, v12

    move-object v12, v3

    .line 2975
    .end local v12    # "i":I
    .local v6, "i":I
    move-object v7, v14

    move v14, v4

    .line 2975
    .end local v14    # "toDisplay":Lcom/android/server/am/ActivityDisplay;
    .local v7, "toDisplay":Lcom/android/server/am/ActivityDisplay;
    move v15, v5

    invoke-virtual/range {v12 .. v19}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZZLjava/lang/String;)Z

    .line 2979
    iget-object v4, v9, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget v5, v3, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    iget-object v12, v3, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 2980
    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v12

    .line 2979
    invoke-static {v4, v5, v12}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->logPictureInPictureFullScreen(Landroid/content/Context;ILjava/lang/String;)V

    .line 2981
    .end local v16    # "isTopTask":Z
    goto :goto_b8

    .line 2985
    .end local v6    # "i":I
    .end local v7    # "toDisplay":Lcom/android/server/am/ActivityDisplay;
    .restart local v12    # "i":I
    .restart local v14    # "toDisplay":Lcom/android/server/am/ActivityDisplay;
    :cond_a2
    move v6, v12

    move-object v7, v14

    .line 2985
    .end local v12    # "i":I
    .end local v14    # "toDisplay":Lcom/android/server/am/ActivityDisplay;
    .restart local v6    # "i":I
    .restart local v7    # "toDisplay":Lcom/android/server/am/ActivityDisplay;
    const/16 v23, 0x1

    const/16 v24, 0x2

    const/16 v25, 0x0

    const/16 v26, 0x1

    const-string/jumbo v28, "moveTasksToFullscreenStack - NOT_onTop"

    move-object/from16 v21, v3

    move-object/from16 v22, v13

    move/from16 v27, v18

    invoke-virtual/range {v21 .. v28}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZZLjava/lang/String;)Z

    .line 2967
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    .end local v13    # "toStack":Lcom/android/server/am/ActivityStack;
    :goto_b8
    add-int/lit8 v3, v6, 0x1

    .line 2967
    .end local v6    # "i":I
    .local v3, "i":I
    move/from16 v15, p2

    move v2, v3

    move-object v14, v7

    goto :goto_5d

    .line 2993
    .end local v3    # "i":I
    .end local v7    # "toDisplay":Lcom/android/server/am/ActivityDisplay;
    .end local v8    # "size":I
    .restart local v14    # "toDisplay":Lcom/android/server/am/ActivityDisplay;
    :cond_bf
    move-object v7, v14

    .line 2993
    .end local v14    # "toDisplay":Lcom/android/server/am/ActivityDisplay;
    .restart local v7    # "toDisplay":Lcom/android/server/am/ActivityDisplay;
    const/4 v3, 0x0

    invoke-virtual {v9, v3, v11, v10}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 2994
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z
    :try_end_c7
    .catchall {:try_start_8 .. :try_end_c7} :catchall_d0

    .line 2996
    .end local v0    # "windowingMode":I
    .end local v1    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v7    # "toDisplay":Lcom/android/server/am/ActivityDisplay;
    .end local v18    # "schedulePictureInPictureModeChange":Z
    .end local v20    # "inPinnedWindowingMode":Z
    iput-boolean v10, v9, Lcom/android/server/am/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    .line 2997
    iget-object v0, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 2998
    nop

    .line 2999
    return-void

    .line 2996
    :catchall_d0
    move-exception v0

    iput-boolean v10, v9, Lcom/android/server/am/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    .line 2997
    iget-object v1, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method static nextTaskIdForUser(II)I
    .registers 5
    .param p0, "taskId"    # I
    .param p1, "userId"    # I

    .line 956
    add-int/lit8 v0, p0, 0x1

    .line 957
    .local v0, "nextTaskId":I
    add-int/lit8 v1, p1, 0x1

    const v2, 0x186a0

    mul-int/2addr v1, v2

    if-ne v0, v1, :cond_b

    .line 959
    sub-int/2addr v0, v2

    .line 961
    :cond_b
    return v0
.end method

.method static printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z
    .registers 6
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "activity"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "dumpPackage"    # Ljava/lang/String;
    .param p3, "needSep"    # Z
    .param p4, "prefix"    # Ljava/lang/String;

    .line 4306
    if-eqz p1, :cond_19

    .line 4307
    if-eqz p2, :cond_c

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 4308
    :cond_c
    if-eqz p3, :cond_11

    .line 4309
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 4311
    :cond_11
    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4312
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4313
    const/4 v0, 0x1

    return v0

    .line 4316
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method private putStacksToSleepLocked(ZZ)Z
    .registers 9
    .param p1, "allowDelay"    # Z
    .param p2, "shuttingDown"    # Z

    .line 3856
    const/4 v0, 0x1

    .line 3857
    .local v0, "allSleep":Z
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "displayNdx":I
    :goto_9
    if-ltz v1, :cond_30

    .line 3858
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityDisplay;

    .line 3859
    .local v2, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "stackNdx":I
    :goto_19
    if-ltz v3, :cond_2d

    .line 3860
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 3861
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz p1, :cond_27

    .line 3862
    invoke-virtual {v4, p2}, Lcom/android/server/am/ActivityStack;->goToSleepIfPossible(Z)Z

    move-result v5

    and-int/2addr v0, v5

    goto :goto_2a

    .line 3864
    :cond_27
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->goToSleep()V

    .line 3859
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    :goto_2a
    add-int/lit8 v3, v3, -0x1

    goto :goto_19

    .line 3857
    .end local v2    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v3    # "stackNdx":I
    :cond_2d
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 3868
    .end local v1    # "displayNdx":I
    :cond_30
    return v0
.end method

.method private readyToResume()Z
    .registers 2

    .line 4914
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDeferResumeCount:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private releaseSleepTokens(Lcom/android/server/am/ActivityDisplay;)V
    .registers 5
    .param p1, "display"    # Lcom/android/server/am/ActivityDisplay;

    .line 4655
    iget-object v0, p1, Lcom/android/server/am/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4656
    return-void

    .line 4658
    :cond_9
    iget-object v0, p1, Lcom/android/server/am/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal$SleepToken;

    .line 4659
    .local v1, "token":Landroid/app/ActivityManagerInternal$SleepToken;
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4660
    .end local v1    # "token":Landroid/app/ActivityManagerInternal$SleepToken;
    goto :goto_f

    .line 4661
    :cond_21
    iget-object v0, p1, Lcom/android/server/am/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4663
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateSleepIfNeededLocked()V

    .line 4664
    return-void
.end method

.method private removeSleepTokenLocked(Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;)V
    .registers 7
    .param p1, "token"    # Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;

    .line 4633
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4635
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->mEnableNetOpts:Z

    if-eqz v0, :cond_1f

    .line 4636
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getLastStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 4637
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_1f

    .line 4638
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 4639
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_1f

    .line 4640
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->networkOptsCheck(ILjava/lang/String;)V

    .line 4645
    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1f
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;->mDisplayId:I
    invoke-static {p1}, Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;->access$000(Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityDisplay;

    .line 4646
    .local v0, "display":Lcom/android/server/am/ActivityDisplay;
    if-eqz v0, :cond_3f

    .line 4647
    iget-object v1, v0, Lcom/android/server/am/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4648
    iget-object v1, v0, Lcom/android/server/am/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 4649
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->updateSleepIfNeededLocked()V

    .line 4652
    :cond_3f
    return-void
.end method

.method private removeStackInSurfaceTransaction(Lcom/android/server/am/ActivityStack;)V
    .registers 7
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .line 3171
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 3172
    .local v0, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1f

    .line 3182
    move-object v1, p1

    check-cast v1, Lcom/android/server/am/PinnedActivityStack;

    .line 3183
    .local v1, "pinnedStack":Lcom/android/server/am/PinnedActivityStack;
    iput-boolean v2, v1, Lcom/android/server/am/PinnedActivityStack;->mForceHidden:Z

    .line 3184
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/server/am/PinnedActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 3185
    iput-boolean v4, v1, Lcom/android/server/am/PinnedActivityStack;->mForceHidden:Z

    .line 3186
    invoke-virtual {p0, v3, v4, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->activityIdleInternalLocked(Landroid/os/IBinder;ZZLandroid/content/res/Configuration;)Lcom/android/server/am/ActivityRecord;

    .line 3190
    invoke-virtual {p0, v1, v4}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/am/ActivityStack;Z)V

    .line 3191
    .end local v1    # "pinnedStack":Lcom/android/server/am/PinnedActivityStack;
    goto :goto_37

    .line 3192
    :cond_1f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .line 3192
    .local v1, "i":I
    :goto_24
    if-ltz v1, :cond_37

    .line 3193
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    const-string/jumbo v4, "remove-stack"

    invoke-virtual {p0, v3, v2, v2, v4}, Lcom/android/server/am/ActivityStackSupervisor;->removeTaskByIdLocked(IZZLjava/lang/String;)Z

    .line 3192
    add-int/lit8 v1, v1, -0x1

    goto :goto_24

    .line 3197
    .end local v1    # "i":I
    :cond_37
    :goto_37
    return-void
.end method

.method private resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V
    .registers 29
    .param p1, "dockedBounds"    # Landroid/graphics/Rect;
    .param p2, "tempDockedTaskBounds"    # Landroid/graphics/Rect;
    .param p3, "tempDockedTaskInsetBounds"    # Landroid/graphics/Rect;
    .param p4, "tempOtherTaskBounds"    # Landroid/graphics/Rect;
    .param p5, "tempOtherTaskInsetBounds"    # Landroid/graphics/Rect;
    .param p6, "preserveWindows"    # Z
    .param p7, "deferResume"    # Z

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    .line 3044
    iget-boolean v0, v9, Lcom/android/server/am/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    if-nez v0, :cond_9

    .line 3046
    return-void

    .line 3049
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/am/ActivityStack;

    move-result-object v11

    .line 3050
    .local v11, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v11, :cond_1c

    .line 3051
    const-string v0, "ActivityManager"

    const-string/jumbo v1, "resizeDockedStackLocked: docked stack not found"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3052
    return-void

    .line 3055
    :cond_1c
    iget-boolean v0, v9, Lcom/android/server/am/ActivityStackSupervisor;->mDockedStackResizing:Z

    const/4 v12, 0x1

    if-eqz v0, :cond_41

    .line 3056
    iput-boolean v12, v9, Lcom/android/server/am/ActivityStackSupervisor;->mHasPendingDockedBounds:Z

    .line 3057
    invoke-static/range {p1 .. p1}, Landroid/graphics/Rect;->copyOrNull(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/am/ActivityStackSupervisor;->mPendingDockedBounds:Landroid/graphics/Rect;

    .line 3058
    invoke-static/range {p2 .. p2}, Landroid/graphics/Rect;->copyOrNull(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/am/ActivityStackSupervisor;->mPendingTempDockedTaskBounds:Landroid/graphics/Rect;

    .line 3059
    invoke-static/range {p3 .. p3}, Landroid/graphics/Rect;->copyOrNull(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/am/ActivityStackSupervisor;->mPendingTempDockedTaskInsetBounds:Landroid/graphics/Rect;

    .line 3060
    invoke-static/range {p4 .. p4}, Landroid/graphics/Rect;->copyOrNull(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/am/ActivityStackSupervisor;->mPendingTempOtherTaskBounds:Landroid/graphics/Rect;

    .line 3061
    invoke-static/range {p5 .. p5}, Landroid/graphics/Rect;->copyOrNull(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/am/ActivityStackSupervisor;->mPendingTempOtherTaskInsetBounds:Landroid/graphics/Rect;

    .line 3064
    :cond_41
    const-string v0, "am.resizeDockedStack"

    const-wide/16 v13, 0x40

    invoke-static {v13, v14, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3065
    iget-object v0, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 3068
    const/4 v0, 0x0

    :try_start_4e
    iput-boolean v0, v9, Lcom/android/server/am/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    .line 3069
    invoke-virtual {v11}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0
    :try_end_54
    .catchall {:try_start_4e .. :try_end_54} :catchall_10a

    .line 3070
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v15, p2

    move-object/from16 v8, p3

    :try_start_58
    invoke-virtual {v11, v10, v15, v8}, Lcom/android/server/am/ActivityStack;->resize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3074
    invoke-virtual {v11}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v1

    if-eq v1, v12, :cond_ec

    if-nez v10, :cond_6b

    .line 3075
    invoke-virtual {v11}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v1

    if-nez v1, :cond_6b

    goto/16 :goto_ec

    .line 3088
    :cond_6b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    move-object v7, v1

    .line 3089
    .local v7, "display":Lcom/android/server/am/ActivityDisplay;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    move-object v6, v1

    .line 3090
    .local v6, "otherTaskRect":Landroid/graphics/Rect;
    invoke-virtual {v7}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v12

    .line 3090
    .local v1, "i":I
    :goto_7b
    move v5, v1

    .line 3090
    .end local v1    # "i":I
    .local v5, "i":I
    if-ltz v5, :cond_f0

    .line 3091
    invoke-virtual {v7, v5}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    move-object v4, v1

    .line 3092
    .local v4, "current":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_92

    .line 3093
    nop

    .line 3090
    .end local v4    # "current":Lcom/android/server/am/ActivityStack;
    .end local v5    # "i":I
    .end local v6    # "otherTaskRect":Landroid/graphics/Rect;
    .end local v7    # "display":Lcom/android/server/am/ActivityDisplay;
    .local v17, "i":I
    .local v19, "otherTaskRect":Landroid/graphics/Rect;
    .local v20, "display":Lcom/android/server/am/ActivityDisplay;
    :goto_8b
    move/from16 v17, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    goto :goto_e3

    .line 3095
    .end local v17    # "i":I
    .end local v19    # "otherTaskRect":Landroid/graphics/Rect;
    .end local v20    # "display":Lcom/android/server/am/ActivityDisplay;
    .restart local v4    # "current":Lcom/android/server/am/ActivityStack;
    .restart local v5    # "i":I
    .restart local v6    # "otherTaskRect":Landroid/graphics/Rect;
    .restart local v7    # "display":Lcom/android/server/am/ActivityDisplay;
    :cond_92
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->affectedBySplitScreenResize()Z

    move-result v1

    if-nez v1, :cond_99

    .line 3096
    goto :goto_8b

    .line 3098
    :cond_99
    iget-boolean v1, v9, Lcom/android/server/am/ActivityStackSupervisor;->mDockedStackResizing:Z

    if-eqz v1, :cond_a4

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isTopActivityVisible()Z

    move-result v1

    if-nez v1, :cond_a4

    .line 3101
    goto :goto_8b

    .line 3104
    :cond_a4
    const/4 v1, 0x4

    invoke-virtual {v4, v1}, Lcom/android/server/am/ActivityStack;->setWindowingMode(I)V

    .line 3105
    iget-object v1, v9, Lcom/android/server/am/ActivityStackSupervisor;->tempRect:Landroid/graphics/Rect;

    move-object/from16 v3, p4

    invoke-virtual {v4, v3, v1, v6, v12}, Lcom/android/server/am/ActivityStack;->getStackDockedModeBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 3110
    iget-object v1, v9, Lcom/android/server/am/ActivityStackSupervisor;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_ba

    iget-object v1, v9, Lcom/android/server/am/ActivityStackSupervisor;->tempRect:Landroid/graphics/Rect;

    goto :goto_bb

    :cond_ba
    const/4 v1, 0x0

    .line 3111
    :goto_bb
    move-object/from16 v16, v1

    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c6

    move-object/from16 v17, v6

    goto :goto_c8

    :cond_c6
    move-object/from16 v17, v3

    :goto_c8
    const/16 v18, 0x1

    .line 3110
    move-object v1, v9

    move-object v2, v4

    move-object/from16 v3, v16

    move-object/from16 v16, v4

    move-object/from16 v4, v17

    .line 3110
    .end local v4    # "current":Lcom/android/server/am/ActivityStack;
    .local v16, "current":Lcom/android/server/am/ActivityStack;
    move/from16 v17, v5

    move-object/from16 v5, p5

    .line 3110
    .end local v5    # "i":I
    .restart local v17    # "i":I
    move-object/from16 v19, v6

    move/from16 v6, p6

    .line 3110
    .end local v6    # "otherTaskRect":Landroid/graphics/Rect;
    .restart local v19    # "otherTaskRect":Landroid/graphics/Rect;
    move-object/from16 v20, v7

    move/from16 v7, v18

    .line 3110
    .end local v7    # "display":Lcom/android/server/am/ActivityDisplay;
    .restart local v20    # "display":Lcom/android/server/am/ActivityDisplay;
    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ActivityStackSupervisor;->resizeStackLocked(Lcom/android/server/am/ActivityStack;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)V

    .line 3090
    .end local v16    # "current":Lcom/android/server/am/ActivityStack;
    :goto_e3
    add-int/lit8 v1, v17, -0x1

    .line 3090
    .end local v17    # "i":I
    .restart local v1    # "i":I
    move-object/from16 v8, p3

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    goto :goto_7b

    .line 3079
    .end local v1    # "i":I
    .end local v19    # "otherTaskRect":Landroid/graphics/Rect;
    .end local v20    # "display":Lcom/android/server/am/ActivityDisplay;
    :cond_ec
    :goto_ec
    invoke-virtual {v9, v11, v12}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/am/ActivityStack;Z)V
    :try_end_ef
    .catchall {:try_start_58 .. :try_end_ef} :catchall_108

    .line 3082
    const/4 v0, 0x0

    .line 3116
    :cond_f0
    if-nez p7, :cond_fa

    .line 3117
    move/from16 v2, p6

    :try_start_f4
    invoke-virtual {v11, v0, v2}, Lcom/android/server/am/ActivityStack;->ensureVisibleActivitiesConfigurationLocked(Lcom/android/server/am/ActivityRecord;Z)V
    :try_end_f7
    .catchall {:try_start_f4 .. :try_end_f7} :catchall_f8

    .line 3117
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    goto :goto_fc

    .line 3120
    :catchall_f8
    move-exception v0

    goto :goto_10f

    :cond_fa
    move/from16 v2, p6

    :goto_fc
    iput-boolean v12, v9, Lcom/android/server/am/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    .line 3121
    iget-object v0, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 3122
    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    .line 3123
    nop

    .line 3124
    return-void

    .line 3120
    :catchall_108
    move-exception v0

    goto :goto_10d

    :catchall_10a
    move-exception v0

    move-object/from16 v15, p2

    :goto_10d
    move/from16 v2, p6

    :goto_10f
    iput-boolean v12, v9, Lcom/android/server/am/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    .line 3121
    iget-object v3, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 3122
    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private taskTopActivityIsUser(Lcom/android/server/am/TaskRecord;I)Z
    .registers 6
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "userId"    # I

    .line 909
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 910
    .local v0, "activityRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_9

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    .line 912
    .local v1, "resultTo":Lcom/android/server/am/ActivityRecord;
    :goto_a
    if-eqz v0, :cond_10

    iget v2, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    if-eq v2, p2, :cond_16

    :cond_10
    if-eqz v1, :cond_18

    iget v2, v1, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v2, p2, :cond_18

    :cond_16
    const/4 v2, 0x1

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    :goto_19
    return v2
.end method

.method private unlinkToDeathMiuiAnimationHelper()V
    .registers 4

    .line 5300
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mMiuiAppTransitionAnimationHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mAnimationHelperDeathRecipient:Lcom/android/server/am/ActivityStackSupervisor$AnimationHelperDeathRecipient;

    if-eqz v0, :cond_17

    .line 5302
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mMiuiAppTransitionAnimationHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    invoke-interface {v0}, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mAnimationHelperDeathRecipient:Lcom/android/server/am/ActivityStackSupervisor$AnimationHelperDeathRecipient;

    const/4 v2, 0x0

    .line 5303
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 5304
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mAnimationHelperDeathRecipient:Lcom/android/server/am/ActivityStackSupervisor$AnimationHelperDeathRecipient;

    .line 5306
    :cond_17
    return-void
.end method


# virtual methods
.method acquireAppLaunchPerfLock(Lcom/android/server/am/ActivityRecord;)V
    .registers 9
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 3601
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    if-nez v0, :cond_b

    .line 3602
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    .line 3604
    :cond_b
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    if-eqz v0, :cond_3e

    .line 3605
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v2, 0x1

    const/16 v3, 0x1081

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 3606
    sput-boolean v2, Lcom/android/server/am/ActivityStackSupervisor;->mPerfSendTapHint:Z

    .line 3607
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 3609
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/16 v6, 0x2f

    .line 3610
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 3609
    invoke-virtual {v0, v4, v1, v2}, Landroid/util/BoostFramework;->perfIOPrefetchStart(ILjava/lang/String;Ljava/lang/String;)I

    .line 3612
    :cond_3e
    return-void
.end method

.method acquireLaunchWakelock()V
    .registers 5

    .line 2081
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2082
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_16

    .line 2084
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2086
    :cond_16
    return-void
.end method

.method acquireUxPerfLock(ILjava/lang/String;)V
    .registers 5
    .param p1, "opcode"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 3615
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUxPerf:Landroid/util/BoostFramework;

    .line 3616
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUxPerf:Landroid/util/BoostFramework;

    if-eqz v0, :cond_11

    .line 3617
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUxPerf:Landroid/util/BoostFramework;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, v1}, Landroid/util/BoostFramework;->perfUXEngine_events(IILjava/lang/String;I)I

    .line 3619
    :cond_11
    return-void
.end method

.method final activityIdleInternalLocked(Landroid/os/IBinder;ZZLandroid/content/res/Configuration;)Lcom/android/server/am/ActivityRecord;
    .registers 26
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fromTimeout"    # Z
    .param p3, "processPausingActivities"    # Z
    .param p4, "config"    # Landroid/content/res/Configuration;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mService"
    .end annotation

    move-object/from16 v7, p0

    .line 2113
    move-object/from16 v8, p4

    const/4 v9, 0x0

    .line 2114
    .local v9, "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v10, 0x0

    .line 2115
    .local v10, "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState;>;"
    const/4 v11, 0x0

    .line 2116
    .local v11, "NS":I
    const/4 v12, 0x0

    .line 2117
    .local v12, "NF":I
    const/4 v13, 0x0

    .line 2118
    .local v13, "booting":Z
    const/4 v14, 0x0

    .line 2120
    .local v14, "activityRemoved":Z
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 2121
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    const/4 v6, 0x1

    if-eqz v5, :cond_54

    .line 2124
    iget-object v0, v7, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v5}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2125
    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->finishLaunchTickingLocked()V

    .line 2126
    if-eqz p2, :cond_30

    .line 2127
    const-wide/16 v3, -0x1

    const-wide/16 v15, -0x1

    move-object v0, v7

    move/from16 v1, p2

    move-object v2, v5

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    move-object v9, v5

    move v10, v6

    move-wide v5, v15

    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v10    # "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState;>;"
    .local v9, "r":Lcom/android/server/am/ActivityRecord;
    .local v17, "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .local v18, "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState;>;"
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStackSupervisor;->reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V

    goto :goto_36

    .line 2135
    .end local v17    # "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v18    # "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState;>;"
    .restart local v5    # "r":Lcom/android/server/am/ActivityRecord;
    .local v9, "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v10    # "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState;>;"
    :cond_30
    move-object/from16 v17, v9

    move-object/from16 v18, v10

    move-object v9, v5

    move v10, v6

    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v10    # "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState;>;"
    .local v9, "r":Lcom/android/server/am/ActivityRecord;
    .restart local v17    # "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v18    # "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState;>;"
    :goto_36
    if-eqz v8, :cond_3b

    .line 2136
    invoke-virtual {v9, v8}, Lcom/android/server/am/ActivityRecord;->setLastReportedGlobalConfiguration(Landroid/content/res/Configuration;)V

    .line 2141
    :cond_3b
    iput-boolean v10, v9, Lcom/android/server/am/ActivityRecord;->idle:Z

    .line 2144
    invoke-virtual {v9}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v0

    if-nez v0, :cond_49

    if-eqz p2, :cond_4e

    .line 2145
    :cond_49
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->checkFinishBootingLocked()Z

    move-result v0

    .line 2148
    .end local v13    # "booting":Z
    .local v0, "booting":Z
    move v13, v0

    .end local v0    # "booting":Z
    .restart local v13    # "booting":Z
    :cond_4e
    iget-object v0, v9, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-static {v0}, Lcom/android/server/am/ExtraActivityManagerService;->activityIdle(Landroid/content/pm/ActivityInfo;)V

    goto :goto_5a

    .line 2151
    .end local v17    # "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v18    # "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState;>;"
    .restart local v5    # "r":Lcom/android/server/am/ActivityRecord;
    .local v9, "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v10    # "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState;>;"
    :cond_54
    move-object/from16 v17, v9

    move-object/from16 v18, v10

    move-object v9, v5

    move v10, v6

    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v10    # "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState;>;"
    .local v9, "r":Lcom/android/server/am/ActivityRecord;
    .restart local v17    # "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v18    # "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState;>;"
    :goto_5a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesIdle()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_80

    .line 2152
    if-eqz v9, :cond_68

    .line 2153
    iget-object v0, v7, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->scheduleAppGcsLocked()V

    .line 2156
    :cond_68
    iget-object v0, v7, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 2157
    iget-object v0, v7, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v2, 0x68

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    .line 2162
    iget-object v0, v7, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2164
    :cond_7c
    const/4 v0, 0x0

    invoke-virtual {v7, v0, v1, v1}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 2168
    :cond_80
    move/from16 v0, p3

    invoke-virtual {v7, v9, v10, v0}, Lcom/android/server/am/ActivityStackSupervisor;->processStoppingActivitiesLocked(Lcom/android/server/am/ActivityRecord;ZZ)Ljava/util/ArrayList;

    move-result-object v2

    .line 2170
    .local v2, "stops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    if-eqz v2, :cond_8d

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_8e

    :cond_8d
    move v3, v1

    .line 2171
    .end local v11    # "NS":I
    .local v3, "NS":I
    :goto_8e
    iget-object v4, v7, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v4

    .end local v12    # "NF":I
    .local v5, "NF":I
    if-lez v4, :cond_a4

    .line 2172
    new-instance v4, Ljava/util/ArrayList;

    iget-object v6, v7, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2173
    .end local v17    # "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .local v4, "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    iget-object v6, v7, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    goto :goto_a6

    .line 2176
    .end local v4    # "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v17    # "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_a4
    move-object/from16 v4, v17

    .end local v17    # "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v4    # "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :goto_a6
    iget-object v6, v7, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_bb

    .line 2177
    new-instance v6, Ljava/util/ArrayList;

    iget-object v11, v7, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-direct {v6, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2178
    .end local v18    # "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState;>;"
    .local v6, "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState;>;"
    iget-object v11, v7, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    goto :goto_bd

    .line 2183
    .end local v6    # "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState;>;"
    .restart local v18    # "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState;>;"
    :cond_bb
    move-object/from16 v6, v18

    .end local v18    # "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState;>;"
    .restart local v6    # "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState;>;"
    :goto_bd
    move-object v11, v9

    move v9, v1

    .local v9, "i":I
    .local v11, "r":Lcom/android/server/am/ActivityRecord;
    :goto_bf
    if-ge v9, v3, :cond_ff

    .line 2184
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v11, v12

    check-cast v11, Lcom/android/server/am/ActivityRecord;

    .line 2185
    invoke-virtual {v11}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v12

    .line 2186
    .local v12, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v12, :cond_f8

    .line 2187
    iget-boolean v10, v11, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v10, :cond_d8

    .line 2188
    const-string v10, "activityIdleInternalLocked"

    invoke-virtual {v12, v11, v1, v1, v10}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZLjava/lang/String;)Lcom/android/server/am/ActivityRecord;

    goto :goto_f8

    .line 2191
    :cond_d8
    iget-boolean v10, v11, Lcom/android/server/am/ActivityRecord;->mIsCastMode:Z

    if-eqz v10, :cond_f5

    .line 2192
    const-string v10, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "current activity should not stop, activity:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v11, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f8

    .line 2194
    :cond_f5
    invoke-virtual {v12, v11}, Lcom/android/server/am/ActivityStack;->stopActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2183
    .end local v12    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_f8
    :goto_f8
    add-int/lit8 v9, v9, 0x1

    move/from16 v0, p3

    const/4 v1, 0x0

    const/4 v10, 0x1

    goto :goto_bf

    .line 2202
    .end local v9    # "i":I
    :cond_ff
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_100
    if-ge v0, v5, :cond_11e

    .line 2203
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/server/am/ActivityRecord;

    .line 2204
    invoke-virtual {v11}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 2205
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v1, :cond_11a

    .line 2206
    const-string v9, "finish-idle"

    const/4 v10, 0x1

    invoke-virtual {v1, v11, v10, v9}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    move-result v9

    or-int v1, v14, v9

    .line 2202
    .end local v14    # "activityRemoved":Z
    .local v1, "activityRemoved":Z
    move v14, v1

    goto :goto_11b

    .end local v1    # "activityRemoved":Z
    .restart local v14    # "activityRemoved":Z
    :cond_11a
    const/4 v10, 0x1

    :goto_11b
    add-int/lit8 v0, v0, 0x1

    goto :goto_100

    .line 2210
    .end local v0    # "i":I
    :cond_11e
    if-nez v13, :cond_13c

    .line 2212
    if-eqz v6, :cond_13c

    .line 2213
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_124
    move/from16 v0, v19

    .end local v19    # "i":I
    .restart local v0    # "i":I
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_13c

    .line 2214
    iget-object v1, v7, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/UserState;

    invoke-virtual {v1, v9}, Lcom/android/server/am/UserController;->finishUserSwitch(Lcom/android/server/am/UserState;)V

    .line 2213
    add-int/lit8 v19, v0, 0x1

    .end local v0    # "i":I
    .restart local v19    # "i":I
    goto :goto_124

    .line 2219
    .end local v19    # "i":I
    :cond_13c
    iget-object v0, v7, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->trimApplications()V

    .line 2223
    if-eqz v14, :cond_146

    .line 2224
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 2227
    :cond_146
    return-object v11
.end method

.method activityRelaunchedLocked(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 4798
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->notifyAppRelaunchingFinished(Landroid/os/IBinder;)V

    .line 4799
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 4800
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_19

    .line 4801
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 4802
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/android/server/am/ActivityRecord;->setSleeping(ZZ)V

    .line 4805
    :cond_19
    return-void
.end method

.method activityRelaunchingLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 4808
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->notifyAppRelaunching(Landroid/os/IBinder;)V

    .line 4809
    return-void
.end method

.method activitySleptLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 3821
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3822
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 3823
    .local v0, "s":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_f

    .line 3824
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleep()V

    goto :goto_13

    .line 3826
    :cond_f
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked(Z)V

    .line 3828
    :goto_13
    return-void
.end method

.method addStartingWindowsForVisibleActivities(Z)V
    .registers 6
    .param p1, "taskSwitch"    # Z

    .line 3958
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_27

    .line 3959
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 3960
    .local v1, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "stackNdx":I
    :goto_18
    if-ltz v2, :cond_24

    .line 3961
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 3962
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStack;->addStartingWindowsForVisibleActivities(Z)V

    .line 3960
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 3958
    .end local v1    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v2    # "stackNdx":I
    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3965
    .end local v0    # "displayNdx":I
    :cond_27
    return-void
.end method

.method allPausedActivitiesComplete()Z
    .registers 10

    .line 1144
    const/4 v0, 0x1

    .line 1145
    .local v0, "pausing":Z
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "displayNdx":I
    :goto_9
    if-ltz v1, :cond_37

    .line 1146
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityDisplay;

    .line 1147
    .local v2, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "stackNdx":I
    :goto_19
    if-ltz v3, :cond_34

    .line 1148
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 1149
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v5, v4, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1150
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_31

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v6

    if-nez v6, :cond_31

    .line 1156
    const/4 v6, 0x0

    return v6

    .line 1147
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_31
    add-int/lit8 v3, v3, -0x1

    goto :goto_19

    .line 1145
    .end local v2    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v3    # "stackNdx":I
    :cond_34
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1161
    .end local v1    # "displayNdx":I
    :cond_37
    return v0
.end method

.method allResumedActivitiesComplete()Z
    .registers 8

    .line 1060
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_39

    .line 1061
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityDisplay;

    .line 1062
    .local v2, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v1

    .local v3, "stackNdx":I
    :goto_17
    if-ltz v3, :cond_36

    .line 1063
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 1064
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 1065
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getResumedActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 1066
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_33

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v6

    if-nez v6, :cond_33

    .line 1067
    const/4 v1, 0x0

    return v1

    .line 1062
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_33
    add-int/lit8 v3, v3, -0x1

    goto :goto_17

    .line 1060
    .end local v2    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v3    # "stackNdx":I
    :cond_36
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1076
    .end local v0    # "displayNdx":I
    :cond_39
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 1077
    return v1
.end method

.method allResumedActivitiesIdle()Z
    .registers 8

    .line 1039
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_3c

    .line 1040
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityDisplay;

    .line 1041
    .local v2, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v1

    .local v3, "stackNdx":I
    :goto_17
    if-ltz v3, :cond_39

    .line 1042
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 1043
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->numActivities()I

    move-result v5

    if-nez v5, :cond_2a

    .line 1044
    goto :goto_36

    .line 1046
    :cond_2a
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getResumedActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 1047
    .local v5, "resumedActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_34

    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->idle:Z

    if-nez v6, :cond_36

    .line 1050
    :cond_34
    const/4 v1, 0x0

    return v1

    .line 1041
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "resumedActivity":Lcom/android/server/am/ActivityRecord;
    :cond_36
    :goto_36
    add-int/lit8 v3, v3, -0x1

    goto :goto_17

    .line 1039
    .end local v2    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v3    # "stackNdx":I
    :cond_39
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1055
    .end local v0    # "displayNdx":I
    :cond_3c
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->sendPowerHintForLaunchEndIfNeeded()V

    .line 1056
    return v1
.end method

.method anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;
    .registers 3
    .param p1, "id"    # I

    .line 803
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(II)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    return-object v0
.end method

.method anyTaskForIdLocked(II)Lcom/android/server/am/TaskRecord;
    .registers 5
    .param p1, "id"    # I
    .param p2, "matchMode"    # I

    .line 807
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(IILandroid/app/ActivityOptions;Z)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    return-object v0
.end method

.method anyTaskForIdLocked(IILandroid/app/ActivityOptions;Z)Lcom/android/server/am/TaskRecord;
    .registers 25
    .param p1, "id"    # I
    .param p2, "matchMode"    # I
    .param p3, "aOptions"    # Landroid/app/ActivityOptions;
    .param p4, "onTop"    # Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 820
    move/from16 v11, p4

    const/4 v4, 0x2

    if-eq v2, v4, :cond_18

    if-nez v3, :cond_10

    goto :goto_18

    .line 821
    :cond_10
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Should not specify activity options for non-restore lookup"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 825
    :cond_18
    :goto_18
    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 826
    .local v12, "numDisplays":I
    const/4 v5, 0x0

    move v6, v5

    .local v6, "displayNdx":I
    :goto_20
    move v13, v6

    .end local v6    # "displayNdx":I
    .local v13, "displayNdx":I
    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ge v13, v12, :cond_74

    .line 827
    iget-object v8, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v8, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    move-object v14, v8

    check-cast v14, Lcom/android/server/am/ActivityDisplay;

    .line 828
    .local v14, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v14}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v8

    sub-int/2addr v8, v6

    .local v8, "stackNdx":I
    :goto_33
    move v15, v8

    .end local v8    # "stackNdx":I
    .local v15, "stackNdx":I
    if-ltz v15, :cond_71

    .line 829
    invoke-virtual {v14, v15}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v10

    .line 830
    .local v10, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v10, v1}, Lcom/android/server/am/ActivityStack;->taskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v9

    .line 831
    .local v9, "task":Lcom/android/server/am/TaskRecord;
    if-nez v9, :cond_44

    .line 832
    nop

    .line 828
    .end local v9    # "task":Lcom/android/server/am/TaskRecord;
    .end local v10    # "stack":Lcom/android/server/am/ActivityStack;
    add-int/lit8 v8, v15, -0x1

    .end local v15    # "stackNdx":I
    .restart local v8    # "stackNdx":I
    goto :goto_33

    .line 834
    .end local v8    # "stackNdx":I
    .restart local v9    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v10    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v15    # "stackNdx":I
    :cond_44
    if-eqz v3, :cond_6c

    .line 837
    invoke-virtual {v0, v7, v3, v9, v11}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v8

    .line 838
    .local v8, "launchStack":Lcom/android/server/am/ActivityStack;
    if-eqz v8, :cond_6c

    if-eq v10, v8, :cond_6c

    .line 839
    if-eqz v11, :cond_52

    .line 840
    move v7, v5

    goto :goto_53

    :cond_52
    move v7, v4

    .line 841
    .local v7, "reparentMode":I
    :goto_53
    const/16 v16, 0x1

    const/16 v17, 0x1

    const-string v18, "anyTaskForIdLocked"

    move-object v4, v9

    move-object v5, v8

    move v6, v11

    move-object/from16 v19, v8

    move/from16 v8, v16

    .end local v8    # "launchStack":Lcom/android/server/am/ActivityStack;
    .local v19, "launchStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v16, v9

    move/from16 v9, v17

    .end local v9    # "task":Lcom/android/server/am/TaskRecord;
    .local v16, "task":Lcom/android/server/am/TaskRecord;
    move-object/from16 v17, v10

    move-object/from16 v10, v18

    .end local v10    # "stack":Lcom/android/server/am/ActivityStack;
    .local v17, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z

    .end local v7    # "reparentMode":I
    .end local v19    # "launchStack":Lcom/android/server/am/ActivityStack;
    goto :goto_70

    .line 845
    .end local v16    # "task":Lcom/android/server/am/TaskRecord;
    .end local v17    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v9    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v10    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_6c
    move-object/from16 v16, v9

    move-object/from16 v17, v10

    .end local v9    # "task":Lcom/android/server/am/TaskRecord;
    .end local v10    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v16    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v17    # "stack":Lcom/android/server/am/ActivityStack;
    :goto_70
    return-object v16

    .line 826
    .end local v14    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v15    # "stackNdx":I
    .end local v16    # "task":Lcom/android/server/am/TaskRecord;
    .end local v17    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_71
    add-int/lit8 v6, v13, 0x1

    .end local v13    # "displayNdx":I
    .restart local v6    # "displayNdx":I
    goto :goto_20

    .line 850
    .end local v6    # "displayNdx":I
    :cond_74
    if-nez v2, :cond_77

    .line 851
    return-object v7

    .line 857
    :cond_77
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v4, v1}, Lcom/android/server/am/RecentTasks;->getTask(I)Lcom/android/server/am/TaskRecord;

    move-result-object v4

    .line 859
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    if-nez v4, :cond_80

    .line 864
    return-object v7

    .line 867
    :cond_80
    if-ne v2, v6, :cond_83

    .line 868
    return-object v4

    .line 872
    :cond_83
    invoke-virtual {v0, v4, v3, v11}, Lcom/android/server/am/ActivityStackSupervisor;->restoreRecentTaskLocked(Lcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;Z)Z

    move-result v5

    if-nez v5, :cond_8a

    .line 875
    return-object v7

    .line 878
    :cond_8a
    return-object v4
.end method

.method applySleepTokensLocked(Z)V
    .registers 15
    .param p1, "applyToStacks"    # Z

    .line 3761
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_8f

    .line 3763
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 3764
    .local v1, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->shouldSleep()Z

    move-result v2

    .line 3765
    .local v2, "displayShouldSleep":Z
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->isSleeping()Z

    move-result v3

    if-ne v2, v3, :cond_1e

    .line 3766
    goto/16 :goto_8b

    .line 3768
    :cond_1e
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityDisplay;->setIsSleeping(Z)V

    .line 3770
    if-nez p1, :cond_24

    .line 3771
    goto :goto_8b

    .line 3775
    :cond_24
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "stackNdx":I
    :goto_2a
    if-ltz v3, :cond_51

    .line 3776
    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v12

    .line 3777
    .local v12, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v2, :cond_37

    .line 3778
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Lcom/android/server/am/ActivityStack;->goToSleepIfPossible(Z)Z

    goto :goto_4e

    .line 3780
    :cond_37
    invoke-virtual {v12}, Lcom/android/server/am/ActivityStack;->awakeFromSleepingLocked()V

    .line 3784
    invoke-virtual {v12}, Lcom/android/server/am/ActivityStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 3785
    invoke-virtual {v12}, Lcom/android/server/am/ActivityStack;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v4, p0

    move-object v5, v12

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/am/ActivityStackSupervisor;->resizeStackLocked(Lcom/android/server/am/ActivityStack;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)V

    .line 3775
    .end local v12    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_4e
    :goto_4e
    add-int/lit8 v3, v3, -0x1

    goto :goto_2a

    .line 3801
    .end local v3    # "stackNdx":I
    :cond_51
    if-nez v2, :cond_62

    .line 3802
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v3

    iget v4, v1, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    invoke-virtual {v3, v4}, Lcom/android/server/am/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v3

    if-nez v3, :cond_62

    .line 3803
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 3807
    :cond_62
    if-nez v2, :cond_8b

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 3808
    goto :goto_8b

    .line 3811
    :cond_6d
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/ActivityRecord;>;"
    :goto_73
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8b

    .line 3812
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 3813
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v5

    iget v6, v1, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    if-ne v5, v6, :cond_8a

    .line 3814
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 3816
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_8a
    goto :goto_73

    .line 3761
    .end local v1    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v2    # "displayShouldSleep":Z
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/ActivityRecord;>;"
    :cond_8b
    :goto_8b
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_8

    .line 3818
    .end local v0    # "displayNdx":I
    :cond_8f
    return-void
.end method

.method attachApplicationLocked(Lcom/android/server/am/ProcessRecord;)Z
    .registers 16
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1002
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1003
    .local v0, "processName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1004
    .local v1, "didSomething":Z
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "displayNdx":I
    :goto_b
    const/4 v4, 0x0

    if-ltz v2, :cond_93

    .line 1005
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityDisplay;

    .line 1006
    .local v5, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v5}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v3

    .local v6, "stackNdx":I
    :goto_1b
    if-ltz v6, :cond_8f

    .line 1007
    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v7

    .line 1008
    .local v7, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v7}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v8

    if-nez v8, :cond_28

    .line 1009
    goto :goto_8c

    .line 1011
    :cond_28
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpActivityList:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityStack;->getAllRunningVisibleActivitiesLocked(Ljava/util/ArrayList;)V

    .line 1012
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    .line 1013
    .local v8, "top":Lcom/android/server/am/ActivityRecord;
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpActivityList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1014
    .local v9, "size":I
    move v10, v1

    move v1, v4

    .local v1, "i":I
    .local v10, "didSomething":Z
    :goto_39
    if-ge v1, v9, :cond_8b

    .line 1015
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpActivityList:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActivityRecord;

    .line 1016
    .local v11, "activity":Lcom/android/server/am/ActivityRecord;
    iget-object v12, v11, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v12, :cond_88

    iget v12, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v13, v11, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v12, v13, :cond_88

    iget-object v12, v11, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    .line 1017
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_88

    .line 1019
    if-ne v8, v11, :cond_5d

    move v12, v3

    goto :goto_5e

    :cond_5d
    move v12, v4

    :goto_5e
    :try_start_5e
    invoke-virtual {p0, v11, p1, v12, v3}, Lcom/android/server/am/ActivityStackSupervisor;->realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZ)Z

    move-result v12
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_62} :catch_66

    if-eqz v12, :cond_65

    .line 1021
    const/4 v10, 0x1

    .line 1027
    :cond_65
    goto :goto_88

    .line 1023
    :catch_66
    move-exception v3

    .line 1024
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception in new application when starting activity "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v8, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1025
    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1024
    const-string v12, "ActivityManager"

    invoke-static {v12, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1026
    throw v3

    .line 1014
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v11    # "activity":Lcom/android/server/am/ActivityRecord;
    :cond_88
    :goto_88
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    .line 1006
    .end local v1    # "i":I
    .end local v7    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v8    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v9    # "size":I
    :cond_8b
    move v1, v10

    .end local v10    # "didSomething":Z
    .local v1, "didSomething":Z
    :goto_8c
    add-int/lit8 v6, v6, -0x1

    goto :goto_1b

    .line 1004
    .end local v5    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v6    # "stackNdx":I
    :cond_8f
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_b

    .line 1032
    .end local v2    # "displayNdx":I
    :cond_93
    if-nez v1, :cond_99

    .line 1033
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v4, v4}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 1035
    :cond_99
    return v1
.end method

.method attachDisplay(Lcom/android/server/am/ActivityDisplay;)V
    .registers 4
    .param p1, "display"    # Lcom/android/server/am/ActivityDisplay;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4561
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4562
    return-void
.end method

.method canPlaceEntityOnDisplay(IZIILandroid/content/pm/ActivityInfo;)Z
    .registers 9
    .param p1, "displayId"    # I
    .param p2, "resizeable"    # Z
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I
    .param p5, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .line 505
    const/4 v0, 0x1

    if-nez p1, :cond_4

    .line 507
    return v0

    .line 509
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mSupportsMultiDisplay:Z

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 511
    return v2

    .line 513
    :cond_c
    if-nez p2, :cond_15

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->displayConfigMatchesGlobal(I)Z

    move-result v1

    if-nez v1, :cond_15

    .line 515
    return v2

    .line 517
    :cond_15
    invoke-virtual {p0, p3, p4, p1, p5}, Lcom/android/server/am/ActivityStackSupervisor;->isCallerAllowedToLaunchOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 521
    return v2

    .line 523
    :cond_1c
    return v0
.end method

.method canUseActivityOptionsLaunchBounds(Landroid/app/ActivityOptions;)Z
    .registers 5
    .param p1, "options"    # Landroid/app/ActivityOptions;

    .line 2518
    const/4 v0, 0x0

    if-eqz p1, :cond_20

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_20

    .line 2521
    :cond_a
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mSupportsPictureInPicture:Z

    if-eqz v1, :cond_17

    .line 2522
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1d

    :cond_17
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz v1, :cond_1f

    :cond_1d
    const/4 v0, 0x1

    nop

    .line 2521
    :cond_1f
    return v0

    .line 2519
    :cond_20
    :goto_20
    return v0
.end method

.method cancelInitializingActivities()V
    .registers 5

    .line 1165
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_27

    .line 1166
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 1167
    .local v1, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "stackNdx":I
    :goto_18
    if-ltz v2, :cond_24

    .line 1168
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 1169
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->cancelInitializingActivities()V

    .line 1167
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 1165
    .end local v1    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v2    # "stackNdx":I
    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1172
    .end local v0    # "displayNdx":I
    :cond_27
    return-void
.end method

.method checkReadyForSleepLocked(Z)V
    .registers 3
    .param p1, "allowDelay"    # Z

    .line 3831
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDownLocked()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3833
    return-void

    .line 3836
    :cond_9
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityStackSupervisor;->putStacksToSleepLocked(ZZ)Z

    move-result v0

    if-nez v0, :cond_11

    .line 3837
    return-void

    .line 3841
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->sendPowerHintForLaunchEndIfNeeded()V

    .line 3843
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->removeSleepTimeouts()V

    .line 3845
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 3846
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3848
    :cond_24
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-eqz v0, :cond_2f

    .line 3849
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 3851
    :cond_2f
    return-void
.end method

.method checkStartAnyActivityPermission(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIILjava/lang/String;ZZLcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;)Z
    .registers 36
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "resultWho"    # Ljava/lang/String;
    .param p4, "requestCode"    # I
    .param p5, "callingPid"    # I
    .param p6, "callingUid"    # I
    .param p7, "callingPackage"    # Ljava/lang/String;
    .param p8, "ignoreTargetSecurity"    # Z
    .param p9, "launchingInTask"    # Z
    .param p10, "callerApp"    # Lcom/android/server/am/ProcessRecord;
    .param p11, "resultRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p12, "resultStack"    # Lcom/android/server/am/ActivityStack;
    .param p13, "checker"    # Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p10

    .line 1819
    iget-object v0, v6, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getRecentTasks()Lcom/android/server/am/RecentTasks;

    move-result-object v0

    const/4 v12, 0x1

    if-eqz v0, :cond_21

    iget-object v0, v6, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1820
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getRecentTasks()Lcom/android/server/am/RecentTasks;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/server/am/RecentTasks;->isCallerRecents(I)Z

    move-result v0

    if-eqz v0, :cond_21

    move v0, v12

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    move v13, v0

    .line 1821
    .local v13, "isCallerRecents":Z
    iget-object v0, v6, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.START_ANY_ACTIVITY"

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v14

    .line 1823
    .local v14, "startAnyPerm":I
    if-eqz v14, :cond_1d0

    if-eqz v13, :cond_33

    if-eqz p9, :cond_33

    goto/16 :goto_1d0

    .line 1829
    :cond_33
    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, p7

    move v3, v8

    move v4, v9

    move/from16 v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->getComponentRestrictionForCallingPackage(Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIZ)I

    move-result v5

    .line 1831
    .local v5, "componentRestriction":I
    nop

    .line 1834
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1831
    move v11, v5

    move-object/from16 v5, p13

    .end local v5    # "componentRestriction":I
    .local v11, "componentRestriction":I
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->getActionRestrictionForCallingPackage(Ljava/lang/String;Ljava/lang/String;IILcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;)I

    move-result v0

    .line 1835
    .local v0, "actionRestriction":I
    if-eq v11, v12, :cond_ed

    if-ne v0, v12, :cond_51

    goto/16 :goto_ed

    .line 1867
    :cond_51
    const/4 v1, 0x2

    if-ne v0, v1, :cond_a0

    .line 1868
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Appop Denial: starting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/am/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    .line 1872
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1871
    invoke-static {v2}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1873
    .local v1, "message":Ljava/lang/String;
    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    const/4 v2, 0x0

    return v2

    .line 1875
    .end local v1    # "message":Ljava/lang/String;
    :cond_a0
    if-ne v11, v1, :cond_ea

    .line 1876
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Appop Denial: starting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") requires appop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 1879
    invoke-static {v2}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1880
    .restart local v1    # "message":Ljava/lang/String;
    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    move-object/from16 v2, p13

    iget-object v3, v2, Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;->newAInfo:Landroid/content/pm/ActivityInfo;

    if-nez v3, :cond_ec

    .line 1884
    const/4 v3, 0x0

    return v3

    .line 1889
    .end local v1    # "message":Ljava/lang/String;
    :cond_ea
    move-object/from16 v2, p13

    :cond_ec
    return v12

    .line 1839
    :cond_ed
    :goto_ed
    move-object/from16 v2, p13

    if-eqz p11, :cond_109

    const/16 v3, -0x3e9

    move/from16 v4, p4

    if-eq v4, v3, :cond_10b

    .line 1842
    const/16 v16, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v15, p12

    move-object/from16 v17, p11

    move-object/from16 v18, p3

    move/from16 v19, v4

    invoke-virtual/range {v15 .. v21}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    goto :goto_10b

    .line 1847
    :cond_109
    move/from16 v4, p4

    :cond_10b
    :goto_10b
    if-eq v0, v12, :cond_183

    .line 1852
    iget-boolean v3, v7, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v3, :cond_14b

    .line 1853
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission Denial: starting "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " (pid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", uid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") not exported from uid "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1c4

    .line 1858
    :cond_14b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission Denial: starting "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " (pid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", uid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") requires "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v7, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1c4

    .line 1848
    :cond_183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission Denial: starting "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " (pid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", uid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") with revoked permission "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/am/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    .line 1851
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1858
    .local v3, "msg":Ljava/lang/String;
    :goto_1c4
    nop

    .line 1863
    const-string v5, "ActivityManager"

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1864
    new-instance v5, Ljava/lang/SecurityException;

    invoke-direct {v5, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1827
    .end local v0    # "actionRestriction":I
    .end local v3    # "msg":Ljava/lang/String;
    .end local v11    # "componentRestriction":I
    :cond_1d0
    :goto_1d0
    move/from16 v4, p4

    move-object/from16 v2, p13

    return v12
.end method

.method cleanUpRemovedTaskLocked(Lcom/android/server/am/TaskRecord;ZZ)V
    .registers 20
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;
    .param p2, "killProcess"    # Z
    .param p3, "removeFromRecents"    # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3260
    if-eqz p3, :cond_b

    .line 3261
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v2, v1}, Lcom/android/server/am/RecentTasks;->remove(Lcom/android/server/am/TaskRecord;)V

    .line 3263
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 3264
    .local v2, "component":Landroid/content/ComponentName;
    if-nez v2, :cond_2c

    .line 3265
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No component for base intent of task: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3266
    return-void

    .line 3270
    :cond_2c
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    new-instance v4, Landroid/content/Intent;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v3, v1, v2, v4}, Lcom/android/server/am/ActiveServices;->cleanUpRemovedTaskLocked(Lcom/android/server/am/TaskRecord;Landroid/content/ComponentName;Landroid/content/Intent;)V

    .line 3272
    if-nez p2, :cond_3f

    .line 3273
    return-void

    .line 3277
    :cond_3f
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 3278
    .local v4, "pkg":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3279
    .local v5, "procsToKill":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v6}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v6

    .line 3280
    .local v6, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;>;"
    const/4 v8, 0x0

    .line 3280
    .local v8, "i":I
    :goto_51
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ge v8, v9, :cond_b2

    .line 3282
    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    .line 3283
    .local v9, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    const/4 v10, 0x0

    .line 3283
    .local v10, "j":I
    :goto_5e
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-ge v10, v11, :cond_af

    .line 3284
    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ProcessRecord;

    .line 3285
    .local v11, "proc":Lcom/android/server/am/ProcessRecord;
    iget v12, v11, Lcom/android/server/am/ProcessRecord;->userId:I

    iget v13, v1, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v12, v13, :cond_71

    .line 3287
    goto :goto_ac

    .line 3289
    :cond_71
    iget-object v12, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-ne v11, v12, :cond_78

    .line 3291
    goto :goto_ac

    .line 3293
    :cond_78
    iget-object v12, v11, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v12, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_81

    .line 3295
    goto :goto_ac

    .line 3298
    :cond_81
    const/4 v12, 0x0

    .line 3298
    .local v12, "k":I
    :goto_82
    iget-object v13, v11, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v12, v13, :cond_a4

    .line 3299
    iget-object v13, v11, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v13}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v13

    .line 3300
    .local v13, "otherTask":Lcom/android/server/am/TaskRecord;
    iget v14, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v7, v13, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v14, v7, :cond_a1

    iget-boolean v7, v13, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v7, :cond_a1

    .line 3303
    return-void

    .line 3298
    .end local v13    # "otherTask":Lcom/android/server/am/TaskRecord;
    :cond_a1
    add-int/lit8 v12, v12, 0x1

    goto :goto_82

    .line 3307
    .end local v12    # "k":I
    :cond_a4
    iget-boolean v7, v11, Lcom/android/server/am/ProcessRecord;->foregroundServices:Z

    if-eqz v7, :cond_a9

    .line 3309
    return-void

    .line 3313
    :cond_a9
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3283
    .end local v11    # "proc":Lcom/android/server/am/ProcessRecord;
    :goto_ac
    add-int/lit8 v10, v10, 0x1

    goto :goto_5e

    .line 3280
    .end local v9    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v10    # "j":I
    :cond_af
    add-int/lit8 v8, v8, 0x1

    goto :goto_51

    .line 3318
    .end local v8    # "i":I
    :cond_b2
    const/4 v15, 0x0

    .line 3318
    .local v15, "i":I
    :goto_b3
    move v7, v15

    .line 3318
    .end local v15    # "i":I
    .local v7, "i":I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_dc

    .line 3319
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    .line 3320
    .local v8, "pr":Lcom/android/server/am/ProcessRecord;
    iget v9, v8, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    if-nez v9, :cond_d4

    iget-object v9, v8, Lcom/android/server/am/ProcessRecord;->curReceivers:Landroid/util/ArraySet;

    .line 3321
    invoke-virtual {v9}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_d4

    .line 3322
    const-string/jumbo v9, "remove task"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    goto :goto_d9

    .line 3325
    :cond_d4
    const-string/jumbo v9, "remove task"

    iput-object v9, v8, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    .line 3318
    .end local v8    # "pr":Lcom/android/server/am/ProcessRecord;
    :goto_d9
    add-int/lit8 v15, v7, 0x1

    .line 3318
    .end local v7    # "i":I
    .restart local v15    # "i":I
    goto :goto_b3

    .line 3328
    .end local v15    # "i":I
    :cond_dc
    return-void
.end method

.method cleanupActivity(Lcom/android/server/am/ActivityRecord;)V
    .registers 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 1183
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1184
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1186
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_12
    if-ltz v0, :cond_2c

    .line 1187
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;->matches(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1188
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1186
    :cond_29
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    .line 1191
    .end local v0    # "i":I
    :cond_2c
    return-void
.end method

.method clearOtherAppTimeTrackers(Lcom/android/server/am/AppTimeTracker;)V
    .registers 6
    .param p1, "except"    # Lcom/android/server/am/AppTimeTracker;

    .line 3987
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_27

    .line 3988
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 3989
    .local v1, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "stackNdx":I
    :goto_18
    if-ltz v2, :cond_24

    .line 3990
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 3991
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStack;->clearOtherAppTimeTrackers(Lcom/android/server/am/AppTimeTracker;)V

    .line 3989
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 3987
    .end local v1    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v2    # "stackNdx":I
    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3994
    .end local v0    # "displayNdx":I
    :cond_27
    return-void
.end method

.method closeSystemDialogsLocked()V
    .registers 5

    .line 2243
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_27

    .line 2244
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 2245
    .local v1, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "stackNdx":I
    :goto_18
    if-ltz v2, :cond_24

    .line 2246
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 2247
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->closeSystemDialogsLocked()V

    .line 2245
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 2243
    .end local v1    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v2    # "stackNdx":I
    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2250
    .end local v0    # "displayNdx":I
    :cond_27
    return-void
.end method

.method comeOutOfSleepIfNeededLocked()V
    .registers 2

    .line 3754
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->removeSleepTimeouts()V

    .line 3755
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3756
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3758
    :cond_10
    return-void
.end method

.method continueUpdateBounds(I)V
    .registers 3
    .param p1, "activityType"    # I

    .line 2906
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 2907
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_a

    .line 2908
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->continueUpdateBounds()V

    .line 2910
    :cond_a
    return-void
.end method

.method continueUpdateRecentsHomeStackBounds()V
    .registers 2

    .line 2901
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->continueUpdateBounds(I)V

    .line 2902
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->continueUpdateBounds(I)V

    .line 2903
    return-void
.end method

.method createRunningTasks()Lcom/android/server/am/RunningTasks;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 678
    new-instance v0, Lcom/android/server/am/RunningTasks;

    invoke-direct {v0}, Lcom/android/server/am/RunningTasks;-><init>()V

    return-object v0
.end method

.method createSleepTokenLocked(Ljava/lang/String;I)Landroid/app/ActivityManagerInternal$SleepToken;
    .registers 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "displayId"    # I

    .line 4621
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityDisplay;

    .line 4622
    .local v0, "display":Lcom/android/server/am/ActivityDisplay;
    if-eqz v0, :cond_1a

    .line 4626
    new-instance v1, Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Ljava/lang/String;I)V

    .line 4627
    .local v1, "token":Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4628
    iget-object v2, v0, Lcom/android/server/am/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4629
    return-object v1

    .line 4623
    .end local v1    # "token":Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;
    :cond_1a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid display: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method deferUpdateBounds(I)V
    .registers 3
    .param p1, "activityType"    # I

    .line 2894
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 2895
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_a

    .line 2896
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->deferUpdateBounds()V

    .line 2898
    :cond_a
    return-void
.end method

.method deferUpdateRecentsHomeStackBounds()V
    .registers 2

    .line 2889
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->deferUpdateBounds(I)V

    .line 2890
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->deferUpdateBounds(I)V

    .line 2891
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 4222
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mFocusedStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4223
    const-string v0, " mLastFocusedStack="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4224
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurTaskIdForUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4226
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mUserStackInFront="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4227
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 4227
    .local v0, "i":I
    :goto_60
    if-ltz v0, :cond_70

    .line 4228
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 4229
    .local v1, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/ActivityDisplay;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4227
    .end local v1    # "display":Lcom/android/server/am/ActivityDisplay;
    add-int/lit8 v0, v0, -0x1

    goto :goto_60

    .line 4231
    .end local v0    # "i":I
    :cond_70
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9e

    .line 4232
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWaitingForActivityVisible="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4233
    const/4 v0, 0x0

    .line 4233
    .restart local v0    # "i":I
    :goto_82
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_9e

    .line 4234
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4233
    add-int/lit8 v0, v0, 0x1

    goto :goto_82

    .line 4237
    .end local v0    # "i":I
    :cond_9e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "isHomeRecentsComponent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4238
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    iget v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/RecentTasks;->isRecentsComponentHomeActivity(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4240
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/KeyguardController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4241
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/LockTaskController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4242
    return-void
.end method

.method dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;)Z
    .registers 29
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "dumpAll"    # Z
    .param p4, "dumpClient"    # Z
    .param p5, "dumpPackage"    # Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v13, p2

    .line 4321
    move-object/from16 v14, p5

    const/4 v1, 0x0

    .line 4322
    .local v1, "printed":Z
    const/4 v2, 0x0

    .line 4323
    .local v2, "needSep":Z
    const/4 v3, 0x0

    move v15, v1

    move/from16 v16, v2

    .end local v1    # "printed":Z
    .end local v2    # "needSep":Z
    .local v3, "displayNdx":I
    .local v15, "printed":Z
    .local v16, "needSep":Z
    :goto_c
    move v12, v3

    .end local v3    # "displayNdx":I
    .local v12, "displayNdx":I
    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v12, v1, :cond_12f

    .line 4324
    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/server/am/ActivityDisplay;

    .line 4325
    .local v11, "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    const-string v1, "Display #"

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v11, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 4326
    const-string v1, " (activities from top to bottom):"

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4327
    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/server/am/ActivityDisplay;

    .line 4328
    .local v10, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v10}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "stackNdx":I
    :goto_3c
    move v9, v1

    .end local v1    # "stackNdx":I
    .local v9, "stackNdx":I
    if-ltz v9, :cond_129

    .line 4329
    invoke-virtual {v10, v9}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v8

    .line 4330
    .local v8, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Stack #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4332
    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->getActivityType()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4333
    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4331
    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  isSleeping="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->shouldSleepActivities()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4337
    move-object v1, v8

    move-object/from16 v2, p1

    move-object v3, v13

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v14

    move/from16 v7, v16

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ActivityStack;->dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;Z)Z

    move-result v1

    or-int/2addr v15, v1

    .line 4340
    iget-object v3, v8, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    const-string v4, "    "

    const-string v5, "Run"

    const/4 v6, 0x0

    xor-int/lit8 v7, p3, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x1

    const-string v19, "    Running activities (most recent first):"

    const/16 v20, 0x0

    move-object/from16 v1, p1

    move-object v2, v13

    move-object/from16 v21, v8

    move/from16 v8, v17

    .end local v8    # "stack":Lcom/android/server/am/ActivityStack;
    .local v21, "stack":Lcom/android/server/am/ActivityStack;
    move/from16 v17, v9

    move-object v9, v14

    .end local v9    # "stackNdx":I
    .local v17, "stackNdx":I
    move-object/from16 v22, v10

    move/from16 v10, v18

    .end local v10    # "display":Lcom/android/server/am/ActivityDisplay;
    .local v22, "display":Lcom/android/server/am/ActivityDisplay;
    move-object/from16 v18, v11

    move-object/from16 v11, v19

    .end local v11    # "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    .local v18, "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    move/from16 v19, v12

    move-object/from16 v12, v20

    .end local v12    # "displayNdx":I
    .local v19, "displayNdx":I
    invoke-static/range {v1 .. v12}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Lcom/android/server/am/TaskRecord;)Z

    move-result v1

    or-int/2addr v1, v15

    .line 4344
    .end local v15    # "printed":Z
    .local v1, "printed":Z
    move v2, v1

    .line 4345
    .end local v16    # "needSep":Z
    .restart local v2    # "needSep":Z
    move-object/from16 v3, v21

    iget-object v4, v3, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .end local v21    # "stack":Lcom/android/server/am/ActivityStack;
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    const-string v5, "    mPausingActivity: "

    invoke-static {v13, v4, v14, v2, v5}, Lcom/android/server/am/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v4

    .line 4347
    .local v4, "pr":Z
    if-eqz v4, :cond_f7

    .line 4348
    const/4 v1, 0x1

    .line 4349
    const/4 v2, 0x0

    .line 4351
    :cond_f7
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getResumedActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    const-string v6, "    mResumedActivity: "

    invoke-static {v13, v5, v14, v2, v6}, Lcom/android/server/am/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v4

    .line 4353
    if-eqz v4, :cond_105

    .line 4354
    const/4 v1, 0x1

    .line 4355
    const/4 v2, 0x0

    .line 4357
    :cond_105
    if-eqz p3, :cond_11c

    .line 4358
    iget-object v5, v3, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    const-string v6, "    mLastPausedActivity: "

    invoke-static {v13, v5, v14, v2, v6}, Lcom/android/server/am/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v4

    .line 4360
    if-eqz v4, :cond_113

    .line 4361
    const/4 v1, 0x1

    .line 4362
    const/4 v2, 0x1

    .line 4364
    :cond_113
    iget-object v5, v3, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    const-string v6, "    mLastNoHistoryActivity: "

    invoke-static {v13, v5, v14, v2, v6}, Lcom/android/server/am/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v5

    or-int/2addr v1, v5

    .line 4367
    .end local v1    # "printed":Z
    .restart local v15    # "printed":Z
    :cond_11c
    move v15, v1

    move/from16 v16, v15

    .line 4328
    .end local v2    # "needSep":Z
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "pr":Z
    .restart local v16    # "needSep":Z
    add-int/lit8 v1, v17, -0x1

    .end local v17    # "stackNdx":I
    .local v1, "stackNdx":I
    move-object/from16 v11, v18

    move/from16 v12, v19

    move-object/from16 v10, v22

    goto/16 :goto_3c

    .line 4323
    .end local v1    # "stackNdx":I
    .end local v18    # "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    .end local v19    # "displayNdx":I
    .end local v22    # "display":Lcom/android/server/am/ActivityDisplay;
    .restart local v12    # "displayNdx":I
    :cond_129
    move/from16 v19, v12

    .end local v12    # "displayNdx":I
    .restart local v19    # "displayNdx":I
    add-int/lit8 v3, v19, 0x1

    .end local v19    # "displayNdx":I
    .local v3, "displayNdx":I
    goto/16 :goto_c

    .line 4371
    .end local v3    # "displayNdx":I
    :cond_12f
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    const-string v4, "  "

    const-string v5, "Fin"

    const/4 v6, 0x0

    xor-int/lit8 v7, p3, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x1

    const-string v11, "  Activities waiting to finish:"

    const/4 v12, 0x0

    move-object/from16 v1, p1

    move-object v2, v13

    move-object v9, v14

    invoke-static/range {v1 .. v12}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Lcom/android/server/am/TaskRecord;)Z

    move-result v1

    or-int/2addr v15, v1

    .line 4373
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    const-string v4, "  "

    const-string v5, "Stop"

    const/4 v6, 0x0

    xor-int/lit8 v7, p3, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x1

    const-string v11, "  Activities waiting to stop:"

    const/4 v12, 0x0

    move-object/from16 v1, p1

    move-object v2, v13

    move-object v9, v14

    invoke-static/range {v1 .. v12}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Lcom/android/server/am/TaskRecord;)Z

    move-result v1

    or-int/2addr v15, v1

    .line 4375
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    const-string v4, "  "

    const-string v5, "Wait"

    const/4 v6, 0x0

    xor-int/lit8 v7, p3, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x1

    const-string v11, "  Activities waiting for another to become visible:"

    const/4 v12, 0x0

    move-object/from16 v1, p1

    move-object v2, v13

    move-object v9, v14

    invoke-static/range {v1 .. v12}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Lcom/android/server/am/TaskRecord;)Z

    move-result v1

    or-int/2addr v15, v1

    .line 4378
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    const-string v4, "  "

    const-string v5, "Sleep"

    const/4 v6, 0x0

    xor-int/lit8 v7, p3, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x1

    const-string v11, "  Activities waiting to sleep:"

    const/4 v12, 0x0

    move-object/from16 v1, p1

    move-object v2, v13

    move-object v9, v14

    invoke-static/range {v1 .. v12}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Lcom/android/server/am/TaskRecord;)Z

    move-result v1

    or-int/2addr v1, v15

    .line 4381
    .end local v15    # "printed":Z
    .local v1, "printed":Z
    return v1
.end method

.method dumpDisplayConfigs(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 4271
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Display override configurations:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4272
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 4273
    .local v0, "displayCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_35

    .line 4274
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityDisplay;

    .line 4275
    .local v2, "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4276
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4273
    .end local v2    # "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 4278
    .end local v1    # "i":I
    :cond_35
    return-void
.end method

.method public dumpDisplays(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 4213
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_38

    .line 4214
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 4215
    .local v1, "display":Lcom/android/server/am/ActivityDisplay;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " stacks:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4216
    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityDisplay;->dumpStacks(Ljava/io/PrintWriter;)V

    .line 4217
    const-string v2, "]"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4213
    .end local v1    # "display":Lcom/android/server/am/ActivityDisplay;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 4219
    .end local v0    # "i":I
    :cond_38
    return-void
.end method

.method ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V
    .registers 5
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "configChanges"    # I
    .param p3, "preserveWindows"    # Z

    .line 3932
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZZ)V

    .line 3934
    return-void
.end method

.method ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZZ)V
    .registers 9
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "configChanges"    # I
    .param p3, "preserveWindows"    # Z
    .param p4, "notifyClients"    # Z

    .line 3941
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/KeyguardController;->beginActivityVisibilityUpdate()V

    .line 3944
    :try_start_7
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_f
    if-ltz v0, :cond_2e

    .line 3945
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 3946
    .local v1, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "stackNdx":I
    :goto_1f
    if-ltz v2, :cond_2b

    .line 3947
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 3948
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZZ)V
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_37

    .line 3946
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    add-int/lit8 v2, v2, -0x1

    goto :goto_1f

    .line 3944
    .end local v1    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v2    # "stackNdx":I
    :cond_2b
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .line 3953
    .end local v0    # "displayNdx":I
    :cond_2e
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/KeyguardController;->endActivityVisibilityUpdate()V

    .line 3954
    nop

    .line 3955
    return-void

    .line 3953
    :catchall_37
    move-exception v0

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/KeyguardController;->endActivityVisibilityUpdate()V

    throw v0
.end method

.method ensureVisibilityAndConfig(Lcom/android/server/am/ActivityRecord;IZZ)Z
    .registers 10
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "displayId"    # I
    .param p3, "markFrozenIfConfigChanged"    # Z
    .param p4, "deferResume"    # Z

    .line 1704
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZZ)V

    .line 1707
    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p2, v2, :cond_a

    .line 1709
    return v1

    .line 1714
    :cond_a
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 1715
    invoke-virtual {p0, p2}, Lcom/android/server/am/ActivityStackSupervisor;->getDisplayOverrideConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v3

    .line 1716
    if-eqz p1, :cond_1d

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v4}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1717
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    nop

    .line 1714
    :cond_1d
    invoke-virtual {v2, v3, v0, p2, v1}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;IZ)Landroid/content/res/Configuration;

    move-result-object v0

    .line 1719
    .local v0, "config":Landroid/content/res/Configuration;
    if-eqz p1, :cond_29

    if-eqz p3, :cond_29

    if-eqz v0, :cond_29

    .line 1720
    iput-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    .line 1724
    :cond_29
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v0, p1, p4, p2}, Lcom/android/server/am/ActivityManagerService;->updateDisplayOverrideConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;ZI)Z

    move-result v1

    return v1
.end method

.method findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/am/ActivityRecord;
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "compareIntentFilters"    # Z

    .line 3676
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_2b

    .line 3677
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 3678
    .local v1, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "stackNdx":I
    :goto_18
    if-ltz v2, :cond_28

    .line 3679
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 3680
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/am/ActivityStack;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 3682
    .local v4, "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_25

    .line 3683
    return-object v4

    .line 3678
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_25
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 3676
    .end local v1    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v2    # "stackNdx":I
    :cond_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3687
    .end local v0    # "displayNdx":I
    :cond_2b
    const/4 v0, 0x0

    return-object v0
.end method

.method findStackBehind(Lcom/android/server/am/ActivityStack;)Lcom/android/server/am/ActivityStack;
    .registers 6
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .line 5012
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityDisplay;

    .line 5013
    .local v0, "display":Lcom/android/server/am/ActivityDisplay;
    if-nez v0, :cond_d

    .line 5014
    const/4 v1, 0x0

    return-object v1

    .line 5016
    :cond_d
    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_13
    if-ltz v1, :cond_27

    .line 5017
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-ne v2, p1, :cond_24

    if-lez v1, :cond_24

    .line 5018
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    return-object v2

    .line 5016
    :cond_24
    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    .line 5021
    .end local v1    # "i":I
    :cond_27
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find a stack behind stack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " in="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method findTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;
    .registers 10
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "displayId"    # I

    .line 3622
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    .line 3623
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->matchedByRootAffinity:Z

    .line 3624
    const/4 v0, 0x0

    .line 3626
    .local v0, "affinityMatch":Lcom/android/server/am/ActivityRecord;
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "displayNdx":I
    :goto_13
    if-ltz v1, :cond_7b

    .line 3627
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityDisplay;

    .line 3628
    .local v2, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "stackNdx":I
    :goto_23
    if-ltz v3, :cond_78

    .line 3629
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 3630
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p1, v4}, Lcom/android/server/am/ActivityRecord;->hasCompatibleActivityType(Lcom/android/server/wm/ConfigurationContainer;)Z

    move-result v5

    if-nez v5, :cond_30

    .line 3633
    goto :goto_75

    .line 3635
    :cond_30
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    invoke-virtual {v4, p1, v5}, Lcom/android/server/am/ActivityStack;->findTaskLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;)V

    .line 3641
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    iget-object v5, v5, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_75

    .line 3642
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->matchedByRootAffinity:Z

    if-nez v5, :cond_67

    .line 3643
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    iget-object v5, v5, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v5

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v5, v6, :cond_50

    .line 3645
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->acquireAppLaunchPerfLock(Lcom/android/server/am/ActivityRecord;)V

    .line 3647
    :cond_50
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    iget-object v5, v5, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v5

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v5, v6, :cond_62

    .line 3649
    const/4 v5, 0x6

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/am/ActivityStackSupervisor;->acquireUxPerfLock(ILjava/lang/String;)V

    .line 3651
    :cond_62
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    iget-object v5, v5, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    return-object v5

    .line 3652
    :cond_67
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    iget-object v5, v5, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v5

    if-ne v5, p2, :cond_75

    .line 3656
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    iget-object v0, v5, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    .line 3628
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_75
    :goto_75
    add-int/lit8 v3, v3, -0x1

    goto :goto_23

    .line 3626
    .end local v2    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v3    # "stackNdx":I
    :cond_78
    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    .line 3666
    .end local v1    # "displayNdx":I
    :cond_7b
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_8d

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v1

    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v1, v2, :cond_90

    .line 3667
    :cond_8d
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->acquireAppLaunchPerfLock(Lcom/android/server/am/ActivityRecord;)V

    .line 3671
    :cond_90
    return-object v0
.end method

.method findTaskToMoveToFront(Lcom/android/server/am/TaskRecord;ILandroid/app/ActivityOptions;Ljava/lang/String;Z)V
    .registers 25
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "flags"    # I
    .param p3, "options"    # Landroid/app/ActivityOptions;
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "forceNonResizeable"    # Z

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    .line 2449
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v11

    .line 2451
    .local v11, "currentStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v12

    .line 2452
    .local v12, "focusedStack":Lcom/android/server/am/ActivityStack;
    const/4 v13, 0x0

    if-eqz v12, :cond_16

    invoke-virtual {v12}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    goto :goto_17

    :cond_16
    move-object v0, v13

    :goto_17
    move-object v14, v0

    .line 2456
    .local v14, "top_activity":Lcom/android/server/am/ActivityRecord;
    if-eqz v14, :cond_25

    invoke-virtual {v14}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v0, v1, :cond_25

    .line 2457
    invoke-virtual {v8, v14}, Lcom/android/server/am/ActivityStackSupervisor;->acquireAppLaunchPerfLock(Lcom/android/server/am/ActivityRecord;)V

    .line 2460
    :cond_25
    if-nez v11, :cond_43

    .line 2461
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findTaskToMoveToFront: can\'t move task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to front. Stack is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2463
    return-void

    .line 2466
    :cond_43
    and-int/lit8 v0, p2, 0x2

    const/4 v1, 0x1

    if-nez v0, :cond_4a

    .line 2467
    iput-boolean v1, v8, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    .line 2470
    :cond_4a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    .line 2472
    .local v7, "prev":Lcom/android/server/am/ActivityRecord;
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_5a

    if-eqz v7, :cond_5f

    .line 2473
    invoke-virtual {v7}, Lcom/android/server/am/ActivityRecord;->isActivityTypeRecents()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 2476
    :cond_5a
    const-string v0, "findTaskToMoveToFront"

    invoke-virtual {v8, v0}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackToFront(Ljava/lang/String;)V

    .line 2479
    :cond_5f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v0

    if-eqz v0, :cond_b5

    invoke-virtual {v8, v10}, Lcom/android/server/am/ActivityStackSupervisor;->canUseActivityOptionsLaunchBounds(Landroid/app/ActivityOptions;)Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 2480
    invoke-virtual/range {p3 .. p3}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 2481
    .local v6, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v9, v6}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    .line 2483
    invoke-virtual {v8, v13, v10, v9, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    .line 2485
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    if-eq v5, v11, :cond_8c

    .line 2486
    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v15, 0x1

    const-string v16, "findTaskToMoveToFront"

    move-object v0, v9

    move-object v1, v5

    move-object/from16 v17, v5

    move v5, v15

    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .local v17, "stack":Lcom/android/server/am/ActivityStack;
    move-object v15, v6

    move-object/from16 v6, v16

    .end local v6    # "bounds":Landroid/graphics/Rect;
    .local v15, "bounds":Landroid/graphics/Rect;
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z

    .line 2488
    move-object v0, v11

    .line 2492
    .end local v17    # "stack":Lcom/android/server/am/ActivityStack;
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    move-object v6, v0

    goto :goto_91

    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v15    # "bounds":Landroid/graphics/Rect;
    .restart local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v6    # "bounds":Landroid/graphics/Rect;
    :cond_8c
    move-object/from16 v17, v5

    move-object v15, v6

    move-object/from16 v6, v17

    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .local v6, "stack":Lcom/android/server/am/ActivityStack;
    .restart local v15    # "bounds":Landroid/graphics/Rect;
    :goto_91
    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->resizeStackWithLaunchBounds()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 2493
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object v0, v8

    move-object v1, v6

    move-object v2, v15

    move-object/from16 v18, v6

    move/from16 v6, v16

    .end local v6    # "stack":Lcom/android/server/am/ActivityStack;
    .local v18, "stack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v16, v7

    move/from16 v7, v17

    .end local v7    # "prev":Lcom/android/server/am/ActivityRecord;
    .local v16, "prev":Lcom/android/server/am/ActivityRecord;
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->resizeStackLocked(Lcom/android/server/am/ActivityStack;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)V

    goto :goto_b7

    .line 2500
    .end local v16    # "prev":Lcom/android/server/am/ActivityRecord;
    .end local v18    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v6    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v7    # "prev":Lcom/android/server/am/ActivityRecord;
    :cond_ad
    move-object/from16 v18, v6

    move-object/from16 v16, v7

    .end local v6    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v7    # "prev":Lcom/android/server/am/ActivityRecord;
    .restart local v16    # "prev":Lcom/android/server/am/ActivityRecord;
    .restart local v18    # "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->resizeWindowContainer()V

    .end local v15    # "bounds":Landroid/graphics/Rect;
    .end local v18    # "stack":Lcom/android/server/am/ActivityStack;
    goto :goto_b7

    .line 2504
    .end local v16    # "prev":Lcom/android/server/am/ActivityRecord;
    .restart local v7    # "prev":Lcom/android/server/am/ActivityRecord;
    :cond_b5
    move-object/from16 v16, v7

    .end local v7    # "prev":Lcom/android/server/am/ActivityRecord;
    .restart local v16    # "prev":Lcom/android/server/am/ActivityRecord;
    :goto_b7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .line 2505
    .local v6, "r":Lcom/android/server/am/ActivityRecord;
    const/4 v2, 0x0

    .line 2506
    if-nez v6, :cond_c0

    .line 2505
    move-object v4, v13

    goto :goto_c3

    .line 2506
    :cond_c0
    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 2505
    move-object v4, v0

    :goto_c3
    move-object v0, v11

    move-object v1, v9

    move-object v3, v10

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 2511
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v8

    move-object v4, v11

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;IILcom/android/server/am/ActivityStack;Z)V

    .line 2513
    return-void
.end method

.method finishDisabledPackageActivitiesLocked(Ljava/lang/String;Ljava/util/Set;ZZI)Z
    .registers 18
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "doit"    # Z
    .param p4, "evenPersistent"    # Z
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZI)Z"
        }
    .end annotation

    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v0, p0

    .line 2271
    const/4 v1, 0x0

    .line 2272
    .local v1, "didSomething":Z
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "displayNdx":I
    :goto_a
    if-ltz v2, :cond_35

    .line 2273
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityDisplay;

    .line 2274
    .local v3, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "stackNdx":I
    :goto_1a
    if-ltz v4, :cond_32

    .line 2275
    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v11

    .line 2276
    .local v11, "stack":Lcom/android/server/am/ActivityStack;
    move-object v5, v11

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityStack;->finishDisabledPackageActivitiesLocked(Ljava/lang/String;Ljava/util/Set;ZZI)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 2278
    const/4 v1, 0x1

    .line 2274
    .end local v11    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2f
    add-int/lit8 v4, v4, -0x1

    goto :goto_1a

    .line 2272
    .end local v3    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v4    # "stackNdx":I
    :cond_32
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    .line 2282
    .end local v2    # "displayNdx":I
    :cond_35
    return v1
.end method

.method finishTopCrashedActivitiesLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Lcom/android/server/am/TaskRecord;
    .registers 10
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 2419
    const/4 v0, 0x0

    .line 2420
    .local v0, "finishedTask":Lcom/android/server/am/TaskRecord;
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 2421
    .local v1, "focusedStack":Lcom/android/server/am/ActivityStack;
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "displayNdx":I
    :goto_d
    if-ltz v2, :cond_31

    .line 2422
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityDisplay;

    .line 2425
    .local v3, "display":Lcom/android/server/am/ActivityDisplay;
    const/4 v4, 0x0

    .local v4, "stackNdx":I
    :goto_18
    invoke-virtual {v3}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_2e

    .line 2426
    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    .line 2427
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v5, p1, p2}, Lcom/android/server/am/ActivityStack;->finishTopCrashedActivityLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Lcom/android/server/am/TaskRecord;

    move-result-object v6

    .line 2428
    .local v6, "t":Lcom/android/server/am/TaskRecord;
    if-eq v5, v1, :cond_2a

    if-nez v0, :cond_2b

    .line 2429
    :cond_2a
    move-object v0, v6

    .line 2425
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v6    # "t":Lcom/android/server/am/TaskRecord;
    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 2421
    .end local v3    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v4    # "stackNdx":I
    :cond_2e
    add-int/lit8 v2, v2, -0x1

    goto :goto_d

    .line 2433
    .end local v2    # "displayNdx":I
    :cond_31
    return-object v0
.end method

.method finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    .registers 7
    .param p1, "session"    # Landroid/service/voice/IVoiceInteractionSession;

    .line 2437
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_26

    .line 2438
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 2439
    .local v1, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    .line 2440
    .local v2, "numStacks":I
    const/4 v3, 0x0

    .local v3, "stackNdx":I
    :goto_17
    if-ge v3, v2, :cond_23

    .line 2441
    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 2442
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityStack;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V

    .line 2440
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 2437
    .end local v1    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v2    # "numStacks":I
    .end local v3    # "stackNdx":I
    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2445
    .end local v0    # "displayNdx":I
    :cond_26
    return-void
.end method

.method getActivityDisplay(I)Lcom/android/server/am/ActivityDisplay;
    .registers 3
    .param p1, "displayId"    # I

    .line 4524
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityDisplay;

    return-object v0
.end method

.method getActivityDisplayOrCreateLocked(I)Lcom/android/server/am/ActivityDisplay;
    .registers 5
    .param p1, "displayId"    # I

    .line 4538
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityDisplay;

    .line 4539
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    if-eqz v0, :cond_b

    .line 4540
    return-object v0

    .line 4542
    :cond_b
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v2, 0x0

    if-nez v1, :cond_11

    .line 4544
    return-object v2

    .line 4546
    :cond_11
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    .line 4547
    .local v1, "display":Landroid/view/Display;
    if-nez v1, :cond_1a

    .line 4549
    return-object v2

    .line 4552
    :cond_1a
    new-instance v2, Lcom/android/server/am/ActivityDisplay;

    invoke-direct {v2, p0, v1}, Lcom/android/server/am/ActivityDisplay;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/view/Display;)V

    move-object v0, v2

    .line 4553
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->attachDisplay(Lcom/android/server/am/ActivityDisplay;)V

    .line 4554
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->calculateDefaultMinimalSizeOfResizeableTasks(Lcom/android/server/am/ActivityDisplay;)V

    .line 4555
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowManagerService;->onDisplayAdded(I)V

    .line 4556
    return-object v0
.end method

.method public getActivityMetricsLogger()Lcom/android/server/am/ActivityMetricsLogger;
    .registers 2

    .line 660
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/am/ActivityMetricsLogger;

    return-object v0
.end method

.method getAllStackInfosLocked()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/app/ActivityManager$StackInfo;",
            ">;"
        }
    .end annotation

    .line 4720
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4721
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$StackInfo;>;"
    const/4 v1, 0x0

    .local v1, "displayNdx":I
    :goto_6
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2f

    .line 4722
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityDisplay;

    .line 4723
    .local v2, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "stackNdx":I
    :goto_1c
    if-ltz v3, :cond_2c

    .line 4724
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 4725
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    invoke-direct {p0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStackInfo(Lcom/android/server/am/ActivityStack;)Landroid/app/ActivityManager$StackInfo;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4723
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    add-int/lit8 v3, v3, -0x1

    goto :goto_1c

    .line 4721
    .end local v2    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v3    # "stackNdx":I
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 4728
    .end local v1    # "displayNdx":I
    :cond_2f
    return-object v0
.end method

.method protected getChildAt(I)Lcom/android/server/am/ActivityDisplay;
    .registers 3
    .param p1, "index"    # I

    .line 476
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityDisplay;

    return-object v0
.end method

.method protected bridge synthetic getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;
    .registers 2

    .line 205
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getChildAt(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object p1

    return-object p1
.end method

.method protected getChildCount()I
    .registers 2

    .line 471
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;
    .registers 3

    .line 4529
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityDisplay;

    return-object v0
.end method

.method getDisplayOverrideConfiguration(I)Landroid/content/res/Configuration;
    .registers 6
    .param p1, "displayId"    # I

    .line 485
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplayOrCreateLocked(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    .line 486
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    if-eqz v0, :cond_b

    .line 490
    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    return-object v1

    .line 487
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No display found with id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getDumpActivitiesLocked(Ljava/lang/String;ZZ)Ljava/util/ArrayList;
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "dumpVisibleStacksOnly"    # Z
    .param p3, "dumpFocusedStackOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    .line 4286
    if-eqz p3, :cond_9

    .line 4287
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStack;->getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 4289
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4290
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 4291
    .local v1, "numDisplays":I
    const/4 v2, 0x0

    .local v2, "displayNdx":I
    :goto_15
    if-ge v2, v1, :cond_41

    .line 4292
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityDisplay;

    .line 4293
    .local v3, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "stackNdx":I
    :goto_25
    if-ltz v4, :cond_3e

    .line 4294
    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    .line 4295
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz p2, :cond_34

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 4296
    :cond_34
    invoke-virtual {v5, p1}, Lcom/android/server/am/ActivityStack;->getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4293
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_3b
    add-int/lit8 v4, v4, -0x1

    goto :goto_25

    .line 4291
    .end local v3    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v4    # "stackNdx":I
    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 4300
    .end local v2    # "displayNdx":I
    :cond_41
    return-object v0
.end method

.method getFocusedStack()Lcom/android/server/am/ActivityStack;
    .registers 2

    .line 717
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    return-object v0
.end method

.method getHomeActivity()Lcom/android/server/am/ActivityRecord;
    .registers 2

    .line 2825
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeActivityForUser(I)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getHomeActivityForUser(I)Lcom/android/server/am/ActivityRecord;
    .registers 9
    .param p1, "userId"    # I

    .line 2829
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 2830
    .local v0, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "taskNdx":I
    :goto_c
    if-ltz v1, :cond_3e

    .line 2831
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 2832
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 2833
    iget-object v3, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 2834
    .local v3, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "activityNdx":I
    :goto_22
    if-ltz v4, :cond_3b

    .line 2835
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 2836
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->isActivityTypeHome()Z

    move-result v6

    if-eqz v6, :cond_38

    const/4 v6, -0x1

    if-eq p1, v6, :cond_37

    iget v6, v5, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v6, p1, :cond_38

    .line 2838
    :cond_37
    return-object v5

    .line 2834
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_38
    add-int/lit8 v4, v4, -0x1

    goto :goto_22

    .line 2830
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    .end local v3    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v4    # "activityNdx":I
    :cond_3b
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 2843
    .end local v1    # "taskNdx":I
    :cond_3e
    const/4 v1, 0x0

    return-object v1
.end method

.method public getKeyguardController()Lcom/android/server/am/KeyguardController;
    .registers 2

    .line 668
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mKeyguardController:Lcom/android/server/am/KeyguardController;

    return-object v0
.end method

.method getLastStack()Lcom/android/server/am/ActivityStack;
    .registers 2

    .line 729
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    return-object v0
.end method

.method getLaunchParamsController()Lcom/android/server/am/LaunchParamsController;
    .registers 2

    .line 2527
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchParamsController:Lcom/android/server/am/LaunchParamsController;

    return-object v0
.end method

.method getLaunchStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;Z)Lcom/android/server/am/ActivityStack;
    .registers 11
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "candidateTask"    # Lcom/android/server/am/TaskRecord;
    .param p4, "onTop"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/am/ActivityStack;",
            ">(",
            "Lcom/android/server/am/ActivityRecord;",
            "Landroid/app/ActivityOptions;",
            "Lcom/android/server/am/TaskRecord;",
            "Z)TT;"
        }
    .end annotation

    .line 2570
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;ZI)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method getLaunchStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;ZI)Lcom/android/server/am/ActivityStack;
    .registers 22
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "candidateTask"    # Lcom/android/server/am/TaskRecord;
    .param p4, "onTop"    # Z
    .param p5, "candidateDisplayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/am/ActivityStack;",
            ">(",
            "Lcom/android/server/am/ActivityRecord;",
            "Landroid/app/ActivityOptions;",
            "Lcom/android/server/am/TaskRecord;",
            "ZI)TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .line 2585
    const/4 v1, -0x1

    .line 2586
    .local v1, "taskId":I
    const/4 v2, -0x1

    .line 2590
    .local v2, "displayId":I
    if-eqz v8, :cond_14

    .line 2591
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v1

    .line 2592
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v2

    .line 2599
    .end local v1    # "taskId":I
    .local v10, "taskId":I
    :cond_14
    move v10, v1

    const/4 v1, -0x1

    if-eq v10, v1, :cond_2c

    .line 2601
    invoke-virtual {v8, v1}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 2602
    const/4 v3, 0x2

    move/from16 v11, p4

    invoke-virtual {v0, v10, v3, v8, v11}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(IILandroid/app/ActivityOptions;Z)Lcom/android/server/am/TaskRecord;

    move-result-object v3

    .line 2604
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v8, v10}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 2605
    if-eqz v3, :cond_2e

    .line 2606
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    return-object v1

    .line 2610
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2c
    move/from16 v11, p4

    :cond_2e
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivityType(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;)I

    move-result v12

    .line 2611
    .local v12, "activityType":I
    const/4 v3, 0x0

    .line 2615
    .local v3, "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    if-ne v2, v1, :cond_37

    .line 2616
    move/from16 v2, p5

    .line 2618
    .end local v2    # "displayId":I
    .local v13, "displayId":I
    :cond_37
    move v13, v2

    if-eq v13, v1, :cond_5e

    invoke-direct {v0, v7, v13}, Lcom/android/server/am/ActivityStackSupervisor;->canLaunchOnDisplay(Lcom/android/server/am/ActivityRecord;I)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 2619
    if-eqz v7, :cond_49

    .line 2621
    invoke-virtual {v0, v13, v7}, Lcom/android/server/am/ActivityStackSupervisor;->getValidLaunchStackOnDisplay(ILcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 2622
    if-eqz v3, :cond_49

    .line 2623
    return-object v3

    .line 2626
    :cond_49
    move-object v14, v3

    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    .local v14, "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    invoke-virtual {v0, v13}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplayOrCreateLocked(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v15

    .line 2627
    .local v15, "display":Lcom/android/server/am/ActivityDisplay;
    if-eqz v15, :cond_5d

    .line 2628
    move-object v1, v15

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move v5, v12

    move v6, v11

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityDisplay;->getOrCreateStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;IZ)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 2629
    .end local v14    # "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    .restart local v3    # "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    if-eqz v3, :cond_5e

    .line 2630
    return-object v3

    .line 2637
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    .end local v15    # "display":Lcom/android/server/am/ActivityDisplay;
    .restart local v14    # "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    :cond_5d
    move-object v3, v14

    .end local v14    # "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    .restart local v3    # "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    :cond_5e
    const/4 v1, 0x0

    .line 2638
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    .local v1, "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    const/4 v2, 0x0

    .line 2639
    .local v2, "display":Lcom/android/server/am/ActivityDisplay;
    if-eqz v9, :cond_66

    .line 2640
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 2642
    :cond_66
    if-nez v1, :cond_6e

    if-eqz v7, :cond_6e

    .line 2643
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 2645
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    .restart local v14    # "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    :cond_6e
    move-object v14, v1

    if-eqz v14, :cond_9b

    .line 2646
    invoke-virtual {v14}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    .line 2647
    if-eqz v2, :cond_9b

    iget v1, v2, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    invoke-direct {v0, v7, v1}, Lcom/android/server/am/ActivityStackSupervisor;->canLaunchOnDisplay(Lcom/android/server/am/ActivityRecord;I)Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 2648
    nop

    .line 2649
    invoke-virtual {v2, v7, v8, v9, v12}, Lcom/android/server/am/ActivityDisplay;->resolveWindowingMode(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;I)I

    move-result v1

    .line 2650
    .local v1, "windowingMode":I
    invoke-virtual {v14, v1, v12}, Lcom/android/server/am/ActivityStack;->isCompatible(II)Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 2651
    return-object v14

    .line 2653
    :cond_8b
    const/4 v3, 0x4

    if-ne v1, v3, :cond_9b

    .line 2654
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    if-ne v3, v14, :cond_9b

    .line 2655
    invoke-virtual {v14}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    if-ne v9, v3, :cond_9b

    .line 2661
    return-object v14

    .line 2666
    .end local v1    # "windowingMode":I
    :cond_9b
    if-eqz v2, :cond_ad

    iget v1, v2, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    .line 2667
    invoke-direct {v0, v7, v1}, Lcom/android/server/am/ActivityStackSupervisor;->canLaunchOnDisplay(Lcom/android/server/am/ActivityRecord;I)Z

    move-result v1

    if-eqz v1, :cond_ad

    const/4 v1, 0x1

    if-eq v12, v1, :cond_ab

    if-eqz v12, :cond_ab

    goto :goto_ad

    .line 2675
    :cond_ab
    move-object v15, v2

    goto :goto_b2

    .line 2672
    :cond_ad
    :goto_ad
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    .line 2675
    .end local v2    # "display":Lcom/android/server/am/ActivityDisplay;
    .local v1, "display":Lcom/android/server/am/ActivityDisplay;
    move-object v15, v1

    .end local v1    # "display":Lcom/android/server/am/ActivityDisplay;
    .restart local v15    # "display":Lcom/android/server/am/ActivityDisplay;
    :goto_b2
    move-object v1, v15

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move v5, v12

    move v6, v11

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityDisplay;->getOrCreateStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;IZ)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    return-object v1
.end method

.method getLaunchTimeTracker()Lcom/android/server/am/LaunchTimeTracker;
    .registers 2

    .line 664
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchTimeTracker:Lcom/android/server/am/LaunchTimeTracker;

    return-object v0
.end method

.method getNextFocusableStackLocked(Lcom/android/server/am/ActivityStack;Z)Lcom/android/server/am/ActivityStack;
    .registers 11
    .param p1, "currentFocus"    # Lcom/android/server/am/ActivityStack;
    .param p2, "ignoreCurrent"    # Z

    .line 2754
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOrderedDisplayIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->getDisplaysInFocusOrder(Landroid/util/SparseIntArray;)V

    .line 2756
    if-eqz p1, :cond_e

    .line 2757
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v0

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 2758
    .local v0, "currentWindowingMode":I
    :goto_f
    const/4 v1, 0x0

    .line 2759
    .local v1, "candidate":Lcom/android/server/am/ActivityStack;
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOrderedDisplayIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_18
    if-ltz v2, :cond_63

    .line 2760
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOrderedDisplayIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    .line 2762
    .local v3, "displayId":I
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplayOrCreateLocked(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v4

    .line 2763
    .local v4, "display":Lcom/android/server/am/ActivityDisplay;
    if-nez v4, :cond_27

    .line 2765
    goto :goto_60

    .line 2767
    :cond_27
    invoke-virtual {v4}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "j":I
    :goto_2d
    if-ltz v5, :cond_60

    .line 2768
    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v6

    .line 2769
    .local v6, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz p2, :cond_38

    if-ne v6, p1, :cond_38

    .line 2770
    goto :goto_5d

    .line 2772
    :cond_38
    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->isFocusable()Z

    move-result v7

    if-eqz v7, :cond_5d

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result v7

    if-nez v7, :cond_46

    .line 2773
    goto :goto_5d

    .line 2776
    :cond_46
    const/4 v7, 0x4

    if-ne v0, v7, :cond_53

    if-nez v1, :cond_53

    .line 2777
    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v7

    if-eqz v7, :cond_53

    .line 2785
    move-object v1, v6

    .line 2786
    goto :goto_5d

    .line 2788
    :cond_53
    if-eqz v1, :cond_5c

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v7

    if-eqz v7, :cond_5c

    .line 2790
    return-object v1

    .line 2792
    :cond_5c
    return-object v6

    .line 2767
    .end local v6    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_5d
    :goto_5d
    add-int/lit8 v5, v5, -0x1

    goto :goto_2d

    .line 2759
    .end local v3    # "displayId":I
    .end local v4    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v5    # "j":I
    :cond_60
    :goto_60
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 2796
    .end local v2    # "i":I
    :cond_63
    return-object v1
.end method

.method getNextTaskIdForUserLocked(I)I
    .registers 6
    .param p1, "userId"    # I

    .line 965
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    const v1, 0x186a0

    mul-int/2addr v1, p1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 969
    .local v0, "currentTaskId":I
    invoke-static {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->nextTaskIdForUser(II)I

    move-result v1

    .line 970
    .local v1, "candidateTaskId":I
    :goto_e
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/am/RecentTasks;->containsTaskId(II)Z

    move-result v2

    if-nez v2, :cond_24

    const/4 v2, 0x1

    .line 971
    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(II)Lcom/android/server/am/TaskRecord;

    move-result-object v2

    if-eqz v2, :cond_1e

    goto :goto_24

    .line 982
    :cond_1e
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 983
    return v1

    .line 973
    :cond_24
    :goto_24
    invoke-static {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->nextTaskIdForUser(II)I

    move-result v1

    .line 974
    if-eq v1, v0, :cond_2b

    goto :goto_e

    .line 977
    :cond_2b
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot get an available task id. Reached limit of 100000 running tasks per user."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method getNextValidLaunchStackLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityStack;
    .registers 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "currentFocus"    # I

    .line 2810
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOrderedDisplayIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->getDisplaysInFocusOrder(Landroid/util/SparseIntArray;)V

    .line 2811
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOrderedDisplayIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_f
    if-ltz v0, :cond_24

    .line 2812
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOrderedDisplayIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 2813
    .local v1, "displayId":I
    if-ne v1, p2, :cond_1a

    .line 2814
    goto :goto_21

    .line 2816
    :cond_1a
    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getValidLaunchStackOnDisplay(ILcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 2817
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v2, :cond_21

    .line 2818
    return-object v2

    .line 2811
    .end local v1    # "displayId":I
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_21
    :goto_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .line 2821
    .end local v0    # "i":I
    :cond_24
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getParent()Lcom/android/server/wm/ConfigurationContainer;
    .registers 2

    .line 481
    const/4 v0, 0x0

    return-object v0
.end method

.method getReparentTargetStack(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;Z)Lcom/android/server/am/ActivityStack;
    .registers 10
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p3, "toTop"    # Z

    .line 3419
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 3420
    .local v0, "prevStack":Lcom/android/server/am/ActivityStack;
    iget v1, p2, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 3421
    .local v1, "stackId":I
    invoke-virtual {p2}, Lcom/android/server/am/ActivityStack;->inMultiWindowMode()Z

    move-result v2

    .line 3424
    .local v2, "inMultiWindowMode":Z
    if-eqz v0, :cond_2f

    iget v3, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-ne v3, v1, :cond_2f

    .line 3425
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not reparent to same stack, task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " already in stackId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3427
    return-object v0

    .line 3432
    :cond_2f
    if-eqz v2, :cond_57

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mSupportsMultiWindow:Z

    if-eqz v3, :cond_38

    goto :goto_57

    .line 3433
    :cond_38
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device doesn\'t support multi-window, can not reparent task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to stack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3439
    :cond_57
    :goto_57
    iget v3, p2, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-eqz v3, :cond_81

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mSupportsMultiDisplay:Z

    if-eqz v3, :cond_62

    goto :goto_81

    .line 3440
    :cond_62
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device doesn\'t support multi-display, can not reparent task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to stackId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3445
    :cond_81
    :goto_81
    invoke-virtual {p2}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_a6

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz v3, :cond_8f

    goto :goto_a6

    .line 3447
    :cond_8f
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device doesn\'t support freeform, can not reparent task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3455
    :cond_a6
    :goto_a6
    if-eqz v2, :cond_ae

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v3

    if-eqz v3, :cond_c2

    .line 3456
    :cond_ae
    invoke-virtual {p2}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_bc

    .line 3457
    invoke-virtual {p2}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_f5

    .line 3458
    :cond_bc
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->supportsSplitScreenWindowingMode()Z

    move-result v3

    if-nez v3, :cond_f5

    .line 3460
    :cond_c2
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not move unresizeable task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to multi-window stack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " Moving to a fullscreen stack instead."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3462
    if-eqz v0, :cond_e8

    .line 3463
    return-object v0

    .line 3465
    :cond_e8
    invoke-virtual {p2}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v3

    const/4 v4, 0x1

    .line 3466
    invoke-virtual {p2}, Lcom/android/server/am/ActivityStack;->getActivityType()I

    move-result v5

    .line 3465
    invoke-virtual {v3, v4, v5, p3}, Lcom/android/server/am/ActivityDisplay;->createStack(IIZ)Lcom/android/server/am/ActivityStack;

    move-result-object p2

    .line 3468
    :cond_f5
    return-object p2
.end method

.method getResumedActivityLocked()Lcom/android/server/am/ActivityRecord;
    .registers 4

    .line 987
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 988
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v0, :cond_6

    .line 989
    const/4 v1, 0x0

    return-object v1

    .line 991
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getResumedActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 992
    .local v1, "resumedActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_10

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v2, :cond_1c

    .line 993
    :cond_10
    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 994
    if-eqz v1, :cond_18

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v2, :cond_1c

    .line 995
    :cond_18
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 998
    :cond_1c
    return-object v1
.end method

.method getRunningTasks(ILjava/util/List;IIIZ)V
    .registers 15
    .param p1, "maxNum"    # I
    .param p3, "ignoreActivityType"    # I
        .annotation build Landroid/app/WindowConfiguration$ActivityType;
        .end annotation
    .end param
    .param p4, "ignoreWindowingMode"    # I
        .annotation build Landroid/app/WindowConfiguration$WindowingMode;
        .end annotation
    .end param
    .param p5, "callingUid"    # I
    .param p6, "allowed"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;IIIZ)V"
        }
    .end annotation

    .line 1350
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mRunningTasks:Lcom/android/server/am/RunningTasks;

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/RunningTasks;->getTasks(ILjava/util/List;IILandroid/util/SparseArray;IZ)V

    .line 1352
    return-void
.end method

.method protected getStack(I)Lcom/android/server/am/ActivityStack;
    .registers 4
    .param p1, "stackId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/am/ActivityStack;",
            ">(I)TT;"
        }
    .end annotation

    .line 2531
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 2532
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityDisplay;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 2533
    .local v1, "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    if-eqz v1, :cond_19

    .line 2534
    return-object v1

    .line 2531
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;, "TT;"
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2537
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method getStackInfo(I)Landroid/app/ActivityManager$StackInfo;
    .registers 4
    .param p1, "stackId"    # I

    .line 4707
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 4708
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_b

    .line 4709
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getStackInfo(Lcom/android/server/am/ActivityStack;)Landroid/app/ActivityManager$StackInfo;

    move-result-object v1

    return-object v1

    .line 4711
    :cond_b
    const/4 v1, 0x0

    return-object v1
.end method

.method getStackInfo(II)Landroid/app/ActivityManager$StackInfo;
    .registers 5
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I

    .line 4715
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 4716
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_b

    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getStackInfo(Lcom/android/server/am/ActivityStack;)Landroid/app/ActivityManager$StackInfo;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return-object v1
.end method

.method getTopVisibleActivities()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .line 5177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5179
    .local v0, "topActivityTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_d
    if-ltz v1, :cond_46

    .line 5180
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityDisplay;

    .line 5182
    .local v2, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "j":I
    :goto_1d
    if-ltz v3, :cond_43

    .line 5183
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 5185
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 5186
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 5187
    .local v5, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_40

    .line 5188
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-ne v4, v6, :cond_3b

    .line 5189
    const/4 v6, 0x0

    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_40

    .line 5191
    :cond_3b
    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5182
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_40
    :goto_40
    add-int/lit8 v3, v3, -0x1

    goto :goto_1d

    .line 5179
    .end local v2    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v3    # "j":I
    :cond_43
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 5197
    .end local v1    # "i":I
    :cond_46
    return-object v0
.end method

.method getUserInfo(I)Landroid/content/pm/UserInfo;
    .registers 5
    .param p1, "userId"    # I

    .line 1981
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1983
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_14

    .line 1985
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1983
    return-object v2

    .line 1985
    :catchall_14
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method getValidLaunchStackOnDisplay(ILcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;
    .registers 9
    .param p1, "displayId"    # I
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 2694
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplayOrCreateLocked(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    .line 2695
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    if-eqz v0, :cond_4b

    .line 2700
    invoke-virtual {p2, p1}, Lcom/android/server/am/ActivityRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    .line 2701
    return-object v2

    .line 2705
    :cond_e
    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    .local v1, "i":I
    :goto_14
    if-ltz v1, :cond_24

    .line 2706
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 2707
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    invoke-direct {p0, v4, p1, p2}, Lcom/android/server/am/ActivityStackSupervisor;->isValidLaunchStack(Lcom/android/server/am/ActivityStack;ILcom/android/server/am/ActivityRecord;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 2708
    return-object v4

    .line 2705
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_21
    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    .line 2713
    .end local v1    # "i":I
    :cond_24
    if-eqz p1, :cond_34

    .line 2714
    nop

    .line 2715
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getWindowingMode()I

    move-result v1

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getActivityType()I

    move-result v2

    .line 2714
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityDisplay;->createStack(IIZ)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    return-object v1

    .line 2718
    :cond_34
    const-string v1, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getValidLaunchStackOnDisplay: can\'t launch on displayId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2719
    return-object v2

    .line 2696
    :cond_4b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display with displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method goingToSleepLocked()V
    .registers 3

    .line 3701
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleSleepTimeout()V

    .line 3702
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_26

    .line 3703
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3704
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 3708
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3709
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    .line 3713
    :cond_26
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->applySleepTokensLocked(Z)V

    .line 3715
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked(Z)V

    .line 3716
    return-void
.end method

.method handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 3890
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_27

    .line 3891
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 3892
    .local v1, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "stackNdx":I
    :goto_18
    if-ltz v2, :cond_24

    .line 3893
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 3894
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStack;->handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 3892
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 3890
    .end local v1    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v2    # "stackNdx":I
    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3897
    .end local v0    # "displayNdx":I
    :cond_27
    return-void
.end method

.method handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;)Z
    .registers 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 2231
    const/4 v0, 0x0

    .line 2232
    .local v0, "hasVisibleActivities":Z
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "displayNdx":I
    :goto_9
    if-ltz v1, :cond_2a

    .line 2233
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityDisplay;

    .line 2234
    .local v2, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "stackNdx":I
    :goto_19
    if-ltz v3, :cond_27

    .line 2235
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 2236
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityStack;->handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v5

    or-int/2addr v0, v5

    .line 2234
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    add-int/lit8 v3, v3, -0x1

    goto :goto_19

    .line 2232
    .end local v2    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v3    # "stackNdx":I
    :cond_27
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 2239
    .end local v1    # "displayNdx":I
    :cond_2a
    return v0
.end method

.method handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;IILcom/android/server/am/ActivityStack;)V
    .registers 11
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "preferredWindowingMode"    # I
    .param p3, "preferredDisplayId"    # I
    .param p4, "actualStack"    # Lcom/android/server/am/ActivityStack;

    .line 4733
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;IILcom/android/server/am/ActivityStack;Z)V

    .line 4735
    return-void
.end method

.method handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;IILcom/android/server/am/ActivityStack;Z)V
    .registers 14
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "preferredWindowingMode"    # I
    .param p3, "preferredDisplayId"    # I
    .param p4, "actualStack"    # Lcom/android/server/am/ActivityStack;
    .param p5, "forceNonResizable"    # Z

    .line 4739
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_9

    const/4 v2, -0x1

    if-eq p3, v2, :cond_9

    move v2, v1

    goto :goto_a

    :cond_9
    move v2, v0

    .line 4741
    .local v2, "isSecondaryDisplayPreferred":Z
    :goto_a
    if-eqz p4, :cond_18

    .line 4742
    invoke-virtual {p4}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityDisplay;->hasSplitScreenPrimaryStack()Z

    move-result v3

    if-eqz v3, :cond_18

    move v3, v1

    goto :goto_19

    :cond_18
    move v3, v0

    .line 4743
    .local v3, "inSplitScreenMode":Z
    :goto_19
    if-nez v3, :cond_20

    const/4 v4, 0x3

    if-eq p2, v4, :cond_20

    if-eqz v2, :cond_26

    .line 4744
    :cond_20
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isActivityTypeStandardOrUndefined()Z

    move-result v4

    if-nez v4, :cond_27

    .line 4745
    :cond_26
    return-void

    .line 4749
    :cond_27
    if-eqz v2, :cond_4f

    .line 4750
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    iget v4, v4, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    .line 4751
    .local v4, "actualDisplayId":I
    invoke-virtual {p1, v4}, Lcom/android/server/am/TaskRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 4756
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v6, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v7, 0x4

    invoke-virtual {v5, v6, v7, v1}, Lcom/android/server/am/ActivityManagerService;->setTaskWindowingMode(IIZ)V

    .line 4758
    if-eq p3, v4, :cond_4f

    .line 4761
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    .line 4762
    invoke-virtual {v0}, Lcom/android/server/am/TaskChangeNotificationController;->notifyActivityLaunchOnSecondaryDisplayFailed()V

    .line 4763
    return-void

    .line 4752
    :cond_47
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Task resolved to incompatible display"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4767
    .end local v4    # "actualDisplayId":I
    :cond_4f
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->supportsSplitScreenWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_7b

    if-eqz p5, :cond_58

    goto :goto_7b

    .line 4785
    :cond_58
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 4786
    .local v0, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_7a

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->isNonResizableOrForcedResizable()Z

    move-result v4

    if-eqz v4, :cond_7a

    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-nez v4, :cond_7a

    .line 4788
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 4789
    .local v4, "packageName":Ljava/lang/String;
    if-eqz v2, :cond_70

    .line 4790
    const/4 v1, 0x2

    goto :goto_71

    .line 4791
    :cond_70
    nop

    .line 4792
    .local v1, "reason":I
    :goto_71
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    iget v6, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v5, v6, v1, v4}, Lcom/android/server/am/TaskChangeNotificationController;->notifyActivityForcedResizable(IILjava/lang/String;)V

    .line 4795
    .end local v1    # "reason":I
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_7a
    return-void

    .line 4770
    .end local v0    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :cond_7b
    :goto_7b
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-virtual {v4}, Lcom/android/server/am/TaskChangeNotificationController;->notifyActivityDismissingDockedStack()V

    .line 4775
    nop

    .line 4776
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 4779
    .local v4, "dockedStack":Lcom/android/server/am/ActivityStack;
    if-eqz v4, :cond_a1

    const-string/jumbo v5, "persist.sys.miui_optimization"

    invoke-static {v5, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_a1

    .line 4780
    if-ne p4, v4, :cond_9e

    move v0, v1

    nop

    :cond_9e
    invoke-virtual {p0, v4, v0}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/am/ActivityStack;Z)V

    .line 4782
    :cond_a1
    return-void
.end method

.method hasAwakeDisplay()Z
    .registers 5

    .line 3691
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 3692
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityDisplay;

    .line 3693
    .local v2, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->shouldSleep()Z

    move-result v3

    if-nez v3, :cond_19

    .line 3694
    return v1

    .line 3691
    .end local v2    # "display":Lcom/android/server/am/ActivityDisplay;
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3697
    .end local v0    # "displayNdx":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method initPowerManagement()V
    .registers 4

    .line 686
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPowerManager:Landroid/os/PowerManager;

    .line 687
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "ActivityManager-Sleep"

    .line 688
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    .line 689
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "*launch*"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    .line 690
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 691
    return-void
.end method

.method public initialize()V
    .registers 4

    .line 644
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mInitialized:Z

    if-eqz v0, :cond_5

    .line 645
    return-void

    .line 648
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mInitialized:Z

    .line 649
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->createRunningTasks()Lcom/android/server/am/RunningTasks;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mRunningTasks:Lcom/android/server/am/RunningTasks;

    .line 650
    new-instance v0, Lcom/android/server/am/ActivityMetricsLogger;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    .line 651
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/am/ActivityMetricsLogger;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/am/ActivityMetricsLogger;

    .line 652
    new-instance v0, Lcom/android/server/am/KeyguardController;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, v1, p0}, Lcom/android/server/am/KeyguardController;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mKeyguardController:Lcom/android/server/am/KeyguardController;

    .line 654
    new-instance v0, Lcom/android/server/am/LaunchParamsController;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/am/LaunchParamsController;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchParamsController:Lcom/android/server/am/LaunchParamsController;

    .line 655
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchParamsController:Lcom/android/server/am/LaunchParamsController;

    invoke-virtual {v0, p0}, Lcom/android/server/am/LaunchParamsController;->registerDefaultModifiers(Lcom/android/server/am/ActivityStackSupervisor;)V

    .line 656
    return-void
.end method

.method invalidateTaskLayers()V
    .registers 2

    .line 3968
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTaskLayersChanged:Z

    .line 3969
    return-void
.end method

.method isCallerAllowedToLaunchOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z
    .registers 14
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "launchDisplayId"    # I
    .param p4, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .line 1898
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p1, v0, :cond_7

    if-ne p2, v0, :cond_7

    .line 1900
    return v1

    .line 1903
    :cond_7
    invoke-virtual {p0, p3}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplayOrCreateLocked(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    .line 1904
    .local v2, "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    const/4 v3, 0x0

    if-nez v2, :cond_16

    .line 1905
    const-string v0, "ActivityManager"

    const-string v1, "Launch on display check: display not found"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    return v3

    .line 1911
    :cond_16
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v5, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {v4, v5, p1, p2}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    .line 1913
    .local v4, "startAnyPerm":I
    if-nez v4, :cond_21

    .line 1916
    return v1

    .line 1920
    :cond_21
    invoke-virtual {v2, p2}, Lcom/android/server/am/ActivityDisplay;->isUidPresent(I)Z

    move-result v5

    .line 1922
    .local v5, "uidPresentOnDisplay":Z
    iget-object v6, v2, Lcom/android/server/am/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v6}, Landroid/view/Display;->getOwnerUid()I

    move-result v6

    .line 1923
    .local v6, "displayOwnerUid":I
    iget-object v7, v2, Lcom/android/server/am/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getType()I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_53

    const/16 v7, 0x3e8

    if-eq v6, v7, :cond_53

    iget-object v7, p4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v6, v7, :cond_53

    .line 1927
    iget v7, p4, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v8, -0x80000000

    and-int/2addr v7, v8

    if-nez v7, :cond_46

    .line 1930
    return v3

    .line 1933
    :cond_46
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v8, "android.permission.ACTIVITY_EMBEDDING"

    invoke-virtual {v7, v8, p1, p2}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v0, :cond_53

    if-nez v5, :cond_53

    .line 1937
    return v3

    .line 1941
    :cond_53
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_5a

    .line 1945
    return v1

    .line 1949
    :cond_5a
    if-ne v6, p2, :cond_5d

    .line 1952
    return v1

    .line 1955
    :cond_5d
    if-eqz v5, :cond_60

    .line 1958
    return v1

    .line 1961
    :cond_60
    const-string v0, "ActivityManager"

    const-string v1, "Launch on display check: denied"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    return v3
.end method

.method isCurrentProfileLocked(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 4110
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    return v0

    .line 4111
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/UserController;->isCurrentProfile(I)Z

    move-result v0

    return v0
.end method

.method isDisplayAdded(I)Z
    .registers 3
    .param p1, "displayId"    # I

    .line 4519
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplayOrCreateLocked(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method isFocusable(Lcom/android/server/wm/ConfigurationContainer;Z)Z
    .registers 5
    .param p1, "container"    # Lcom/android/server/wm/ConfigurationContainer;
    .param p2, "alwaysFocusable"    # Z

    .line 721
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenPrimaryWindowingMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mIsDockMinimized:Z

    if-eqz v0, :cond_c

    .line 722
    return v1

    .line 725
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->canReceiveKeys()Z

    move-result v0

    if-nez v0, :cond_1a

    if-eqz p2, :cond_19

    goto :goto_1a

    :cond_19
    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 v1, 0x1

    :goto_1b
    return v1
.end method

.method isFocusedStack(Lcom/android/server/am/ActivityStack;)Z
    .registers 3
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .line 733
    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-ne p1, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method isInAnyStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;

    .line 882
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 883
    .local v0, "numDisplays":I
    const/4 v1, 0x0

    .local v1, "displayNdx":I
    :goto_7
    if-ge v1, v0, :cond_2a

    .line 884
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityDisplay;

    .line 885
    .local v2, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "stackNdx":I
    :goto_17
    if-ltz v3, :cond_27

    .line 886
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 887
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 888
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_24

    .line 889
    return-object v5

    .line 885
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_24
    add-int/lit8 v3, v3, -0x1

    goto :goto_17

    .line 883
    .end local v2    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v3    # "stackNdx":I
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 893
    .end local v1    # "displayNdx":I
    :cond_2a
    const/4 v1, 0x0

    return-object v1
.end method

.method isStoppingNoHistoryActivity()Z
    .registers 4

    .line 4122
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 4123
    .local v1, "record":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->isNoHistory()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 4124
    const/4 v0, 0x1

    return v0

    .line 4126
    .end local v1    # "record":Lcom/android/server/am/ActivityRecord;
    :cond_1a
    goto :goto_6

    .line 4128
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method lockAllProfileTasks(I)V
    .registers 11
    .param p1, "userId"    # I

    .line 923
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 925
    :try_start_5
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_d
    if-ltz v0, :cond_4d

    .line 926
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 927
    .local v1, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "stackNdx":I
    :goto_1d
    if-ltz v2, :cond_4a

    .line 928
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 929
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v4

    .line 930
    .local v4, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskRecord;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "taskNdx":I
    :goto_2d
    if-ltz v5, :cond_47

    .line 931
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    .line 936
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    invoke-direct {p0, v6, p1}, Lcom/android/server/am/ActivityStackSupervisor;->taskTopActivityIsUser(Lcom/android/server/am/TaskRecord;I)Z

    move-result v7

    if-eqz v7, :cond_44

    .line 937
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    iget v8, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v7, v8, p1}, Lcom/android/server/am/TaskChangeNotificationController;->notifyTaskProfileLocked(II)V
    :try_end_44
    .catchall {:try_start_5 .. :try_end_44} :catchall_54

    .line 930
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    :cond_44
    add-int/lit8 v5, v5, -0x1

    goto :goto_2d

    .line 927
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskRecord;>;"
    .end local v5    # "taskNdx":I
    :cond_47
    add-int/lit8 v2, v2, -0x1

    goto :goto_1d

    .line 925
    .end local v1    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v2    # "stackNdx":I
    :cond_4a
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 944
    .end local v0    # "displayNdx":I
    :cond_4d
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 945
    nop

    .line 946
    return-void

    .line 944
    :catchall_54
    move-exception v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method logStackState()V
    .registers 2

    .line 4812
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/am/ActivityMetricsLogger;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityMetricsLogger;->logWindowState()V

    .line 4813
    return-void
.end method

.method moveActivityToPinnedStackLocked(Lcom/android/server/am/ActivityRecord;Landroid/graphics/Rect;FLjava/lang/String;)V
    .registers 28
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "sourceHintBounds"    # Landroid/graphics/Rect;
    .param p3, "aspectRatio"    # F
    .param p4, "reason"    # Ljava/lang/String;

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    .line 3500
    iget-object v0, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 3502
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v11

    .line 3503
    .local v11, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v11}, Lcom/android/server/am/ActivityDisplay;->getPinnedStack()Lcom/android/server/am/PinnedActivityStack;

    move-result-object v0

    .line 3507
    .local v0, "stack":Lcom/android/server/am/PinnedActivityStack;
    const/4 v12, 0x0

    if-eqz v0, :cond_1b

    .line 3508
    invoke-virtual {v9, v0, v12}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/am/ActivityStack;Z)V

    .line 3512
    :cond_1b
    const/4 v1, 0x2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getActivityType()I

    move-result v2

    const/4 v13, 0x1

    invoke-virtual {v11, v1, v2, v13}, Lcom/android/server/am/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/android/server/am/PinnedActivityStack;

    .line 3516
    .end local v0    # "stack":Lcom/android/server/am/PinnedActivityStack;
    .local v15, "stack":Lcom/android/server/am/PinnedActivityStack;
    move/from16 v14, p3

    invoke-virtual {v15, v14}, Lcom/android/server/am/PinnedActivityStack;->getDefaultPictureInPictureBounds(F)Landroid/graphics/Rect;

    move-result-object v0

    move-object v8, v0

    .line 3519
    .local v8, "destBounds":Landroid/graphics/Rect;
    :try_start_2f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 3523
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v3
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_c2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v16, 0x0

    move-object v1, v9

    move-object v2, v15

    move-object/from16 v22, v8

    move/from16 v8, v16

    .end local v8    # "destBounds":Landroid/graphics/Rect;
    .local v22, "destBounds":Landroid/graphics/Rect;
    :try_start_43
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ActivityStackSupervisor;->resizeStackLocked(Lcom/android/server/am/ActivityStack;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)V

    .line 3527
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_4c
    .catchall {:try_start_43 .. :try_end_4c} :catchall_bb

    if-ne v1, v13, :cond_66

    .line 3529
    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object v14, v0

    move-object v1, v15

    .line 3529
    .end local v15    # "stack":Lcom/android/server/am/PinnedActivityStack;
    .local v1, "stack":Lcom/android/server/am/PinnedActivityStack;
    move-object/from16 v21, p4

    :try_start_5c
    invoke-virtual/range {v14 .. v21}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZZLjava/lang/String;)Z
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_60

    goto :goto_96

    .line 3553
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    :catchall_60
    move-exception v0

    move-object/from16 v2, p2

    move-object/from16 v3, v22

    goto :goto_c7

    .line 3540
    .end local v1    # "stack":Lcom/android/server/am/PinnedActivityStack;
    .restart local v0    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v15    # "stack":Lcom/android/server/am/PinnedActivityStack;
    :cond_66
    move-object v1, v15

    .line 3540
    .end local v15    # "stack":Lcom/android/server/am/PinnedActivityStack;
    .restart local v1    # "stack":Lcom/android/server/am/PinnedActivityStack;
    :try_start_67
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    iget v3, v10, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 3541
    invoke-virtual {v9, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskIdForUserLocked(I)I

    move-result v3

    iget-object v4, v10, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v10, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 3540
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)Lcom/android/server/am/TaskRecord;

    move-result-object v2

    .line 3542
    .local v2, "newTask":Lcom/android/server/am/TaskRecord;
    const v3, 0x7fffffff

    const-string/jumbo v4, "moveActivityToStack"

    invoke-virtual {v10, v2, v3, v4}, Lcom/android/server/am/ActivityRecord;->reparent(Lcom/android/server/am/TaskRecord;ILjava/lang/String;)V

    .line 3545
    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object v14, v2

    move-object v15, v1

    move-object/from16 v21, p4

    invoke-virtual/range {v14 .. v21}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZZLjava/lang/String;)Z

    .line 3551
    .end local v2    # "newTask":Lcom/android/server/am/TaskRecord;
    :goto_96
    iput-boolean v12, v10, Lcom/android/server/am/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z
    :try_end_98
    .catchall {:try_start_67 .. :try_end_98} :catchall_b5

    .line 3553
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 3554
    nop

    .line 3556
    const/4 v0, -0x1

    move-object/from16 v2, p2

    move-object/from16 v3, v22

    invoke-virtual {v1, v2, v3, v0, v13}, Lcom/android/server/am/PinnedActivityStack;->animateResizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)V

    .line 3563
    .end local v22    # "destBounds":Landroid/graphics/Rect;
    .local v3, "destBounds":Landroid/graphics/Rect;
    const/4 v0, 0x0

    invoke-virtual {v9, v0, v12, v12}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 3564
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 3566
    iget-object v0, v9, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-virtual {v0, v10}, Lcom/android/server/am/TaskChangeNotificationController;->notifyActivityPinned(Lcom/android/server/am/ActivityRecord;)V

    .line 3567
    return-void

    .line 3553
    .end local v3    # "destBounds":Landroid/graphics/Rect;
    .restart local v22    # "destBounds":Landroid/graphics/Rect;
    :catchall_b5
    move-exception v0

    move-object/from16 v2, p2

    move-object/from16 v3, v22

    .line 3553
    .end local v22    # "destBounds":Landroid/graphics/Rect;
    .restart local v3    # "destBounds":Landroid/graphics/Rect;
    goto :goto_c7

    .line 3553
    .end local v1    # "stack":Lcom/android/server/am/PinnedActivityStack;
    .end local v3    # "destBounds":Landroid/graphics/Rect;
    .restart local v15    # "stack":Lcom/android/server/am/PinnedActivityStack;
    .restart local v22    # "destBounds":Landroid/graphics/Rect;
    :catchall_bb
    move-exception v0

    move-object/from16 v2, p2

    move-object v1, v15

    move-object/from16 v3, v22

    .line 3553
    .end local v15    # "stack":Lcom/android/server/am/PinnedActivityStack;
    .end local v22    # "destBounds":Landroid/graphics/Rect;
    .restart local v1    # "stack":Lcom/android/server/am/PinnedActivityStack;
    .restart local v3    # "destBounds":Landroid/graphics/Rect;
    goto :goto_c7

    .line 3553
    .end local v1    # "stack":Lcom/android/server/am/PinnedActivityStack;
    .end local v3    # "destBounds":Landroid/graphics/Rect;
    .restart local v8    # "destBounds":Landroid/graphics/Rect;
    .restart local v15    # "stack":Lcom/android/server/am/PinnedActivityStack;
    :catchall_c2
    move-exception v0

    move-object/from16 v2, p2

    move-object v3, v8

    move-object v1, v15

    .line 3553
    .end local v8    # "destBounds":Landroid/graphics/Rect;
    .end local v15    # "stack":Lcom/android/server/am/PinnedActivityStack;
    .restart local v1    # "stack":Lcom/android/server/am/PinnedActivityStack;
    .restart local v3    # "destBounds":Landroid/graphics/Rect;
    :goto_c7
    iget-object v4, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method moveFocusableActivityStackToFrontLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z
    .registers 9
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 3571
    const/4 v0, 0x0

    if-eqz p1, :cond_40

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isFocusable()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_40

    .line 3577
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 3578
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 3579
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v2, :cond_34

    .line 3580
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "moveActivityStackToFront: invalid task or stack: r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3582
    return v0

    .line 3585
    :cond_34
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-ne v2, v0, :cond_3b

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    .line 3595
    :cond_3b
    invoke-virtual {v2, p2, v1}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;Lcom/android/server/am/TaskRecord;)V

    .line 3596
    const/4 v0, 0x1

    return v0

    .line 3574
    .end local v1    # "task":Lcom/android/server/am/TaskRecord;
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_40
    :goto_40
    return v0
.end method

.method moveHomeStackTaskToTop(Ljava/lang/String;)Z
    .registers 4
    .param p1, "reason"    # Ljava/lang/String;

    .line 774
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->moveHomeStackTaskToTop()V

    .line 776
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 777
    .local v0, "top":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_d

    .line 778
    const/4 v1, 0x0

    return v1

    .line 780
    :cond_d
    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->moveFocusableActivityStackToFrontLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    .line 781
    const/4 v1, 0x1

    return v1
.end method

.method moveHomeStackToFront(Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;

    .line 761
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 762
    return-void
.end method

.method moveRecentsStackToFront(Ljava/lang/String;)V
    .registers 5
    .param p1, "reason"    # Ljava/lang/String;

    .line 765
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityDisplay;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 767
    .local v0, "recentsStack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_f

    .line 768
    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 770
    :cond_f
    return-void
.end method

.method moveStackToDisplayLocked(IIZ)V
    .registers 10
    .param p1, "stackId"    # I
    .param p2, "displayId"    # I
    .param p3, "onTop"    # Z

    .line 3387
    invoke-virtual {p0, p2}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplayOrCreateLocked(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    .line 3388
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    if-eqz v0, :cond_6e

    .line 3392
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 3393
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v1, :cond_56

    .line 3398
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    .line 3399
    .local v2, "currentDisplay":Lcom/android/server/am/ActivityDisplay;
    if-eqz v2, :cond_39

    .line 3404
    iget v3, v2, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    if-eq v3, p2, :cond_1a

    .line 3409
    invoke-virtual {v1, v0, p3}, Lcom/android/server/am/ActivityStack;->reparent(Lcom/android/server/am/ActivityDisplay;Z)V

    .line 3411
    return-void

    .line 3405
    :cond_1a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying to move stack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to its current displayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3400
    :cond_39
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "moveStackToDisplayLocked: Stack with stack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " is not attached to any display."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3394
    .end local v2    # "currentDisplay":Lcom/android/server/am/ActivityDisplay;
    :cond_56
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moveStackToDisplayLocked: Unknown stackId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3389
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_6e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "moveStackToDisplayLocked: Unknown displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method moveTasksToFullscreenStackLocked(Lcom/android/server/am/ActivityStack;IZ)V
    .registers 6
    .param p1, "fromStack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "toDisplayId"    # I
    .param p3, "onTop"    # Z

    .line 3006
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/am/-$$Lambda$ActivityStackSupervisor$2EfPspQe887pLmnBFuHkVjyLdzE;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/am/-$$Lambda$ActivityStackSupervisor$2EfPspQe887pLmnBFuHkVjyLdzE;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStack;IZ)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    .line 3008
    return-void
.end method

.method moveTasksToFullscreenStackLocked(Lcom/android/server/am/ActivityStack;Z)V
    .registers 4
    .param p1, "fromStack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "onTop"    # Z

    .line 3002
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/am/ActivityStack;IZ)V

    .line 3003
    return-void
.end method

.method moveTopStackActivityToPinnedStackLocked(ILandroid/graphics/Rect;)Z
    .registers 9
    .param p1, "stackId"    # I
    .param p2, "destBounds"    # Landroid/graphics/Rect;

    .line 3472
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 3473
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_53

    .line 3478
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 3479
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    const/4 v2, 0x0

    if-nez v1, :cond_25

    .line 3480
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "moveTopStackActivityToPinnedStackLocked: No top running activity in stack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3482
    return v2

    .line 3485
    :cond_25
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mForceResizableActivities:Z

    if-nez v3, :cond_49

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->supportsPictureInPicture()Z

    move-result v3

    if-nez v3, :cond_49

    .line 3486
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "moveTopStackActivityToPinnedStackLocked: Picture-In-Picture not supported for  r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3489
    return v2

    .line 3492
    :cond_49
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string/jumbo v4, "moveTopActivityToPinnedStack"

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->moveActivityToPinnedStackLocked(Lcom/android/server/am/ActivityRecord;Landroid/graphics/Rect;FLjava/lang/String;)V

    .line 3494
    const/4 v2, 0x1

    return v2

    .line 3474
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_53
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "moveTopStackActivityToPinnedStackLocked: Unknown stackId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method notifyAppTransitionDone()V
    .registers 5

    .line 2913
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->continueUpdateRecentsHomeStackBounds()V

    .line 2914
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mResizingTasksDuringAnimation:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_b
    if-ltz v0, :cond_26

    .line 2915
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mResizingTasksDuringAnimation:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2916
    .local v1, "taskId":I
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(II)Lcom/android/server/am/TaskRecord;

    move-result-object v3

    .line 2917
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v3, :cond_23

    .line 2918
    invoke-virtual {v3, v2}, Lcom/android/server/am/TaskRecord;->setTaskDockedResizing(Z)V

    .line 2914
    .end local v1    # "taskId":I
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 2921
    .end local v0    # "i":I
    :cond_26
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mResizingTasksDuringAnimation:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 2922
    return-void
.end method

.method public onDisplayAdded(I)V
    .registers 6
    .param p1, "displayId"    # I

    .line 4496
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v2, 0x69

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4497
    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 6
    .param p1, "displayId"    # I

    .line 4508
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v2, 0x6a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4509
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 6
    .param p1, "displayId"    # I

    .line 4502
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v2, 0x6b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4503
    return-void
.end method

.method public onRecentTaskAdded(Lcom/android/server/am/TaskRecord;)V
    .registers 2
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .line 3366
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 3367
    return-void
.end method

.method public onRecentTaskRemoved(Lcom/android/server/am/TaskRecord;Z)V
    .registers 9
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "wasTrimmed"    # Z

    .line 3371
    if-eqz p2, :cond_e

    .line 3374
    iget v1, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "recent-task-trimmed"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->removeTaskByIdLocked(IZZZLjava/lang/String;)Z

    .line 3377
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->removedFromRecents()V

    .line 3378
    return-void
.end method

.method pauseBackStacks(ZLcom/android/server/am/ActivityRecord;Z)Z
    .registers 13
    .param p1, "userLeaving"    # Z
    .param p2, "resuming"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "dontWait"    # Z

    .line 1110
    const/4 v0, 0x0

    .line 1111
    .local v0, "notPauseInDock":Z
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->inSplitScreenWindowingMode()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_11

    .line 1112
    const-string/jumbo v1, "persist.sys.miui_optimization"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1115
    :cond_11
    const/4 v1, 0x0

    .line 1116
    .local v1, "someActivityPaused":Z
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    sub-int/2addr v3, v2

    .line 1116
    .local v3, "displayNdx":I
    :goto_19
    if-ltz v3, :cond_8d

    .line 1117
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityDisplay;

    .line 1118
    .local v4, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v4}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    .line 1118
    .local v5, "stackNdx":I
    :goto_28
    if-ltz v5, :cond_8a

    .line 1119
    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v6

    .line 1122
    .local v6, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v6}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v7

    if-nez v7, :cond_87

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getResumedActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    if-eqz v7, :cond_87

    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 1123
    invoke-static {v7, v6}, Lcom/android/server/am/ActivityStackSupervisorInjector;->notPauseAtFreeformMode(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityStack;)Z

    move-result v7

    if-nez v7, :cond_87

    if-eqz v0, :cond_66

    .line 1124
    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->inSplitScreenWindowingMode()Z

    move-result v7

    if-eqz v7, :cond_66

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->isActivityTypeRecents()Z

    move-result v7

    if-nez v7, :cond_66

    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 1125
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v7

    if-eqz v7, :cond_5e

    .line 1126
    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v7

    if-eqz v7, :cond_87

    :cond_5e
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 1127
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v7

    if-nez v7, :cond_87

    .line 1128
    :cond_66
    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getActivityType()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_71

    iget-boolean v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchRecentsFromGesture:Z

    if-nez v7, :cond_87

    .line 1130
    :cond_71
    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getResumedActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sget-object v8, Lcom/android/server/am/ActivityManagerServiceInjector;->sPackageHoldOn:Ljava/lang/String;

    .line 1131
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_87

    .line 1135
    const/4 v7, 0x0

    invoke-virtual {v6, p1, v7, p2, p3}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZLcom/android/server/am/ActivityRecord;Z)Z

    move-result v7

    or-int/2addr v1, v7

    .line 1118
    .end local v6    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_87
    add-int/lit8 v5, v5, -0x1

    goto :goto_28

    .line 1116
    .end local v4    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v5    # "stackNdx":I
    :cond_8a
    add-int/lit8 v3, v3, -0x1

    goto :goto_19

    .line 1140
    .end local v3    # "displayNdx":I
    :cond_8d
    return v1
.end method

.method prepareForShutdownLocked()V
    .registers 4

    .line 3719
    const/4 v0, 0x0

    .line 3719
    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 3720
    const-string/jumbo v1, "shutdown"

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->createSleepTokenLocked(Ljava/lang/String;I)Landroid/app/ActivityManagerInternal$SleepToken;

    .line 3719
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3722
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method final processStoppingActivitiesLocked(Lcom/android/server/am/ActivityRecord;ZZ)Ljava/util/ArrayList;
    .registers 12
    .param p1, "idleActivity"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "remove"    # Z
    .param p3, "processPausingActivities"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityRecord;",
            "ZZ)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    .line 4133
    const/4 v0, 0x0

    .line 4135
    .local v0, "stops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-direct {p0}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesVisible()Z

    move-result v1

    .line 4136
    .local v1, "nowVisible":Z
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "activityNdx":I
    :goto_d
    if-ltz v2, :cond_6a

    .line 4137
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 4138
    .local v3, "s":Lcom/android/server/am/ActivityRecord;
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 4141
    .local v4, "waitingVisible":Z
    if-eqz v4, :cond_2f

    if-eqz v1, :cond_2f

    .line 4142
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4143
    const/4 v4, 0x0

    .line 4144
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_2f

    .line 4151
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V

    .line 4154
    :cond_2f
    if-eqz p2, :cond_67

    .line 4155
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v5

    .line 4156
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v5, :cond_3c

    .line 4157
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v6

    goto :goto_42

    .line 4158
    :cond_3c
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDownLocked()Z

    move-result v6

    .line 4159
    .local v6, "shouldSleepOrShutDown":Z
    :goto_42
    if-eqz v4, :cond_46

    if-eqz v6, :cond_67

    .line 4160
    :cond_46
    if-nez p3, :cond_57

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v3, v7}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v7

    if-eqz v7, :cond_57

    .line 4163
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4164
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleTimeoutLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4165
    goto :goto_67

    .line 4169
    :cond_57
    if-nez v0, :cond_5f

    .line 4170
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v7

    .line 4172
    :cond_5f
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4173
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4136
    .end local v3    # "s":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "waitingVisible":Z
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v6    # "shouldSleepOrShutDown":Z
    :cond_67
    :goto_67
    add-int/lit8 v2, v2, -0x1

    goto :goto_d

    .line 4178
    .end local v2    # "activityNdx":I
    :cond_6a
    return-object v0
.end method

.method rankTaskLayersIfNeeded()V
    .registers 7

    .line 3972
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTaskLayersChanged:Z

    if-nez v0, :cond_5

    .line 3973
    return-void

    .line 3975
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTaskLayersChanged:Z

    .line 3976
    nop

    .local v0, "displayNdx":I
    :goto_9
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_31

    .line 3977
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 3978
    .local v1, "display":Lcom/android/server/am/ActivityDisplay;
    const/4 v2, 0x0

    .line 3979
    .local v2, "baseLayer":I
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "stackNdx":I
    :goto_20
    if-ltz v3, :cond_2e

    .line 3980
    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 3981
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v4, v2}, Lcom/android/server/am/ActivityStack;->rankTaskLayers(I)I

    move-result v5

    add-int/2addr v2, v5

    .line 3979
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    add-int/lit8 v3, v3, -0x1

    goto :goto_20

    .line 3976
    .end local v1    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v2    # "baseLayer":I
    .end local v3    # "stackNdx":I
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 3984
    .end local v0    # "displayNdx":I
    :cond_31
    return-void
.end method

.method final realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZ)Z
    .registers 43
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "andResume"    # Z
    .param p4, "checkConfig"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 1432
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->allPausedActivitiesComplete()Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_e

    .line 1439
    return v4

    .line 1442
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    .line 1443
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v12

    .line 1445
    .local v12, "stack":Lcom/android/server/am/ActivityStack;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->beginDeferResume()V

    .line 1448
    :try_start_19
    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 1451
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->startLaunchTickingLocked()V

    .line 1453
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/am/ActivityRecord;->setProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 1455
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/KeyguardController;->isKeyguardLocked()Z

    move-result v0
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_3d5

    if-eqz v0, :cond_37

    .line 1456
    :try_start_2c
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->notifyUnknownVisibilityLaunched()V

    goto :goto_37

    .line 1647
    :catchall_30
    move-exception v0

    move-object/from16 v34, v5

    move-object v5, v2

    move-object v2, v12

    goto/16 :goto_3da

    .line 1463
    :cond_37
    :goto_37
    const/4 v6, 0x1

    if-eqz p4, :cond_41

    .line 1467
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v0

    invoke-virtual {v1, v2, v0, v4, v6}, Lcom/android/server/am/ActivityStackSupervisor;->ensureVisibilityAndConfig(Lcom/android/server/am/ActivityRecord;IZZ)Z
    :try_end_41
    .catchall {:try_start_2c .. :try_end_41} :catchall_30

    .line 1471
    :cond_41
    :try_start_41
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    invoke-virtual {v0, v2, v6, v6}, Lcom/android/server/am/ActivityStack;->checkKeyguardVisibility(Lcom/android/server/am/ActivityRecord;ZZ)Z

    move-result v0
    :try_end_49
    .catchall {:try_start_41 .. :try_end_49} :catchall_3d5

    if-eqz v0, :cond_4e

    .line 1478
    :try_start_4b
    invoke-virtual {v2, v6}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_30

    .line 1482
    :cond_4e
    :try_start_4e
    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_52
    .catchall {:try_start_4e .. :try_end_52} :catchall_3d5

    if-eqz v0, :cond_5b

    :try_start_54
    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_5a
    .catchall {:try_start_54 .. :try_end_5a} :catchall_30

    goto :goto_5c

    :cond_5b
    const/4 v0, -0x1

    :goto_5c
    move v14, v0

    .line 1483
    .local v14, "applicationInfoUid":I
    :try_start_5d
    iget v0, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    iget v7, v3, Lcom/android/server/am/ProcessRecord;->userId:I
    :try_end_61
    .catchall {:try_start_5d .. :try_end_61} :catchall_3d5

    if-ne v0, v7, :cond_69

    :try_start_63
    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_67
    .catchall {:try_start_63 .. :try_end_67} :catchall_30

    if-eq v0, v14, :cond_a5

    .line 1484
    :cond_69
    :try_start_69
    const-string v0, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "User ID for activity changing for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " appInfo.uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " info.ai.uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " old="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " new="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    :cond_a5
    const/4 v0, 0x0

    iput-object v0, v3, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    .line 1492
    iget v7, v2, Lcom/android/server/am/ActivityRecord;->launchCount:I

    add-int/2addr v7, v6

    iput v7, v2, Lcom/android/server/am/ActivityRecord;->launchCount:I

    .line 1493
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iput-wide v7, v2, Lcom/android/server/am/ActivityRecord;->lastLaunchTime:J

    .line 1497
    iget-object v7, v3, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7
    :try_end_b9
    .catchall {:try_start_69 .. :try_end_b9} :catchall_3d5

    move v15, v7

    .line 1498
    .local v15, "idx":I
    if-gez v15, :cond_c1

    .line 1499
    :try_start_bc
    iget-object v7, v3, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c1
    .catchall {:try_start_bc .. :try_end_c1} :catchall_30

    .line 1501
    :cond_c1
    :try_start_c1
    iget-object v7, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7, v3, v6, v0}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 1502
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 1504
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v0

    move-object v11, v0

    .line 1505
    .local v11, "lockTaskController":Lcom/android/server/am/LockTaskController;
    iget v0, v5, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I
    :try_end_d4
    .catchall {:try_start_c1 .. :try_end_d4} :catchall_3d5

    const/4 v7, 0x3

    const/4 v8, 0x4

    const/4 v9, 0x2

    if-eq v0, v9, :cond_e7

    :try_start_d9
    iget v0, v5, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    if-eq v0, v8, :cond_e7

    iget v0, v5, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    if-ne v0, v7, :cond_ea

    .line 1508
    invoke-virtual {v11}, Lcom/android/server/am/LockTaskController;->getLockTaskModeState()I

    move-result v0
    :try_end_e5
    .catchall {:try_start_d9 .. :try_end_e5} :catchall_30

    if-ne v0, v6, :cond_ea

    .line 1510
    :cond_e7
    :try_start_e7
    invoke-virtual {v11, v5, v4, v4}, Lcom/android/server/am/LockTaskController;->startLockTaskMode(Lcom/android/server/am/TaskRecord;ZI)V
    :try_end_ea
    .catchall {:try_start_e7 .. :try_end_ea} :catchall_3d5

    .line 1514
    :cond_ea
    :try_start_ea
    iget-object v0, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_ec
    .catch Landroid/os/RemoteException; {:try_start_ea .. :try_end_ec} :catch_37e
    .catchall {:try_start_ea .. :try_end_ec} :catchall_3d5

    if-eqz v0, :cond_36e

    .line 1517
    const/4 v0, 0x0

    .line 1518
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    const/4 v10, 0x0

    .line 1519
    .local v10, "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    if-eqz p3, :cond_104

    .line 1522
    :try_start_f2
    iget-object v8, v2, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    move-object v0, v8

    .line 1523
    iget-object v8, v2, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;
    :try_end_f7
    .catch Landroid/os/RemoteException; {:try_start_f2 .. :try_end_f7} :catch_f9
    .catchall {:try_start_f2 .. :try_end_f7} :catchall_30

    move-object v10, v8

    goto :goto_104

    .line 1627
    .end local v0    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v10    # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    :catch_f9
    move-exception v0

    move-object/from16 v34, v5

    move-object/from16 v33, v11

    move/from16 v35, v14

    move-object v5, v2

    move-object v2, v12

    goto/16 :goto_387

    .line 1528
    .local v8, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .restart local v10    # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    :cond_104
    :goto_104
    move-object v8, v0

    const/4 v0, 0x5

    :try_start_106
    new-array v0, v0, [Ljava/lang/Object;

    iget v7, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v4

    .line 1531
    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v6

    iget v7, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v9

    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const/16 v17, 0x3

    aput-object v7, v0, v17

    .line 1532
    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;
    :try_end_12a
    .catch Landroid/os/RemoteException; {:try_start_106 .. :try_end_12a} :catch_37e
    .catchall {:try_start_106 .. :try_end_12a} :catchall_3d5

    if-eqz v7, :cond_131

    :try_start_12c
    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v7, v7, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_130
    .catch Landroid/os/RemoteException; {:try_start_12c .. :try_end_130} :catch_f9
    .catchall {:try_start_12c .. :try_end_130} :catchall_30

    goto :goto_132

    :cond_131
    move v7, v4

    :goto_132
    :try_start_132
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v16, 0x4

    aput-object v7, v0, v16

    .line 1528
    const/16 v7, 0x7536

    invoke-static {v7, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1533
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isActivityTypeHome()Z

    move-result v0
    :try_end_143
    .catch Landroid/os/RemoteException; {:try_start_132 .. :try_end_143} :catch_37e
    .catchall {:try_start_132 .. :try_end_143} :catchall_3d5

    if-eqz v0, :cond_153

    .line 1535
    :try_start_145
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    iget-object v7, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v7, v0, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;
    :try_end_153
    .catch Landroid/os/RemoteException; {:try_start_145 .. :try_end_153} :catch_f9
    .catchall {:try_start_145 .. :try_end_153} :catchall_30

    .line 1537
    :cond_153
    :try_start_153
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v4}, Lcom/android/server/am/ActivityManagerService;->notifyPackageUse(Ljava/lang/String;I)V

    .line 1539
    iput-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 1540
    iput-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 1541
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getAppWarningsLocked()Lcom/android/server/am/AppWarnings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/am/AppWarnings;->onStartActivity(Lcom/android/server/am/ActivityRecord;)V

    .line 1542
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService;->showAskCompatModeDialogLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1543
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v7}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    iput-object v0, v2, Lcom/android/server/am/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    .line 1544
    const/4 v7, 0x0

    .line 1545
    .local v7, "profilerInfo":Landroid/app/ProfilerInfo;
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProfileApp:Ljava/lang/String;
    :try_end_185
    .catch Landroid/os/RemoteException; {:try_start_153 .. :try_end_185} :catch_37e
    .catchall {:try_start_153 .. :try_end_185} :catchall_3d5

    if-eqz v0, :cond_1c5

    :try_start_187
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProfileApp:Ljava/lang/String;

    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c5

    .line 1546
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_19f

    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    if-ne v0, v3, :cond_1c5

    .line 1547
    :cond_19f
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    .line 1548
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProfilerInfo:Landroid/app/ProfilerInfo;

    move-object v4, v0

    .line 1549
    .local v4, "profilerInfoSvc":Landroid/app/ProfilerInfo;
    if-eqz v4, :cond_1c5

    iget-object v0, v4, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    if-eqz v0, :cond_1c5

    .line 1550
    iget-object v0, v4, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;
    :try_end_1b0
    .catch Landroid/os/RemoteException; {:try_start_187 .. :try_end_1b0} :catch_f9
    .catchall {:try_start_187 .. :try_end_1b0} :catchall_30

    if-eqz v0, :cond_1bf

    .line 1552
    :try_start_1b2
    iget-object v0, v4, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, v4, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;
    :try_end_1ba
    .catch Ljava/io/IOException; {:try_start_1b2 .. :try_end_1ba} :catch_1bb
    .catch Landroid/os/RemoteException; {:try_start_1b2 .. :try_end_1ba} :catch_f9
    .catchall {:try_start_1b2 .. :try_end_1ba} :catchall_30

    .line 1555
    goto :goto_1bf

    .line 1553
    :catch_1bb
    move-exception v0

    .line 1554
    .local v0, "e":Ljava/io/IOException;
    :try_start_1bc
    invoke-virtual {v4}, Landroid/app/ProfilerInfo;->closeFd()V

    .line 1558
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1bf
    :goto_1bf
    new-instance v0, Landroid/app/ProfilerInfo;

    invoke-direct {v0, v4}, Landroid/app/ProfilerInfo;-><init>(Landroid/app/ProfilerInfo;)V
    :try_end_1c4
    .catch Landroid/os/RemoteException; {:try_start_1bc .. :try_end_1c4} :catch_f9
    .catchall {:try_start_1bc .. :try_end_1c4} :catchall_30

    .line 1558
    .end local v4    # "profilerInfoSvc":Landroid/app/ProfilerInfo;
    .end local v7    # "profilerInfo":Landroid/app/ProfilerInfo;
    .local v0, "profilerInfo":Landroid/app/ProfilerInfo;
    goto :goto_1c6

    .line 1563
    .end local v0    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local v7    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_1c5
    move-object v0, v7

    .line 1563
    .end local v7    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local v0    # "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_1c6
    :try_start_1c6
    iput-boolean v6, v3, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    .line 1564
    iput-boolean v6, v3, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    .line 1565
    iget-object v4, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v4, Lcom/android/server/am/ActivityManagerService;->mTopProcessState:I

    invoke-virtual {v3, v4}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    .line 1570
    new-instance v4, Landroid/util/MergedConfiguration;

    iget-object v7, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1571
    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-direct {v4, v7, v6}, Landroid/util/MergedConfiguration;-><init>(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 1572
    .local v4, "mergedConfiguration":Landroid/util/MergedConfiguration;
    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityRecord;->setLastReportedConfiguration(Landroid/util/MergedConfiguration;)V

    .line 1575
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ActivityManagerServiceInjector;->onForegroundActivityChangedLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1577
    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    invoke-direct {v1, v6, v7}, Lcom/android/server/am/ActivityStackSupervisor;->logIfTransactionTooLarge(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 1581
    iget-object v6, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-static {v6, v7}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v6

    .line 1583
    .local v6, "clientTransaction":Landroid/app/servertransaction/ClientTransaction;
    new-instance v7, Landroid/content/Intent;

    iget-object v9, v2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1584
    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v18

    iget-object v9, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 1587
    invoke-virtual {v4}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v20

    .line 1588
    invoke-virtual {v4}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v21

    move-object/from16 v32, v4

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;
    :try_end_20e
    .catch Landroid/os/RemoteException; {:try_start_1c6 .. :try_end_20e} :catch_37e
    .catchall {:try_start_1c6 .. :try_end_20e} :catchall_3d5

    .line 1588
    .end local v4    # "mergedConfiguration":Landroid/util/MergedConfiguration;
    .local v32, "mergedConfiguration":Landroid/util/MergedConfiguration;
    move-object/from16 v33, v11

    :try_start_210
    iget-object v11, v2, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 1588
    .end local v11    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .local v33, "lockTaskController":Lcom/android/server/am/LockTaskController;
    iget-object v13, v5, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;
    :try_end_214
    .catch Landroid/os/RemoteException; {:try_start_210 .. :try_end_214} :catch_366
    .catchall {:try_start_210 .. :try_end_214} :catchall_3d5

    move-object/from16 v34, v5

    :try_start_216
    iget v5, v3, Lcom/android/server/am/ProcessRecord;->repProcState:I
    :try_end_218
    .catch Landroid/os/RemoteException; {:try_start_216 .. :try_end_218} :catch_360
    .catchall {:try_start_216 .. :try_end_218} :catchall_35b

    .line 1588
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    .local v34, "task":Lcom/android/server/am/TaskRecord;
    move/from16 v35, v14

    :try_start_21a
    iget-object v14, v2, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;
    :try_end_21c
    .catch Landroid/os/RemoteException; {:try_start_21a .. :try_end_21c} :catch_357
    .catchall {:try_start_21a .. :try_end_21c} :catchall_35b

    .line 1588
    .end local v14    # "applicationInfoUid":I
    .local v35, "applicationInfoUid":I
    move-object/from16 v36, v12

    :try_start_21e
    iget-object v12, v2, Lcom/android/server/am/ActivityRecord;->persistentState:Landroid/os/PersistableBundle;
    :try_end_220
    .catch Landroid/os/RemoteException; {:try_start_21e .. :try_end_220} :catch_352
    .catchall {:try_start_21e .. :try_end_220} :catchall_34c

    .line 1588
    .end local v12    # "stack":Lcom/android/server/am/ActivityStack;
    .local v36, "stack":Lcom/android/server/am/ActivityStack;
    :try_start_220
    iget-object v2, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1590
    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->isNextTransitionForward()Z

    move-result v30

    .line 1583
    move-object/from16 v17, v7

    move-object/from16 v19, v9

    move-object/from16 v22, v4

    move-object/from16 v23, v11

    move-object/from16 v24, v13

    move/from16 v25, v5

    move-object/from16 v26, v14

    move-object/from16 v27, v12

    move-object/from16 v28, v8

    move-object/from16 v29, v10

    move-object/from16 v31, v0

    invoke-static/range {v17 .. v31}, Landroid/app/servertransaction/LaunchActivityItem;->obtain(Landroid/content/Intent;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;ZLandroid/app/ProfilerInfo;)Landroid/app/servertransaction/LaunchActivityItem;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_243
    .catch Landroid/os/RemoteException; {:try_start_220 .. :try_end_243} :catch_346
    .catchall {:try_start_220 .. :try_end_243} :catchall_340

    .line 1595
    if-eqz p3, :cond_25e

    .line 1596
    :try_start_245
    iget-object v2, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->isNextTransitionForward()Z

    move-result v2

    invoke-static {v2}, Landroid/app/servertransaction/ResumeActivityItem;->obtain(Z)Landroid/app/servertransaction/ResumeActivityItem;

    move-result-object v2
    :try_end_24f
    .catch Landroid/os/RemoteException; {:try_start_245 .. :try_end_24f} :catch_257
    .catchall {:try_start_245 .. :try_end_24f} :catchall_250

    .line 1596
    .local v2, "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    goto :goto_262

    .line 1647
    .end local v0    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v2    # "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    .end local v6    # "clientTransaction":Landroid/app/servertransaction/ClientTransaction;
    .end local v8    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v10    # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    .end local v15    # "idx":I
    .end local v32    # "mergedConfiguration":Landroid/util/MergedConfiguration;
    .end local v33    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .end local v35    # "applicationInfoUid":I
    :catchall_250
    move-exception v0

    move-object/from16 v2, v36

    move-object/from16 v5, p1

    goto/16 :goto_3da

    .line 1627
    .restart local v15    # "idx":I
    .restart local v33    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .restart local v35    # "applicationInfoUid":I
    :catch_257
    move-exception v0

    move-object/from16 v2, v36

    move-object/from16 v5, p1

    goto/16 :goto_387

    .line 1598
    .restart local v0    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local v6    # "clientTransaction":Landroid/app/servertransaction/ClientTransaction;
    .restart local v8    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .restart local v10    # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    .restart local v32    # "mergedConfiguration":Landroid/util/MergedConfiguration;
    :cond_25e
    :try_start_25e
    invoke-static {}, Landroid/app/servertransaction/PauseActivityItem;->obtain()Landroid/app/servertransaction/PauseActivityItem;

    move-result-object v2

    .line 1600
    .restart local v2    # "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    :goto_262
    invoke-virtual {v6, v2}, Landroid/app/servertransaction/ClientTransaction;->setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V

    .line 1603
    iget-object v4, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getLifecycleManager()Lcom/android/server/am/ClientLifecycleManager;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/server/am/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 1606
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I
    :try_end_272
    .catch Landroid/os/RemoteException; {:try_start_25e .. :try_end_272} :catch_346
    .catchall {:try_start_25e .. :try_end_272} :catchall_340

    const/4 v5, 0x2

    and-int/2addr v4, v5

    if-eqz v4, :cond_2e2

    :try_start_276
    iget-object v4, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mHasHeavyWeightFeature:Z

    if-eqz v4, :cond_2e2

    .line 1612
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v5, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e2

    .line 1613
    iget-object v4, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;
    :try_end_28c
    .catch Landroid/os/RemoteException; {:try_start_276 .. :try_end_28c} :catch_2db
    .catchall {:try_start_276 .. :try_end_28c} :catchall_2d4

    if-eqz v4, :cond_2b6

    :try_start_28e
    iget-object v4, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    if-eq v4, v3, :cond_2b6

    .line 1615
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Starting new heavy weight process "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " when already running "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b6
    .catch Landroid/os/RemoteException; {:try_start_28e .. :try_end_2b6} :catch_257
    .catchall {:try_start_28e .. :try_end_2b6} :catchall_250

    .line 1619
    :cond_2b6
    :try_start_2b6
    iget-object v4, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v3, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    .line 1620
    iget-object v4, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v5, 0x18

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4
    :try_end_2c4
    .catch Landroid/os/RemoteException; {:try_start_2b6 .. :try_end_2c4} :catch_2db
    .catchall {:try_start_2b6 .. :try_end_2c4} :catchall_2d4

    .line 1622
    .local v4, "msg":Landroid/os/Message;
    move-object/from16 v5, p1

    :try_start_2c6
    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1623
    iget-object v7, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v7, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2cf
    .catch Landroid/os/RemoteException; {:try_start_2c6 .. :try_end_2cf} :catch_2d2
    .catchall {:try_start_2c6 .. :try_end_2cf} :catchall_2d0

    .line 1623
    .end local v0    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v2    # "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    .end local v4    # "msg":Landroid/os/Message;
    .end local v6    # "clientTransaction":Landroid/app/servertransaction/ClientTransaction;
    .end local v8    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v10    # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    .end local v32    # "mergedConfiguration":Landroid/util/MergedConfiguration;
    goto :goto_2e4

    .line 1647
    .end local v15    # "idx":I
    .end local v33    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .end local v35    # "applicationInfoUid":I
    :catchall_2d0
    move-exception v0

    goto :goto_2d7

    .line 1627
    .restart local v15    # "idx":I
    .restart local v33    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .restart local v35    # "applicationInfoUid":I
    :catch_2d2
    move-exception v0

    goto :goto_2de

    .line 1647
    .end local v15    # "idx":I
    .end local v33    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .end local v35    # "applicationInfoUid":I
    :catchall_2d4
    move-exception v0

    move-object/from16 v5, p1

    .line 1647
    .end local v36    # "stack":Lcom/android/server/am/ActivityStack;
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    :goto_2d7
    move-object/from16 v2, v36

    goto/16 :goto_3da

    .line 1627
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v15    # "idx":I
    .restart local v33    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .restart local v35    # "applicationInfoUid":I
    .restart local v36    # "stack":Lcom/android/server/am/ActivityStack;
    :catch_2db
    move-exception v0

    move-object/from16 v5, p1

    .line 1627
    .end local v36    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :goto_2de
    move-object/from16 v2, v36

    goto/16 :goto_387

    .line 1645
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v36    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2e2
    move-object/from16 v5, p1

    .line 1647
    .end local v15    # "idx":I
    .end local v33    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .end local v35    # "applicationInfoUid":I
    :goto_2e4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->endDeferResume()V

    .line 1648
    nop

    .line 1650
    const/4 v2, 0x0

    iput-boolean v2, v5, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    .line 1651
    move-object/from16 v2, v36

    invoke-virtual {v2, v5}, Lcom/android/server/am/ActivityStack;->updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    .line 1651
    .end local v36    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_30e

    .line 1652
    const-string v0, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Activity "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " being launched, but already in LRU list"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    :cond_30e
    if-eqz p3, :cond_31a

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->readyToResume()Z

    move-result v0

    if-eqz v0, :cond_31a

    .line 1660
    invoke-virtual {v2, v5}, Lcom/android/server/am/ActivityStack;->minimalResumeActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_322

    .line 1667
    :cond_31a
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string/jumbo v4, "realStartActivityLocked"

    invoke-virtual {v5, v0, v4}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 1674
    :goto_322
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v0

    if-eqz v0, :cond_331

    .line 1675
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getActivityStartController()Lcom/android/server/am/ActivityStartController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStartController;->startSetupActivity()V

    .line 1680
    :cond_331
    iget-object v0, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_33e

    .line 1681
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v4, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActiveServices;->updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1684
    :cond_33e
    const/4 v4, 0x1

    return v4

    .line 1647
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v36    # "stack":Lcom/android/server/am/ActivityStack;
    :catchall_340
    move-exception v0

    move-object/from16 v2, v36

    move-object/from16 v5, p1

    goto :goto_350

    .line 1627
    .restart local v15    # "idx":I
    .restart local v33    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .restart local v35    # "applicationInfoUid":I
    :catch_346
    move-exception v0

    move-object/from16 v2, v36

    move-object/from16 v5, p1

    goto :goto_356

    .line 1647
    .end local v15    # "idx":I
    .end local v33    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .end local v35    # "applicationInfoUid":I
    :catchall_34c
    move-exception v0

    move-object v5, v2

    move-object/from16 v2, v36

    .line 1647
    .end local v36    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :goto_350
    goto/16 :goto_3da

    .line 1627
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v15    # "idx":I
    .restart local v33    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .restart local v35    # "applicationInfoUid":I
    .restart local v36    # "stack":Lcom/android/server/am/ActivityStack;
    :catch_352
    move-exception v0

    move-object v5, v2

    move-object/from16 v2, v36

    .line 1627
    .end local v36    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :goto_356
    goto :goto_387

    .line 1627
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v12    # "stack":Lcom/android/server/am/ActivityStack;
    :catch_357
    move-exception v0

    move-object v5, v2

    move-object v2, v12

    .line 1627
    .end local v12    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    goto :goto_387

    .line 1647
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v15    # "idx":I
    .end local v33    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .end local v35    # "applicationInfoUid":I
    .restart local v12    # "stack":Lcom/android/server/am/ActivityStack;
    :catchall_35b
    move-exception v0

    move-object v5, v2

    move-object v2, v12

    .line 1647
    .end local v12    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    goto/16 :goto_3da

    .line 1627
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v12    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v14    # "applicationInfoUid":I
    .restart local v15    # "idx":I
    .restart local v33    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    :catch_360
    move-exception v0

    move-object v5, v2

    move-object v2, v12

    move/from16 v35, v14

    .line 1627
    .end local v12    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v14    # "applicationInfoUid":I
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v35    # "applicationInfoUid":I
    goto :goto_387

    .line 1627
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v34    # "task":Lcom/android/server/am/TaskRecord;
    .end local v35    # "applicationInfoUid":I
    .restart local v5    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v12    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v14    # "applicationInfoUid":I
    :catch_366
    move-exception v0

    move-object/from16 v34, v5

    move/from16 v35, v14

    move-object v5, v2

    move-object v2, v12

    .line 1627
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    .end local v12    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v14    # "applicationInfoUid":I
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v34    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v35    # "applicationInfoUid":I
    goto :goto_387

    .line 1515
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v33    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .end local v34    # "task":Lcom/android/server/am/TaskRecord;
    .end local v35    # "applicationInfoUid":I
    .restart local v5    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v11    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .restart local v12    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v14    # "applicationInfoUid":I
    :cond_36e
    move-object/from16 v34, v5

    move-object/from16 v33, v11

    move/from16 v35, v14

    move-object v5, v2

    move-object v2, v12

    .line 1515
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    .end local v11    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .end local v12    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v14    # "applicationInfoUid":I
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v33    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .restart local v34    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v35    # "applicationInfoUid":I
    :try_start_376
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
    :try_end_37c
    .catch Landroid/os/RemoteException; {:try_start_376 .. :try_end_37c} :catch_37c
    .catchall {:try_start_376 .. :try_end_37c} :catchall_3d3

    .line 1627
    :catch_37c
    move-exception v0

    goto :goto_387

    .line 1627
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v33    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .end local v34    # "task":Lcom/android/server/am/TaskRecord;
    .end local v35    # "applicationInfoUid":I
    .restart local v5    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v11    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .restart local v12    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v14    # "applicationInfoUid":I
    :catch_37e
    move-exception v0

    move-object/from16 v34, v5

    move-object/from16 v33, v11

    move/from16 v35, v14

    move-object v5, v2

    move-object v2, v12

    .line 1628
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    .end local v11    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .end local v12    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v14    # "applicationInfoUid":I
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v33    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .restart local v34    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v35    # "applicationInfoUid":I
    :goto_387
    :try_start_387
    iget-boolean v4, v5, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    if-eqz v4, :cond_3c8

    .line 1631
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Second failure launching "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1632
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", giving up"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1631
    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1634
    iget-object v4, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1635
    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "2nd-crash"

    const/4 v11, 0x0

    move-object v6, v2

    move-object/from16 v4, v33

    .line 1635
    .end local v33    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .local v4, "lockTaskController":Lcom/android/server/am/LockTaskController;
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z
    :try_end_3c2
    .catchall {:try_start_387 .. :try_end_3c2} :catchall_3d3

    .line 1637
    nop

    .line 1647
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->endDeferResume()V

    .line 1637
    const/4 v6, 0x0

    return v6

    .line 1642
    .end local v4    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .restart local v33    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    :cond_3c8
    move-object/from16 v4, v33

    .line 1642
    .end local v33    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .restart local v4    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    const/4 v6, 0x1

    :try_start_3cb
    iput-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    .line 1643
    iget-object v6, v3, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1644
    throw v0
    :try_end_3d3
    .catchall {:try_start_3cb .. :try_end_3d3} :catchall_3d3

    .line 1647
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v4    # "lockTaskController":Lcom/android/server/am/LockTaskController;
    .end local v15    # "idx":I
    .end local v35    # "applicationInfoUid":I
    :catchall_3d3
    move-exception v0

    goto :goto_3da

    .line 1647
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v34    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v5    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v12    # "stack":Lcom/android/server/am/ActivityStack;
    :catchall_3d5
    move-exception v0

    move-object/from16 v34, v5

    move-object v5, v2

    move-object v2, v12

    .line 1647
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    .end local v12    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v34    # "task":Lcom/android/server/am/TaskRecord;
    :goto_3da
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->endDeferResume()V

    throw v0
.end method

.method registerMiuiAppTransitionAnimationHelper(Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;)V
    .registers 6
    .param p1, "helper"    # Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    .line 5259
    if-nez p1, :cond_3

    .line 5260
    return-void

    .line 5263
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 5264
    invoke-direct {p0}, Lcom/android/server/am/ActivityStackSupervisor;->unlinkToDeathMiuiAnimationHelper()V

    .line 5266
    new-instance v1, Lcom/android/server/am/ActivityStackSupervisor$AnimationHelperDeathRecipient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/ActivityStackSupervisor$AnimationHelperDeathRecipient;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStackSupervisor$1;)V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mAnimationHelperDeathRecipient:Lcom/android/server/am/ActivityStackSupervisor$AnimationHelperDeathRecipient;
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_3e

    .line 5268
    :try_start_14
    invoke-interface {p1}, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mAnimationHelperDeathRecipient:Lcom/android/server/am/ActivityStackSupervisor$AnimationHelperDeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1e} :catch_31
    .catchall {:try_start_14 .. :try_end_1e} :catchall_3e

    .line 5272
    nop

    .line 5274
    :try_start_1f
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mMiuiAppTransitionAnimationHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    .line 5275
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_3e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 5277
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_30

    .line 5278
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mMiuiAppTransitionAnimationHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->setMiuiAppTransitionAnimationHelper(Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;)V

    .line 5280
    :cond_30
    return-void

    .line 5269
    :catch_31
    move-exception v1

    .line 5270
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_32
    const-string v2, "ActivityManager"

    const-string v3, "MiuiAppTransitionAnimationHelper linkToDeath failed."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5271
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_32 .. :try_end_3a} :catchall_3e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 5275
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_3e
    move-exception v1

    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method releaseSomeActivitiesLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .registers 13
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 4008
    const/4 v0, 0x0

    .line 4010
    .local v0, "firstTask":Lcom/android/server/am/TaskRecord;
    const/4 v1, 0x0

    .line 4012
    .local v1, "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/TaskRecord;>;"
    const/4 v2, 0x0

    move-object v3, v0

    move v0, v2

    .local v0, "i":I
    .local v3, "firstTask":Lcom/android/server/am/TaskRecord;
    :goto_5
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_5d

    .line 4013
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 4017
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_5c

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v5

    if-eqz v5, :cond_24

    goto :goto_5c

    .line 4023
    :cond_24
    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v5, :cond_59

    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-eqz v5, :cond_59

    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->haveState:Z

    if-eqz v5, :cond_59

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 4024
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 4026
    goto :goto_59

    .line 4029
    :cond_3f
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    .line 4030
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v5, :cond_59

    .line 4033
    if-nez v3, :cond_49

    .line 4034
    move-object v3, v5

    goto :goto_59

    .line 4035
    :cond_49
    if-eq v3, v5, :cond_59

    .line 4036
    if-nez v1, :cond_56

    .line 4037
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v6

    .line 4038
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4040
    :cond_56
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4012
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    :cond_59
    :goto_59
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 4019
    .restart local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_5c
    :goto_5c
    return-void

    .line 4044
    .end local v0    # "i":I
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_5d
    if-nez v1, :cond_60

    .line 4046
    return-void

    .line 4050
    :cond_60
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 4051
    .local v0, "numDisplays":I
    move v4, v2

    .local v4, "displayNdx":I
    :goto_67
    if-ge v4, v0, :cond_89

    .line 4052
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityDisplay;

    .line 4053
    .local v5, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v5}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v6

    .line 4055
    .local v6, "stackCount":I
    move v7, v2

    .local v7, "stackNdx":I
    :goto_76
    if-ge v7, v6, :cond_86

    .line 4056
    invoke-virtual {v5, v7}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v8

    .line 4058
    .local v8, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v8, p1, v1, p2}, Lcom/android/server/am/ActivityStack;->releaseSomeActivitiesLocked(Lcom/android/server/am/ProcessRecord;Landroid/util/ArraySet;Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_83

    .line 4059
    return-void

    .line 4055
    .end local v8    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_83
    add-int/lit8 v7, v7, 0x1

    goto :goto_76

    .line 4051
    .end local v5    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v6    # "stackCount":I
    .end local v7    # "stackNdx":I
    :cond_86
    add-int/lit8 v4, v4, 0x1

    goto :goto_67

    .line 4063
    .end local v4    # "displayNdx":I
    :cond_89
    return-void
.end method

.method removeSleepTimeouts()V
    .registers 3

    .line 4485
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    .line 4486
    return-void
.end method

.method removeStack(Lcom/android/server/am/ActivityStack;)V
    .registers 4
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .line 3205
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/am/-$$Lambda$ActivityStackSupervisor$x0Vocp-itdO3YPTBM6d_k8Yij7g;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/-$$Lambda$ActivityStackSupervisor$x0Vocp-itdO3YPTBM6d_k8Yij7g;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStack;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    .line 3206
    return-void
.end method

.method varargs removeStacksInWindowingModes([I)V
    .registers 4
    .param p1, "windowingModes"    # [I

    .line 3213
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 3214
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityDisplay;->removeStacksInWindowingModes([I)V

    .line 3213
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3216
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method varargs removeStacksWithActivityTypes([I)V
    .registers 4
    .param p1, "activityTypes"    # [I

    .line 3219
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 3220
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityDisplay;->removeStacksWithActivityTypes([I)V

    .line 3219
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3222
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method removeTaskByIdLocked(IZZLjava/lang/String;)Z
    .registers 11
    .param p1, "taskId"    # I
    .param p2, "killProcess"    # Z
    .param p3, "removeFromRecents"    # Z
    .param p4, "reason"    # Ljava/lang/String;

    .line 3229
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->removeTaskByIdLocked(IZZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method removeTaskByIdLocked(IZZZLjava/lang/String;)Z
    .registers 10
    .param p1, "taskId"    # I
    .param p2, "killProcess"    # Z
    .param p3, "removeFromRecents"    # Z
    .param p4, "pauseImmediately"    # Z
    .param p5, "reason"    # Ljava/lang/String;

    .line 3245
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(II)Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 3246
    .local v1, "tr":Lcom/android/server/am/TaskRecord;
    if-eqz v1, :cond_21

    .line 3247
    invoke-virtual {v1, p4, p5}, Lcom/android/server/am/TaskRecord;->removeTaskActivitiesLocked(ZLjava/lang/String;)V

    .line 3248
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/server/am/ActivityStackSupervisor;->cleanUpRemovedTaskLocked(Lcom/android/server/am/TaskRecord;ZZ)V

    .line 3249
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/am/LockTaskController;->clearLockedTask(Lcom/android/server/am/TaskRecord;)V

    .line 3250
    iget-boolean v2, v1, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    if-eqz v2, :cond_20

    .line 3251
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 3253
    :cond_20
    return v0

    .line 3255
    :cond_21
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request to remove task ignored for non-existent task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3256
    const/4 v0, 0x0

    return v0
.end method

.method removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 4475
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(ILjava/lang/Object;)V

    .line 4476
    return-void
.end method

.method removeUserLocked(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 2253
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2254
    return-void
.end method

.method reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V
    .registers 13
    .param p1, "timeout"    # Z
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "thisTime"    # J
    .param p5, "totalTime"    # J

    .line 1248
    const/4 v0, 0x0

    .line 1249
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_32

    .line 1250
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/WaitResult;

    .line 1251
    .local v2, "w":Landroid/app/WaitResult;
    iget-object v3, v2, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    if-nez v3, :cond_2f

    .line 1252
    const/4 v0, 0x1

    .line 1253
    iput-boolean p1, v2, Landroid/app/WaitResult;->timeout:Z

    .line 1254
    if-eqz p2, :cond_2b

    .line 1255
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v2, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 1257
    :cond_2b
    iput-wide p3, v2, Landroid/app/WaitResult;->thisTime:J

    .line 1258
    iput-wide p5, v2, Landroid/app/WaitResult;->totalTime:J

    .line 1249
    .end local v2    # "w":Landroid/app/WaitResult;
    :cond_2f
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1262
    .end local v1    # "i":I
    :cond_32
    if-eqz v0, :cond_39

    .line 1263
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1265
    :cond_39
    return-void
.end method

.method reportActivityVisibleLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 1194
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->sendWaitingVisibleReportLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1195
    return-void
.end method

.method reportResumedActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
    .registers 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 3873
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3875
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/am/ActivityStackSupervisorInjector;->updateScreenPaperMode(Ljava/lang/String;)V

    .line 3877
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 3878
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1a

    .line 3879
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/am/ActivityManagerService;->updateUsageStats(Lcom/android/server/am/ActivityRecord;Z)V

    .line 3881
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesComplete()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2b

    .line 3882
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v3, v3}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 3883
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 3884
    return v2

    .line 3886
    :cond_2b
    return v3
.end method

.method reportWaitingActivityLaunchedIfNeeded(Lcom/android/server/am/ActivityRecord;I)V
    .registers 8
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "result"    # I

    .line 1217
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1218
    return-void

    .line 1221
    :cond_9
    const/4 v0, 0x3

    if-eq p2, v0, :cond_10

    const/4 v1, 0x2

    if-eq p2, v1, :cond_10

    .line 1222
    return-void

    .line 1225
    :cond_10
    const/4 v1, 0x0

    .line 1227
    .local v1, "changed":Z
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_19
    if-ltz v2, :cond_33

    .line 1228
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/WaitResult;

    .line 1229
    .local v3, "w":Landroid/app/WaitResult;
    iget-object v4, v3, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    if-nez v4, :cond_30

    .line 1230
    const/4 v1, 0x1

    .line 1231
    iput p2, v3, Landroid/app/WaitResult;->result:I

    .line 1235
    if-ne p2, v0, :cond_30

    .line 1236
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iput-object v4, v3, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 1227
    .end local v3    # "w":Landroid/app/WaitResult;
    :cond_30
    add-int/lit8 v2, v2, -0x1

    goto :goto_19

    .line 1241
    .end local v2    # "i":I
    :cond_33
    if-eqz v1, :cond_3a

    .line 1242
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1244
    :cond_3a
    return-void
.end method

.method resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .registers 15
    .param p1, "dockedBounds"    # Landroid/graphics/Rect;
    .param p2, "tempDockedTaskBounds"    # Landroid/graphics/Rect;
    .param p3, "tempDockedTaskInsetBounds"    # Landroid/graphics/Rect;
    .param p4, "tempOtherTaskBounds"    # Landroid/graphics/Rect;
    .param p5, "tempOtherTaskInsetBounds"    # Landroid/graphics/Rect;
    .param p6, "preserveWindows"    # Z

    .line 3035
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    .line 3038
    return-void
.end method

.method resizePinnedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 11
    .param p1, "pinnedBounds"    # Landroid/graphics/Rect;
    .param p2, "tempPinnedTaskBounds"    # Landroid/graphics/Rect;

    .line 3128
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getPinnedStack()Lcom/android/server/am/PinnedActivityStack;

    move-result-object v0

    .line 3129
    .local v0, "stack":Lcom/android/server/am/PinnedActivityStack;
    if-nez v0, :cond_13

    .line 3130
    const-string v1, "ActivityManager"

    const-string/jumbo v2, "resizePinnedStackLocked: pinned stack not found"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3131
    return-void

    .line 3138
    :cond_13
    invoke-virtual {v0}, Lcom/android/server/am/PinnedActivityStack;->getWindowContainerController()Lcom/android/server/wm/StackWindowController;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/PinnedStackWindowController;

    .line 3139
    .local v1, "stackController":Lcom/android/server/wm/PinnedStackWindowController;
    invoke-virtual {v1}, Lcom/android/server/wm/PinnedStackWindowController;->pinnedStackResizeDisallowed()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 3140
    return-void

    .line 3143
    :cond_20
    const-string v2, "am.resizePinnedStack"

    const-wide/16 v3, 0x40

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3144
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 3146
    :try_start_2c
    invoke-virtual {v0}, Lcom/android/server/am/PinnedActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 3147
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    const/4 v5, 0x0

    .line 3148
    .local v5, "insetBounds":Landroid/graphics/Rect;
    const/4 v6, 0x0

    if-eqz p2, :cond_4d

    invoke-virtual {v0}, Lcom/android/server/am/PinnedActivityStack;->isAnimatingBoundsToFullscreen()Z

    move-result v7

    if-eqz v7, :cond_4d

    .line 3150
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->tempRect:Landroid/graphics/Rect;

    move-object v5, v7

    .line 3151
    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 3152
    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 3153
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    iput v7, v5, Landroid/graphics/Rect;->right:I

    .line 3154
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v7

    iput v7, v5, Landroid/graphics/Rect;->bottom:I

    .line 3156
    :cond_4d
    if-eqz p1, :cond_54

    if-nez p2, :cond_54

    .line 3160
    invoke-virtual {v0}, Lcom/android/server/am/PinnedActivityStack;->onPipAnimationEndResize()V

    .line 3162
    :cond_54
    invoke-virtual {v0, p1, p2, v5}, Lcom/android/server/am/PinnedActivityStack;->resize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3163
    invoke-virtual {v0, v2, v6}, Lcom/android/server/am/PinnedActivityStack;->ensureVisibleActivitiesConfigurationLocked(Lcom/android/server/am/ActivityRecord;Z)V
    :try_end_5a
    .catchall {:try_start_2c .. :try_end_5a} :catchall_64

    .line 3165
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "insetBounds":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 3166
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 3167
    nop

    .line 3168
    return-void

    .line 3165
    :catchall_64
    move-exception v2

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 3166
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method resizeStackLocked(Lcom/android/server/am/ActivityStack;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)V
    .registers 19
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "tempTaskBounds"    # Landroid/graphics/Rect;
    .param p4, "tempTaskInsetBounds"    # Landroid/graphics/Rect;
    .param p5, "preserveWindows"    # Z
    .param p6, "allowResizeInDockedMode"    # Z
    .param p7, "deferResume"    # Z

    move-object v9, p0

    move-object v10, p1

    .line 2850
    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2851
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v9

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v7, p5

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/ActivityStackSupervisor;->resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    .line 2853
    return-void

    .line 2856
    :cond_16
    invoke-virtual {v9}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->hasSplitScreenPrimaryStack()Z

    move-result v1

    .line 2857
    .local v1, "splitScreenActive":Z
    if-nez p6, :cond_2d

    .line 2858
    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v0

    if-nez v0, :cond_2d

    if-eqz v1, :cond_2d

    .line 2861
    return-void

    .line 2864
    :cond_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "am.resizeStack_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v10, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v3, 0x40

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2865
    iget-object v0, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 2867
    :try_start_4a
    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->affectedBySplitScreenResize()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 2868
    if-nez p2, :cond_5d

    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->inSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 2870
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Lcom/android/server/am/ActivityStack;->setWindowingMode(I)V

    goto :goto_63

    .line 2871
    :cond_5d
    if-eqz v1, :cond_63

    .line 2874
    const/4 v0, 0x4

    invoke-virtual {v10, v0}, Lcom/android/server/am/ActivityStack;->setWindowingMode(I)V

    .line 2877
    :cond_63
    :goto_63
    invoke-virtual {v10, p2, p3, p4}, Lcom/android/server/am/ActivityStack;->resize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2878
    if-nez p7, :cond_75

    .line 2879
    nop

    .line 2880
    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0
    :try_end_6d
    .catchall {:try_start_4a .. :try_end_6d} :catchall_81

    .line 2879
    move/from16 v7, p5

    :try_start_6f
    invoke-virtual {v10, v0, v7}, Lcom/android/server/am/ActivityStack;->ensureVisibleActivitiesConfigurationLocked(Lcom/android/server/am/ActivityRecord;Z)V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_73

    goto :goto_77

    .line 2883
    :catchall_73
    move-exception v0

    goto :goto_84

    :cond_75
    move/from16 v7, p5

    :goto_77
    iget-object v0, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 2884
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 2885
    nop

    .line 2886
    return-void

    .line 2883
    :catchall_81
    move-exception v0

    move/from16 v7, p5

    :goto_84
    iget-object v8, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 2884
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "rInfo"    # Landroid/content/pm/ResolveInfo;
    .param p3, "startFlags"    # I
    .param p4, "profilerInfo"    # Landroid/app/ProfilerInfo;

    .line 1356
    if-eqz p2, :cond_5

    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    .line 1357
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_6
    if-eqz v0, :cond_5f

    .line 1362
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1366
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string/jumbo v2, "system"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 1367
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_2e

    .line 1368
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 1371
    :cond_2e
    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_3b

    .line 1372
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->setNativeDebuggingAppLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 1375
    :cond_3b
    and-int/lit8 v1, p3, 0x4

    if-eqz v1, :cond_48

    .line 1376
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->setTrackAllocationApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 1379
    :cond_48
    if-eqz p4, :cond_53

    .line 1380
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, p4}, Lcom/android/server/am/ActivityManagerService;->setProfileApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroid/app/ProfilerInfo;)V

    .line 1383
    :cond_53
    invoke-virtual {p1}, Landroid/content/Intent;->getLaunchToken()Ljava/lang/String;

    move-result-object v1

    .line 1384
    .local v1, "intentLaunchToken":Ljava/lang/String;
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    if-nez v2, :cond_5f

    if-eqz v1, :cond_5f

    .line 1385
    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    .line 1388
    .end local v1    # "intentLaunchToken":Ljava/lang/String;
    :cond_5f
    return-object v0
.end method

.method resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;II)Landroid/content/pm/ActivityInfo;
    .registers 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "startFlags"    # I
    .param p4, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p5, "userId"    # I
    .param p6, "filterCallingUid"    # I

    .line 1425
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 1426
    .local v0, "rInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    return-object v1
.end method

.method resolveActivityType(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;)I
    .registers 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "task"    # Lcom/android/server/am/TaskRecord;

    .line 2555
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getActivityType()I

    move-result v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 2556
    .local v0, "activityType":I
    :goto_8
    if-nez v0, :cond_10

    if-eqz p3, :cond_10

    .line 2557
    invoke-virtual {p3}, Lcom/android/server/am/TaskRecord;->getActivityType()I

    move-result v0

    .line 2559
    :cond_10
    if-eqz v0, :cond_13

    .line 2560
    return v0

    .line 2562
    :cond_13
    if-eqz p2, :cond_19

    .line 2563
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    move-result v0

    .line 2565
    :cond_19
    if-eqz v0, :cond_1d

    move v1, v0

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x1

    :goto_1e
    return v1
.end method

.method resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;
    .registers 22
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "flags"    # I
    .param p5, "filterCallingUid"    # I

    move-object/from16 v1, p0

    .line 1393
    iget-object v2, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    const-wide/16 v3, 0x40

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1395
    const-string/jumbo v0, "resolveIntent"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1396
    const/high16 v0, 0x10000

    or-int v0, p4, v0

    or-int/lit16 v0, v0, 0x400

    .line 1398
    .local v0, "modifiedFlags":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->isWebIntent()Z

    move-result v5

    if-nez v5, :cond_24

    .line 1399
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x800

    if-eqz v5, :cond_27

    .line 1400
    :cond_24
    const/high16 v5, 0x800000

    or-int/2addr v0, v5

    .line 1408
    .end local v0    # "modifiedFlags":I
    .local v12, "modifiedFlags":I
    :cond_27
    move v12, v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v0
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_67

    move-object v13, v0

    .line 1409
    .local v13, "callingApp":Ljava/lang/String;
    move-object/from16 v14, p1

    :try_start_33
    invoke-virtual {v14, v13}, Landroid/content/Intent;->setSender(Ljava/lang/String;)V

    .line 1410
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_65

    move-wide v10, v5

    .line 1412
    .local v10, "token":J
    :try_start_3b
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v5
    :try_end_41
    .catchall {:try_start_3b .. :try_end_41} :catchall_5f

    const/4 v0, 0x1

    move-object v6, v14

    move-object/from16 v7, p2

    move v8, v12

    move/from16 v9, p3

    move-wide v3, v10

    move v10, v0

    .line 1412
    .end local v10    # "token":J
    .local v3, "token":J
    move/from16 v11, p5

    :try_start_4c
    invoke-virtual/range {v5 .. v11}, Landroid/content/pm/PackageManagerInternal;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIZI)Landroid/content/pm/ResolveInfo;

    move-result-object v0
    :try_end_50
    .catchall {:try_start_4c .. :try_end_50} :catchall_5d

    .line 1415
    :try_start_50
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_65

    .line 1418
    const-wide/16 v5, 0x40

    :try_start_55
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v2
    :try_end_59
    .catchall {:try_start_55 .. :try_end_59} :catchall_70

    .line 1412
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    .line 1415
    :catchall_5d
    move-exception v0

    goto :goto_61

    .line 1415
    .end local v3    # "token":J
    .restart local v10    # "token":J
    :catchall_5f
    move-exception v0

    move-wide v3, v10

    .line 1415
    .end local v10    # "token":J
    .restart local v3    # "token":J
    :goto_61
    :try_start_61
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_65
    .catchall {:try_start_61 .. :try_end_65} :catchall_65

    .line 1418
    .end local v3    # "token":J
    .end local v12    # "modifiedFlags":I
    .end local v13    # "callingApp":Ljava/lang/String;
    :catchall_65
    move-exception v0

    goto :goto_6a

    :catchall_67
    move-exception v0

    move-object/from16 v14, p1

    :goto_6a
    const-wide/16 v3, 0x40

    :try_start_6c
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    .line 1420
    :catchall_70
    move-exception v0

    monitor-exit v2
    :try_end_72
    .catchall {:try_start_6c .. :try_end_72} :catchall_70

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method restoreRecentTaskLocked(Lcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;Z)Z
    .registers 10
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "aOptions"    # Landroid/app/ActivityOptions;
    .param p3, "onTop"    # Z

    .line 3339
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2, p1, p3}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 3340
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 3341
    .local v1, "currentStack":Lcom/android/server/am/ActivityStack;
    const/4 v2, 0x1

    if-eqz v1, :cond_15

    .line 3343
    if-ne v1, v0, :cond_f

    .line 3345
    return v2

    .line 3349
    :cond_f
    const-string/jumbo v3, "restoreRecentTaskLocked"

    invoke-virtual {v1, p1, v3, v2}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;I)V

    .line 3352
    :cond_15
    const-string/jumbo v3, "restoreRecentTask"

    invoke-virtual {v0, p1, p3, v3}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZLjava/lang/String;)V

    .line 3354
    invoke-virtual {p1, p3, v2}, Lcom/android/server/am/TaskRecord;->createWindowContainer(ZZ)V

    .line 3357
    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3358
    .local v3, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    .line 3358
    .local v4, "activityNdx":I
    :goto_25
    if-ltz v4, :cond_33

    .line 3359
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->createWindowContainer()V

    .line 3358
    add-int/lit8 v4, v4, -0x1

    goto :goto_25

    .line 3361
    .end local v4    # "activityNdx":I
    :cond_33
    return v2
.end method

.method resumeFocusedStackTopActivityLocked()Z
    .registers 2

    .line 2321
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v0

    return v0
.end method

.method resumeFocusedStackTopActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .registers 13
    .param p1, "targetStack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "target"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "targetOptions"    # Landroid/app/ActivityOptions;

    .line 2327
    invoke-direct {p0}, Lcom/android/server/am/ActivityStackSupervisor;->readyToResume()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2328
    return v1

    .line 2333
    :cond_8
    const/4 v0, 0x0

    .line 2334
    .local v0, "resumed":Z
    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_37

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 2348
    if-eqz p2, :cond_32

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v5

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v5, v6, :cond_32

    iget-boolean v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mNeedScheduleIdle:Z

    if-eqz v5, :cond_32

    .line 2349
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    .line 2350
    iput-boolean v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mNeedScheduleIdle:Z

    .line 2351
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->inMultiWindowMode()Z

    move-result v5

    if-eqz v5, :cond_32

    .line 2352
    return v1

    .line 2355
    :cond_32
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v0

    goto :goto_84

    .line 2357
    :cond_37
    invoke-direct {p0, v3, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    .line 2358
    .local v5, "recentsStack":Lcom/android/server/am/ActivityStack;
    iget-boolean v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchRecentsFromGesture:Z

    if-eqz v6, :cond_4d

    if-eqz v5, :cond_4d

    iget-boolean v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHasResumeRecentsBehind:Z

    if-nez v6, :cond_4d

    iget-boolean v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStopLaunchRecentsBehind:Z

    if-nez v6, :cond_4d

    .line 2360
    invoke-virtual {v5, v4, v4}, Lcom/android/server/am/ActivityStack;->resumeTopActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    goto :goto_84

    .line 2362
    :cond_4d
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .line 2363
    .local v6, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v6, :cond_7f

    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v7

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v7, v8, :cond_5e

    goto :goto_7f

    .line 2365
    :cond_5e
    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v7

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v7, v8, :cond_84

    .line 2366
    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->inMultiWindowMode()Z

    move-result v2

    if-nez v2, :cond_75

    .line 2367
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, p3}, Lcom/android/server/am/ActivityStack;->executeAppTransition(Landroid/app/ActivityOptions;)V

    .line 2369
    :cond_75
    iget-boolean v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mNeedScheduleIdle:Z

    if-eqz v2, :cond_7e

    .line 2370
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    .line 2371
    iput-boolean v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mNeedScheduleIdle:Z

    .line 2373
    :cond_7e
    return v1

    .line 2364
    :cond_7f
    :goto_7f
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, v4, v4}, Lcom/android/server/am/ActivityStack;->resumeTopActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    .line 2378
    .end local v5    # "recentsStack":Lcom/android/server/am/ActivityStack;
    .end local v6    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_84
    :goto_84
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    if-eqz v1, :cond_f3

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->inMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_f3

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2379
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDownLocked()Z

    move-result v1

    if-nez v1, :cond_f3

    const-string/jumbo v1, "persist.sys.miui_optimization"

    .line 2380
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_f3

    .line 2381
    const/4 v1, 0x0

    .line 2382
    .local v1, "multiWindowStack":Lcom/android/server/am/ActivityStack;
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_be

    .line 2383
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    goto :goto_d0

    .line 2385
    :cond_be
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_d0

    .line 2386
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 2390
    :cond_d0
    :goto_d0
    if-eqz v1, :cond_f3

    .line 2391
    invoke-virtual {v1, v4}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_f3

    .line 2392
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 2393
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_f3

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v3

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v3, v5, :cond_f3

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->inMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_f3

    .line 2394
    invoke-virtual {v1, v4, v4}, Lcom/android/server/am/ActivityStack;->resumeTopActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    .line 2398
    .end local v1    # "multiWindowStack":Lcom/android/server/am/ActivityStack;
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_f3
    return v0
.end method

.method resumeHomeStackTask(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z
    .registers 7
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 785
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-nez v0, :cond_e

    .line 787
    const/4 v0, 0x0

    return v0

    .line 790
    :cond_e
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->moveHomeStackTaskToTop()V

    .line 791
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 792
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " resumeHomeStackTask"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 795
    .local v1, "myReason":Ljava/lang/String;
    if-eqz v0, :cond_3d

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_3d

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->mIsCastMode:Z

    if-nez v2, :cond_3d

    .line 796
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->moveFocusableActivityStackToFrontLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    .line 797
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1, v3}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v2

    return v2

    .line 799
    :cond_3d
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    invoke-virtual {v2, v3, v1}, Lcom/android/server/am/ActivityManagerService;->startHomeActivityLocked(ILjava/lang/String;)Z

    move-result v2

    return v2
.end method

.method scheduleDestroyAllActivities(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .registers 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 3997
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_27

    .line 3998
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 3999
    .local v1, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "stackNdx":I
    :goto_18
    if-ltz v2, :cond_24

    .line 4000
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 4001
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3, p1, p2}, Lcom/android/server/am/ActivityStack;->scheduleDestroyActivities(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 3999
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 3997
    .end local v1    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v2    # "stackNdx":I
    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 4004
    .end local v0    # "displayNdx":I
    :cond_27
    return-void
.end method

.method final scheduleIdleLocked()V
    .registers 3

    .line 4469
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 4470
    return-void
.end method

.method scheduleIdleTimeoutLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 6
    .param p1, "next"    # Lcom/android/server/am/ActivityRecord;

    .line 4464
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4465
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4466
    return-void
.end method

.method scheduleLaunchTaskBehindComplete(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 3923
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x70

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3924
    return-void
.end method

.method final scheduleResumeTopActivities()V
    .registers 3

    .line 4479
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 4480
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 4482
    :cond_f
    return-void
.end method

.method final scheduleSleepTimeout()V
    .registers 5

    .line 4489
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->removeSleepTimeouts()V

    .line 4490
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x67

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 4491
    return-void
.end method

.method scheduleUpdateMultiWindowMode(Lcom/android/server/am/TaskRecord;)V
    .registers 7
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .line 4818
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->deferScheduleMultiWindowModeChanged()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4819
    return-void

    .line 4823
    :cond_b
    const/4 v0, 0x0

    .line 4824
    .local v0, "pkgName":Ljava/lang/String;
    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_14
    if-ltz v1, :cond_34

    .line 4825
    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 4826
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_31

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_31

    .line 4828
    if-nez v0, :cond_2c

    .line 4829
    iget-object v0, v3, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 4832
    :cond_2c
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mMultiWindowModeChangedActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4824
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_31
    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    .line 4836
    .end local v1    # "i":I
    :cond_34
    const v1, 0x11171

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    iget v4, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x2

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->inMultiWindowMode()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4837
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v2, 0x72

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_62

    .line 4838
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 4840
    :cond_62
    return-void
.end method

.method scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "targetStackBounds"    # Landroid/graphics/Rect;

    .line 4853
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_29

    .line 4854
    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 4855
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_26

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_26

    .line 4856
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPipModeChangedActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4860
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mMultiWindowModeChangedActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4853
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_26
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 4863
    .end local v0    # "i":I
    :cond_29
    iput-object p2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPipModeChangedTargetStackBounds:Landroid/graphics/Rect;

    .line 4865
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 4866
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 4868
    :cond_3a
    return-void
.end method

.method scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;)V
    .registers 5
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "prevStack"    # Lcom/android/server/am/ActivityStack;

    .line 4843
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 4844
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz p2, :cond_1d

    if-eq p2, v0, :cond_1d

    .line 4845
    invoke-virtual {p2}, Lcom/android/server/am/ActivityStack;->inPinnedWindowingMode()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->inPinnedWindowingMode()Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_1d

    .line 4849
    :cond_15
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V

    .line 4850
    return-void

    .line 4846
    :cond_1d
    :goto_1d
    return-void
.end method

.method sendPowerHintForLaunchEndIfNeeded()V
    .registers 4

    .line 1805
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPowerHintSent:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_16

    .line 1806
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManagerInternal;->powerHint(II)V

    .line 1807
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPowerHintSent:Z

    .line 1809
    :cond_16
    return-void
.end method

.method sendPowerHintForLaunchStartIfNeeded(ZLcom/android/server/am/ActivityRecord;)V
    .registers 8
    .param p1, "forceSend"    # Z
    .param p2, "targetActivity"    # Lcom/android/server/am/ActivityRecord;

    .line 1786
    move v0, p1

    .line 1788
    .local v0, "sendHint":Z
    const/4 v1, 0x1

    if-nez v0, :cond_1d

    .line 1791
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getResumedActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 1792
    .local v2, "resumedActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_1b

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_1b

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1794
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v3, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    move v3, v1

    :goto_1c
    move v0, v3

    .line 1797
    .end local v2    # "resumedActivity":Lcom/android/server/am/ActivityRecord;
    :cond_1d
    if-eqz v0, :cond_30

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v2, :cond_30

    .line 1798
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    const/16 v3, 0x8

    invoke-virtual {v2, v3, v1}, Landroid/os/PowerManagerInternal;->powerHint(II)V

    .line 1799
    iput-boolean v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPowerHintSent:Z

    .line 1801
    :cond_30
    return-void
.end method

.method sendWaitingVisibleReportLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 10
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 1198
    const/4 v0, 0x0

    .line 1199
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_3e

    .line 1200
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;

    .line 1201
    .local v2, "w":Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;->matches(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 1202
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;->getResult()Landroid/app/WaitResult;

    move-result-object v3

    .line 1203
    .local v3, "result":Landroid/app/WaitResult;
    const/4 v0, 0x1

    .line 1204
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/app/WaitResult;->timeout:Z

    .line 1205
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, v3, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 1206
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, v3, Landroid/app/WaitResult;->thisTime:J

    sub-long/2addr v4, v6

    iput-wide v4, v3, Landroid/app/WaitResult;->totalTime:J

    .line 1207
    iget-wide v4, v3, Landroid/app/WaitResult;->totalTime:J

    iput-wide v4, v3, Landroid/app/WaitResult;->thisTime:J

    .line 1208
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1199
    .end local v2    # "w":Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;
    .end local v3    # "result":Landroid/app/WaitResult;
    :cond_3b
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1211
    .end local v1    # "i":I
    :cond_3e
    if-eqz v0, :cond_45

    .line 1212
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1214
    :cond_45
    return-void
.end method

.method setDisplayOverrideConfiguration(Landroid/content/res/Configuration;I)V
    .registers 7
    .param p1, "overrideConfiguration"    # Landroid/content/res/Configuration;
    .param p2, "displayId"    # I

    .line 494
    invoke-virtual {p0, p2}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplayOrCreateLocked(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    .line 495
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    if-eqz v0, :cond_a

    .line 499
    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityDisplay;->onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 500
    return-void

    .line 496
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No display found with id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method setDockedStackMinimized(Z)V
    .registers 4
    .param p1, "minimized"    # Z

    .line 4881
    iput-boolean p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mIsDockMinimized:Z

    .line 4882
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mIsDockMinimized:Z

    if-eqz v0, :cond_16

    .line 4883
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 4884
    .local v0, "current":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 4887
    const-string/jumbo v1, "setDockedStackMinimized"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->adjustFocusToNextFocusableStack(Ljava/lang/String;)Z

    .line 4890
    .end local v0    # "current":Lcom/android/server/am/ActivityStack;
    :cond_16
    return-void
.end method

.method setFocusStackUnchecked(Ljava/lang/String;Lcom/android/server/am/ActivityStack;)V
    .registers 7
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "focusCandidate"    # Lcom/android/server/am/ActivityStack;

    .line 738
    invoke-virtual {p2}, Lcom/android/server/am/ActivityStack;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_b

    .line 740
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getNextFocusableStackLocked(Lcom/android/server/am/ActivityStack;Z)Lcom/android/server/am/ActivityStack;

    move-result-object p2

    .line 743
    :cond_b
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eq p2, v0, :cond_32

    .line 744
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 745
    iput-object p2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 747
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    .line 748
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    const/4 v2, -0x1

    if-nez v1, :cond_1e

    .line 749
    move v1, v2

    goto :goto_24

    .line 748
    :cond_1e
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v1

    .line 749
    :goto_24
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    if-nez v3, :cond_29

    goto :goto_2f

    :cond_29
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v2

    .line 747
    :goto_2f
    invoke-static {v0, v1, v2, p1}, Lcom/android/server/am/EventLogTags;->writeAmFocusedStack(IIILjava/lang/String;)V

    .line 752
    :cond_32
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 753
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    if-nez v1, :cond_42

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-nez v1, :cond_4b

    .line 754
    :cond_42
    if-eqz v0, :cond_4b

    iget-boolean v1, v0, Lcom/android/server/am/ActivityRecord;->idle:Z

    if-eqz v1, :cond_4b

    .line 755
    invoke-direct {p0}, Lcom/android/server/am/ActivityStackSupervisor;->checkFinishBootingLocked()Z

    .line 758
    :cond_4b
    return-void
.end method

.method setIsMultiWindowMode(Lcom/android/server/am/ActivityRecord;)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 5351
    if-eqz p1, :cond_b

    .line 5352
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->inMultiWindowMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->setIsInMultiWindowMode(Z)V

    .line 5354
    :cond_b
    return-void
.end method

.method setLaunchSource(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 2066
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p1}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 2067
    return-void
.end method

.method setLaunchSource(ILjava/lang/String;)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 2074
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p1, p2}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 2075
    return-void
.end method

.method setNextTaskIdForUserLocked(II)V
    .registers 5
    .param p1, "taskId"    # I
    .param p2, "userId"    # I

    .line 949
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 950
    .local v0, "currentTaskId":I
    if-le p1, v0, :cond_e

    .line 951
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 953
    :cond_e
    return-void
.end method

.method setRecentTasks(Lcom/android/server/am/RecentTasks;)V
    .registers 3
    .param p1, "recentTasks"    # Lcom/android/server/am/RecentTasks;

    .line 672
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    .line 673
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v0, p0}, Lcom/android/server/am/RecentTasks;->registerCallback(Lcom/android/server/am/RecentTasks$Callbacks;)V

    .line 674
    return-void
.end method

.method setResizingDuringAnimation(Lcom/android/server/am/TaskRecord;)V
    .registers 4
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .line 5031
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mResizingTasksDuringAnimation:Landroid/util/ArraySet;

    iget v1, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 5032
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/am/TaskRecord;->setTaskDockedResizing(Z)V

    .line 5033
    return-void
.end method

.method setSplitScreenResizing(Z)V
    .registers 10
    .param p1, "resizing"    # Z

    .line 3011
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDockedStackResizing:Z

    if-ne p1, v0, :cond_5

    .line 3012
    return-void

    .line 3015
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDockedStackResizing:Z

    .line 3016
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->setDockedStackResizing(Z)V

    .line 3018
    if-nez p1, :cond_2f

    iget-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHasPendingDockedBounds:Z

    if-eqz v0, :cond_2f

    .line 3019
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingDockedBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingTempDockedTaskBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingTempDockedTaskInsetBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingTempOtherTaskBounds:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingTempOtherTaskInsetBounds:Landroid/graphics/Rect;

    const/4 v7, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 3023
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHasPendingDockedBounds:Z

    .line 3024
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingDockedBounds:Landroid/graphics/Rect;

    .line 3025
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingTempDockedTaskBounds:Landroid/graphics/Rect;

    .line 3026
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingTempDockedTaskInsetBounds:Landroid/graphics/Rect;

    .line 3027
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingTempOtherTaskBounds:Landroid/graphics/Rect;

    .line 3028
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingTempOtherTaskInsetBounds:Landroid/graphics/Rect;

    .line 3030
    :cond_2f
    return-void
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 10
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .line 694
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 695
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 696
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/am/KeyguardController;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 698
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v2, "display"

    .line 699
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 700
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 701
    const-class v1, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 703
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v1

    .line 704
    .local v1, "displays":[Landroid/view/Display;
    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "displayNdx":I
    :goto_36
    if-ltz v2, :cond_4e

    .line 705
    aget-object v4, v1, v2

    .line 706
    .local v4, "display":Landroid/view/Display;
    new-instance v5, Lcom/android/server/am/ActivityDisplay;

    invoke-direct {v5, p0, v4}, Lcom/android/server/am/ActivityDisplay;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/view/Display;)V

    .line 707
    .local v5, "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v7

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 708
    invoke-direct {p0, v5}, Lcom/android/server/am/ActivityStackSupervisor;->calculateDefaultMinimalSizeOfResizeableTasks(Lcom/android/server/am/ActivityDisplay;)V

    .line 704
    .end local v4    # "display":Landroid/view/Display;
    .end local v5    # "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    add-int/lit8 v2, v2, -0x1

    goto :goto_36

    .line 711
    .end local v2    # "displayNdx":I
    :cond_4e
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4, v3}, Lcom/android/server/am/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    iput-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iput-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    .line 713
    .end local v1    # "displays":[Landroid/view/Display;
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_3 .. :try_end_5e} :catchall_62

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 714
    return-void

    .line 713
    :catchall_62
    move-exception v1

    :try_start_63
    monitor-exit v0
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method shutdownLocked(I)Z
    .registers 9
    .param p1, "timeout"    # I

    .line 3725
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->goingToSleepLocked()V

    .line 3727
    const/4 v0, 0x0

    .line 3728
    .local v0, "timedout":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    int-to-long v3, p1

    add-long/2addr v1, v3

    .line 3730
    .local v1, "endTime":J
    :goto_a
    const/4 v3, 0x1

    invoke-direct {p0, v3, v3}, Lcom/android/server/am/ActivityStackSupervisor;->putStacksToSleepLocked(ZZ)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 3731
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v1, v3

    .line 3732
    .local v3, "timeRemaining":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_26

    .line 3734
    :try_start_1d
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_22} :catch_23

    goto :goto_24

    .line 3735
    :catch_23
    move-exception v5

    .line 3736
    .end local v3    # "timeRemaining":J
    :goto_24
    nop

    .line 3742
    goto :goto_a

    .line 3738
    .restart local v3    # "timeRemaining":J
    :cond_26
    const-string v5, "ActivityManager"

    const-string v6, "Activity manager shutdown timed out"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3739
    const/4 v0, 0x1

    .line 3740
    nop

    .line 3748
    .end local v3    # "timeRemaining":J
    :cond_2f
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked(Z)V

    .line 3750
    return v0
.end method

.method startActivityFromRecents(IIILcom/android/server/am/SafeActivityOptions;)I
    .registers 31
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "taskId"    # I
    .param p4, "options"    # Lcom/android/server/am/SafeActivityOptions;

    move-object/from16 v1, p0

    move/from16 v2, p3

    .line 5037
    move-object/from16 v14, p4

    const/4 v3, 0x0

    .line 5041
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    const/4 v0, 0x0

    .line 5042
    .local v0, "activityType":I
    const/4 v4, 0x0

    .line 5043
    .local v4, "windowingMode":I
    const/4 v5, 0x0

    if-eqz v14, :cond_11

    .line 5044
    invoke-virtual {v14, v1}, Lcom/android/server/am/SafeActivityOptions;->getOptions(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v6

    goto :goto_12

    .line 5045
    :cond_11
    move-object v6, v5

    :goto_12
    move-object v13, v6

    .line 5046
    .local v13, "activityOptions":Landroid/app/ActivityOptions;
    if-eqz v13, :cond_1d

    .line 5047
    invoke-virtual {v13}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    move-result v0

    .line 5048
    invoke-virtual {v13}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v4

    .line 5050
    .end local v0    # "activityType":I
    .end local v4    # "windowingMode":I
    .local v11, "windowingMode":I
    .local v12, "activityType":I
    :cond_1d
    move v12, v0

    move v11, v4

    const/4 v4, 0x2

    if-eq v12, v4, :cond_239

    const/4 v10, 0x3

    if-eq v12, v10, :cond_239

    .line 5055
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 5057
    const/4 v9, 0x4

    const/4 v8, 0x0

    if-ne v11, v10, :cond_4b

    .line 5058
    :try_start_2e
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 5059
    invoke-virtual {v13}, Landroid/app/ActivityOptions;->getSplitScreenCreateMode()I

    move-result v6

    .line 5058
    invoke-virtual {v0, v6, v5}, Lcom/android/server/wm/WindowManagerService;->setDockedStackCreateState(ILandroid/graphics/Rect;)V

    .line 5064
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->deferUpdateRecentsHomeStackBounds()V

    .line 5065
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v5, 0x13

    invoke-virtual {v0, v5, v8}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V
    :try_end_41
    .catchall {:try_start_2e .. :try_end_41} :catchall_42

    goto :goto_4b

    .line 5145
    :catchall_42
    move-exception v0

    .line 5145
    .end local v11    # "windowingMode":I
    .end local v12    # "activityType":I
    .end local v13    # "activityOptions":Landroid/app/ActivityOptions;
    .local v5, "windowingMode":I
    .local v19, "activityOptions":Landroid/app/ActivityOptions;
    .local v25, "activityType":I
    :goto_43
    move v6, v10

    move v5, v11

    move/from16 v25, v12

    move-object/from16 v19, v13

    goto/16 :goto_20e

    .line 5068
    .end local v5    # "windowingMode":I
    .end local v19    # "activityOptions":Landroid/app/ActivityOptions;
    .end local v25    # "activityType":I
    .restart local v11    # "windowingMode":I
    .restart local v12    # "activityType":I
    .restart local v13    # "activityOptions":Landroid/app/ActivityOptions;
    :cond_4b
    :goto_4b
    const/4 v0, 0x1

    :try_start_4c
    invoke-virtual {v1, v2, v4, v13, v0}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(IILandroid/app/ActivityOptions;Z)Lcom/android/server/am/TaskRecord;

    move-result-object v5

    move-object v3, v5

    .line 5070
    if-eqz v3, :cond_1da

    .line 5078
    invoke-static {v3, v2, v11, v1}, Lcom/android/server/am/ActivityStackSupervisorInjector;->exitfreeformIfNeeded(Lcom/android/server/am/TaskRecord;IILcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/TaskRecord;

    move-result-object v5
    :try_end_57
    .catchall {:try_start_4c .. :try_end_57} :catchall_207

    move-object v6, v5

    .line 5081
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    :try_start_58
    iget-object v3, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getCastModeStackId()I

    move-result v3

    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->getStackId()I

    move-result v5
    :try_end_62
    .catchall {:try_start_58 .. :try_end_62} :catchall_1d0

    if-ne v3, v5, :cond_a1

    .line 5082
    :try_start_64
    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    const-string v3, "exitCastMode"

    invoke-virtual {v0, v3, v6}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;Lcom/android/server/am/TaskRecord;)V

    .line 5083
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->resumeCastActivity()V
    :try_end_72
    .catchall {:try_start_64 .. :try_end_72} :catchall_9e

    .line 5084
    nop

    .line 5145
    if-ne v11, v10, :cond_98

    if-eqz v6, :cond_98

    .line 5149
    invoke-virtual {v1, v6}, Lcom/android/server/am/ActivityStackSupervisor;->setResizingDuringAnimation(Lcom/android/server/am/TaskRecord;)V

    .line 5151
    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    .line 5152
    .local v0, "display":Lcom/android/server/am/ActivityDisplay;
    nop

    .line 5153
    invoke-virtual {v0, v9}, Lcom/android/server/am/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 5154
    .local v3, "topSecondaryStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v4

    if-eqz v4, :cond_98

    .line 5160
    const-string/jumbo v4, "startActivityFromRecents: homeVisibleInSplitScreen"

    invoke-virtual {v1, v4}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackToFront(Ljava/lang/String;)V

    .line 5165
    iget-object v4, v1, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v8}, Lcom/android/server/wm/WindowManagerService;->checkSplitScreenMinimizedChanged(Z)V

    .line 5168
    .end local v0    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v3    # "topSecondaryStack":Lcom/android/server/am/ActivityStack;
    :cond_98
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 5084
    return v8

    .line 5145
    :catchall_9e
    move-exception v0

    move-object v3, v6

    goto :goto_43

    .line 5088
    :cond_a1
    if-eq v11, v10, :cond_a9

    .line 5092
    :try_start_a3
    const-string/jumbo v3, "startActivityFromRecents"

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackToFront(Ljava/lang/String;)V
    :try_end_a9
    .catchall {:try_start_a3 .. :try_end_a9} :catchall_9e

    .line 5097
    :cond_a9
    :try_start_a9
    iget-object v3, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v5, v6, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v3, v5}, Lcom/android/server/am/UserController;->shouldConfirmCredentials(I)Z

    move-result v3
    :try_end_b3
    .catchall {:try_start_a9 .. :try_end_b3} :catchall_1d0

    if-nez v3, :cond_121

    .line 5098
    :try_start_b5
    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_121

    .line 5099
    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 5101
    .local v3, "targetActivity":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v1, v0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->sendPowerHintForLaunchStartIfNeeded(ZLcom/android/server/am/ActivityRecord;)V

    .line 5102
    iget-object v5, v1, Lcom/android/server/am/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/am/ActivityMetricsLogger;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityMetricsLogger;->notifyActivityLaunching()V

    .line 5104
    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 5105
    .local v5, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_d0

    .line 5106
    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->notifyStartFromRecents()V
    :try_end_d0
    .catchall {:try_start_b5 .. :try_end_d0} :catchall_9e

    .line 5110
    :cond_d0
    :try_start_d0
    iget-object v7, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v15, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v7, v15, v8, v14, v0}, Lcom/android/server/am/ActivityManagerService;->moveTaskToFrontLocked(IILcom/android/server/am/SafeActivityOptions;Z)V
    :try_end_d7
    .catchall {:try_start_d0 .. :try_end_d7} :catchall_11a

    .line 5113
    :try_start_d7
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/am/ActivityMetricsLogger;

    invoke-virtual {v0, v4, v3}, Lcom/android/server/am/ActivityMetricsLogger;->notifyActivityLaunched(ILcom/android/server/am/ActivityRecord;)V

    .line 5115
    nop

    .line 5117
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getActivityStartController()Lcom/android/server/am/ActivityStartController;

    move-result-object v0

    .line 5118
    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    .line 5119
    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v15

    .line 5117
    invoke-virtual {v0, v7, v4, v15}, Lcom/android/server/am/ActivityStartController;->postStartActivityProcessingForLastStarter(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/ActivityStack;)V
    :try_end_ee
    .catchall {:try_start_d7 .. :try_end_ee} :catchall_9e

    .line 5120
    nop

    .line 5145
    if-ne v11, v10, :cond_114

    if-eqz v6, :cond_114

    .line 5149
    invoke-virtual {v1, v6}, Lcom/android/server/am/ActivityStackSupervisor;->setResizingDuringAnimation(Lcom/android/server/am/TaskRecord;)V

    .line 5151
    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    .line 5152
    .restart local v0    # "display":Lcom/android/server/am/ActivityDisplay;
    nop

    .line 5153
    invoke-virtual {v0, v9}, Lcom/android/server/am/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;

    move-result-object v7

    .line 5154
    .local v7, "topSecondaryStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v9

    if-eqz v9, :cond_114

    .line 5160
    const-string/jumbo v9, "startActivityFromRecents: homeVisibleInSplitScreen"

    invoke-virtual {v1, v9}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackToFront(Ljava/lang/String;)V

    .line 5165
    iget-object v9, v1, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9, v8}, Lcom/android/server/wm/WindowManagerService;->checkSplitScreenMinimizedChanged(Z)V

    .line 5168
    .end local v0    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v7    # "topSecondaryStack":Lcom/android/server/am/ActivityStack;
    :cond_114
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 5120
    return v4

    .line 5113
    :catchall_11a
    move-exception v0

    :try_start_11b
    iget-object v7, v1, Lcom/android/server/am/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/am/ActivityMetricsLogger;

    invoke-virtual {v7, v4, v3}, Lcom/android/server/am/ActivityMetricsLogger;->notifyActivityLaunched(ILcom/android/server/am/ActivityRecord;)V

    throw v0
    :try_end_121
    .catchall {:try_start_11b .. :try_end_121} :catchall_9e

    .line 5122
    .end local v3    # "targetActivity":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_121
    :try_start_121
    iget-object v7, v6, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 5123
    .local v7, "callingPackage":Ljava/lang/String;
    iget-object v0, v6, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 5124
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v3, 0x100000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5126
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addMiuiFlags(I)Landroid/content/Intent;

    .line 5127
    iget v15, v6, Lcom/android/server/am/TaskRecord;->userId:I

    .line 5133
    .local v15, "userId":I
    iget-object v3, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getActivityStartController()Lcom/android/server/am/ActivityStartController;

    move-result-object v3

    iget v4, v6, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string/jumbo v21, "startActivityFromRecents"
    :try_end_144
    .catchall {:try_start_121 .. :try_end_144} :catchall_1d0

    const/16 v22, 0x0

    move/from16 v5, p1

    move-object/from16 v23, v6

    move/from16 v6, p2

    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    .local v23, "task":Lcom/android/server/am/TaskRecord;
    move-object v8, v0

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    move/from16 v24, v11

    move-object/from16 v11, v18

    .line 5133
    .end local v11    # "windowingMode":I
    .local v24, "windowingMode":I
    move/from16 v25, v12

    move/from16 v12, v19

    .line 5133
    .end local v12    # "activityType":I
    .restart local v25    # "activityType":I
    move-object/from16 v19, v13

    move/from16 v13, v20

    .line 5133
    .end local v13    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v19    # "activityOptions":Landroid/app/ActivityOptions;
    move-object/from16 v14, p4

    move-object/from16 v16, v23

    move-object/from16 v17, v21

    move/from16 v18, v22

    :try_start_165
    invoke-virtual/range {v3 .. v18}, Lcom/android/server/am/ActivityStartController;->startActivityInPackage(IIILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILcom/android/server/am/SafeActivityOptions;ILcom/android/server/am/TaskRecord;Ljava/lang/String;Z)I

    move-result v3
    :try_end_169
    .catchall {:try_start_165 .. :try_end_169} :catchall_1c6

    .line 5138
    .local v3, "result":I
    move-object/from16 v4, v23

    :try_start_16b
    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v5
    :try_end_16f
    .catchall {:try_start_16b .. :try_end_16f} :catchall_1be

    .line 5138
    .end local v23    # "task":Lcom/android/server/am/TaskRecord;
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v5, :cond_18e

    :try_start_171
    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    if-nez v5, :cond_18e

    .line 5139
    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v5

    const-string/jumbo v6, "startActivityFromRecents"
    :try_end_17e
    .catchall {:try_start_171 .. :try_end_17e} :catchall_185

    const/4 v8, 0x0

    :try_start_17f
    invoke-virtual {v5, v4, v6, v8}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;I)V
    :try_end_182
    .catchall {:try_start_17f .. :try_end_182} :catchall_183

    goto :goto_18f

    .line 5145
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v3    # "result":I
    .end local v7    # "callingPackage":Ljava/lang/String;
    .end local v15    # "userId":I
    :catchall_183
    move-exception v0

    goto :goto_187

    :catchall_185
    move-exception v0

    const/4 v8, 0x0

    .line 5145
    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    .end local v24    # "windowingMode":I
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    .local v5, "windowingMode":I
    :goto_187
    move-object v3, v4

    move/from16 v5, v24

    const/4 v6, 0x3

    const/4 v9, 0x4

    goto/16 :goto_20e

    .line 5142
    .end local v5    # "windowingMode":I
    .restart local v0    # "intent":Landroid/content/Intent;
    .local v3, "result":I
    .restart local v4    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v7    # "callingPackage":Ljava/lang/String;
    .restart local v15    # "userId":I
    .restart local v24    # "windowingMode":I
    :cond_18e
    const/4 v8, 0x0

    .line 5145
    :goto_18f
    move/from16 v5, v24

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1b8

    .line 5145
    .end local v24    # "windowingMode":I
    .restart local v5    # "windowingMode":I
    if-eqz v4, :cond_1b8

    .line 5149
    invoke-virtual {v1, v4}, Lcom/android/server/am/ActivityStackSupervisor;->setResizingDuringAnimation(Lcom/android/server/am/TaskRecord;)V

    .line 5151
    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v6

    .line 5152
    .local v6, "display":Lcom/android/server/am/ActivityDisplay;
    nop

    .line 5153
    const/4 v9, 0x4

    invoke-virtual {v6, v9}, Lcom/android/server/am/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;

    move-result-object v9

    .line 5154
    .local v9, "topSecondaryStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v10

    if-eqz v10, :cond_1b8

    .line 5160
    const-string/jumbo v10, "startActivityFromRecents: homeVisibleInSplitScreen"

    invoke-virtual {v1, v10}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackToFront(Ljava/lang/String;)V

    .line 5165
    iget-object v10, v1, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v10, v8}, Lcom/android/server/wm/WindowManagerService;->checkSplitScreenMinimizedChanged(Z)V

    .line 5168
    .end local v6    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v9    # "topSecondaryStack":Lcom/android/server/am/ActivityStack;
    :cond_1b8
    iget-object v6, v1, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 5142
    return v3

    .line 5145
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v3    # "result":I
    .end local v5    # "windowingMode":I
    .end local v7    # "callingPackage":Ljava/lang/String;
    .end local v15    # "userId":I
    .restart local v24    # "windowingMode":I
    :catchall_1be
    move-exception v0

    move/from16 v5, v24

    const/4 v6, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x4

    move-object v3, v4

    .line 5145
    .end local v24    # "windowingMode":I
    .restart local v5    # "windowingMode":I
    goto :goto_20e

    .line 5145
    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    .end local v5    # "windowingMode":I
    .restart local v23    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v24    # "windowingMode":I
    :catchall_1c6
    move-exception v0

    move-object/from16 v4, v23

    move/from16 v5, v24

    const/4 v6, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x4

    move-object v3, v4

    .line 5145
    .end local v23    # "task":Lcom/android/server/am/TaskRecord;
    .end local v24    # "windowingMode":I
    .restart local v4    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v5    # "windowingMode":I
    goto :goto_20e

    .line 5145
    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    .end local v5    # "windowingMode":I
    .end local v19    # "activityOptions":Landroid/app/ActivityOptions;
    .end local v25    # "activityType":I
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    .restart local v11    # "windowingMode":I
    .restart local v12    # "activityType":I
    .restart local v13    # "activityOptions":Landroid/app/ActivityOptions;
    :catchall_1d0
    move-exception v0

    move-object v4, v6

    move v6, v10

    move v5, v11

    move/from16 v25, v12

    move-object/from16 v19, v13

    move-object v3, v4

    .line 5145
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    .end local v11    # "windowingMode":I
    .end local v12    # "activityType":I
    .end local v13    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v4    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v5    # "windowingMode":I
    .restart local v19    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v25    # "activityType":I
    goto :goto_20e

    .line 5071
    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    .end local v5    # "windowingMode":I
    .end local v19    # "activityOptions":Landroid/app/ActivityOptions;
    .end local v25    # "activityType":I
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    .restart local v11    # "windowingMode":I
    .restart local v12    # "activityType":I
    .restart local v13    # "activityOptions":Landroid/app/ActivityOptions;
    :cond_1da
    move v6, v10

    move v5, v11

    move/from16 v25, v12

    move-object/from16 v19, v13

    .line 5071
    .end local v11    # "windowingMode":I
    .end local v12    # "activityType":I
    .end local v13    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v5    # "windowingMode":I
    .restart local v19    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v25    # "activityType":I
    :try_start_1e0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->continueUpdateRecentsHomeStackBounds()V

    .line 5072
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 5073
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startActivityFromRecents: Task "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " not found."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_205
    .catchall {:try_start_1e0 .. :try_end_205} :catchall_205

    .line 5145
    :catchall_205
    move-exception v0

    goto :goto_20e

    .line 5145
    .end local v5    # "windowingMode":I
    .end local v19    # "activityOptions":Landroid/app/ActivityOptions;
    .end local v25    # "activityType":I
    .restart local v11    # "windowingMode":I
    .restart local v12    # "activityType":I
    .restart local v13    # "activityOptions":Landroid/app/ActivityOptions;
    :catchall_207
    move-exception v0

    move v6, v10

    move v5, v11

    move/from16 v25, v12

    move-object/from16 v19, v13

    .line 5145
    .end local v11    # "windowingMode":I
    .end local v12    # "activityType":I
    .end local v13    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v5    # "windowingMode":I
    .restart local v19    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v25    # "activityType":I
    :goto_20e
    if-ne v5, v6, :cond_233

    if-eqz v3, :cond_233

    .line 5149
    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityStackSupervisor;->setResizingDuringAnimation(Lcom/android/server/am/TaskRecord;)V

    .line 5151
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v4

    .line 5152
    .local v4, "display":Lcom/android/server/am/ActivityDisplay;
    nop

    .line 5153
    invoke-virtual {v4, v9}, Lcom/android/server/am/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;

    move-result-object v6

    .line 5154
    .local v6, "topSecondaryStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v7

    if-eqz v7, :cond_233

    .line 5160
    const-string/jumbo v7, "startActivityFromRecents: homeVisibleInSplitScreen"

    invoke-virtual {v1, v7}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackToFront(Ljava/lang/String;)V

    .line 5165
    iget-object v7, v1, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowManagerService;->checkSplitScreenMinimizedChanged(Z)V

    .line 5168
    .end local v4    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v6    # "topSecondaryStack":Lcom/android/server/am/ActivityStack;
    :cond_233
    iget-object v4, v1, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0

    .line 5051
    .end local v5    # "windowingMode":I
    .end local v19    # "activityOptions":Landroid/app/ActivityOptions;
    .end local v25    # "activityType":I
    .restart local v11    # "windowingMode":I
    .restart local v12    # "activityType":I
    .restart local v13    # "activityOptions":Landroid/app/ActivityOptions;
    :cond_239
    move v5, v11

    move/from16 v25, v12

    move-object/from16 v19, v13

    .line 5051
    .end local v11    # "windowingMode":I
    .end local v12    # "activityType":I
    .end local v13    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v5    # "windowingMode":I
    .restart local v19    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v25    # "activityType":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startActivityFromRecents: Task "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " can\'t be launch in the home/recents stack."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V
    .registers 23
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "andResume"    # Z
    .param p3, "checkConfig"    # Z

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1746
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    .line 1749
    .local v3, "app":Lcom/android/server/am/ProcessRecord;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchTimeTracker()Lcom/android/server/am/LaunchTimeTracker;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/am/LaunchTimeTracker;->setLaunchTime(Lcom/android/server/am/ActivityRecord;)V

    .line 1751
    if-eqz v3, :cond_74

    iget-object v0, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_74

    .line 1753
    :try_start_20
    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_33

    const-string v0, "android"

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1754
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 1759
    :cond_33
    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v6, v4, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v4, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v3, v0, v6, v7, v4}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_44} :catch_4e

    .line 1762
    :cond_44
    move/from16 v4, p2

    move/from16 v6, p3

    :try_start_48
    invoke-virtual {v1, v2, v3, v4, v6}, Lcom/android/server/am/ActivityStackSupervisor;->realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZ)Z
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_4b} :catch_4c

    .line 1763
    return-void

    .line 1764
    :catch_4c
    move-exception v0

    goto :goto_53

    :catch_4e
    move-exception v0

    move/from16 v4, p2

    move/from16 v6, p3

    .line 1765
    .local v0, "e":Landroid/os/RemoteException;
    :goto_53
    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception when starting activity "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1766
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1765
    invoke-static {v7, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_78

    .line 1774
    :cond_74
    move/from16 v4, p2

    move/from16 v6, p3

    :goto_78
    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v7, v7, Landroid/content/pm/ActivityInfo;->theme:I

    iput v7, v0, Landroid/content/pm/ApplicationInfo;->nextActivityTheme:I

    .line 1777
    iput-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->isColdStart:Z

    .line 1779
    iget-object v8, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v10, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const-string v13, "activity"

    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1782
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 1779
    move-object/from16 v18, v0

    invoke-virtual/range {v8 .. v18}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILjava/lang/String;Landroid/content/ComponentName;ZZZLjava/lang/String;)Lcom/android/server/am/ProcessRecord;

    .line 1783
    return-void
.end method

.method switchUserLocked(ILcom/android/server/am/UserState;)Z
    .registers 12
    .param p1, "userId"    # I
    .param p2, "uss"    # Lcom/android/server/am/UserState;

    .line 4066
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v0

    .line 4068
    .local v0, "focusStackId":I
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 4069
    .local v1, "dockedStack":Lcom/android/server/am/ActivityStack;
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1c

    .line 4070
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-ne v4, v1, :cond_18

    move v4, v3

    goto :goto_19

    :cond_18
    move v4, v2

    :goto_19
    invoke-virtual {p0, v1, v4}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/am/ActivityStack;Z)V

    .line 4075
    :cond_1c
    new-array v4, v3, [I

    const/4 v5, 0x2

    aput v5, v4, v2

    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->removeStacksInWindowingModes([I)V

    .line 4077
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    iget v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    invoke-virtual {v2, v4, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 4078
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    iget v4, v4, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v2, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 4079
    .local v2, "restoreStackId":I
    iput p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    .line 4081
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4082
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    sub-int/2addr v4, v3

    .line 4082
    .local v4, "displayNdx":I
    :goto_43
    if-ltz v4, :cond_6a

    .line 4083
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityDisplay;

    .line 4084
    .local v5, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v5}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v3

    .line 4084
    .local v6, "stackNdx":I
    :goto_52
    if-ltz v6, :cond_67

    .line 4085
    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v7

    .line 4086
    .local v7, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v7, p1}, Lcom/android/server/am/ActivityStack;->switchUserLocked(I)V

    .line 4087
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    .line 4088
    .local v8, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v8, :cond_64

    .line 4089
    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityStack;->positionChildWindowContainerAtTop(Lcom/android/server/am/TaskRecord;)V

    .line 4084
    .end local v7    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v8    # "task":Lcom/android/server/am/TaskRecord;
    :cond_64
    add-int/lit8 v6, v6, -0x1

    goto :goto_52

    .line 4082
    .end local v5    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v6    # "stackNdx":I
    :cond_67
    add-int/lit8 v4, v4, -0x1

    goto :goto_43

    .line 4094
    .end local v4    # "displayNdx":I
    :cond_6a
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 4095
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v3, :cond_72

    .line 4096
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    .line 4098
    :cond_72
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v4

    .line 4099
    .local v4, "homeInFront":Z
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v5

    if-eqz v5, :cond_83

    .line 4100
    const-string/jumbo v5, "switchUserOnHomeDisplay"

    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    goto :goto_8a

    .line 4103
    :cond_83
    const/4 v5, 0x0

    const-string/jumbo v6, "switchUserOnOtherDisplay"

    invoke-virtual {p0, v5, v6}, Lcom/android/server/am/ActivityStackSupervisor;->resumeHomeStackTask(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    .line 4105
    :goto_8a
    return v4
.end method

.method topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;
    .registers 2

    .line 1268
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked(Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method topRunningActivityLocked(Z)Lcom/android/server/am/ActivityRecord;
    .registers 10
    .param p1, "considerKeyguardState"    # Z

    .line 1280
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 1281
    .local v0, "focusedStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 1282
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_f

    invoke-direct {p0, v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->isValidTopRunningActivity(Lcom/android/server/am/ActivityRecord;Z)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1283
    return-object v1

    .line 1287
    :cond_f
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOrderedDisplayIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->getDisplaysInFocusOrder(Landroid/util/SparseIntArray;)V

    .line 1289
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOrderedDisplayIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_1e
    if-ltz v2, :cond_51

    .line 1290
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOrderedDisplayIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    .line 1291
    .local v3, "displayId":I
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityDisplay;

    .line 1295
    .local v4, "display":Lcom/android/server/am/ActivityDisplay;
    if-nez v4, :cond_31

    .line 1296
    goto :goto_4e

    .line 1301
    :cond_31
    invoke-virtual {v4}, Lcom/android/server/am/ActivityDisplay;->getTopStack()Lcom/android/server/am/ActivityStack;

    move-result-object v5

    .line 1304
    .local v5, "topStack":Lcom/android/server/am/ActivityStack;
    if-eqz v5, :cond_4e

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->isFocusable()Z

    move-result v6

    if-eqz v6, :cond_4e

    if-ne v5, v0, :cond_40

    .line 1305
    goto :goto_4e

    .line 1308
    :cond_40
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .line 1311
    .local v6, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-nez v6, :cond_47

    .line 1312
    goto :goto_4e

    .line 1319
    :cond_47
    invoke-direct {p0, v6, p1}, Lcom/android/server/am/ActivityStackSupervisor;->isValidTopRunningActivity(Lcom/android/server/am/ActivityRecord;Z)Z

    move-result v7

    if-eqz v7, :cond_4e

    .line 1320
    return-object v6

    .line 1289
    .end local v3    # "displayId":I
    .end local v4    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v5    # "topStack":Lcom/android/server/am/ActivityStack;
    .end local v6    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :cond_4e
    :goto_4e
    add-int/lit8 v2, v2, -0x1

    goto :goto_1e

    .line 1324
    .end local v2    # "i":I
    :cond_51
    const/4 v2, 0x0

    return-object v2
.end method

.method unregisterMiuiAppTransitionAnimationHelper(Lcom/android/server/am/ActivityStackSupervisor$AnimationHelperDeathRecipient;)V
    .registers 5
    .param p1, "recipient"    # Lcom/android/server/am/ActivityStackSupervisor$AnimationHelperDeathRecipient;

    .line 5283
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 5284
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mAnimationHelperDeathRecipient:Lcom/android/server/am/ActivityStackSupervisor$AnimationHelperDeathRecipient;

    if-eq p1, v1, :cond_16

    .line 5285
    const-string v1, "ActivityManager"

    const-string v2, "The death recipient has changed, we have registered a new helper so we don\'t need to unregister now."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5287
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_2a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 5290
    :cond_16
    :try_start_16
    invoke-direct {p0}, Lcom/android/server/am/ActivityStackSupervisor;->unlinkToDeathMiuiAnimationHelper()V

    .line 5291
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mMiuiAppTransitionAnimationHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    .line 5292
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_2a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 5294
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_29

    .line 5295
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->setMiuiAppTransitionAnimationHelper(Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;)V

    .line 5297
    :cond_29
    return-void

    .line 5292
    :catchall_2a
    move-exception v1

    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method updateActivityApplicationInfoLocked(Landroid/content/pm/ApplicationInfo;)V
    .registers 6
    .param p1, "aInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 2403
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_27

    .line 2404
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 2405
    .local v1, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "stackNdx":I
    :goto_18
    if-ltz v2, :cond_24

    .line 2406
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 2407
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStack;->updateActivityApplicationInfoLocked(Landroid/content/pm/ApplicationInfo;)V

    .line 2405
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 2403
    .end local v1    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v2    # "stackNdx":I
    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2410
    .end local v0    # "displayNdx":I
    :cond_27
    return-void
.end method

.method updateMiuiAnimationInfo(Lcom/android/server/am/ActivityRecord;)V
    .registers 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 5309
    if-eqz p1, :cond_31

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isAppTransitionSkipped()Z

    move-result v0

    if-nez v0, :cond_31

    .line 5310
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->canShowWhenLocked()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mKeyguardController:Lcom/android/server/am/KeyguardController;

    invoke-virtual {v0}, Lcom/android/server/am/KeyguardController;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_31

    .line 5311
    :cond_18
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->realComponentName:Ljava/lang/String;

    .line 5312
    .local v0, "lastComponentName":Ljava/lang/String;
    iget v1, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 5313
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->setLoadBackHomeAnimation(Z)V

    .line 5314
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->startFetchingAppTransitionSpecs()V

    .line 5315
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDefaultExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/android/server/am/ActivityStackSupervisor$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$1;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 5348
    .end local v0    # "lastComponentName":Ljava/lang/String;
    .end local v1    # "userId":I
    :cond_31
    return-void
.end method

.method updatePictureInPictureMode(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;Z)V
    .registers 7
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "targetStackBounds"    # Landroid/graphics/Rect;
    .param p3, "forceUpdate"    # Z

    .line 4871
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    .line 4872
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_f
    if-ltz v0, :cond_29

    .line 4873
    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 4874
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_26

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_26

    .line 4875
    invoke-virtual {v1, p2, p3}, Lcom/android/server/am/ActivityRecord;->updatePictureInPictureMode(Landroid/graphics/Rect;Z)V

    .line 4872
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_26
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .line 4878
    .end local v0    # "i":I
    :cond_29
    return-void
.end method

.method updatePreviousProcessLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 9
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 2293
    const/4 v0, 0x0

    .line 2294
    .local v0, "fgApp":Lcom/android/server/am/ProcessRecord;
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "displayNdx":I
    :goto_9
    if-ltz v1, :cond_3d

    .line 2295
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityDisplay;

    .line 2296
    .local v2, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "stackNdx":I
    :goto_19
    if-ltz v3, :cond_3a

    .line 2297
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 2298
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 2299
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getResumedActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 2300
    .local v5, "resumedActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_2e

    .line 2301
    iget-object v0, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    goto :goto_3a

    .line 2302
    :cond_2e
    iget-object v6, v4, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v6, :cond_3a

    .line 2303
    iget-object v6, v4, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    goto :goto_3a

    .line 2296
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "resumedActivity":Lcom/android/server/am/ActivityRecord;
    :cond_37
    add-int/lit8 v3, v3, -0x1

    goto :goto_19

    .line 2294
    .end local v2    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v3    # "stackNdx":I
    :cond_3a
    :goto_3a
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 2312
    .end local v1    # "displayNdx":I
    :cond_3d
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_65

    if-eqz v0, :cond_65

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v1, v0, :cond_65

    iget-wide v1, p1, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerService;->mPreviousProcessVisibleTime:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_65

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-eq v1, v2, :cond_65

    .line 2315
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mPreviousProcess:Lcom/android/server/am/ProcessRecord;

    .line 2316
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v2, p1, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    iput-wide v2, v1, Lcom/android/server/am/ActivityManagerService;->mPreviousProcessVisibleTime:J

    .line 2318
    :cond_65
    return-void
.end method

.method updateUIDsPresentOnDisplay()V
    .registers 6

    .line 1967
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1968
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "displayNdx":I
    :goto_d
    if-ltz v0, :cond_2b

    .line 1969
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 1971
    .local v1, "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->isPrivate()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1972
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    iget v3, v1, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    .line 1973
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getPresentUIDs()Landroid/util/IntArray;

    move-result-object v4

    .line 1972
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1968
    .end local v1    # "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    :cond_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 1977
    .end local v0    # "displayNdx":I
    :cond_2b
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayAccessUIDs(Landroid/util/SparseArray;)V

    .line 1978
    return-void
.end method

.method updateUserStackLocked(ILcom/android/server/am/ActivityStack;)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "stack"    # Lcom/android/server/am/ActivityStack;

    .line 2261
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    if-eq p1, v0, :cond_14

    .line 2262
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    if-eqz p2, :cond_d

    invoke-virtual {p2}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v1

    goto :goto_11

    :cond_d
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    iget v1, v1, Lcom/android/server/am/ActivityStack;->mStackId:I

    :goto_11
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2264
    :cond_14
    return-void
.end method

.method validateTopActivitiesLocked()V
    .registers 11

    .line 4182
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 4182
    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_f1

    .line 4183
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityDisplay;

    .line 4184
    .local v1, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 4184
    .local v2, "stackNdx":I
    :goto_18
    if-ltz v2, :cond_ed

    .line 4185
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 4186
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 4187
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v4, :cond_27

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    goto :goto_2b

    :cond_27
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v5

    .line 4188
    .local v5, "state":Lcom/android/server/am/ActivityStack$ActivityState;
    :goto_2b
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v6

    if-eqz v6, :cond_99

    .line 4189
    if-nez v4, :cond_4c

    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "validateTop...: null top activity, stack="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e9

    .line 4192
    :cond_4c
    iget-object v6, v3, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 4193
    .local v6, "pausing":Lcom/android/server/am/ActivityRecord;
    if-eqz v6, :cond_71

    if-ne v6, v4, :cond_71

    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "validateTop...: top stack has pausing activity r="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " state="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4196
    :cond_71
    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v5, v7, :cond_98

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v5, v7, :cond_98

    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "validateTop...: activity in front not resumed r="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " state="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4199
    .end local v6    # "pausing":Lcom/android/server/am/ActivityRecord;
    :cond_98
    goto :goto_e9

    .line 4201
    :cond_99
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getResumedActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .line 4202
    .local v6, "resumed":Lcom/android/server/am/ActivityRecord;
    if-eqz v6, :cond_c0

    if-ne v6, v4, :cond_c0

    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "validateTop...: back stack has resumed activity r="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " state="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4205
    :cond_c0
    if-eqz v4, :cond_e9

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v5, v7, :cond_ca

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v5, v7, :cond_e9

    :cond_ca
    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "validateTop...: activity in back resumed r="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " state="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4184
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "state":Lcom/android/server/am/ActivityStack$ActivityState;
    .end local v6    # "resumed":Lcom/android/server/am/ActivityRecord;
    :cond_e9
    :goto_e9
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_18

    .line 4182
    .end local v1    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v2    # "stackNdx":I
    :cond_ed
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_8

    .line 4210
    .end local v0    # "displayNdx":I
    :cond_f1
    return-void
.end method

.method waitActivityVisible(Landroid/content/ComponentName;Landroid/app/WaitResult;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "result"    # Landroid/app/WaitResult;

    .line 1175
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;

    invoke-direct {v0, p1, p2}, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;-><init>(Landroid/content/ComponentName;Landroid/app/WaitResult;)V

    .line 1176
    .local v0, "waitInfo":Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1177
    return-void
.end method

.method wakeUp(Ljava/lang/String;)V
    .registers 7
    .param p1, "reason"    # Ljava/lang/String;

    .line 4893
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.server.am:TURN_ON:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 4894
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 10
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 4245
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 4246
    .local v0, "token":J
    const/4 v2, 0x0

    const-wide v3, 0x10b00000001L

    invoke-super {p0, p1, v3, v4, v2}, Lcom/android/server/wm/ConfigurationContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V

    .line 4247
    nop

    .local v2, "displayNdx":I
    :goto_e
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_29

    .line 4248
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityDisplay;

    .line 4249
    .local v3, "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    const-wide v4, 0x20b00000002L

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/am/ActivityDisplay;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4247
    .end local v3    # "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 4251
    .end local v2    # "displayNdx":I
    :cond_29
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v2

    const-wide v3, 0x10b00000003L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/am/KeyguardController;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4252
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    const-wide v3, 0x10500000004L

    if-eqz v2, :cond_54

    .line 4253
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget v2, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4254
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getResumedActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 4255
    .local v2, "focusedActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_53

    .line 4256
    const-wide v3, 0x10b00000005L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/am/ActivityRecord;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4258
    .end local v2    # "focusedActivity":Lcom/android/server/am/ActivityRecord;
    :cond_53
    goto :goto_58

    .line 4259
    :cond_54
    const/4 v2, -0x1

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4261
    :goto_58
    const-wide v2, 0x10800000006L

    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    iget v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    .line 4262
    invoke-virtual {v4, v5}, Lcom/android/server/am/RecentTasks;->isRecentsComponentHomeActivity(I)Z

    move-result v4

    .line 4261
    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4263
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4264
    return-void
.end method
