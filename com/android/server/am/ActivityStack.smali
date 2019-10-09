.class Lcom/android/server/am/ActivityStack;
.super Lcom/android/server/wm/ConfigurationContainer;
.source "ActivityStack.java"

# interfaces
.implements Lcom/android/server/wm/StackWindowListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityStack$ActivityStackHandler;,
        Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;,
        Lcom/android/server/am/ActivityStack$ActivityState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/server/wm/StackWindowController;",
        ">",
        "Lcom/android/server/wm/ConfigurationContainer;",
        "Lcom/android/server/wm/StackWindowListener;"
    }
.end annotation


# static fields
.field private static final CAST_MODE_EXIT:I = 0x0

.field static final DESTROY_ACTIVITIES_MSG:I = 0x69

.field private static final DESTROY_TIMEOUT:I = 0x2710

.field static final DESTROY_TIMEOUT_MSG:I = 0x66

.field static final FINISH_AFTER_PAUSE:I = 0x1

.field static final FINISH_AFTER_VISIBLE:I = 0x2

.field static final FINISH_IMMEDIATELY:I = 0x0

.field private static final FIT_WITHIN_BOUNDS_DIVIDER:I = 0x3

.field static final LAUNCH_TICK:I = 0x1f4

.field static final LAUNCH_TICK_MSG:I = 0x67

.field private static final MAX_STOPPING_TO_FORCE:I = 0x3

.field private static final PAUSE_TIMEOUT:I = 0x1f4

.field static final PAUSE_TIMEOUT_MSG:I = 0x65

.field protected static final REMOVE_TASK_MODE_DESTROYING:I = 0x0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final REMOVE_TASK_MODE_MOVING:I = 0x1

.field static final REMOVE_TASK_MODE_MOVING_TO_TOP:I = 0x2

.field private static final SHOW_APP_STARTING_PREVIEW:Z = true

.field private static final STOP_TIMEOUT:I = 0x2af8

.field static final STOP_TIMEOUT_MSG:I = 0x68

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_ADD_REMOVE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_APP:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_CLEANUP:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_CONTAINERS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_PAUSE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_RELEASE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_RESULTS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_SAVED_STATE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_STACK:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_STATES:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_SWITCH:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_TASKS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_TRANSITION:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_USER_LEAVING:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_VISIBILITY:Ljava/lang/String; = "ActivityManager"

.field private static final TRANSLUCENT_CONVERSION_TIMEOUT:J = 0x7d0L

.field static final TRANSLUCENT_TIMEOUT_MSG:I = 0x6a

.field private static final mActivityPluginDelegate:Lcom/android/server/am/ActivityPluginDelegate;

.field static final mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;


# instance fields
.field mConfigWillChange:Z

.field mCurrentUser:I

.field private final mDeferredBounds:Landroid/graphics/Rect;

.field private final mDeferredTaskBounds:Landroid/graphics/Rect;

.field private final mDeferredTaskInsetBounds:Landroid/graphics/Rect;

.field mDisplayId:I

.field mForceHidden:Z

.field final mHandler:Landroid/os/Handler;

.field final mLRUActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

.field mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

.field mPausingActivity:Lcom/android/server/am/ActivityRecord;

.field public mPerf:Landroid/util/BoostFramework;

.field mResumedActivity:Lcom/android/server/am/ActivityRecord;

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field final mStackId:I

.field protected final mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private final mTaskHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpBounds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpInsetBounds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpOptions:Landroid/app/ActivityOptions;

.field private final mTmpRect2:Landroid/graphics/Rect;

.field private mTopActivityOccludesKeyguard:Z

.field private mTopDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

.field mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

.field mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateBoundsDeferred:Z

.field private mUpdateBoundsDeferredCalled:Z

.field mWindowContainerController:Lcom/android/server/wm/StackWindowController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 390
    new-instance v0, Lcom/android/internal/app/ActivityTrigger;

    invoke-direct {v0}, Lcom/android/internal/app/ActivityTrigger;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityStack;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    .line 392
    new-instance v0, Lcom/android/server/am/ActivityPluginDelegate;

    invoke-direct {v0}, Lcom/android/server/am/ActivityPluginDelegate;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/am/ActivityPluginDelegate;

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityDisplay;ILcom/android/server/am/ActivityStackSupervisor;IIZ)V
    .registers 10
    .param p1, "display"    # Lcom/android/server/am/ActivityDisplay;
    .param p2, "stackId"    # I
    .param p3, "supervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p4, "windowingMode"    # I
    .param p5, "activityType"    # I
    .param p6, "onTop"    # Z

    .line 468
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-direct {p0}, Lcom/android/server/wm/ConfigurationContainer;-><init>()V

    .line 287
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mPerf:Landroid/util/BoostFramework;

    .line 292
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    .line 299
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    .line 305
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 312
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 319
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    .line 324
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 332
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    .line 333
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 344
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/ActivityStack;->mForceHidden:Z

    .line 348
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mDeferredBounds:Landroid/graphics/Rect;

    .line 349
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mDeferredTaskBounds:Landroid/graphics/Rect;

    .line 350
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mDeferredTaskInsetBounds:Landroid/graphics/Rect;

    .line 358
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mTmpBounds:Landroid/util/SparseArray;

    .line 359
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mTmpInsetBounds:Landroid/util/SparseArray;

    .line 360
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    .line 361
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mTmpOptions:Landroid/app/ActivityOptions;

    .line 364
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    .line 469
    iput-object p3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 470
    iget-object v1, p3, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 471
    new-instance v1, Lcom/android/server/am/ActivityStack$ActivityStackHandler;

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/ActivityStack$ActivityStackHandler;-><init>(Lcom/android/server/am/ActivityStack;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    .line 472
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 473
    iput p2, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 474
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v1}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v1

    iput v1, p0, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    .line 475
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 478
    iget v1, p1, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    iput v1, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    .line 479
    invoke-virtual {p0, p5}, Lcom/android/server/am/ActivityStack;->setActivityType(I)V

    .line 480
    invoke-virtual {p0, p4}, Lcom/android/server/am/ActivityStack;->setWindowingMode(I)V

    .line 482
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isRecentsStackLaunchBehind()Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 483
    const/4 p6, 0x0

    .line 486
    :cond_9c
    iget v1, p1, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, p6, v2}, Lcom/android/server/am/ActivityStack;->createStackWindowController(IZLandroid/graphics/Rect;)Lcom/android/server/wm/StackWindowController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    .line 488
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_af

    goto :goto_b1

    :cond_af
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    :goto_b1
    invoke-direct {p0, p1, v0, p6}, Lcom/android/server/am/ActivityStack;->postAddToDisplay(Lcom/android/server/am/ActivityDisplay;Landroid/graphics/Rect;Z)V

    .line 489
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/ActivityStack;
    .param p1, "x1"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "x2"    # Ljava/lang/String;

    .line 177
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityStack;->destroyActivitiesLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    return-void
.end method

.method private adjustFocusToNextFocusableStack(Ljava/lang/String;Z)Z
    .registers 7
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "allowFocusSelf"    # Z

    .line 3727
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 3728
    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getNextFocusableStackLocked(Lcom/android/server/am/ActivityStack;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 3729
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " adjustFocusToNextFocusableStack"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3730
    .local v1, "myReason":Ljava/lang/String;
    if-nez v0, :cond_1d

    .line 3731
    const/4 v2, 0x0

    return v2

    .line 3734
    :cond_1d
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 3736
    .local v2, "top":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_34

    if-eqz v2, :cond_2d

    iget-boolean v3, v2, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v3, :cond_34

    .line 3739
    :cond_2d
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(Ljava/lang/String;)Z

    move-result v3

    return v3

    .line 3742
    :cond_34
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 3743
    const/4 v3, 0x1

    return v3
.end method

.method private adjustFocusedActivityStack(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V
    .registers 9
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 3668
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v0

    if-eqz v0, :cond_8b

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eq v0, p1, :cond_12

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_12

    goto/16 :goto_8b

    .line 3673
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 3674
    .local v0, "next":Lcom/android/server/am/ActivityRecord;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " adjustFocus"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3676
    .local v1, "myReason":Ljava/lang/String;
    if-ne v0, p1, :cond_35

    .line 3677
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 3678
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 3677
    invoke-virtual {v2, v3, v1}, Lcom/android/server/am/ActivityStackSupervisor;->moveFocusableActivityStackToFrontLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    .line 3679
    return-void

    .line 3682
    :cond_35
    if-eqz v0, :cond_3e

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 3684
    return-void

    .line 3689
    :cond_3e
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    .line 3691
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v2, :cond_74

    .line 3696
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x1

    invoke-virtual {v3, p0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getNextFocusableStackLocked(Lcom/android/server/am/ActivityStack;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 3697
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v3, :cond_5d

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 3698
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, p1}, Lcom/android/server/am/ActivityStackSupervisor;->updateMiuiAnimationInfo(Lcom/android/server/am/ActivityRecord;)V

    .line 3699
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, p1}, Lcom/android/server/am/ActivityStackSupervisor;->setIsMultiWindowMode(Lcom/android/server/am/ActivityRecord;)V

    .line 3704
    :cond_5d
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->adjustFocusToNextFocusableStack(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 3706
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->inMultiWindowMode()Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 3707
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-boolean v4, v5, Lcom/android/server/am/ActivityStackSupervisor;->mNeedScheduleIdle:Z

    .line 3710
    :cond_6d
    return-void

    .line 3714
    :cond_6e
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, v1}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(Ljava/lang/String;)Z

    .line 3715
    return-void

    .line 3692
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_74
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "activity no longer associated with task:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3670
    .end local v0    # "next":Lcom/android/server/am/ActivityRecord;
    .end local v1    # "myReason":Ljava/lang/String;
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_8b
    :goto_8b
    return-void
.end method

.method private bottomTask()Lcom/android/server/am/TaskRecord;
    .registers 3

    .line 981
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 982
    const/4 v0, 0x0

    return-object v0

    .line 984
    :cond_a
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    return-object v0
.end method

.method private canEnterPipOnTaskSwitch(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .registers 8
    .param p1, "pipCandidate"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "toFrontTask"    # Lcom/android/server/am/TaskRecord;
    .param p3, "toFrontActivity"    # Lcom/android/server/am/ActivityRecord;
    .param p4, "opts"    # Landroid/app/ActivityOptions;

    .line 3289
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v0, 0x0

    if-eqz p4, :cond_a

    invoke-virtual {p4}, Landroid/app/ActivityOptions;->disallowEnterPictureInPictureWhileLaunching()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3291
    return v0

    .line 3293
    :cond_a
    if-eqz p1, :cond_29

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_29

    .line 3297
    :cond_13
    if-eqz p2, :cond_1a

    .line 3298
    invoke-virtual {p2}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    goto :goto_1e

    :cond_1a
    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 3299
    .local v1, "targetStack":Lcom/android/server/am/ActivityStack;
    :goto_1e
    if-eqz v1, :cond_27

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isActivityTypeAssistant()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 3301
    return v0

    .line 3303
    :cond_27
    const/4 v0, 0x1

    return v0

    .line 3295
    .end local v1    # "targetStack":Lcom/android/server/am/ActivityStack;
    :cond_29
    :goto_29
    return v0
.end method

.method private canShowWithInsecureKeyguard()Z
    .registers 5

    .line 2232
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    .line 2233
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityDisplay;
    if-eqz v0, :cond_14

    .line 2238
    iget-object v1, v0, Lcom/android/server/am/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getFlags()I

    move-result v1

    .line 2239
    .local v1, "flags":I
    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_12

    const/4 v2, 0x1

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    return v2

    .line 2234
    .end local v1    # "flags":I
    :cond_14
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stack is not attached to any display, stackId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkTranslucentActivityWaiting(Lcom/android/server/am/ActivityRecord;)V
    .registers 4
    .param p1, "top"    # Lcom/android/server/am/ActivityRecord;

    .line 2243
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    if-eq v0, p1, :cond_1a

    .line 2244
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2245
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_13

    .line 2247
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStack;->notifyActivityDrawnLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2248
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    .line 2250
    :cond_13
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2252
    :cond_1a
    return-void
.end method

.method private cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V
    .registers 10
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "cleanServices"    # Z
    .param p3, "setState"    # Z

    .line 4399
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->onActivityRemovedFromStack(Lcom/android/server/am/ActivityRecord;)V

    .line 4401
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->deferRelaunchUntilPaused:Z

    .line 4402
    iput-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    .line 4404
    const/4 v1, 0x0

    if-eqz p3, :cond_14

    .line 4406
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string v3, "cleanupActivityLocked"

    invoke-virtual {p1, v2, v3}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 4408
    iput-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 4412
    :cond_14
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStackSupervisor;->cleanupActivity(Lcom/android/server/am/ActivityRecord;)V

    .line 4416
    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_43

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    if-eqz v2, :cond_43

    .line 4417
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 4418
    .local v3, "apr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/PendingIntentRecord;

    .line 4419
    .local v4, "rec":Lcom/android/server/am/PendingIntentRecord;
    if-eqz v4, :cond_40

    .line 4420
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v4, v0}, Lcom/android/server/am/ActivityManagerService;->cancelIntentSenderLocked(Lcom/android/server/am/PendingIntentRecord;Z)V

    .line 4422
    .end local v3    # "apr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    .end local v4    # "rec":Lcom/android/server/am/PendingIntentRecord;
    :cond_40
    goto :goto_27

    .line 4423
    :cond_41
    iput-object v1, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    .line 4426
    :cond_43
    if-eqz p2, :cond_48

    .line 4427
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4431
    :cond_48
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4434
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->notifyAppRelaunchesCleared(Landroid/os/IBinder;)V

    .line 4435
    return-void
.end method

.method private cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 4503
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    if-eqz v0, :cond_21

    .line 4504
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4505
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/ConnectionRecord;>;"
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    .line 4506
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ConnectionRecord;

    .line 4507
    .local v1, "c":Lcom/android/server/am/ConnectionRecord;
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v3, v1, v2, p1}, Lcom/android/server/am/ActiveServices;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 4508
    .end local v1    # "c":Lcom/android/server/am/ConnectionRecord;
    goto :goto_a

    .line 4509
    :cond_1f
    iput-object v2, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    .line 4511
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/ConnectionRecord;>;"
    :cond_21
    return-void
.end method

.method private clearLaunchTime(Lcom/android/server/am/ActivityRecord;)V
    .registers 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 1362
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1364
    iget-wide v0, p1, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_26

    .line 1365
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchTimeTracker()Lcom/android/server/am/LaunchTimeTracker;

    move-result-object v0

    .line 1366
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v1

    .line 1365
    invoke-virtual {v0, v1}, Lcom/android/server/am/LaunchTimeTracker;->getEntry(I)Lcom/android/server/am/LaunchTimeTracker$Entry;

    move-result-object v0

    .line 1367
    .local v0, "entry":Lcom/android/server/am/LaunchTimeTracker$Entry;
    if-eqz v0, :cond_26

    .line 1368
    iput-wide v2, v0, Lcom/android/server/am/LaunchTimeTracker$Entry;->mFullyDrawnStartTime:J

    iput-wide v2, v0, Lcom/android/server/am/LaunchTimeTracker$Entry;->mLaunchStartTime:J

    .line 1372
    .end local v0    # "entry":Lcom/android/server/am/LaunchTimeTracker$Entry;
    :cond_26
    iput-wide v2, p1, Lcom/android/server/am/ActivityRecord;->fullyDrawnStartTime:J

    iput-wide v2, p1, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    goto :goto_35

    .line 1374
    :cond_2b
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1375
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleTimeoutLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1377
    :goto_35
    return-void
.end method

.method private completePauseLocked(ZLcom/android/server/am/ActivityRecord;)V
    .registers 13
    .param p1, "resumeNext"    # Z
    .param p2, "resuming"    # Lcom/android/server/am/ActivityRecord;

    .line 1682
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1685
    .local v0, "prev":Lcom/android/server/am/ActivityRecord;
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_5f

    .line 1686
    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityRecord;->setWillCloseOrEnterPip(Z)V

    .line 1687
    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v4

    .line 1688
    .local v4, "wasStopping":Z
    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string v6, "completePausedLocked"

    invoke-virtual {v0, v5, v6}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 1689
    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_23

    .line 1691
    const/4 v5, 0x2

    const-string v6, "completedPausedLocked"

    invoke-virtual {p0, v0, v5, v3, v6}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZLjava/lang/String;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    goto :goto_54

    .line 1693
    :cond_23
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_53

    .line 1696
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, v5, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1700
    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->deferRelaunchUntilPaused:Z

    if-eqz v5, :cond_38

    .line 1703
    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->preserveWindowOnDeferredRelaunch:Z

    invoke-virtual {v0, v3, v5}, Lcom/android/server/am/ActivityRecord;->relaunchActivityLocked(ZZ)V

    goto :goto_54

    .line 1705
    :cond_38
    if-eqz v4, :cond_42

    .line 1709
    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string v6, "completePausedLocked"

    invoke-virtual {v0, v5, v6}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    goto :goto_54

    .line 1710
    :cond_42
    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v5, :cond_4c

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v5

    if-eqz v5, :cond_54

    .line 1712
    :cond_4c
    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityRecord;->setDeferHidingClient(Z)V

    .line 1715
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/am/ActivityStack;->addToStopping(Lcom/android/server/am/ActivityRecord;ZZ)V

    goto :goto_54

    .line 1719
    :cond_53
    const/4 v0, 0x0

    .line 1726
    :cond_54
    :goto_54
    if-eqz v0, :cond_5d

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_5d

    .line 1727
    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    .line 1729
    :cond_5d
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1732
    .end local v4    # "wasStopping":Z
    :cond_5f
    if-eqz p1, :cond_85

    .line 1733
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 1734
    .local v4, "topStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v5

    if-nez v5, :cond_73

    .line 1735
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, v4, v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    goto :goto_85

    .line 1737
    :cond_73
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleep()V

    .line 1738
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 1739
    .local v1, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_80

    if-eqz v0, :cond_85

    if-eq v1, v0, :cond_85

    .line 1744
    :cond_80
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 1749
    .end local v1    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "topStack":Lcom/android/server/am/ActivityStack;
    :cond_85
    :goto_85
    if-eqz v0, :cond_e1

    .line 1750
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 1752
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_df

    iget-wide v6, v0, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    cmp-long v1, v6, v4

    if-lez v1, :cond_df

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 1753
    invoke-virtual {v1}, Lcom/android/server/am/BatteryStatsService;->isOnBattery()Z

    move-result v1

    if-eqz v1, :cond_df

    .line 1754
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v6, v6, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v6}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuTimeForPid(I)J

    move-result-wide v6

    iget-wide v8, v0, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    sub-long/2addr v6, v8

    .line 1756
    .local v6, "diff":J
    cmp-long v1, v6, v4

    if-lez v1, :cond_df

    .line 1757
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v1}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v1

    .line 1758
    .local v1, "bsi":Lcom/android/internal/os/BatteryStatsImpl;
    monitor-enter v1

    .line 1759
    :try_start_bc
    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1760
    invoke-virtual {v1, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl;->getProcessStatsLocked(ILjava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v8

    .line 1762
    .local v8, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-eqz v8, :cond_cf

    .line 1763
    invoke-virtual {v8, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addForegroundTimeLocked(J)V

    .line 1767
    :cond_cf
    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1768
    invoke-virtual {v1, v9}, Lcom/android/internal/os/BatteryStatsImpl;->getSysProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;

    move-result-object v9

    .line 1767
    invoke-static {v0, v9, v6, v7}, Lcom/android/server/am/ActivityStackInjector;->addSysAppForegroundTime(Lcom/android/server/am/ActivityRecord;Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;J)V

    .line 1769
    .end local v8    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    monitor-exit v1

    goto :goto_df

    :catchall_dc
    move-exception v2

    monitor-exit v1
    :try_end_de
    .catchall {:try_start_bc .. :try_end_de} :catchall_dc

    throw v2

    .line 1772
    .end local v1    # "bsi":Lcom/android/internal/os/BatteryStatsImpl;
    .end local v6    # "diff":J
    :cond_df
    :goto_df
    iput-wide v4, v0, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    .line 1778
    :cond_e1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    if-eqz v1, :cond_f2

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->hasPinnedStack()Z

    move-result v1

    if-eqz v1, :cond_f2

    goto :goto_f3

    :cond_f2
    move v2, v3

    :goto_f3
    move v1, v2

    .line 1779
    .local v1, "hasPinnedStack":Z
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mAppVisibilitiesChangedSinceLastPause:Z

    if-nez v2, :cond_fc

    if-eqz v1, :cond_107

    .line 1781
    :cond_fc
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-virtual {v2}, Lcom/android/server/am/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 1782
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-boolean v3, v2, Lcom/android/server/am/ActivityStackSupervisor;->mAppVisibilitiesChangedSinceLastPause:Z

    .line 1785
    :cond_107
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, p2, v3, v3}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 1786
    return-void
.end method

.method private containsActivityFromStack(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)Z"
        }
    .end annotation

    .line 1487
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    .local p1, "rs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1488
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-ne v2, p0, :cond_18

    .line 1489
    const/4 v0, 0x1

    return v0

    .line 1491
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_18
    goto :goto_4

    .line 1492
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method private destroyActivitiesLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .registers 11
    .param p1, "owner"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 4520
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v0, 0x0

    .line 4521
    .local v0, "lastIsOpaque":Z
    const/4 v1, 0x0

    .line 4522
    .local v1, "activityRemoved":Z
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "taskNdx":I
    :goto_a
    if-ltz v2, :cond_4a

    .line 4523
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4524
    .local v4, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    .local v5, "activityNdx":I
    :goto_1b
    if-ltz v5, :cond_47

    .line 4525
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityRecord;

    .line 4526
    .local v6, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v7, v6, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v7, :cond_28

    .line 4527
    goto :goto_44

    .line 4529
    :cond_28
    iget-boolean v7, v6, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v7, :cond_2d

    .line 4530
    const/4 v0, 0x1

    .line 4532
    :cond_2d
    if-eqz p1, :cond_34

    iget-object v7, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v7, p1, :cond_34

    .line 4533
    goto :goto_44

    .line 4535
    :cond_34
    if-nez v0, :cond_37

    .line 4536
    goto :goto_44

    .line 4538
    :cond_37
    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->isDestroyable()Z

    move-result v7

    if-eqz v7, :cond_44

    .line 4543
    invoke-virtual {p0, v6, v3, p2}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_44

    .line 4544
    const/4 v1, 0x1

    .line 4524
    .end local v6    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_44
    :goto_44
    add-int/lit8 v5, v5, -0x1

    goto :goto_1b

    .line 4522
    .end local v4    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v5    # "activityNdx":I
    :cond_47
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    .line 4549
    .end local v2    # "taskNdx":I
    :cond_4a
    if-eqz v1, :cond_51

    .line 4550
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 4552
    :cond_51
    return-void
.end method

.method private finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V
    .registers 13
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;

    .line 3965
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 3966
    .local v6, "resultTo":Lcom/android/server/am/ActivityRecord;
    const/4 v7, 0x0

    if-eqz v6, :cond_3b

    .line 3970
    iget v0, v6, Lcom/android/server/am/ActivityRecord;->userId:I

    iget v1, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    if-eq v0, v1, :cond_12

    .line 3971
    if-eqz p3, :cond_12

    .line 3972
    iget v0, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {p3, v0}, Landroid/content/Intent;->prepareToLeaveUser(I)V

    .line 3975
    :cond_12
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-lez v0, :cond_2e

    .line 3976
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 3978
    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v4

    iget v5, v6, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 3976
    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;I)V

    .line 3980
    :cond_2e
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ActivityRecord;->requestCode:I

    move-object v0, v6

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityRecord;->addResultLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 3982
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 3989
    :cond_3b
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 3990
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    .line 3991
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 3992
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 3993
    return-void
.end method

.method private static fitWithinBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 5
    .param p0, "bounds"    # Landroid/graphics/Rect;
    .param p1, "stackBounds"    # Landroid/graphics/Rect;

    .line 5188
    if-eqz p1, :cond_76

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_76

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_76

    .line 5192
    :cond_f
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-lt v0, v1, :cond_1b

    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_42

    .line 5193
    :cond_1b
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 5194
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    .line 5195
    .local v0, "maxRight":I
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 5196
    .local v1, "horizontalDiff":I
    if-gez v1, :cond_2f

    iget v2, p0, Landroid/graphics/Rect;->left:I

    if-ge v2, v0, :cond_34

    :cond_2f
    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    if-lt v2, v0, :cond_38

    .line 5198
    :cond_34
    iget v2, p0, Landroid/graphics/Rect;->left:I

    sub-int v1, v0, v2

    .line 5200
    :cond_38
    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/graphics/Rect;->left:I

    .line 5201
    iget v2, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/graphics/Rect;->right:I

    .line 5204
    .end local v0    # "maxRight":I
    .end local v1    # "horizontalDiff":I
    :cond_42
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-lt v0, v1, :cond_4e

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_75

    .line 5205
    :cond_4e
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 5206
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    .line 5207
    .local v0, "maxBottom":I
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    .line 5208
    .local v1, "verticalDiff":I
    if-gez v1, :cond_62

    iget v2, p0, Landroid/graphics/Rect;->top:I

    if-ge v2, v0, :cond_67

    :cond_62
    iget v2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    if-lt v2, v0, :cond_6b

    .line 5210
    :cond_67
    iget v2, p0, Landroid/graphics/Rect;->top:I

    sub-int v1, v0, v2

    .line 5212
    :cond_6b
    iget v2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/graphics/Rect;->top:I

    .line 5213
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    .line 5215
    .end local v0    # "maxBottom":I
    .end local v1    # "verticalDiff":I
    :cond_75
    return-void

    .line 5189
    :cond_76
    :goto_76
    return-void
.end method

.method private getNextTask(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/TaskRecord;
    .registers 8
    .param p1, "targetTask"    # Lcom/android/server/am/TaskRecord;

    .line 3046
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 3047
    .local v0, "index":I
    if-ltz v0, :cond_2f

    .line 3048
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3049
    .local v1, "numTasks":I
    add-int/lit8 v2, v0, 0x1

    .local v2, "i":I
    :goto_10
    if-ge v2, v1, :cond_2f

    .line 3050
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 3053
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    iget v4, v3, Lcom/android/server/am/TaskRecord;->userId:I

    iget v5, p1, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v4, v5, :cond_2e

    iget v4, v3, Lcom/android/server/am/TaskRecord;->userId:I

    iget v5, p1, Lcom/android/server/am/TaskRecord;->userId:I

    .line 3054
    invoke-static {v4, v5}, Lcom/android/server/am/ActivityStackInjector;->isAllowCross(II)Z

    move-result v4

    if-eqz v4, :cond_2b

    goto :goto_2e

    .line 3049
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 3056
    .restart local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2e
    :goto_2e
    return-object v3

    .line 3060
    .end local v1    # "numTasks":I
    .end local v2    # "i":I
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2f
    const/4 v1, 0x0

    return-object v1
.end method

.method private insertTaskAtBottom(Lcom/android/server/am/TaskRecord;)V
    .registers 6
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .line 3125
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3126
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/ActivityStack;->getAdjustedPositionForTask(Lcom/android/server/am/TaskRecord;ILcom/android/server/am/ActivityRecord;)I

    move-result v0

    .line 3127
    .local v0, "position":I
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3128
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    .line 3129
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/StackWindowController;->positionChildAtBottom(Lcom/android/server/wm/TaskWindowContainerController;Z)V

    .line 3131
    return-void
.end method

.method private insertTaskAtPosition(Lcom/android/server/am/TaskRecord;I)V
    .registers 5
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "position"    # I

    .line 3092
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lt p2, v0, :cond_d

    .line 3093
    invoke-direct {p0, p1, v1}, Lcom/android/server/am/ActivityStack;->insertTaskAtTop(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 3094
    return-void

    .line 3095
    :cond_d
    if-gtz p2, :cond_13

    .line 3096
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->insertTaskAtBottom(Lcom/android/server/am/TaskRecord;)V

    .line 3097
    return-void

    .line 3099
    :cond_13
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/am/ActivityStack;->getAdjustedPositionForTask(Lcom/android/server/am/TaskRecord;ILcom/android/server/am/ActivityRecord;)I

    move-result p2

    .line 3100
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3101
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3102
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/StackWindowController;->positionChildAt(Lcom/android/server/wm/TaskWindowContainerController;I)V

    .line 3103
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    .line 3104
    return-void
.end method

.method private insertTaskAtTop(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V
    .registers 8
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "starting"    # Lcom/android/server/am/ActivityRecord;

    .line 3108
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3110
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/am/ActivityStack;->getAdjustedPositionForTask(Lcom/android/server/am/TaskRecord;ILcom/android/server/am/ActivityRecord;)I

    move-result v0

    .line 3111
    .local v0, "position":I
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3112
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    .line 3114
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-static {p1, v2}, Lcom/android/server/am/ActivityStackInjector;->moveTaskIfNeed(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;)Z

    .line 3118
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v3

    .line 3119
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isRecentsStackLaunchBehind()Z

    move-result v4

    .line 3118
    xor-int/2addr v1, v4

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/StackWindowController;->positionChildAtTop(Lcom/android/server/wm/TaskWindowContainerController;Z)V

    .line 3121
    return-void
.end method

.method private isATopFinishingTask(Lcom/android/server/am/TaskRecord;)Z
    .registers 7
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .line 3653
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    const/4 v2, 0x0

    if-ltz v0, :cond_20

    .line 3654
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 3655
    .local v3, "current":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 3656
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_1a

    .line 3658
    return v2

    .line 3660
    :cond_1a
    if-ne v3, p1, :cond_1d

    .line 3661
    return v1

    .line 3653
    .end local v3    # "current":Lcom/android/server/am/TaskRecord;
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3664
    .end local v0    # "i":I
    :cond_20
    return v2
.end method

.method private isTaskSwitch(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z
    .registers 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "topFocusedActivity"    # Lcom/android/server/am/ActivityRecord;

    .line 3308
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    if-eqz p2, :cond_e

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method static logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V
    .registers 8
    .param p0, "tag"    # I
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "task"    # Lcom/android/server/am/TaskRecord;

    .line 5064
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 5065
    .local v0, "data":Landroid/net/Uri;
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    .line 5067
    .local v1, "strData":Ljava/lang/String;
    :goto_e
    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    .line 5070
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v4, 0x0

    if-eqz v3, :cond_1c

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    goto :goto_1d

    :cond_1c
    move v3, v4

    :goto_1d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 5071
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 5072
    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    aput-object v1, v2, v3

    const/4 v3, 0x7

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 5067
    invoke-static {p0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5073
    return-void
.end method

.method private makeInvisible(Lcom/android/server/am/ActivityRecord;)V
    .registers 10
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 2282
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v0, v1, :cond_15

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sget-object v1, Lcom/android/server/am/ActivityManagerServiceInjector;->sPackageHoldOn:Ljava/lang/String;

    .line 2283
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2284
    return-void

    .line 2288
    :cond_15
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v0, :cond_1a

    .line 2290
    return-void

    .line 2296
    :cond_1a
    :try_start_1a
    const-string/jumbo v0, "makeInvisible"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;Z)Z

    move-result v0

    .line 2299
    .local v0, "canEnterPictureInPicture":Z
    const/4 v2, 0x0

    .line 2300
    .local v2, "isSplitSecondMakeInvisible":Z
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getWindowingMode()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_37

    .line 2301
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getWindowingMode()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_37

    .line 2302
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getWindowingMode()I

    move-result v3

    if-ne v3, v1, :cond_49

    :cond_37
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v3

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v3, v4, :cond_49

    const-string/jumbo v3, "persist.sys.miui_optimization"

    .line 2303
    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 2304
    const/4 v2, 0x1

    .line 2314
    :cond_49
    const/4 v3, 0x0

    if-eqz v0, :cond_5a

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 2315
    invoke-virtual {p1, v4, v5, v6}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v4

    if-nez v4, :cond_5a

    move v4, v1

    goto :goto_5b

    :cond_5a
    move v4, v3

    .line 2316
    .local v4, "deferHidingClient":Z
    :goto_5b
    invoke-virtual {p1, v4}, Lcom/android/server/am/ActivityRecord;->setDeferHidingClient(Z)V

    .line 2317
    invoke-virtual {p1, v3}, Lcom/android/server/am/ActivityRecord;->setVisible(Z)V

    .line 2319
    sget-object v5, Lcom/android/server/am/ActivityStack$1;->$SwitchMap$com$android$server$am$ActivityStack$ActivityState:[I

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_ba

    .line 2319
    .end local v0    # "canEnterPictureInPicture":Z
    .end local v2    # "isSplitSecondMakeInvisible":Z
    .end local v4    # "deferHidingClient":Z
    goto :goto_9b

    .line 2338
    .restart local v0    # "canEnterPictureInPicture":Z
    .restart local v2    # "isSplitSecondMakeInvisible":Z
    .restart local v4    # "deferHidingClient":Z
    :pswitch_71
    if-eqz v0, :cond_77

    if-nez v2, :cond_77

    move v3, v1

    nop

    :cond_77
    invoke-virtual {p0, p1, v1, v3}, Lcom/android/server/am/ActivityStack;->addToStopping(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 2342
    goto :goto_9b

    .line 2322
    :pswitch_7b
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_98

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_98

    .line 2325
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getLifecycleManager()Lcom/android/server/am/ClientLifecycleManager;

    move-result-object v1

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 2326
    invoke-static {v3}, Landroid/app/servertransaction/WindowVisibilityItem;->obtain(Z)Landroid/app/servertransaction/WindowVisibilityItem;

    move-result-object v7

    .line 2325
    invoke-virtual {v1, v5, v6, v7}, Lcom/android/server/am/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 2331
    :cond_98
    iput-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_9a} :catch_9c

    .line 2332
    nop

    .line 2350
    .end local v0    # "canEnterPictureInPicture":Z
    .end local v2    # "isSplitSecondMakeInvisible":Z
    .end local v4    # "deferHidingClient":Z
    :goto_9b
    goto :goto_b9

    .line 2347
    :catch_9c
    move-exception v0

    .line 2349
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown making hidden: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2351
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_b9
    return-void

    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_7b
        :pswitch_7b
        :pswitch_71
        :pswitch_71
        :pswitch_71
        :pswitch_71
    .end packed-switch
.end method

.method private makeVisibleAndRestartIfNeeded(Lcom/android/server/am/ActivityRecord;IZZLcom/android/server/am/ActivityRecord;)Z
    .registers 9
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "configChanges"    # I
    .param p3, "isTop"    # Z
    .param p4, "andResume"    # Z
    .param p5, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 2260
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v0, 0x0

    if-nez p3, :cond_7

    iget-boolean v1, p5, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v1, :cond_22

    .line 2264
    :cond_7
    if-eq p5, p1, :cond_e

    .line 2265
    iget-object v1, p5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p5, v1, p2}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 2267
    :cond_e
    iget-boolean v1, p5, Lcom/android/server/am/ActivityRecord;->visible:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    iget-boolean v1, p5, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v1, :cond_1a

    .line 2269
    :cond_17
    invoke-virtual {p5, v2}, Lcom/android/server/am/ActivityRecord;->setVisible(Z)V

    .line 2271
    :cond_1a
    if-eq p5, p1, :cond_22

    .line 2272
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p5, p4, v0}, Lcom/android/server/am/ActivityStackSupervisor;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 2273
    return v2

    .line 2276
    :cond_22
    return v0
.end method

.method private postAddTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;Z)V
    .registers 7
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "prevStack"    # Lcom/android/server/am/ActivityStack;
    .param p3, "schedulePictureInPictureModeChange"    # Z

    .line 5662
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    if-eqz p3, :cond_a

    if-eqz p2, :cond_a

    .line 5663
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;)V

    goto :goto_19

    .line 5664
    :cond_a
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_19

    .line 5666
    :try_start_e
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    iget v2, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v0, v1, v2}, Landroid/service/voice/IVoiceInteractionSession;->taskStarted(Landroid/content/Intent;I)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_18

    .line 5668
    goto :goto_19

    .line 5667
    :catch_18
    move-exception v0

    .line 5670
    :cond_19
    :goto_19
    return-void
.end method

.method private postAddToDisplay(Lcom/android/server/am/ActivityDisplay;Landroid/graphics/Rect;Z)V
    .registers 12
    .param p1, "activityDisplay"    # Lcom/android/server/am/ActivityDisplay;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "onTop"    # Z

    .line 752
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget v0, p1, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    iput v0, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    .line 753
    invoke-virtual {p0, p2}, Lcom/android/server/am/ActivityStack;->setBounds(Landroid/graphics/Rect;)I

    .line 754
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->onParentChanged()V

    .line 756
    if-eqz p3, :cond_10

    const v0, 0x7fffffff

    goto :goto_12

    :cond_10
    const/high16 v0, -0x80000000

    :goto_12
    invoke-virtual {p1, p0, v0}, Lcom/android/server/am/ActivityDisplay;->addChild(Lcom/android/server/am/ActivityStack;I)V

    .line 757
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 760
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 761
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 760
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 763
    :cond_29
    return-void
.end method

.method private preAddTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;Z)Lcom/android/server/am/ActivityStack;
    .registers 6
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "toTop"    # Z

    .line 5647
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 5648
    .local v0, "prevStack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_11

    if-eq v0, p0, :cond_11

    .line 5649
    nop

    .line 5650
    if-eqz p3, :cond_d

    const/4 v1, 0x2

    goto :goto_e

    :cond_d
    const/4 v1, 0x1

    .line 5649
    :goto_e
    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;I)V

    .line 5652
    :cond_11
    return-object v0
.end method

.method private prepareActivityHideTransitionAnimation(Lcom/android/server/am/ActivityRecord;I)V
    .registers 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "transit"    # I

    .line 4124
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 4125
    invoke-virtual {p1, v1}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V

    .line 4126
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 4127
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 4128
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4130
    :cond_1f
    return-void
.end method

.method private removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V
    .registers 13
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 4446
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/am/ActivityStack;->finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V

    .line 4447
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->makeFinishingLocked()V

    .line 4451
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->takeFromHistory()V

    .line 4452
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4455
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string/jumbo v3, "removeActivityFromHistoryLocked"

    invoke-virtual {p1, v2, v3}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 4457
    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 4458
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->removeWindowContainer()V

    .line 4459
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 4460
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v0, :cond_26

    invoke-virtual {v0, p1}, Lcom/android/server/am/TaskRecord;->removeActivity(Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    goto :goto_27

    :cond_26
    move v2, v1

    .line 4463
    .local v2, "lastActivity":Z
    :goto_27
    if-eqz v0, :cond_2e

    .line 4464
    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->onlyHasTaskOverlayActivities(Z)Z

    move-result v3

    goto :goto_2f

    :cond_2e
    move v3, v1

    .line 4466
    .local v3, "onlyHasTaskOverlays":Z
    :goto_2f
    if-nez v2, :cond_33

    if-eqz v3, :cond_45

    .line 4476
    :cond_33
    if-eqz v3, :cond_40

    .line 4484
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v5, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v9, p2

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStackSupervisor;->removeTaskByIdLocked(IZZZLjava/lang/String;)Z

    .line 4490
    :cond_40
    if-eqz v2, :cond_45

    .line 4491
    invoke-virtual {p0, v0, p2, v1}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;I)V

    .line 4494
    :cond_45
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4495
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->removeUriPermissionsLocked()V

    .line 4496
    return-void
.end method

.method private removeFromDisplay()V
    .registers 3

    .line 770
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    .line 771
    .local v0, "display":Lcom/android/server/am/ActivityDisplay;
    if-eqz v0, :cond_9

    .line 772
    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityDisplay;->removeChild(Lcom/android/server/am/ActivityStack;)V

    .line 774
    :cond_9
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    .line 775
    return-void
.end method

.method private removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .registers 7
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "listName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 4754
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4757
    .local v0, "i":I
    :goto_4
    if-lez v0, :cond_19

    .line 4758
    add-int/lit8 v0, v0, -0x1

    .line 4759
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 4761
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v2, p2, :cond_18

    .line 4763
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4764
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4766
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_18
    goto :goto_4

    .line 4767
    :cond_19
    return-void
.end method

.method private removeHistoryRecordsForAppLocked(Lcom/android/server/am/ProcessRecord;)Z
    .registers 20
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 4770
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    move-object/from16 v0, p0

    .line 4770
    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    const-string/jumbo v3, "mLRUActivities"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 4771
    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    const-string/jumbo v3, "mStoppingActivities"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 4773
    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    const-string/jumbo v3, "mGoingToSleepActivities"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 4775
    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    const-string/jumbo v3, "mActivitiesWaitingForVisibleActivity"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 4777
    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    const-string/jumbo v3, "mFinishingActivities"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 4780
    const/4 v2, 0x0

    .line 4783
    .local v2, "hasVisibleActivities":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->numActivities()I

    move-result v3

    .line 4786
    .local v3, "i":I
    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .line 4786
    .local v4, "taskNdx":I
    :goto_41
    if-ltz v4, :cond_12e

    .line 4787
    iget-object v6, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4788
    .local v6, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    iget-object v7, v0, Lcom/android/server/am/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 4789
    iget-object v7, v0, Lcom/android/server/am/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4791
    :goto_57
    iget-object v7, v0, Lcom/android/server/am/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_12a

    .line 4792
    iget-object v7, v0, Lcom/android/server/am/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v5

    .line 4793
    .local v7, "targetIndex":I
    iget-object v8, v0, Lcom/android/server/am/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    .line 4797
    .local v8, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v9, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v9, v1, :cond_128

    .line 4798
    iget-boolean v9, v8, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v9, :cond_77

    .line 4799
    const/4 v2, 0x1

    .line 4804
    :cond_77
    iget-boolean v9, v8, Lcom/android/server/am/ActivityRecord;->haveState:Z

    const/4 v10, 0x2

    const/4 v11, 0x0

    if-nez v9, :cond_81

    iget-boolean v9, v8, Lcom/android/server/am/ActivityRecord;->stateNotNeeded:Z

    if-eqz v9, :cond_a7

    :cond_81
    iget-boolean v9, v8, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v9, :cond_a7

    iget-object v9, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v9, v9, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-eqz v9, :cond_8c

    goto :goto_a7

    .line 4808
    :cond_8c
    iget-boolean v9, v8, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v9, :cond_a5

    iget v9, v8, Lcom/android/server/am/ActivityRecord;->launchCount:I

    if-le v9, v10, :cond_a5

    iget-wide v12, v8, Lcom/android/server/am/ActivityRecord;->lastLaunchTime:J

    .line 4809
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    const-wide/32 v16, 0xea60

    sub-long v14, v14, v16

    cmp-long v9, v12, v14

    if-lez v9, :cond_a5

    .line 4815
    const/4 v9, 0x1

    goto :goto_a8

    .line 4818
    :cond_a5
    move v9, v11

    goto :goto_a8

    .line 4807
    :cond_a7
    :goto_a7
    const/4 v9, 0x1

    .line 4818
    .local v9, "remove":Z
    :goto_a8
    nop

    .line 4820
    if-eqz v9, :cond_111

    .line 4827
    iget-boolean v12, v8, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v12, :cond_11e

    .line 4828
    const-string v12, "ActivityManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Force removing "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ": app died, no saved state"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4829
    const/16 v12, 0x7531

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/Object;

    .line 4832
    iget-object v14, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v14, :cond_d8

    iget-object v14, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v14, v14, Lcom/android/server/am/ProcessRecord;->pid:I

    goto :goto_d9

    :cond_d8
    move v14, v11

    :goto_d9
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v11

    invoke-static {v8}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v5

    .line 4833
    invoke-virtual {v8}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v14

    iget v14, v14, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v10

    const/4 v10, 0x3

    iget-object v14, v8, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v14, v13, v10

    const/4 v10, 0x4

    const-string/jumbo v14, "proc died without state saved"

    aput-object v14, v13, v10

    .line 4829
    invoke-static {v12, v13}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4835
    invoke-virtual {v8}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v10

    sget-object v12, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v10, v12, :cond_11e

    .line 4836
    iget-object v10, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v10, v8, v11}, Lcom/android/server/am/ActivityManagerService;->updateUsageStats(Lcom/android/server/am/ActivityRecord;Z)V

    goto :goto_11e

    .line 4845
    :cond_111
    const/4 v10, 0x0

    iput-object v10, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 4850
    iget-boolean v11, v8, Lcom/android/server/am/ActivityRecord;->visible:Z

    iput-boolean v11, v8, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    .line 4851
    iget-boolean v11, v8, Lcom/android/server/am/ActivityRecord;->haveState:Z

    if-nez v11, :cond_11e

    .line 4854
    iput-object v10, v8, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 4857
    :cond_11e
    :goto_11e
    invoke-direct {v0, v8, v5, v5}, Lcom/android/server/am/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 4858
    if-eqz v9, :cond_128

    .line 4859
    const-string v10, "appDied"

    invoke-direct {v0, v8, v10}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 4862
    .end local v7    # "targetIndex":I
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v9    # "remove":Z
    :cond_128
    goto/16 :goto_57

    .line 4786
    .end local v6    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_12a
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_41

    .line 4865
    .end local v4    # "taskNdx":I
    :cond_12e
    return v2
.end method

.method private resetAffinityTaskIfNeededLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;ZZI)I
    .registers 36
    .param p1, "affinityTask"    # Lcom/android/server/am/TaskRecord;
    .param p2, "task"    # Lcom/android/server/am/TaskRecord;
    .param p3, "topTaskIsHigher"    # Z
    .param p4, "forceReset"    # Z
    .param p5, "taskInsertionPoint"    # I

    .line 3476
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    move-object/from16 v0, p2

    .line 3476
    const/4 v1, -0x1

    .line 3477
    .local v1, "replyChainEnd":I
    iget v2, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 3478
    .local v2, "taskId":I
    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    .line 3480
    .local v3, "taskAffinity":Ljava/lang/String;
    move-object/from16 v4, p1

    iget-object v5, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3481
    .local v5, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 3482
    .local v6, "numActivities":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->findEffectiveRootIndex()I

    move-result v7

    .line 3485
    .local v7, "rootActivityNdx":I
    add-int/lit8 v8, v6, -0x1

    move v9, v1

    move/from16 v1, p5

    .line 3485
    .end local p5    # "taskInsertionPoint":I
    .local v1, "taskInsertionPoint":I
    .local v8, "i":I
    .local v9, "replyChainEnd":I
    :goto_18
    if-le v8, v7, :cond_132

    .line 3486
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ActivityRecord;

    .line 3487
    .local v10, "target":Lcom/android/server/am/ActivityRecord;
    iget-boolean v11, v10, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v11, :cond_2d

    .line 3488
    nop

    .line 3573
    move/from16 v16, v2

    move-object/from16 v20, v3

    move-object/from16 v2, p0

    goto/16 :goto_138

    .line 3490
    :cond_2d
    iget-object v11, v10, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v11, v11, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3491
    .local v11, "flags":I
    and-int/lit8 v12, v11, 0x2

    const/4 v13, 0x0

    if-eqz v12, :cond_38

    const/4 v12, 0x1

    goto :goto_39

    :cond_38
    move v12, v13

    .line 3492
    .local v12, "finishOnTaskLaunch":Z
    :goto_39
    and-int/lit8 v15, v11, 0x40

    if-eqz v15, :cond_3f

    const/4 v13, 0x1

    nop

    .line 3494
    .local v13, "allowTaskReparenting":Z
    :cond_3f
    iget-object v15, v10, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v15, :cond_4e

    .line 3501
    if-gez v9, :cond_46

    .line 3502
    move v9, v8

    .line 3485
    .end local v2    # "taskId":I
    .end local v3    # "taskAffinity":Ljava/lang/String;
    .end local v10    # "target":Lcom/android/server/am/ActivityRecord;
    .end local v11    # "flags":I
    .end local v12    # "finishOnTaskLaunch":Z
    .end local v13    # "allowTaskReparenting":Z
    .local v16, "taskId":I
    .local v20, "taskAffinity":Ljava/lang/String;
    :cond_46
    move/from16 v16, v2

    move-object/from16 v20, v3

    move-object/from16 v2, p0

    goto/16 :goto_126

    .line 3504
    .end local v16    # "taskId":I
    .end local v20    # "taskAffinity":Ljava/lang/String;
    .restart local v2    # "taskId":I
    .restart local v3    # "taskAffinity":Ljava/lang/String;
    .restart local v10    # "target":Lcom/android/server/am/ActivityRecord;
    .restart local v11    # "flags":I
    .restart local v12    # "finishOnTaskLaunch":Z
    .restart local v13    # "allowTaskReparenting":Z
    :cond_4e
    if-eqz p3, :cond_120

    if-eqz v13, :cond_120

    if-eqz v3, :cond_120

    iget-object v14, v10, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    .line 3507
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_120

    .line 3518
    if-nez p4, :cond_e8

    if-eqz v12, :cond_68

    .line 3519
    move/from16 v16, v2

    move-object/from16 v20, v3

    move-object/from16 v2, p0

    goto/16 :goto_ee

    .line 3531
    :cond_68
    if-gez v1, :cond_73

    .line 3532
    move/from16 v16, v2

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3532
    .end local v2    # "taskId":I
    .restart local v16    # "taskId":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_75

    .line 3536
    .end local v16    # "taskId":I
    .restart local v2    # "taskId":I
    :cond_73
    move/from16 v16, v2

    .line 3536
    .end local v2    # "taskId":I
    .restart local v16    # "taskId":I
    :goto_75
    if-ltz v9, :cond_79

    move v2, v9

    goto :goto_7a

    :cond_79
    move v2, v8

    .line 3540
    .local v2, "start":I
    :goto_7a
    move/from16 v17, v2

    .line 3540
    .local v17, "srcPos":I
    :goto_7c
    move/from16 v18, v17

    .line 3540
    .end local v17    # "srcPos":I
    .local v18, "srcPos":I
    move/from16 v19, v2

    move/from16 v2, v18

    if-lt v2, v8, :cond_9d

    .line 3541
    .end local v18    # "srcPos":I
    .local v2, "srcPos":I
    .local v19, "start":I
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v20, v3

    move-object/from16 v3, v17

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 3542
    .local v3, "p":Lcom/android/server/am/ActivityRecord;
    .restart local v20    # "taskAffinity":Ljava/lang/String;
    const-string/jumbo v4, "resetAffinityTaskIfNeededLocked"

    invoke-virtual {v3, v0, v1, v4}, Lcom/android/server/am/ActivityRecord;->reparent(Lcom/android/server/am/TaskRecord;ILjava/lang/String;)V

    .line 3540
    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    add-int/lit8 v17, v2, -0x1

    .line 3540
    .end local v2    # "srcPos":I
    .restart local v17    # "srcPos":I
    move/from16 v2, v19

    move-object/from16 v3, v20

    move-object/from16 v4, p1

    goto :goto_7c

    .line 3550
    .end local v17    # "srcPos":I
    .end local v20    # "taskAffinity":Ljava/lang/String;
    .local v3, "taskAffinity":Ljava/lang/String;
    :cond_9d
    move-object/from16 v20, v3

    .line 3550
    .end local v3    # "taskAffinity":Ljava/lang/String;
    .restart local v20    # "taskAffinity":Ljava/lang/String;
    move-object/from16 v2, p0

    iget-object v3, v2, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    .line 3551
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/TaskRecord;->getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v4

    .line 3550
    move/from16 v27, v1

    const/4 v1, 0x1

    invoke-virtual {v3, v4, v1}, Lcom/android/server/wm/StackWindowController;->positionChildAtTop(Lcom/android/server/wm/TaskWindowContainerController;Z)V

    .line 3557
    .end local v1    # "taskInsertionPoint":I
    .local v27, "taskInsertionPoint":I
    iget-object v3, v10, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-ne v3, v1, :cond_11b

    .line 3558
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3559
    .local v1, "taskActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 3560
    .local v3, "targetNdx":I
    if-lez v3, :cond_11b

    .line 3561
    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 3562
    .local v4, "p":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v4, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    move-object/from16 v28, v1

    iget-object v1, v10, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 3562
    .end local v1    # "taskActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .local v28, "taskActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11b

    .line 3563
    const/16 v23, 0x0

    const/16 v24, 0x0

    const-string/jumbo v25, "replace"

    const/16 v26, 0x0

    move-object/from16 v21, v2

    move-object/from16 v22, v4

    invoke-virtual/range {v21 .. v26}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .end local v3    # "targetNdx":I
    .end local v4    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v19    # "start":I
    .end local v28    # "taskActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    goto :goto_11b

    .line 3519
    .end local v16    # "taskId":I
    .end local v20    # "taskAffinity":Ljava/lang/String;
    .end local v27    # "taskInsertionPoint":I
    .local v1, "taskInsertionPoint":I
    .local v2, "taskId":I
    .local v3, "taskAffinity":Ljava/lang/String;
    :cond_e8
    move/from16 v16, v2

    move-object/from16 v20, v3

    move-object/from16 v2, p0

    .line 3519
    .end local v2    # "taskId":I
    .end local v3    # "taskAffinity":Ljava/lang/String;
    .restart local v16    # "taskId":I
    .restart local v20    # "taskAffinity":Ljava/lang/String;
    :goto_ee
    if-ltz v9, :cond_f2

    move v0, v9

    goto :goto_f3

    :cond_f2
    move v0, v8

    .line 3522
    .local v0, "start":I
    :goto_f3
    move v3, v0

    .line 3522
    .local v3, "srcPos":I
    :goto_f4
    if-lt v3, v8, :cond_118

    .line 3523
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 3524
    .restart local v4    # "p":Lcom/android/server/am/ActivityRecord;
    move/from16 v29, v0

    iget-boolean v0, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    .line 3524
    .end local v0    # "start":I
    .local v29, "start":I
    if-eqz v0, :cond_103

    .line 3525
    goto :goto_113

    .line 3527
    :cond_103
    const/16 v23, 0x0

    const/16 v24, 0x0

    const-string/jumbo v25, "move-affinity"

    const/16 v26, 0x0

    move-object/from16 v21, v2

    move-object/from16 v22, v4

    invoke-virtual/range {v21 .. v26}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .end local v4    # "p":Lcom/android/server/am/ActivityRecord;
    :goto_113
    add-int/lit8 v3, v3, -0x1

    move/from16 v0, v29

    goto :goto_f4

    .line 3530
    .end local v3    # "srcPos":I
    .end local v29    # "start":I
    :cond_118
    nop

    .line 3570
    move/from16 v27, v1

    .line 3570
    .end local v1    # "taskInsertionPoint":I
    .restart local v27    # "taskInsertionPoint":I
    :cond_11b
    :goto_11b
    const/4 v0, -0x1

    .line 3485
    .end local v9    # "replyChainEnd":I
    .end local v10    # "target":Lcom/android/server/am/ActivityRecord;
    .end local v11    # "flags":I
    .end local v12    # "finishOnTaskLaunch":Z
    .end local v13    # "allowTaskReparenting":Z
    .local v0, "replyChainEnd":I
    move v9, v0

    move/from16 v1, v27

    goto :goto_126

    .line 3485
    .end local v0    # "replyChainEnd":I
    .end local v16    # "taskId":I
    .end local v20    # "taskAffinity":Ljava/lang/String;
    .end local v27    # "taskInsertionPoint":I
    .restart local v1    # "taskInsertionPoint":I
    .restart local v2    # "taskId":I
    .local v3, "taskAffinity":Ljava/lang/String;
    .restart local v9    # "replyChainEnd":I
    :cond_120
    move/from16 v16, v2

    move-object/from16 v20, v3

    move-object/from16 v2, p0

    .line 3485
    .end local v2    # "taskId":I
    .end local v3    # "taskAffinity":Ljava/lang/String;
    .restart local v16    # "taskId":I
    .restart local v20    # "taskAffinity":Ljava/lang/String;
    :goto_126
    add-int/lit8 v8, v8, -0x1

    move/from16 v2, v16

    move-object/from16 v3, v20

    move-object/from16 v0, p2

    move-object/from16 v4, p1

    goto/16 :goto_18

    .line 3573
    .end local v8    # "i":I
    .end local v16    # "taskId":I
    .end local v20    # "taskAffinity":Ljava/lang/String;
    .restart local v2    # "taskId":I
    .restart local v3    # "taskAffinity":Ljava/lang/String;
    :cond_132
    move/from16 v16, v2

    move-object/from16 v20, v3

    move-object/from16 v2, p0

    .line 3573
    .end local v2    # "taskId":I
    .end local v3    # "taskAffinity":Ljava/lang/String;
    .restart local v16    # "taskId":I
    .restart local v20    # "taskAffinity":Ljava/lang/String;
    :goto_138
    return v1
.end method

.method private resetTargetTaskIfNeededLocked(Lcom/android/server/am/TaskRecord;Z)Landroid/app/ActivityOptions;
    .registers 29
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "forceReset"    # Z

    .line 3324
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 3324
    const/4 v0, 0x0

    .line 3326
    .local v0, "topOptions":Landroid/app/ActivityOptions;
    const/4 v1, -0x1

    .line 3327
    .local v1, "replyChainEnd":I
    const/4 v2, 0x1

    .line 3331
    .local v2, "canMoveOptions":Z
    iget-object v9, v8, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3332
    .local v9, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 3333
    .local v10, "numActivities":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->findEffectiveRootIndex()I

    move-result v11

    .line 3334
    .local v11, "rootActivityNdx":I
    add-int/lit8 v3, v10, -0x1

    move-object v12, v0

    move v13, v1

    move v14, v2

    .line 3334
    .end local v0    # "topOptions":Landroid/app/ActivityOptions;
    .end local v1    # "replyChainEnd":I
    .end local v2    # "canMoveOptions":Z
    .local v3, "i":I
    .local v12, "topOptions":Landroid/app/ActivityOptions;
    .local v13, "replyChainEnd":I
    .local v14, "canMoveOptions":Z
    :goto_16
    move v15, v3

    .line 3334
    .end local v3    # "i":I
    .local v15, "i":I
    if-le v15, v11, :cond_192

    .line 3335
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/am/ActivityRecord;

    .line 3336
    .local v6, "target":Lcom/android/server/am/ActivityRecord;
    iget-boolean v0, v6, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v0, :cond_26

    .line 3337
    goto/16 :goto_192

    .line 3339
    :cond_26
    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3340
    .local v5, "flags":I
    and-int/lit8 v0, v5, 0x2

    const/16 v16, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_34

    move/from16 v0, v16

    goto :goto_35

    :cond_34
    move v0, v4

    :goto_35
    move/from16 v17, v0

    .line 3342
    .local v17, "finishOnTaskLaunch":Z
    and-int/lit8 v0, v5, 0x40

    if-eqz v0, :cond_3e

    move/from16 v0, v16

    goto :goto_3f

    :cond_3e
    move v0, v4

    :goto_3f
    move/from16 v18, v0

    .line 3344
    .local v18, "allowTaskReparenting":Z
    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 3345
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_4f

    move/from16 v0, v16

    goto :goto_50

    :cond_4f
    move v0, v4

    :goto_50
    move/from16 v19, v0

    .line 3347
    .local v19, "clearWhenTaskReset":Z
    if-nez v17, :cond_60

    if-nez v19, :cond_60

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_60

    .line 3356
    if-gez v13, :cond_18c

    .line 3357
    move v0, v15

    .line 3334
    .end local v5    # "flags":I
    .end local v6    # "target":Lcom/android/server/am/ActivityRecord;
    .end local v17    # "finishOnTaskLaunch":Z
    .end local v18    # "allowTaskReparenting":Z
    .end local v19    # "clearWhenTaskReset":Z
    :goto_5d
    move v13, v0

    goto/16 :goto_18c

    .line 3359
    .restart local v5    # "flags":I
    .restart local v6    # "target":Lcom/android/server/am/ActivityRecord;
    .restart local v17    # "finishOnTaskLaunch":Z
    .restart local v18    # "allowTaskReparenting":Z
    .restart local v19    # "clearWhenTaskReset":Z
    :cond_60
    if-nez v17, :cond_121

    if-nez v19, :cond_121

    if-eqz v18, :cond_121

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v0, :cond_121

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v1, v8, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    .line 3363
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_121

    .line 3372
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9d

    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9d

    .line 3373
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    goto :goto_9e

    :cond_9d
    const/4 v0, 0x0

    :goto_9e
    move-object v3, v0

    .line 3374
    .local v3, "bottom":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_bd

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v0, :cond_bd

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    .line 3375
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 3379
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 3391
    .local v0, "targetTask":Lcom/android/server/am/TaskRecord;
    move-object/from16 v23, v3

    move/from16 v20, v5

    move-object v8, v6

    goto :goto_e5

    .line 3383
    .end local v0    # "targetTask":Lcom/android/server/am/TaskRecord;
    :cond_bd
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v1, v6, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 3384
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskIdForUserLocked(I)I

    move-result v1

    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const/16 v16, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 3383
    move-object v0, v7

    move-object/from16 v23, v3

    move-object/from16 v3, v16

    .line 3383
    .end local v3    # "bottom":Lcom/android/server/am/ActivityRecord;
    .local v23, "bottom":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v4, v20

    move/from16 v20, v5

    move-object/from16 v5, v21

    .line 3383
    .end local v5    # "flags":I
    .local v20, "flags":I
    move-object v8, v6

    move/from16 v6, v22

    .line 3383
    .end local v6    # "target":Lcom/android/server/am/ActivityRecord;
    .local v8, "target":Lcom/android/server/am/ActivityRecord;
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 3386
    .restart local v0    # "targetTask":Lcom/android/server/am/TaskRecord;
    iget-object v1, v8, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iput-object v1, v0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    .line 3391
    :goto_e5
    move v1, v14

    .line 3392
    .local v1, "noOptions":Z
    if-gez v13, :cond_ea

    move v2, v15

    goto :goto_eb

    :cond_ea
    move v2, v13

    .line 3393
    .local v2, "start":I
    :goto_eb
    move v3, v1

    move v1, v2

    .line 3393
    .local v1, "srcPos":I
    .local v3, "noOptions":Z
    :goto_ed
    if-lt v1, v15, :cond_114

    .line 3394
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 3395
    .local v4, "p":Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_fd

    .line 3396
    nop

    .line 3393
    move v5, v14

    const/4 v14, 0x0

    goto :goto_110

    .line 3399
    :cond_fd
    const/4 v5, 0x0

    .line 3400
    .end local v14    # "canMoveOptions":Z
    .local v5, "canMoveOptions":Z
    if-eqz v3, :cond_109

    if-nez v12, :cond_109

    .line 3401
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->takeOptionsLocked()Landroid/app/ActivityOptions;

    move-result-object v12

    .line 3402
    if-eqz v12, :cond_109

    .line 3403
    const/4 v3, 0x0

    .line 3411
    :cond_109
    const-string/jumbo v6, "resetTargetTaskIfNeeded"

    const/4 v14, 0x0

    invoke-virtual {v4, v0, v14, v6}, Lcom/android/server/am/ActivityRecord;->reparent(Lcom/android/server/am/TaskRecord;ILjava/lang/String;)V

    .line 3393
    .end local v4    # "p":Lcom/android/server/am/ActivityRecord;
    :goto_110
    add-int/lit8 v1, v1, -0x1

    move v14, v5

    goto :goto_ed

    .line 3414
    .end local v1    # "srcPos":I
    .end local v5    # "canMoveOptions":Z
    .restart local v14    # "canMoveOptions":Z
    :cond_114
    const/4 v1, 0x0

    iget-object v4, v7, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    .line 3415
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v5

    .line 3414
    invoke-virtual {v4, v5, v1}, Lcom/android/server/wm/StackWindowController;->positionChildAtBottom(Lcom/android/server/wm/TaskWindowContainerController;Z)V

    .line 3416
    const/4 v0, -0x1

    .line 3417
    .end local v2    # "start":I
    .end local v3    # "noOptions":Z
    .end local v13    # "replyChainEnd":I
    .end local v23    # "bottom":Lcom/android/server/am/ActivityRecord;
    .local v0, "replyChainEnd":I
    goto/16 :goto_5d

    .line 3417
    .end local v0    # "replyChainEnd":I
    .end local v8    # "target":Lcom/android/server/am/ActivityRecord;
    .end local v20    # "flags":I
    .local v5, "flags":I
    .restart local v6    # "target":Lcom/android/server/am/ActivityRecord;
    .restart local v13    # "replyChainEnd":I
    :cond_121
    move/from16 v20, v5

    move-object v8, v6

    .line 3417
    .end local v5    # "flags":I
    .end local v6    # "target":Lcom/android/server/am/ActivityRecord;
    .restart local v8    # "target":Lcom/android/server/am/ActivityRecord;
    .restart local v20    # "flags":I
    if-nez p2, :cond_12e

    if-nez v17, :cond_12e

    if-eqz v19, :cond_12b

    goto :goto_12e

    .line 3459
    :cond_12b
    const/4 v0, -0x1

    .line 3459
    .end local v8    # "target":Lcom/android/server/am/ActivityRecord;
    .end local v13    # "replyChainEnd":I
    .end local v17    # "finishOnTaskLaunch":Z
    .end local v18    # "allowTaskReparenting":Z
    .end local v19    # "clearWhenTaskReset":Z
    .end local v20    # "flags":I
    .restart local v0    # "replyChainEnd":I
    goto/16 :goto_5d

    .line 3423
    .end local v0    # "replyChainEnd":I
    .restart local v8    # "target":Lcom/android/server/am/ActivityRecord;
    .restart local v13    # "replyChainEnd":I
    .restart local v17    # "finishOnTaskLaunch":Z
    .restart local v18    # "allowTaskReparenting":Z
    .restart local v19    # "clearWhenTaskReset":Z
    .restart local v20    # "flags":I
    :cond_12e
    :goto_12e
    if-eqz v19, :cond_137

    .line 3427
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 3427
    .local v0, "end":I
    :goto_136
    goto :goto_13c

    .line 3428
    .end local v0    # "end":I
    :cond_137
    if-gez v13, :cond_13b

    .line 3429
    move v0, v15

    goto :goto_136

    .line 3431
    :cond_13b
    move v0, v13

    .line 3433
    .restart local v0    # "end":I
    :goto_13c
    move v1, v14

    .line 3434
    .local v1, "noOptions":Z
    move-object v2, v12

    move v12, v0

    move v0, v15

    .line 3434
    .local v0, "srcPos":I
    .local v2, "topOptions":Landroid/app/ActivityOptions;
    .local v12, "end":I
    :goto_140
    move v5, v0

    .line 3434
    .end local v0    # "srcPos":I
    .local v5, "srcPos":I
    if-gt v5, v12, :cond_188

    .line 3435
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 3436
    .restart local v4    # "p":Lcom/android/server/am/ActivityRecord;
    iget-boolean v0, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_14f

    .line 3437
    goto :goto_185

    .line 3439
    :cond_14f
    const/4 v14, 0x0

    .line 3440
    if-eqz v1, :cond_15b

    if-nez v2, :cond_15b

    .line 3441
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->takeOptionsLocked()Landroid/app/ActivityOptions;

    move-result-object v2

    .line 3442
    if-eqz v2, :cond_15b

    .line 3443
    const/4 v1, 0x0

    .line 3448
    .end local v1    # "noOptions":Z
    .end local v2    # "topOptions":Landroid/app/ActivityOptions;
    .local v21, "topOptions":Landroid/app/ActivityOptions;
    .local v22, "noOptions":Z
    :cond_15b
    move/from16 v22, v1

    move-object/from16 v21, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string/jumbo v23, "reset-task"

    const/16 v24, 0x0

    move-object v0, v7

    move-object v1, v4

    move-object/from16 v25, v4

    move-object/from16 v4, v23

    .end local v4    # "p":Lcom/android/server/am/ActivityRecord;
    .local v25, "p":Lcom/android/server/am/ActivityRecord;
    move/from16 v23, v5

    move/from16 v5, v24

    .line 3448
    .end local v5    # "srcPos":I
    .local v23, "srcPos":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_17f

    .line 3450
    add-int/lit8 v12, v12, -0x1

    .line 3451
    add-int/lit8 v5, v23, -0x1

    .line 3434
    .end local v23    # "srcPos":I
    .end local v25    # "p":Lcom/android/server/am/ActivityRecord;
    .restart local v5    # "srcPos":I
    move-object/from16 v2, v21

    move/from16 v1, v22

    goto :goto_185

    .line 3434
    .end local v5    # "srcPos":I
    .restart local v23    # "srcPos":I
    :cond_17f
    move-object/from16 v2, v21

    move/from16 v1, v22

    move/from16 v5, v23

    .line 3434
    .end local v21    # "topOptions":Landroid/app/ActivityOptions;
    .end local v22    # "noOptions":Z
    .end local v23    # "srcPos":I
    .restart local v1    # "noOptions":Z
    .restart local v2    # "topOptions":Landroid/app/ActivityOptions;
    .restart local v5    # "srcPos":I
    :goto_185
    add-int/lit8 v0, v5, 0x1

    .line 3434
    .end local v5    # "srcPos":I
    .restart local v0    # "srcPos":I
    goto :goto_140

    .line 3454
    .end local v0    # "srcPos":I
    :cond_188
    const/4 v0, -0x1

    .line 3455
    .end local v1    # "noOptions":Z
    .end local v12    # "end":I
    .end local v13    # "replyChainEnd":I
    .local v0, "replyChainEnd":I
    nop

    .line 3334
    move v13, v0

    move-object v12, v2

    .line 3334
    .end local v0    # "replyChainEnd":I
    .end local v2    # "topOptions":Landroid/app/ActivityOptions;
    .end local v8    # "target":Lcom/android/server/am/ActivityRecord;
    .end local v17    # "finishOnTaskLaunch":Z
    .end local v18    # "allowTaskReparenting":Z
    .end local v19    # "clearWhenTaskReset":Z
    .end local v20    # "flags":I
    .local v12, "topOptions":Landroid/app/ActivityOptions;
    .restart local v13    # "replyChainEnd":I
    :cond_18c
    :goto_18c
    add-int/lit8 v3, v15, -0x1

    .line 3334
    .end local v15    # "i":I
    .local v3, "i":I
    move-object/from16 v8, p1

    goto/16 :goto_16

    .line 3463
    .end local v3    # "i":I
    :cond_192
    :goto_192
    return-object v12
.end method

.method private resumeTopActivityInNextFocusableStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Ljava/lang/String;)Z
    .registers 7
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "reason"    # Ljava/lang/String;

    .line 3025
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0, p3}, Lcom/android/server/am/ActivityStack;->adjustFocusToNextFocusableStack(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_19

    .line 3030
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-boolean v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mNeedScheduleIdle:Z

    .line 3031
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 3032
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    const/4 v2, 0x0

    .line 3031
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v0

    return v0

    .line 3036
    :cond_19
    invoke-static {p2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 3041
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 3042
    invoke-virtual {v0, p1, p3}, Lcom/android/server/am/ActivityStackSupervisor;->resumeHomeStackTask(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v1, 0x0

    .line 3041
    :goto_2c
    return v1
.end method

.method private resumeTopActivityInnerLocked(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .registers 30
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mService"
    .end annotation

    .line 2535
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 2535
    move-object/from16 v9, p2

    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    const/4 v10, 0x0

    if-nez v0, :cond_14

    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-nez v0, :cond_14

    .line 2537
    return v10

    .line 2543
    :cond_14
    const/4 v11, 0x1

    invoke-direct {v7, v11}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    .line 2545
    .local v12, "next":Lcom/android/server/am/ActivityRecord;
    if-eqz v12, :cond_1d

    move v0, v11

    goto :goto_1e

    :cond_1d
    move v0, v10

    :goto_1e
    move v13, v0

    .line 2548
    .local v13, "hasRunningActivity":Z
    if-eqz v13, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v0

    if-nez v0, :cond_28

    .line 2549
    return v10

    .line 2552
    :cond_28
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->cancelInitializingActivities()V

    .line 2556
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    .line 2557
    .local v0, "userLeaving":Z
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-boolean v10, v1, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    .line 2559
    if-nez v13, :cond_3f

    .line 2561
    const-string/jumbo v1, "noMoreActivities"

    invoke-direct {v7, v8, v9, v1}, Lcom/android/server/am/ActivityStack;->resumeTopActivityInNextFocusableStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 2564
    :cond_3f
    iput-boolean v10, v12, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    .line 2567
    iget-boolean v1, v12, Lcom/android/server/am/ActivityRecord;->mIsCastMode:Z

    if-eqz v1, :cond_4e

    .line 2568
    invoke-virtual {v7, v0, v10, v12, v10}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZLcom/android/server/am/ActivityRecord;Z)Z

    .line 2569
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->resumeCastActivity()V

    .line 2570
    return v11

    .line 2575
    :cond_4e
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v1, v12, :cond_66

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v12, v1}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v1

    if-eqz v1, :cond_66

    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 2576
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesComplete()Z

    move-result v1

    if-eqz v1, :cond_66

    .line 2579
    invoke-virtual {v7, v9}, Lcom/android/server/am/ActivityStack;->executeAppTransition(Landroid/app/ActivityOptions;)V

    .line 2583
    return v10

    .line 2588
    :cond_66
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v1

    if-eqz v1, :cond_7c

    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v1, v12, :cond_7c

    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 2590
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->allPausedActivitiesComplete()Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 2593
    invoke-virtual {v7, v9}, Lcom/android/server/am/ActivityStack;->executeAppTransition(Landroid/app/ActivityOptions;)V

    .line 2597
    return v10

    .line 2603
    :cond_7c
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v2, v12, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/UserController;->hasStartedUserState(I)Z

    move-result v1

    if-nez v1, :cond_ae

    .line 2604
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping resume of top activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v12, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is stopped"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2607
    return v10

    .line 2612
    :cond_ae
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2613
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2614
    iput-boolean v10, v12, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 2615
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2616
    iput-boolean v11, v12, Lcom/android/server/am/ActivityRecord;->launching:Z

    .line 2620
    sget-object v1, Lcom/android/server/am/ActivityStack;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    if-eqz v1, :cond_d8

    .line 2621
    sget-object v1, Lcom/android/server/am/ActivityStack;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    iget-object v2, v12, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v3, v12, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v12, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v5, v12, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/app/ActivityTrigger;->activityResumeTrigger(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;Z)V

    .line 2625
    :cond_d8
    sget-object v1, Lcom/android/server/am/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/am/ActivityPluginDelegate;

    if-eqz v1, :cond_e7

    .line 2626
    sget-object v1, Lcom/android/server/am/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/am/ActivityPluginDelegate;

    iget-object v1, v12, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-boolean v2, v12, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    .line 2627
    invoke-static {v1, v2}, Lcom/android/server/am/ActivityPluginDelegate;->activityInvokeNotification(Ljava/lang/String;Z)V

    .line 2631
    :cond_e7
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->allPausedActivitiesComplete()Z

    move-result v1

    if-nez v1, :cond_f0

    .line 2635
    return v10

    .line 2639
    :cond_f0
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v12, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, v12, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->setLaunchSource(ILjava/lang/String;)V

    .line 2643
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mPerf:Landroid/util/BoostFramework;

    if-nez v1, :cond_10a

    .line 2644
    new-instance v1, Landroid/util/BoostFramework;

    invoke-direct {v1}, Landroid/util/BoostFramework;-><init>()V

    iput-object v1, v7, Lcom/android/server/am/ActivityStack;->mPerf:Landroid/util/BoostFramework;

    .line 2646
    :cond_10a
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v12, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v3, v12, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2, v3, v11}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v14

    .line 2648
    .local v14, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v14, :cond_128

    iget-object v1, v14, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_128

    .line 2649
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mPerf:Landroid/util/BoostFramework;

    const/16 v2, 0x1082

    iget-object v3, v12, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4, v11}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 2654
    :cond_128
    const/4 v1, 0x0

    .line 2655
    .local v1, "lastResumedCanPip":Z
    const/4 v2, 0x0

    .line 2656
    .local v2, "lastResumed":Lcom/android/server/am/ActivityRecord;
    iget-object v3, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getLastStack()Lcom/android/server/am/ActivityStack;

    move-result-object v15

    .line 2657
    .local v15, "lastFocusedStack":Lcom/android/server/am/ActivityStack;
    if-eqz v15, :cond_154

    if-eq v15, v7, :cond_154

    .line 2660
    iget-object v2, v15, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2661
    if-eqz v0, :cond_145

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->inMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_145

    invoke-virtual {v15, v12}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result v3

    if-eqz v3, :cond_145

    .line 2666
    const/4 v0, 0x0

    .line 2668
    :cond_145
    if-eqz v2, :cond_152

    const-string/jumbo v3, "resumeTopActivity"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/am/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_152

    move v3, v11

    goto :goto_153

    :cond_152
    move v3, v10

    :goto_153
    move v1, v3

    .line 2675
    .end local v0    # "userLeaving":Z
    .end local v1    # "lastResumedCanPip":Z
    .end local v2    # "lastResumed":Lcom/android/server/am/ActivityRecord;
    .local v5, "lastResumed":Lcom/android/server/am/ActivityRecord;
    .local v6, "userLeaving":Z
    .local v16, "lastResumedCanPip":Z
    :cond_154
    move v6, v0

    move/from16 v16, v1

    move-object v5, v2

    iget-object v0, v12, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_164

    if-nez v16, :cond_164

    move v0, v11

    goto :goto_165

    :cond_164
    move v0, v10

    :goto_165
    move/from16 v17, v0

    .line 2678
    .local v17, "resumeWhilePausing":Z
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, v6, v12, v10}, Lcom/android/server/am/ActivityStackSupervisor;->pauseBackStacks(ZLcom/android/server/am/ActivityRecord;Z)Z

    move-result v0

    .line 2682
    .local v0, "pausing":Z
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_17a

    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eq v1, v12, :cond_17a

    .line 2685
    invoke-virtual {v7, v6, v10, v12, v10}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZLcom/android/server/am/ActivityRecord;Z)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2687
    .end local v0    # "pausing":Z
    .local v18, "pausing":Z
    :cond_17a
    move/from16 v18, v0

    const/4 v4, 0x0

    if-eqz v18, :cond_198

    if-nez v17, :cond_198

    .line 2694
    iget-object v0, v12, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_192

    iget-object v0, v12, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_192

    .line 2695
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v12, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1, v11, v4}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 2698
    :cond_192
    if-eqz v5, :cond_197

    .line 2699
    invoke-virtual {v5, v11}, Lcom/android/server/am/ActivityRecord;->setWillCloseOrEnterPip(Z)V

    .line 2701
    :cond_197
    return v11

    .line 2702
    :cond_198
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v0, v12, :cond_1b0

    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v12, v0}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_1b0

    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 2703
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesComplete()Z

    move-result v0

    if-eqz v0, :cond_1b0

    .line 2709
    invoke-virtual {v7, v9}, Lcom/android/server/am/ActivityStack;->executeAppTransition(Landroid/app/ActivityOptions;)V

    .line 2713
    return v11

    .line 2719
    :cond_1b0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->shouldSleepActivities()Z

    move-result v0

    if-eqz v0, :cond_1dc

    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_1dc

    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_1dc

    .line 2723
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v3, 0x0

    const/4 v0, 0x0

    const-string/jumbo v19, "resume-no-history"

    const/16 v20, 0x0

    move-object v1, v7

    move-object v11, v4

    move-object v4, v0

    move-object/from16 v22, v5

    move-object/from16 v5, v19

    .end local v5    # "lastResumed":Lcom/android/server/am/ActivityRecord;
    .local v22, "lastResumed":Lcom/android/server/am/ActivityRecord;
    move/from16 v19, v6

    move/from16 v6, v20

    .line 2723
    .end local v6    # "userLeaving":Z
    .local v19, "userLeaving":Z
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 2725
    iput-object v11, v7, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    goto :goto_1e1

    .line 2728
    .end local v19    # "userLeaving":Z
    .end local v22    # "lastResumed":Lcom/android/server/am/ActivityRecord;
    .restart local v5    # "lastResumed":Lcom/android/server/am/ActivityRecord;
    .restart local v6    # "userLeaving":Z
    :cond_1dc
    move-object v11, v4

    move-object/from16 v22, v5

    move/from16 v19, v6

    .line 2728
    .end local v5    # "lastResumed":Lcom/android/server/am/ActivityRecord;
    .end local v6    # "userLeaving":Z
    .restart local v19    # "userLeaving":Z
    .restart local v22    # "lastResumed":Lcom/android/server/am/ActivityRecord;
    :goto_1e1
    if-eqz v8, :cond_204

    if-eq v8, v12, :cond_204

    .line 2729
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1fd

    if-eqz v12, :cond_1fd

    iget-boolean v0, v12, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-nez v0, :cond_1fd

    .line 2731
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_204

    .line 2743
    :cond_1fd
    iget-boolean v0, v8, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_204

    .line 2744
    invoke-virtual {v8, v10}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V

    .line 2762
    :cond_204
    :goto_204
    :try_start_204
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v1, v12, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget v2, v12, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-interface {v0, v1, v10, v2}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_20f
    .catch Landroid/os/RemoteException; {:try_start_204 .. :try_end_20f} :catch_232
    .catch Ljava/lang/IllegalArgumentException; {:try_start_204 .. :try_end_20f} :catch_210

    goto :goto_233

    .line 2765
    :catch_210
    move-exception v0

    .line 2766
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed trying to unstop package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v12, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_234

    .line 2764
    :catch_232
    move-exception v0

    .line 2768
    :goto_233
    nop

    .line 2773
    :goto_234
    const/4 v0, 0x1

    .line 2774
    .local v0, "anim":Z
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mPerf:Landroid/util/BoostFramework;

    if-nez v1, :cond_240

    .line 2775
    new-instance v1, Landroid/util/BoostFramework;

    invoke-direct {v1}, Landroid/util/BoostFramework;-><init>()V

    iput-object v1, v7, Lcom/android/server/am/ActivityStack;->mPerf:Landroid/util/BoostFramework;

    .line 2777
    :cond_240
    const/4 v1, 0x6

    if-eqz v8, :cond_2c6

    .line 2778
    iget-boolean v2, v8, Lcom/android/server/am/ActivityRecord;->finishing:Z

    const/16 v3, 0x1083

    if-eqz v2, :cond_286

    .line 2781
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25a

    .line 2782
    const/4 v0, 0x0

    .line 2783
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v10, v10}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto :goto_282

    .line 2785
    :cond_25a
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    if-ne v2, v4, :cond_268

    .line 2786
    const/4 v2, 0x7

    goto :goto_26a

    .line 2787
    :cond_268
    const/16 v2, 0x9

    .line 2785
    :goto_26a
    invoke-virtual {v1, v2, v10}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 2788
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    if-eq v1, v2, :cond_282

    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mPerf:Landroid/util/BoostFramework;

    if-eqz v1, :cond_282

    .line 2789
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mPerf:Landroid/util/BoostFramework;

    iget-object v2, v12, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;)I

    .line 2792
    :cond_282
    :goto_282
    invoke-virtual {v8, v10}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V

    goto :goto_2d6

    .line 2796
    :cond_286
    iget-object v2, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_297

    .line 2797
    const/4 v0, 0x0

    .line 2798
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v10, v10}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto :goto_2d6

    .line 2800
    :cond_297
    iget-object v2, v7, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    if-ne v4, v5, :cond_2a4

    .line 2801
    goto :goto_2ad

    .line 2802
    :cond_2a4
    iget-boolean v1, v12, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v1, :cond_2ab

    .line 2803
    const/16 v1, 0x10

    goto :goto_2ad

    .line 2804
    :cond_2ab
    const/16 v1, 0x8

    .line 2800
    :goto_2ad
    invoke-virtual {v2, v1, v10}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 2805
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    if-eq v1, v2, :cond_2d6

    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mPerf:Landroid/util/BoostFramework;

    if-eqz v1, :cond_2d6

    .line 2806
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mPerf:Landroid/util/BoostFramework;

    iget-object v2, v12, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;)I

    goto :goto_2d6

    .line 2812
    :cond_2c6
    iget-object v2, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d9

    .line 2813
    const/4 v0, 0x0

    .line 2814
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v10, v10}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 2820
    .end local v0    # "anim":Z
    .local v20, "anim":Z
    :cond_2d6
    :goto_2d6
    move/from16 v20, v0

    goto :goto_2df

    .line 2816
    .end local v20    # "anim":Z
    .restart local v0    # "anim":Z
    :cond_2d9
    iget-object v2, v7, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v1, v10}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto :goto_2d6

    .line 2820
    .end local v0    # "anim":Z
    .restart local v20    # "anim":Z
    :goto_2df
    if-eqz v20, :cond_2e5

    .line 2821
    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->applyOptionsLocked()V

    goto :goto_2e8

    .line 2823
    :cond_2e5
    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    .line 2826
    :goto_2e8
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2828
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getLastStack()Lcom/android/server/am/ActivityStack;

    move-result-object v6

    .line 2829
    .local v6, "lastStack":Lcom/android/server/am/ActivityStack;
    iget-object v0, v12, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_4f3

    iget-object v0, v12, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_4f3

    .line 2840
    if-eqz v6, :cond_319

    .line 2843
    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->inMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_30d

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_317

    :cond_30d
    iget-object v0, v6, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_319

    iget-object v0, v6, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v0, :cond_319

    :cond_317
    const/4 v0, 0x1

    goto :goto_31a

    :cond_319
    move v0, v10

    :goto_31a
    move/from16 v23, v0

    .line 2852
    .local v23, "lastActivityTranslucent":Z
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2854
    :try_start_323
    iget-boolean v0, v12, Lcom/android/server/am/ActivityRecord;->visible:Z
    :try_end_325
    .catchall {:try_start_323 .. :try_end_325} :catchall_4ed

    if-eqz v0, :cond_332

    :try_start_327
    iget-boolean v0, v12, Lcom/android/server/am/ActivityRecord;->stopped:Z
    :try_end_329
    .catchall {:try_start_327 .. :try_end_329} :catchall_32e

    if-nez v0, :cond_332

    if-eqz v23, :cond_336

    goto :goto_332

    .line 2989
    :catchall_32e
    move-exception v0

    move-object v11, v6

    goto/16 :goto_4ef

    .line 2855
    :cond_332
    :goto_332
    const/4 v2, 0x1

    :try_start_333
    invoke-virtual {v12, v2}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V

    .line 2859
    :cond_336
    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->startLaunchTickingLocked()V

    .line 2862
    if-nez v6, :cond_33d

    move-object v4, v11

    goto :goto_33f

    :cond_33d
    iget-object v4, v6, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    :goto_33f
    move-object v2, v4

    .line 2863
    .local v2, "lastResumedActivity":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v0

    move-object v3, v0

    .line 2865
    .local v3, "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    .line 2870
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string/jumbo v4, "resumeTopActivityInnerLocked"

    invoke-virtual {v12, v0, v4}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 2872
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v12, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5, v11}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 2873
    invoke-virtual {v7, v12}, Lcom/android/server/am/ActivityStack;->updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 2874
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 2878
    const/4 v0, 0x1

    .line 2880
    .local v0, "notUpdated":Z
    iget-object v4, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, v7}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v4
    :try_end_369
    .catchall {:try_start_333 .. :try_end_369} :catchall_4ed

    if-eqz v4, :cond_377

    .line 2889
    :try_start_36b
    iget-object v4, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v5, v7, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    const/4 v11, 0x1

    invoke-virtual {v4, v12, v5, v11, v10}, Lcom/android/server/am/ActivityStackSupervisor;->ensureVisibilityAndConfig(Lcom/android/server/am/ActivityRecord;IZZ)Z

    move-result v4

    xor-int/2addr v4, v11

    move v0, v4

    goto :goto_378

    .line 2895
    :cond_377
    move v4, v0

    .line 2895
    .end local v0    # "notUpdated":Z
    .local v4, "notUpdated":Z
    :goto_378
    if-eqz v4, :cond_3a1

    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, v7}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v0

    if-eqz v0, :cond_3a1

    .line 2901
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 2905
    .local v0, "nextNext":Lcom/android/server/am/ActivityRecord;
    if-eq v0, v12, :cond_38d

    .line 2907
    iget-object v5, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleResumeTopActivities()V

    .line 2909
    :cond_38d
    iget-boolean v5, v12, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v5, :cond_398

    iget-boolean v5, v12, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-eqz v5, :cond_396

    goto :goto_398

    .line 2912
    :cond_396
    const/4 v5, 0x1

    goto :goto_39c

    .line 2910
    :cond_398
    :goto_398
    const/4 v5, 0x1

    invoke-virtual {v12, v5}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V

    .line 2912
    :goto_39c
    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->completeResumeLocked()V

    .line 2914
    monitor-exit v1
    :try_end_3a0
    .catchall {:try_start_36b .. :try_end_3a0} :catchall_32e

    return v5

    .line 2918
    .end local v0    # "nextNext":Lcom/android/server/am/ActivityRecord;
    :cond_3a1
    :try_start_3a1
    iget-object v0, v12, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v5, v12, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-static {v0, v5}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v0

    .line 2921
    .local v0, "transaction":Landroid/app/servertransaction/ClientTransaction;
    iget-object v5, v12, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;
    :try_end_3ad
    .catch Ljava/lang/Exception; {:try_start_3a1 .. :try_end_3ad} :catch_49e
    .catchall {:try_start_3a1 .. :try_end_3ad} :catchall_4ed

    .line 2922
    .local v5, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    if-eqz v5, :cond_3c5

    .line 2923
    :try_start_3af
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 2924
    .local v11, "N":I
    iget-boolean v10, v12, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v10, :cond_3c5

    if-lez v11, :cond_3c5

    .line 2927
    invoke-static {v5}, Landroid/app/servertransaction/ActivityResultItem;->obtain(Ljava/util/List;)Landroid/app/servertransaction/ActivityResultItem;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_3c0
    .catch Ljava/lang/Exception; {:try_start_3af .. :try_end_3c0} :catch_3c1
    .catchall {:try_start_3af .. :try_end_3c0} :catchall_32e

    .line 2927
    .end local v11    # "N":I
    goto :goto_3c5

    .line 2964
    .end local v0    # "transaction":Landroid/app/servertransaction/ClientTransaction;
    .end local v5    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    :catch_3c1
    move-exception v0

    move-object v11, v6

    goto/16 :goto_4a0

    .line 2931
    .restart local v0    # "transaction":Landroid/app/servertransaction/ClientTransaction;
    .restart local v5    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    :cond_3c5
    :goto_3c5
    :try_start_3c5
    iget-object v10, v12, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;
    :try_end_3c7
    .catch Ljava/lang/Exception; {:try_start_3c5 .. :try_end_3c7} :catch_49e
    .catchall {:try_start_3c5 .. :try_end_3c7} :catchall_4ed

    if-eqz v10, :cond_3d3

    .line 2932
    :try_start_3c9
    iget-object v10, v12, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/app/servertransaction/NewIntentItem;->obtain(Ljava/util/List;Z)Landroid/app/servertransaction/NewIntentItem;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_3d3
    .catch Ljava/lang/Exception; {:try_start_3c9 .. :try_end_3d3} :catch_3c1
    .catchall {:try_start_3c9 .. :try_end_3d3} :catchall_32e

    .line 2938
    :cond_3d3
    :try_start_3d3
    iget-boolean v10, v12, Lcom/android/server/am/ActivityRecord;->stopped:Z

    invoke-virtual {v12, v10}, Lcom/android/server/am/ActivityRecord;->notifyAppResumed(Z)V

    .line 2940
    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/Object;

    iget v10, v12, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v24, 0x0

    aput-object v10, v11, v24

    .line 2941
    invoke-static {v12}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v21, 0x1

    aput-object v10, v11, v21

    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v10

    iget v10, v10, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v25, 0x2

    aput-object v10, v11, v25

    iget-object v10, v12, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const/16 v25, 0x3

    aput-object v10, v11, v25

    .line 2944
    iget-object v10, v12, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;
    :try_end_407
    .catch Ljava/lang/Exception; {:try_start_3d3 .. :try_end_407} :catch_49e
    .catchall {:try_start_3d3 .. :try_end_407} :catchall_4ed

    if-eqz v10, :cond_40e

    :try_start_409
    iget-object v10, v12, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v10, v10, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_40d
    .catch Ljava/lang/Exception; {:try_start_409 .. :try_end_40d} :catch_3c1
    .catchall {:try_start_409 .. :try_end_40d} :catchall_32e

    goto :goto_40f

    :cond_40e
    const/4 v10, 0x0

    :goto_40f
    :try_start_40f
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v25, 0x4

    aput-object v10, v11, v25

    .line 2940
    const/16 v10, 0x7537

    invoke-static {v10, v11}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2947
    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v10
    :try_end_420
    .catch Ljava/lang/Exception; {:try_start_40f .. :try_end_420} :catch_49e
    .catchall {:try_start_40f .. :try_end_420} :catchall_4ed

    if-eqz v10, :cond_42c

    :try_start_422
    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->isRecentsStackLaunchBehind()Z

    move-result v10
    :try_end_42a
    .catch Ljava/lang/Exception; {:try_start_422 .. :try_end_42a} :catch_3c1
    .catchall {:try_start_422 .. :try_end_42a} :catchall_32e

    if-nez v10, :cond_42f

    .line 2948
    :cond_42c
    :try_start_42c
    invoke-static {v12}, Lcom/android/server/am/ActivityManagerServiceInjector;->onForegroundActivityChangedLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2951
    :cond_42f
    const/4 v10, 0x0

    iput-boolean v10, v12, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 2952
    iget-object v10, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v10}, Lcom/android/server/am/ActivityManagerService;->getAppWarningsLocked()Lcom/android/server/am/AppWarnings;

    move-result-object v10

    invoke-virtual {v10, v12}, Lcom/android/server/am/AppWarnings;->onResumeActivity(Lcom/android/server/am/ActivityRecord;)V

    .line 2953
    iget-object v10, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v10, v12}, Lcom/android/server/am/ActivityManagerService;->showAskCompatModeDialogLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2954
    iget-object v10, v12, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    .line 2955
    iget-object v10, v12, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v11, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v11, v11, Lcom/android/server/am/ActivityManagerService;->mTopProcessState:I

    invoke-virtual {v10, v11}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    .line 2956
    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    .line 2957
    iget-object v10, v12, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v10, v10, Lcom/android/server/am/ProcessRecord;->repProcState:I

    iget-object v11, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2959
    invoke-virtual {v11}, Lcom/android/server/am/ActivityManagerService;->isNextTransitionForward()Z

    move-result v11

    .line 2958
    invoke-static {v10, v11}, Landroid/app/servertransaction/ResumeActivityItem;->obtain(IZ)Landroid/app/servertransaction/ResumeActivityItem;

    move-result-object v10

    .line 2957
    invoke-virtual {v0, v10}, Landroid/app/servertransaction/ClientTransaction;->setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V

    .line 2960
    iget-object v10, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v10}, Lcom/android/server/am/ActivityManagerService;->getLifecycleManager()Lcom/android/server/am/ClientLifecycleManager;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/android/server/am/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V
    :try_end_46b
    .catch Ljava/lang/Exception; {:try_start_42c .. :try_end_46b} :catch_49e
    .catchall {:try_start_42c .. :try_end_46b} :catchall_4ed

    .line 2988
    .end local v0    # "transaction":Landroid/app/servertransaction/ClientTransaction;
    .end local v5    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    nop

    .line 2989
    .end local v2    # "lastResumedActivity":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    .end local v4    # "notUpdated":Z
    :try_start_46c
    monitor-exit v1
    :try_end_46d
    .catchall {:try_start_46c .. :try_end_46d} :catchall_4ed

    .line 2994
    :try_start_46d
    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->completeResumeLocked()V
    :try_end_470
    .catch Ljava/lang/Exception; {:try_start_46d .. :try_end_470} :catch_476

    .line 3003
    nop

    .line 3004
    .end local v23    # "lastActivityTranslucent":Z
    nop

    .line 3020
    move-object v11, v6

    const/4 v1, 0x1

    goto/16 :goto_507

    .line 2995
    .restart local v23    # "lastActivityTranslucent":Z
    :catch_476
    move-exception v0

    move-object v1, v0

    .line 2998
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown during resume of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2999
    iget-object v2, v12, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "resume-exception"

    const/4 v10, 0x1

    move-object v1, v7

    move-object v11, v6

    move v6, v10

    .line 2999
    .end local v6    # "lastStack":Lcom/android/server/am/ActivityStack;
    .local v11, "lastStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3002
    const/4 v1, 0x1

    return v1

    .line 2964
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v11    # "lastStack":Lcom/android/server/am/ActivityStack;
    .restart local v2    # "lastResumedActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v3    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    .restart local v4    # "notUpdated":Z
    .restart local v6    # "lastStack":Lcom/android/server/am/ActivityStack;
    :catch_49e
    move-exception v0

    move-object v11, v6

    .line 2967
    .end local v6    # "lastStack":Lcom/android/server/am/ActivityStack;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v11    # "lastStack":Lcom/android/server/am/ActivityStack;
    :goto_4a0
    :try_start_4a0
    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v5

    if-nez v5, :cond_4a9

    monitor-exit v1

    const/4 v1, 0x1

    return v1

    .line 2970
    :cond_4a9
    const-string/jumbo v5, "resumeTopActivityInnerLocked"

    invoke-virtual {v12, v3, v5}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 2973
    if-eqz v2, :cond_4b9

    .line 2974
    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string/jumbo v6, "resumeTopActivityInnerLocked"

    invoke-virtual {v2, v5, v6}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 2977
    :cond_4b9
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Restarting because process died: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2978
    iget-boolean v5, v12, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    if-nez v5, :cond_4d7

    .line 2979
    const/4 v5, 0x1

    iput-boolean v5, v12, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    goto :goto_4e4

    .line 2980
    :cond_4d7
    if-eqz v11, :cond_4e4

    .line 2981
    invoke-virtual {v11}, Lcom/android/server/am/ActivityStack;->isTopStackOnDisplay()Z

    move-result v5

    if-eqz v5, :cond_4e4

    .line 2982
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v12, v6, v5, v5}, Lcom/android/server/am/ActivityRecord;->showStartingWindow(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 2985
    :cond_4e4
    :goto_4e4
    iget-object v5, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v6, 0x0

    const/4 v10, 0x1

    invoke-virtual {v5, v12, v10, v6}, Lcom/android/server/am/ActivityStackSupervisor;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 2987
    monitor-exit v1

    return v10

    .line 2989
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "lastResumedActivity":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    .end local v4    # "notUpdated":Z
    .end local v11    # "lastStack":Lcom/android/server/am/ActivityStack;
    .restart local v6    # "lastStack":Lcom/android/server/am/ActivityStack;
    :catchall_4ed
    move-exception v0

    move-object v11, v6

    .line 2989
    .end local v6    # "lastStack":Lcom/android/server/am/ActivityStack;
    .restart local v11    # "lastStack":Lcom/android/server/am/ActivityStack;
    :goto_4ef
    monitor-exit v1
    :try_end_4f0
    .catchall {:try_start_4a0 .. :try_end_4f0} :catchall_4f1

    throw v0

    :catchall_4f1
    move-exception v0

    goto :goto_4ef

    .line 3006
    .end local v11    # "lastStack":Lcom/android/server/am/ActivityStack;
    .end local v23    # "lastActivityTranslucent":Z
    .restart local v6    # "lastStack":Lcom/android/server/am/ActivityStack;
    :cond_4f3
    move-object v11, v6

    .line 3006
    .end local v6    # "lastStack":Lcom/android/server/am/ActivityStack;
    .restart local v11    # "lastStack":Lcom/android/server/am/ActivityStack;
    iget-boolean v0, v12, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    if-nez v0, :cond_4fc

    .line 3007
    const/4 v1, 0x1

    iput-boolean v1, v12, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    goto :goto_502

    .line 3010
    :cond_4fc
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v12, v3, v2, v2}, Lcom/android/server/am/ActivityRecord;->showStartingWindow(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 3016
    :goto_502
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, v12, v1, v1}, Lcom/android/server/am/ActivityStackSupervisor;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 3020
    :goto_507
    return v1
.end method

.method private returnsToHomeStack()Z
    .registers 3

    .line 1069
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->inMultiWindowMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    .line 1070
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    .line 1071
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->returnsToHomeStack()Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v1, 0x1

    nop

    .line 1069
    :cond_1f
    return v1
.end method

.method private schedulePauseTimeout(Lcom/android/server/am/ActivityRecord;)V
    .registers 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 1500
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1501
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1502
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/server/am/ActivityRecord;->pauseTime:J

    .line 1503
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1505
    return-void
.end method

.method private setResumedActivity(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V
    .registers 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 2507
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    if-eqz p1, :cond_23

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_23

    .line 2508
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    iput-object p1, v0, Lcom/android/server/am/ActivityDisplay;->mCurrentSplitScreenPrimaryActivity:Lcom/android/server/am/ActivityRecord;

    .line 2509
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/am/ActivityDisplay;->mNeedWaitResumePrimaryActivity:Z

    if-eqz v0, :cond_23

    .line 2511
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/am/ActivityDisplay;->mNeedWaitResumePrimaryActivity:Z

    .line 2512
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/server/am/SplitScreenReporter;->reportEnterSplitScreen(Ljava/lang/String;)V

    .line 2516
    :cond_23
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v0, p1, :cond_28

    .line 2517
    return-void

    .line 2522
    :cond_28
    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2524
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isRecentsStackLaunchBehind()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 2526
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2527
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHasResumeRecentsBehind:Z

    .line 2528
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string v1, "gesture"

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 2531
    :cond_3f
    return-void
.end method

.method private topRunningActivityLocked(Z)Lcom/android/server/am/ActivityRecord;
    .registers 5
    .param p1, "focusableOnly"    # Z

    .line 898
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_8
    if-ltz v0, :cond_24

    .line 899
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 900
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_21

    if-eqz p1, :cond_20

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 901
    :cond_20
    return-object v1

    .line 898
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 904
    .end local v0    # "taskNdx":I
    :cond_24
    const/4 v0, 0x0

    return-object v0
.end method

.method private updateBehindFullscreen(ZZLcom/android/server/am/ActivityRecord;)Z
    .registers 5
    .param p1, "stackInvisible"    # Z
    .param p2, "behindFullscreenActivity"    # Z
    .param p3, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 2355
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-boolean v0, p3, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v0, :cond_5

    .line 2360
    const/4 p2, 0x1

    .line 2362
    :cond_5
    return p2
.end method

.method private updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V
    .registers 7
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "toFront"    # Z

    .line 4881
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-boolean v0, p1, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    if-eqz v0, :cond_13

    .line 4882
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    .line 4886
    if-nez p2, :cond_13

    .line 4887
    iget-wide v0, p1, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    const-wide/16 v2, -0x1

    mul-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    .line 4890
    :cond_13
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->invalidateTaskLayers()V

    .line 4891
    return-void
.end method

.method private updateTransitLocked(ILandroid/app/ActivityOptions;)V
    .registers 5
    .param p1, "transit"    # I
    .param p2, "options"    # Landroid/app/ActivityOptions;

    .line 4869
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    if-eqz p2, :cond_17

    .line 4870
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 4871
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_14

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 4872
    invoke-virtual {v0, p2}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    goto :goto_17

    .line 4874
    :cond_14
    invoke-static {p2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 4877
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 4878
    return-void
.end method


# virtual methods
.method final activityDestroyedLocked(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "reason"    # Ljava/lang/String;

    .line 4723
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4725
    .local v0, "origId":J
    :try_start_4
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/android/server/am/ActivityStack;->activityDestroyedLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_10

    .line 4727
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4728
    nop

    .line 4729
    return-void

    .line 4727
    :catchall_10
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method final activityDestroyedLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V
    .registers 5
    .param p1, "record"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 4736
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    if-eqz p1, :cond_9

    .line 4737
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4742
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 4743
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 4744
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/am/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 4745
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 4749
    :cond_21
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 4750
    return-void
.end method

.method final activityPausedLocked(Landroid/os/IBinder;Z)V
    .registers 11
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "timeout"    # Z

    .line 1647
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1648
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_7d

    .line 1649
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x65

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1650
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v4, 0x1

    if-ne v3, v0, :cond_30

    .line 1653
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 1655
    :try_start_1b
    invoke-direct {p0, v4, v1}, Lcom/android/server/am/ActivityStack;->completePauseLocked(ZLcom/android/server/am/ActivityRecord;)V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_27

    .line 1657
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 1658
    nop

    .line 1659
    return-void

    .line 1657
    :catchall_27
    move-exception v1

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v1

    .line 1661
    :cond_30
    const/16 v3, 0x753c

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    .line 1664
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_3e

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v6, v6, Lcom/android/server/am/ProcessRecord;->pid:I

    goto :goto_3f

    :cond_3e
    move v6, v2

    :goto_3f
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v4, v5, v6

    const/4 v4, 0x3

    .line 1665
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v7, :cond_5e

    .line 1666
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v7, v7, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    goto :goto_60

    :cond_5e
    const-string v7, "(none)"

    :goto_60
    aput-object v7, v5, v4

    .line 1661
    invoke-static {v3, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1667
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v3

    if-eqz v3, :cond_7d

    .line 1668
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string v4, "activityPausedLocked"

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 1669
    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_7d

    .line 1672
    const-string v3, "activityPausedLocked"

    invoke-virtual {p0, v0, v6, v2, v3}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZLjava/lang/String;)Lcom/android/server/am/ActivityRecord;

    .line 1678
    :cond_7d
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, v1, v2, v2}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 1679
    return-void
.end method

.method addStartingWindowsForVisibleActivities(Z)V
    .registers 4
    .param p1, "taskSwitch"    # Z

    .line 2140
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_8
    if-ltz v0, :cond_18

    .line 2141
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1, p1}, Lcom/android/server/am/TaskRecord;->addStartingWindowsForVisibleActivities(Z)V

    .line 2140
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2143
    .end local v0    # "taskNdx":I
    :cond_18
    return-void
.end method

.method addTask(Lcom/android/server/am/TaskRecord;IZLjava/lang/String;)V
    .registers 8
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "position"    # I
    .param p3, "schedulePictureInPictureModeChange"    # Z
    .param p4, "reason"    # Ljava/lang/String;

    .line 5603
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5604
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/ActivityStack;->getAdjustedPositionForTask(Lcom/android/server/am/TaskRecord;ILcom/android/server/am/ActivityRecord;)I

    move-result p2

    .line 5605
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 5606
    .local v0, "toTop":Z
    :goto_15
    invoke-direct {p0, p1, p4, v0}, Lcom/android/server/am/ActivityStack;->preAddTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 5608
    .local v1, "prevStack":Lcom/android/server/am/ActivityStack;
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5609
    invoke-virtual {p1, p0}, Lcom/android/server/am/TaskRecord;->setStack(Lcom/android/server/am/ActivityStack;)V

    .line 5611
    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    .line 5613
    invoke-direct {p0, p1, v1, p3}, Lcom/android/server/am/ActivityStack;->postAddTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;Z)V

    .line 5614
    return-void
.end method

.method addTask(Lcom/android/server/am/TaskRecord;ZLjava/lang/String;)V
    .registers 7
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "toTop"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .line 5590
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    if-eqz p2, :cond_6

    const v0, 0x7fffffff

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;IZLjava/lang/String;)V

    .line 5591
    if-eqz p2, :cond_16

    .line 5593
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/StackWindowController;->positionChildAtTop(Lcom/android/server/wm/TaskWindowContainerController;Z)V

    .line 5596
    :cond_16
    return-void
.end method

.method addToStopping(Lcom/android/server/am/ActivityRecord;ZZ)V
    .registers 7
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "scheduleIdle"    # Z
    .param p3, "idleDelayed"    # Z

    .line 1789
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1790
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1797
    :cond_11
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-gt v0, v1, :cond_2c

    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    .line 1798
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v2, :cond_2a

    goto :goto_2c

    :cond_2a
    const/4 v2, 0x0

    nop

    :cond_2c
    :goto_2c
    move v0, v2

    .line 1799
    .local v0, "forceIdle":Z
    if-nez p2, :cond_36

    if-eqz v0, :cond_32

    goto :goto_36

    .line 1808
    :cond_32
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleep()V

    goto :goto_43

    .line 1802
    :cond_36
    :goto_36
    if-nez p3, :cond_3e

    .line 1803
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    goto :goto_43

    .line 1805
    :cond_3e
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleTimeoutLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1810
    :goto_43
    return-void
.end method

.method adjustFocusToNextFocusableStack(Ljava/lang/String;)Z
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;

    .line 3719
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->adjustFocusToNextFocusableStack(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method affectedBySplitScreenResize()Z
    .registers 4

    .line 2169
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->supportsSplitScreenWindowingMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2170
    return v1

    .line 2172
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v0

    .line 2173
    .local v0, "windowingMode":I
    const/4 v2, 0x5

    if-eq v0, v2, :cond_14

    const/4 v2, 0x2

    if-eq v0, v2, :cond_14

    const/4 v1, 0x1

    nop

    :cond_14
    return v1
.end method

.method awakeFromSleepingLocked()V
    .registers 7

    .line 1381
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "taskNdx":I
    :goto_8
    if-ltz v0, :cond_2b

    .line 1382
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1383
    .local v2, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    .local v3, "activityNdx":I
    :goto_19
    if-ltz v3, :cond_28

    .line 1384
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    .line 1383
    add-int/lit8 v3, v3, -0x1

    goto :goto_19

    .line 1381
    .end local v2    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "activityNdx":I
    :cond_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1387
    .end local v0    # "taskNdx":I
    :cond_2b
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_3d

    .line 1388
    const-string v0, "ActivityManager"

    const-string v2, "awakeFromSleepingLocked: previously pausing activity didn\'t pause"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ActivityStack;->activityPausedLocked(Landroid/os/IBinder;Z)V

    .line 1391
    :cond_3d
    return-void
.end method

.method cancelInitializingActivities()V
    .registers 9

    .line 2420
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 2421
    .local v0, "topActivity":Lcom/android/server/am/ActivityRecord;
    const/4 v1, 0x1

    .line 2424
    .local v1, "aboveTop":Z
    const/4 v2, 0x0

    .line 2426
    .local v2, "behindFullscreenActivity":Z
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 2429
    const/4 v1, 0x0

    .line 2430
    const/4 v2, 0x1

    .line 2433
    :cond_f
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "taskNdx":I
    :goto_17
    if-ltz v3, :cond_46

    .line 2434
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 2435
    .local v4, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "activityNdx":I
    :goto_29
    if-ltz v5, :cond_43

    .line 2436
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityRecord;

    .line 2437
    .local v6, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_3a

    .line 2438
    if-ne v6, v0, :cond_36

    .line 2439
    const/4 v1, 0x0

    .line 2441
    :cond_36
    iget-boolean v7, v6, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    or-int/2addr v2, v7

    .line 2442
    goto :goto_40

    .line 2445
    :cond_3a
    invoke-virtual {v6, v2}, Lcom/android/server/am/ActivityRecord;->removeOrphanedStartingWindow(Z)V

    .line 2446
    iget-boolean v7, v6, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    or-int/2addr v2, v7

    .line 2435
    .end local v6    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_40
    add-int/lit8 v5, v5, -0x1

    goto :goto_29

    .line 2433
    .end local v4    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v5    # "activityNdx":I
    :cond_43
    add-int/lit8 v3, v3, -0x1

    goto :goto_17

    .line 2449
    .end local v3    # "taskNdx":I
    :cond_46
    return-void
.end method

.method checkKeyguardVisibility(Lcom/android/server/am/ActivityRecord;ZZ)Z
    .registers 12
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "shouldBeVisible"    # Z
    .param p3, "isTop"    # Z

    .line 2191
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget v0, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    iget v0, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    goto :goto_a

    :cond_9
    move v0, v1

    .line 2192
    .local v0, "displayId":I
    :goto_a
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v2

    .line 2193
    invoke-virtual {v2, v0}, Lcom/android/server/am/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v2

    .line 2194
    .local v2, "keyguardOrAodShowing":Z
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/KeyguardController;->isKeyguardLocked()Z

    move-result v3

    .line 2195
    .local v3, "keyguardLocked":Z
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->canShowWhenLocked()Z

    move-result v4

    .line 2196
    .local v4, "showWhenLocked":Z
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->hasDismissKeyguardWindows()Z

    move-result v5

    .line 2197
    .local v5, "dismissKeyguard":Z
    const/4 v6, 0x1

    if-eqz p2, :cond_50

    .line 2198
    if-eqz v5, :cond_31

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mTopDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v7, :cond_31

    .line 2199
    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mTopDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    .line 2204
    :cond_31
    if-eqz p3, :cond_38

    .line 2205
    iget-boolean v7, p0, Lcom/android/server/am/ActivityStack;->mTopActivityOccludesKeyguard:Z

    or-int/2addr v7, v4

    iput-boolean v7, p0, Lcom/android/server/am/ActivityStack;->mTopActivityOccludesKeyguard:Z

    .line 2208
    :cond_38
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->canShowWithInsecureKeyguard()Z

    move-result v7

    if-eqz v7, :cond_4c

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 2209
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/KeyguardController;->canDismissKeyguard()Z

    move-result v7

    if-eqz v7, :cond_4c

    move v7, v6

    goto :goto_4d

    :cond_4c
    move v7, v1

    .line 2210
    .local v7, "canShowWithKeyguard":Z
    :goto_4d
    if-eqz v7, :cond_50

    .line 2211
    return v6

    .line 2214
    .end local v7    # "canShowWithKeyguard":Z
    :cond_50
    if-eqz v2, :cond_64

    .line 2217
    if-eqz p2, :cond_62

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v7

    .line 2218
    invoke-virtual {v7, p1, v5}, Lcom/android/server/am/KeyguardController;->canShowActivityWhileKeyguardShowing(Lcom/android/server/am/ActivityRecord;Z)Z

    move-result v7

    if-eqz v7, :cond_62

    .line 2217
    move v1, v6

    goto :goto_63

    .line 2218
    :cond_62
    nop

    .line 2217
    :goto_63
    return v1

    .line 2219
    :cond_64
    if-eqz v3, :cond_77

    .line 2220
    if-eqz p2, :cond_76

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v7

    invoke-virtual {v7, v5, v4}, Lcom/android/server/am/KeyguardController;->canShowWhileOccluded(ZZ)Z

    move-result v7

    if-eqz v7, :cond_76

    move v1, v6

    nop

    :cond_76
    return v1

    .line 2223
    :cond_77
    return p2
.end method

.method checkReadyForSleep()V
    .registers 3

    .line 1410
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->shouldSleepActivities()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStack;->goToSleepIfPossible(Z)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1411
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked(Z)V

    .line 1413
    :cond_13
    return-void
.end method

.method clearOtherAppTimeTrackers(Lcom/android/server/am/AppTimeTracker;)V
    .registers 8
    .param p1, "except"    # Lcom/android/server/am/AppTimeTracker;

    .line 2372
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_8
    if-ltz v0, :cond_2f

    .line 2373
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 2374
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    iget-object v2, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 2375
    .local v2, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "activityNdx":I
    :goto_1a
    if-ltz v3, :cond_2c

    .line 2376
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 2377
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eq v5, p1, :cond_29

    .line 2378
    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 2375
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_29
    add-int/lit8 v3, v3, -0x1

    goto :goto_1a

    .line 2372
    .end local v1    # "task":Lcom/android/server/am/TaskRecord;
    .end local v2    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "activityNdx":I
    :cond_2c
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2382
    .end local v0    # "taskNdx":I
    :cond_2f
    return-void
.end method

.method closeSystemDialogsLocked()V
    .registers 11

    .line 5240
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_8
    if-ltz v0, :cond_3a

    .line 5241
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5242
    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "activityNdx":I
    :goto_1a
    if-ltz v2, :cond_37

    .line 5243
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 5244
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_34

    .line 5245
    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "close-sys"

    const/4 v9, 0x1

    move-object v4, p0

    move-object v5, v3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 5242
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_34
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    .line 5240
    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v2    # "activityNdx":I
    :cond_37
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 5249
    .end local v0    # "taskNdx":I
    :cond_3a
    return-void
.end method

.method continueUpdateBounds()V
    .registers 6

    .line 848
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mUpdateBoundsDeferred:Z

    .line 849
    .local v0, "wasDeferred":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/ActivityStack;->mUpdateBoundsDeferred:Z

    .line 850
    if-eqz v0, :cond_32

    iget-boolean v1, p0, Lcom/android/server/am/ActivityStack;->mUpdateBoundsDeferredCalled:Z

    if-eqz v1, :cond_32

    .line 851
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mDeferredBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    .line 852
    move-object v1, v2

    goto :goto_18

    .line 851
    :cond_16
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mDeferredBounds:Landroid/graphics/Rect;

    .line 852
    :goto_18
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mDeferredTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 853
    move-object v3, v2

    goto :goto_24

    .line 852
    :cond_22
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mDeferredTaskBounds:Landroid/graphics/Rect;

    .line 853
    :goto_24
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mDeferredTaskInsetBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2d

    goto :goto_2f

    :cond_2d
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mDeferredTaskInsetBounds:Landroid/graphics/Rect;

    .line 851
    :goto_2f
    invoke-virtual {p0, v1, v3, v2}, Lcom/android/server/am/ActivityStack;->resize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 855
    :cond_32
    return-void
.end method

.method convertActivityToTranslucent(Lcom/android/server/am/ActivityRecord;)V
    .registers 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 2366
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    .line 2367
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2368
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2369
    return-void
.end method

.method createStackWindowController(IZLandroid/graphics/Rect;)Lcom/android/server/wm/StackWindowController;
    .registers 12
    .param p1, "displayId"    # I
    .param p2, "onTop"    # Z
    .param p3, "outBounds"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Landroid/graphics/Rect;",
            ")TT;"
        }
    .end annotation

    .line 492
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    new-instance v7, Lcom/android/server/wm/StackWindowController;

    iget v1, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object v0, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/StackWindowController;-><init>(ILcom/android/server/wm/StackWindowListener;IZLandroid/graphics/Rect;Lcom/android/server/wm/WindowManagerService;)V

    return-object v7
.end method

.method createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)Lcom/android/server/am/TaskRecord;
    .registers 17
    .param p1, "taskId"    # I
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p5, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p6, "toTop"    # Z

    .line 5551
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    return-object v0
.end method

.method createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/TaskRecord;
    .registers 25
    .param p1, "taskId"    # I
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p5, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p6, "toTop"    # Z
    .param p7, "activity"    # Lcom/android/server/am/ActivityRecord;
    .param p8, "source"    # Lcom/android/server/am/ActivityRecord;
    .param p9, "options"    # Landroid/app/ActivityOptions;

    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    move-object v0, p0

    move-object/from16 v7, p2

    move/from16 v8, p6

    .line 5559
    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v2, p1

    move-object v3, v7

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/TaskRecord;->create(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 5562
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    const-string v2, "createTaskRecord"

    invoke-virtual {v0, v1, v8, v2}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZLjava/lang/String;)V

    .line 5563
    iget v2, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v2, v4, :cond_22

    iget v2, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    goto :goto_23

    :cond_22
    move v2, v3

    .line 5564
    .local v2, "displayId":I
    :goto_23
    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v4

    .line 5565
    invoke-virtual {v4, v2}, Lcom/android/server/am/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v4

    .line 5566
    .local v4, "isLockscreenShown":Z
    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchParamsController()Lcom/android/server/am/LaunchParamsController;

    move-result-object v9

    iget-object v11, v7, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 5567
    move-object v10, v1

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/am/LaunchParamsController;->layoutTask(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v5

    if-nez v5, :cond_6d

    .line 5568
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->matchParentBounds()Z

    move-result v5

    if-nez v5, :cond_6d

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v5

    if-eqz v5, :cond_6d

    if-nez v4, :cond_6d

    .line 5572
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->inSplitScreenWindowingMode()Z

    move-result v5

    if-eqz v5, :cond_66

    .line 5573
    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->supportsSplitScreenWindowingMode()Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 5574
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    goto :goto_6d

    .line 5577
    :cond_66
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    .line 5581
    :cond_6d
    :goto_6d
    iget v5, v7, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_75

    const/4 v3, 0x1

    nop

    :cond_75
    invoke-virtual {v1, v8, v3}, Lcom/android/server/am/TaskRecord;->createWindowContainer(ZZ)V

    .line 5582
    return-object v1
.end method

.method deferScheduleMultiWindowModeChanged()Z
    .registers 2

    .line 828
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method deferUpdateBounds()V
    .registers 2

    .line 836
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mUpdateBoundsDeferred:Z

    if-nez v0, :cond_a

    .line 837
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mUpdateBoundsDeferred:Z

    .line 838
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mUpdateBoundsDeferredCalled:Z

    .line 840
    :cond_a
    return-void
.end method

.method final destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z
    .registers 14
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "removeFromApp"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .line 4620
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 4623
    return v1

    .line 4626
    :cond_c
    const/16 v0, 0x7542

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    .line 4629
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_1a

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    goto :goto_1b

    :cond_1a
    move v3, v1

    :goto_1b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    .line 4630
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x3

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v5, v2, v3

    const/4 v3, 0x4

    aput-object p3, v2, v3

    .line 4626
    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4632
    const/4 v0, 0x0

    .line 4634
    .local v0, "removedFromHistory":Z
    invoke-direct {p0, p1, v1, v1}, Lcom/android/server/am/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 4636
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_4d

    goto :goto_4e

    :cond_4d
    move v4, v1

    :goto_4e
    move v2, v4

    .line 4638
    .local v2, "hadApp":Z
    const/4 v3, 0x0

    if-eqz v2, :cond_fb

    .line 4639
    if-eqz p2, :cond_99

    .line 4640
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4641
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v4, v5, :cond_7a

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_7a

    .line 4642
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v3, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    .line 4643
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v5, 0x19

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendEmptyMessage(I)Z

    .line 4646
    :cond_7a
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_99

    .line 4649
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActiveServices;->updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 4651
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v5, v1, v3}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 4652
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 4656
    :cond_99
    move v4, v1

    .line 4660
    .local v4, "skipDestroy":Z
    :try_start_9a
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getLifecycleManager()Lcom/android/server/am/ClientLifecycleManager;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v8, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    iget v9, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    .line 4661
    invoke-static {v8, v9}, Landroid/app/servertransaction/DestroyActivityItem;->obtain(ZI)Landroid/app/servertransaction/DestroyActivityItem;

    move-result-object v8

    .line 4660
    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/am/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ActivityLifecycleItem;)V

    .line 4663
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-static {v5}, Lcom/android/server/am/ExtraActivityManagerService;->destroyActivity(Landroid/content/pm/ActivityInfo;)V
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_b6} :catch_b7

    .line 4674
    goto :goto_d2

    .line 4664
    :catch_b7
    move-exception v5

    .line 4669
    .local v5, "e":Ljava/lang/Exception;
    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_d2

    .line 4670
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " exceptionInScheduleDestroy"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 4671
    const/4 v0, 0x1

    .line 4672
    const/4 v4, 0x1

    .line 4676
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_d2
    :goto_d2
    iput-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    .line 4685
    iget-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_f1

    if-nez v4, :cond_f1

    .line 4688
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string v5, "destroyActivityLocked. finishing and not skipping destroy"

    invoke-virtual {p1, v3, v5}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 4690
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x66

    invoke-virtual {v3, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 4691
    .local v3, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x2710

    invoke-virtual {v5, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4692
    .end local v3    # "msg":Landroid/os/Message;
    goto :goto_fa

    .line 4695
    :cond_f1
    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string v6, "destroyActivityLocked. not finishing or skipping destroy"

    invoke-virtual {p1, v5, v6}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 4698
    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 4700
    .end local v4    # "skipDestroy":Z
    :goto_fa
    goto :goto_11e

    .line 4702
    :cond_fb
    iget-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_115

    .line 4703
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " hadNoApp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 4704
    const/4 v0, 0x1

    goto :goto_11e

    .line 4707
    :cond_115
    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string v5, "destroyActivityLocked. not finishing and had no app"

    invoke-virtual {p1, v4, v5}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 4709
    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 4713
    :goto_11e
    iput v1, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    .line 4715
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_145

    if-eqz v2, :cond_145

    .line 4716
    const-string v1, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " being finished, but not in LRU list"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4719
    :cond_145
    return v0
.end method

.method dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;Z)Z
    .registers 25
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "dumpAll"    # Z
    .param p4, "dumpClient"    # Z
    .param p5, "dumpPackage"    # Ljava/lang/String;
    .param p6, "needSep"    # Z

    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    move-object/from16 v0, p0

    move-object/from16 v13, p2

    .line 5406
    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 5407
    const/4 v1, 0x0

    return v1

    .line 5409
    :cond_e
    const-string v14, "    "

    .line 5410
    .local v14, "prefix":Ljava/lang/String;
    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v15, 0x1

    sub-int/2addr v1, v15

    .local v1, "taskNdx":I
    :goto_18
    move v12, v1

    .end local v1    # "taskNdx":I
    .local v12, "taskNdx":I
    if-ltz v12, :cond_de

    .line 5411
    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/server/am/TaskRecord;

    .line 5412
    .local v11, "task":Lcom/android/server/am/TaskRecord;
    if-eqz p6, :cond_2b

    .line 5413
    const-string v1, ""

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5415
    :cond_2b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Task id #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v11, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mMinWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v11, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mMinHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v11, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mLastNonFullscreenBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5420
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    * "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5421
    const-string v1, "      "

    invoke-virtual {v11, v13, v1}, Lcom/android/server/am/TaskRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 5422
    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    iget-object v3, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    const-string v4, "    "

    const-string v5, "Hist"

    const/4 v6, 0x1

    xor-int/lit8 v7, p3, 0x1

    const/4 v10, 0x0

    const/16 v16, 0x0

    move-object/from16 v1, p1

    move-object v2, v13

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v17, v11

    move-object/from16 v11, v16

    .end local v11    # "task":Lcom/android/server/am/TaskRecord;
    .local v17, "task":Lcom/android/server/am/TaskRecord;
    move/from16 v16, v12

    move-object/from16 v12, v17

    .end local v12    # "taskNdx":I
    .local v16, "taskNdx":I
    invoke-static/range {v1 .. v12}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Lcom/android/server/am/TaskRecord;)Z

    .line 5410
    .end local v17    # "task":Lcom/android/server/am/TaskRecord;
    add-int/lit8 v1, v16, -0x1

    .end local v16    # "taskNdx":I
    .restart local v1    # "taskNdx":I
    goto/16 :goto_18

    .line 5425
    .end local v1    # "taskNdx":I
    :cond_de
    return v15
.end method

.method final ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V
    .registers 5
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "configChanges"    # I
    .param p3, "preserveWindows"    # Z

    .line 1987
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZZ)V

    .line 1989
    return-void
.end method

.method final ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZZ)V
    .registers 31
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "configChanges"    # I
    .param p3, "preserveWindows"    # Z
    .param p4, "notifyClients"    # Z

    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 1999
    move/from16 v9, p4

    const/4 v0, 0x0

    iput-boolean v0, v7, Lcom/android/server/am/ActivityStack;->mTopActivityOccludesKeyguard:Z

    .line 2000
    const/4 v10, 0x0

    iput-object v10, v7, Lcom/android/server/am/ActivityStack;->mTopDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    .line 2001
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/KeyguardController;->beginActivityVisibilityUpdate()V

    .line 2003
    :try_start_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    move-object v11, v1

    .line 2006
    .local v11, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v11, :cond_1f

    .line 2007
    invoke-direct {v7, v11}, Lcom/android/server/am/ActivityStack;->checkTranslucentActivityWaiting(Lcom/android/server/am/ActivityRecord;)V

    .line 2012
    :cond_1f
    const/4 v12, 0x1

    if-eqz v11, :cond_24

    move v1, v12

    goto :goto_25

    :cond_24
    move v1, v0

    .line 2013
    .local v1, "aboveTop":Z
    :goto_25
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    move v13, v2

    .line 2014
    .local v13, "stackShouldBeVisible":Z
    if-nez v13, :cond_2e

    move v2, v12

    goto :goto_2f

    :cond_2e
    move v2, v0

    .line 2015
    .local v2, "behindFullscreenActivity":Z
    :goto_2f
    iget-object v3, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, v7}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 2016
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-nez v3, :cond_3f

    move v3, v12

    goto :goto_40

    :cond_3f
    move v3, v0

    .line 2017
    .local v3, "resumeNextActivity":Z
    :goto_40
    nop

    .line 2018
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v4

    if-eqz v4, :cond_53

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/server/am/ActivityDisplay;->isTopNotPinnedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v4

    if-eqz v4, :cond_53

    move v4, v12

    goto :goto_54

    :cond_53
    move v4, v0

    :goto_54
    move v14, v4

    .line 2019
    .local v14, "isTopNotPinnedStack":Z
    iget-object v4, v7, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4
    :try_end_5b
    .catchall {:try_start_15 .. :try_end_5b} :catchall_1e8

    sub-int/2addr v4, v12

    move/from16 v5, p2

    .end local p2    # "configChanges":I
    .local v4, "taskNdx":I
    .local v5, "configChanges":I
    :goto_5e
    move v15, v4

    .end local v4    # "taskNdx":I
    .local v15, "taskNdx":I
    if-ltz v15, :cond_1cd

    .line 2020
    :try_start_61
    iget-object v4, v7, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    move-object v6, v4

    .line 2021
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    iget-object v4, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 2022
    .local v4, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v16
    :try_end_70
    .catchall {:try_start_61 .. :try_end_70} :catchall_1c9

    add-int/lit8 v16, v16, -0x1

    move/from16 v17, v3

    move/from16 v18, v5

    .end local v3    # "resumeNextActivity":Z
    .end local v5    # "configChanges":I
    .local v16, "activityNdx":I
    .local v17, "resumeNextActivity":Z
    .local v18, "configChanges":I
    :goto_76
    move/from16 v5, v16

    .end local v16    # "activityNdx":I
    .local v5, "activityNdx":I
    if-ltz v5, :cond_1a2

    .line 2023
    :try_start_7a
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 2024
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v10, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v10, :cond_85

    .line 2025
    goto :goto_8f

    .line 2027
    :cond_85
    if-ne v3, v11, :cond_89

    move v10, v12

    goto :goto_8a

    :cond_89
    move v10, v0

    .line 2028
    .local v10, "isTop":Z
    :goto_8a
    if-eqz v1, :cond_95

    if-nez v10, :cond_95

    .line 2029
    nop

    .line 2022
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v10    # "isTop":Z
    :goto_8f
    move-object v0, v4

    move-object/from16 v20, v6

    move v3, v12

    goto/16 :goto_194

    .line 2031
    .restart local v3    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v10    # "isTop":Z
    :cond_95
    const/16 v16, 0x0

    .line 2034
    .end local v1    # "aboveTop":Z
    .local v16, "aboveTop":Z
    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityRecord;->shouldBeVisibleIgnoringKeyguard(Z)Z

    move-result v1

    .line 2036
    .local v1, "visibleIgnoringKeyguard":Z
    iput-boolean v1, v3, Lcom/android/server/am/ActivityRecord;->visibleIgnoringKeyguard:Z

    .line 2039
    if-eqz v10, :cond_a3

    if-eqz v14, :cond_a3

    move v0, v12

    nop

    :cond_a3
    invoke-virtual {v7, v3, v1, v0}, Lcom/android/server/am/ActivityStack;->checkKeyguardVisibility(Lcom/android/server/am/ActivityRecord;ZZ)Z

    move-result v0

    .line 2041
    .local v0, "reallyVisible":Z
    if-eqz v1, :cond_b3

    .line 2042
    if-nez v13, :cond_ac

    goto :goto_ad

    :cond_ac
    const/4 v12, 0x0

    :goto_ad
    invoke-direct {v7, v12, v2, v3}, Lcom/android/server/am/ActivityStack;->updateBehindFullscreen(ZZLcom/android/server/am/ActivityRecord;)Z

    move-result v12

    move v2, v12

    goto :goto_b4

    .line 2047
    :cond_b3
    move v12, v2

    .end local v2    # "behindFullscreenActivity":Z
    .local v12, "behindFullscreenActivity":Z
    :goto_b4
    const/4 v2, 0x0

    .line 2048
    .local v2, "forceVisible":Z
    move/from16 v20, v1

    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    .end local v1    # "visibleIgnoringKeyguard":Z
    .local v20, "visibleIgnoringKeyguard":Z
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->isSleepingLocked()Z

    move-result v1

    move/from16 v21, v1

    .line 2050
    .local v21, "isSleeping":Z
    if-eqz v21, :cond_c5

    .line 2051
    const/4 v1, 0x1

    iput-boolean v1, v3, Lcom/android/server/am/ActivityRecord;->mDisableDummyVisible:Z

    goto :goto_ce

    .line 2052
    :cond_c5
    iget-boolean v1, v3, Lcom/android/server/am/ActivityRecord;->mDisableDummyVisible:Z

    if-eqz v1, :cond_ce

    if-eqz v0, :cond_ce

    .line 2053
    const/4 v1, 0x0

    iput-boolean v1, v3, Lcom/android/server/am/ActivityRecord;->mDisableDummyVisible:Z

    .line 2056
    :cond_ce
    :goto_ce
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->isGestureOpen()Z

    move-result v1

    if-eqz v1, :cond_f2

    invoke-static {v3}, Lcom/android/server/am/ActivityStackInjector;->isMiuiHome(Lcom/android/server/am/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_f2

    .line 2057
    if-nez v0, :cond_ec

    iget-boolean v1, v3, Lcom/android/server/am/ActivityRecord;->mDisableDummyVisible:Z

    if-nez v1, :cond_ec

    iget v1, v3, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 2058
    invoke-static {v1}, Lcom/android/server/am/ActivityStackInjector;->isCurrentUser(I)Z

    move-result v1

    if-eqz v1, :cond_ec

    const/4 v1, 0x1

    goto :goto_ed

    :cond_ec
    const/4 v1, 0x0

    :goto_ed
    move v2, v1

    .line 2059
    invoke-virtual {v3, v2, v0}, Lcom/android/server/am/ActivityRecord;->setDummyVisible(ZZ)V

    goto :goto_102

    .line 2060
    :cond_f2
    iget-boolean v1, v3, Lcom/android/server/am/ActivityRecord;->mIsDummyVisible:Z

    if-eqz v1, :cond_102

    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->isGestureOpen()Z

    move-result v1

    if-nez v1, :cond_102

    .line 2061
    const/4 v1, 0x0

    invoke-virtual {v3, v1, v0}, Lcom/android/server/am/ActivityRecord;->setDummyVisible(ZZ)V

    .line 2063
    :cond_102
    :goto_102
    move/from16 v22, v2

    .end local v2    # "forceVisible":Z
    .local v22, "forceVisible":Z
    if-nez v0, :cond_115

    if-eqz v22, :cond_109

    goto :goto_115

    .line 2107
    :cond_109
    invoke-direct {v7, v3}, Lcom/android/server/am/ActivityStack;->makeInvisible(Lcom/android/server/am/ActivityRecord;)V

    .line 2022
    .end local v0    # "reallyVisible":Z
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v10    # "isTop":Z
    .end local v20    # "visibleIgnoringKeyguard":Z
    .end local v21    # "isSleeping":Z
    .end local v22    # "forceVisible":Z
    move-object v0, v4

    move-object/from16 v20, v6

    move v2, v12

    move/from16 v1, v16

    const/4 v3, 0x1

    goto/16 :goto_194

    .line 2069
    .restart local v0    # "reallyVisible":Z
    .restart local v3    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v10    # "isTop":Z
    .restart local v20    # "visibleIgnoringKeyguard":Z
    .restart local v21    # "isSleeping":Z
    .restart local v22    # "forceVisible":Z
    :cond_115
    :goto_115
    if-eq v3, v8, :cond_123

    if-eqz v9, :cond_123

    .line 2070
    move/from16 v2, p3

    move/from16 v23, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {v3, v0, v2, v1}, Lcom/android/server/am/ActivityRecord;->ensureActivityConfiguration(IZZ)Z

    .end local v0    # "reallyVisible":Z
    .local v23, "reallyVisible":Z
    goto :goto_128

    .line 2074
    .end local v23    # "reallyVisible":Z
    .restart local v0    # "reallyVisible":Z
    :cond_123
    move/from16 v2, p3

    move/from16 v23, v0

    const/4 v0, 0x0

    .end local v0    # "reallyVisible":Z
    .restart local v23    # "reallyVisible":Z
    :goto_128
    iget-object v1, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_15f

    iget-object v1, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v1, :cond_133

    goto :goto_15f

    .line 2084
    :cond_133
    iget-boolean v1, v3, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v1, :cond_152

    .line 2089
    iget-boolean v1, v3, Lcom/android/server/am/ActivityRecord;->mClientVisibilityDeferred:Z

    if-eqz v1, :cond_140

    if-eqz v9, :cond_140

    .line 2090
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->makeClientVisible()V

    .line 2093
    :cond_140
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->handleAlreadyVisible()Z

    move-result v1

    if-eqz v1, :cond_155

    .line 2094
    const/4 v1, 0x0

    .line 2100
    .end local v17    # "resumeNextActivity":Z
    .local v1, "resumeNextActivity":Z
    move/from16 v17, v1

    move-object/from16 v24, v3

    move-object v0, v4

    move/from16 v19, v20

    const/4 v3, 0x1

    move-object/from16 v20, v6

    goto :goto_18b

    .line 2097
    .end local v1    # "resumeNextActivity":Z
    .restart local v17    # "resumeNextActivity":Z
    :cond_152
    invoke-virtual {v3, v8, v9}, Lcom/android/server/am/ActivityRecord;->makeVisibleIfNeeded(Lcom/android/server/am/ActivityRecord;Z)V

    .line 2100
    :cond_155
    move-object/from16 v24, v3

    move-object v0, v4

    move v8, v5

    move/from16 v19, v20

    const/4 v3, 0x1

    move-object/from16 v20, v6

    goto :goto_18a

    .line 2075
    :cond_15f
    :goto_15f
    move/from16 v19, v20

    move-object v1, v7

    .end local v20    # "visibleIgnoringKeyguard":Z
    .local v19, "visibleIgnoringKeyguard":Z
    move-object v2, v8

    move-object/from16 v24, v3

    move/from16 v3, v18

    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    .local v24, "r":Lcom/android/server/am/ActivityRecord;
    move-object v0, v4

    move v4, v10

    .end local v4    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move v8, v5

    move/from16 v5, v17

    .end local v5    # "activityNdx":I
    .local v8, "activityNdx":I
    move-object/from16 v20, v6

    move-object/from16 v6, v24

    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    .local v20, "task":Lcom/android/server/am/TaskRecord;
    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/ActivityStack;->makeVisibleAndRestartIfNeeded(Lcom/android/server/am/ActivityRecord;IZZLcom/android/server/am/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_189

    .line 2077
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v8, v1, :cond_184

    .line 2079
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    .line 2100
    .end local v8    # "activityNdx":I
    .local v1, "activityNdx":I
    move v5, v1

    goto :goto_18b

    .line 2081
    .end local v1    # "activityNdx":I
    .restart local v8    # "activityNdx":I
    :cond_184
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 2100
    .end local v17    # "resumeNextActivity":Z
    .local v1, "resumeNextActivity":Z
    move/from16 v17, v1

    goto :goto_18a

    .end local v1    # "resumeNextActivity":Z
    .restart local v17    # "resumeNextActivity":Z
    :cond_189
    const/4 v3, 0x1

    .end local v8    # "activityNdx":I
    .restart local v5    # "activityNdx":I
    :goto_18a
    move v5, v8

    :goto_18b
    move-object/from16 v1, v24

    iget v2, v1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    .end local v24    # "r":Lcom/android/server/am/ActivityRecord;
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    or-int v18, v18, v2

    .line 2022
    move v2, v12

    move/from16 v1, v16

    .end local v10    # "isTop":Z
    .end local v12    # "behindFullscreenActivity":Z
    .end local v16    # "aboveTop":Z
    .end local v19    # "visibleIgnoringKeyguard":Z
    .end local v21    # "isSleeping":Z
    .end local v22    # "forceVisible":Z
    .end local v23    # "reallyVisible":Z
    .local v1, "aboveTop":Z
    .local v2, "behindFullscreenActivity":Z
    :goto_194
    add-int/lit8 v16, v5, -0x1

    .end local v5    # "activityNdx":I
    .local v16, "activityNdx":I
    move-object v4, v0

    move v12, v3

    move-object/from16 v6, v20

    const/4 v0, 0x0

    move-object/from16 v8, p1

    const/4 v10, 0x0

    goto/16 :goto_76

    .line 2135
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "aboveTop":Z
    .end local v2    # "behindFullscreenActivity":Z
    .end local v11    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v13    # "stackShouldBeVisible":Z
    .end local v14    # "isTopNotPinnedStack":Z
    .end local v15    # "taskNdx":I
    .end local v16    # "activityNdx":I
    .end local v17    # "resumeNextActivity":Z
    .end local v20    # "task":Lcom/android/server/am/TaskRecord;
    :catchall_1a0
    move-exception v0

    goto :goto_1eb

    .line 2110
    .restart local v1    # "aboveTop":Z
    .restart local v2    # "behindFullscreenActivity":Z
    .restart local v4    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v6    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v11    # "top":Lcom/android/server/am/ActivityRecord;
    .restart local v13    # "stackShouldBeVisible":Z
    .restart local v14    # "isTopNotPinnedStack":Z
    .restart local v15    # "taskNdx":I
    .restart local v17    # "resumeNextActivity":Z
    :cond_1a2
    move-object v0, v4

    move-object/from16 v20, v6

    move v3, v12

    .end local v4    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v20    # "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v4

    .line 2111
    .local v4, "windowingMode":I
    const/4 v5, 0x5

    if-ne v4, v5, :cond_1b4

    .line 2115
    if-nez v13, :cond_1b1

    move v5, v3

    goto :goto_1b2

    :cond_1b1
    const/4 v5, 0x0

    :goto_1b2
    move v2, v5

    goto :goto_1bc

    .line 2116
    :cond_1b4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v5
    :try_end_1b8
    .catchall {:try_start_7a .. :try_end_1b8} :catchall_1a0

    if-eqz v5, :cond_1bc

    .line 2125
    const/4 v0, 0x1

    .line 2019
    .end local v2    # "behindFullscreenActivity":Z
    .end local v4    # "windowingMode":I
    .end local v20    # "task":Lcom/android/server/am/TaskRecord;
    .local v0, "behindFullscreenActivity":Z
    move v2, v0

    .end local v0    # "behindFullscreenActivity":Z
    .restart local v2    # "behindFullscreenActivity":Z
    :cond_1bc
    :goto_1bc
    add-int/lit8 v4, v15, -0x1

    .end local v15    # "taskNdx":I
    .local v4, "taskNdx":I
    move v12, v3

    move/from16 v3, v17

    move/from16 v5, v18

    const/4 v0, 0x0

    move-object/from16 v8, p1

    const/4 v10, 0x0

    goto/16 :goto_5e

    .line 2135
    .end local v1    # "aboveTop":Z
    .end local v2    # "behindFullscreenActivity":Z
    .end local v4    # "taskNdx":I
    .end local v11    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v13    # "stackShouldBeVisible":Z
    .end local v14    # "isTopNotPinnedStack":Z
    .end local v17    # "resumeNextActivity":Z
    .end local v18    # "configChanges":I
    .local v5, "configChanges":I
    :catchall_1c9
    move-exception v0

    move/from16 v18, v5

    goto :goto_1eb

    .line 2129
    .restart local v1    # "aboveTop":Z
    .restart local v2    # "behindFullscreenActivity":Z
    .local v3, "resumeNextActivity":Z
    .restart local v11    # "top":Lcom/android/server/am/ActivityRecord;
    .restart local v13    # "stackShouldBeVisible":Z
    .restart local v14    # "isTopNotPinnedStack":Z
    :cond_1cd
    :try_start_1cd
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_1dd

    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 2130
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1dd

    .line 2132
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityStack;->notifyActivityDrawnLocked(Lcom/android/server/am/ActivityRecord;)V
    :try_end_1dd
    .catchall {:try_start_1cd .. :try_end_1dd} :catchall_1c9

    .line 2135
    .end local v1    # "aboveTop":Z
    .end local v2    # "behindFullscreenActivity":Z
    .end local v3    # "resumeNextActivity":Z
    .end local v11    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v13    # "stackShouldBeVisible":Z
    .end local v14    # "isTopNotPinnedStack":Z
    :cond_1dd
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/KeyguardController;->endActivityVisibilityUpdate()V

    .line 2136
    nop

    .line 2137
    return-void

    .line 2135
    .end local v5    # "configChanges":I
    .restart local p2    # "configChanges":I
    :catchall_1e8
    move-exception v0

    move/from16 v18, p2

    .end local p2    # "configChanges":I
    .restart local v18    # "configChanges":I
    :goto_1eb
    iget-object v1, v7, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/KeyguardController;->endActivityVisibilityUpdate()V

    throw v0
.end method

.method ensureVisibleActivitiesConfigurationLocked(Lcom/android/server/am/ActivityRecord;Z)V
    .registers 12
    .param p1, "start"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "preserveWindow"    # Z

    .line 5079
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    if-eqz p1, :cond_59

    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v0, :cond_7

    goto :goto_59

    .line 5083
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 5084
    .local v0, "startTask":Lcom/android/server/am/TaskRecord;
    const/4 v1, 0x0

    .line 5085
    .local v1, "behindFullscreen":Z
    const/4 v2, 0x0

    .line 5087
    .local v2, "updatedConfig":Z
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .local v3, "taskIndex":I
    :goto_13
    if-ltz v3, :cond_51

    .line 5088
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 5089
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    iget-object v5, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5091
    .local v5, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    if-ne v6, v4, :cond_2a

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    goto :goto_30

    :cond_2a
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .line 5092
    .local v6, "activityIndex":I
    :goto_30
    if-ltz v6, :cond_4b

    .line 5093
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    .line 5097
    .local v7, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v8, v7, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v8, :cond_42

    .line 5098
    const/4 v8, 0x0

    invoke-virtual {v7, v8, p2}, Lcom/android/server/am/ActivityRecord;->ensureActivityConfiguration(IZ)Z

    move-result v8

    or-int/2addr v2, v8

    .line 5102
    :cond_42
    iget-boolean v8, v7, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v8, :cond_48

    .line 5103
    const/4 v1, 0x1

    .line 5104
    goto :goto_4b

    .line 5092
    .end local v7    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_48
    add-int/lit8 v6, v6, -0x1

    goto :goto_30

    .line 5107
    :cond_4b
    :goto_4b
    if-eqz v1, :cond_4e

    .line 5108
    goto :goto_51

    .line 5087
    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    .end local v5    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v6    # "activityIndex":I
    :cond_4e
    add-int/lit8 v3, v3, -0x1

    goto :goto_13

    .line 5111
    .end local v3    # "taskIndex":I
    :cond_51
    :goto_51
    if-eqz v2, :cond_58

    .line 5114
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 5116
    :cond_58
    return-void

    .line 5080
    .end local v0    # "startTask":Lcom/android/server/am/TaskRecord;
    .end local v1    # "behindFullscreen":Z
    .end local v2    # "updatedConfig":Z
    :cond_59
    :goto_59
    return-void
.end method

.method executeAppTransition(Landroid/app/ActivityOptions;)V
    .registers 3
    .param p1, "options"    # Landroid/app/ActivityOptions;

    .line 5723
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 5724
    invoke-static {p1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 5725
    return-void
.end method

.method findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/am/ActivityRecord;
    .registers 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "compareIntentFilters"    # Z

    .line 1291
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1292
    .local v0, "cls":Landroid/content/ComponentName;
    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v1, :cond_12

    .line 1293
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 1295
    :cond_12
    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1297
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "taskNdx":I
    :goto_22
    if-ltz v2, :cond_69

    .line 1298
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 1299
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    iget-object v4, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1301
    .local v4, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "activityNdx":I
    :goto_34
    if-ltz v5, :cond_66

    .line 1302
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityRecord;

    .line 1303
    .local v6, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->okToShowLocked()Z

    move-result v7

    if-nez v7, :cond_43

    .line 1304
    goto :goto_63

    .line 1306
    :cond_43
    iget-boolean v7, v6, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v7, :cond_63

    iget v7, v6, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v7, v1, :cond_63

    .line 1307
    if-eqz p3, :cond_56

    .line 1308
    iget-object v7, v6, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7, p1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_63

    .line 1309
    return-object v6

    .line 1312
    :cond_56
    iget-object v7, v6, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_63

    .line 1313
    return-object v6

    .line 1301
    .end local v6    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_63
    :goto_63
    add-int/lit8 v5, v5, -0x1

    goto :goto_34

    .line 1297
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    .end local v4    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v5    # "activityNdx":I
    :cond_66
    add-int/lit8 v2, v2, -0x1

    goto :goto_22

    .line 1320
    .end local v2    # "taskNdx":I
    :cond_69
    const/4 v2, 0x0

    return-object v2
.end method

.method findTaskLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;)V
    .registers 24
    .param p1, "target"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "result"    # Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1184
    move-object/from16 v2, p2

    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1185
    .local v3, "intent":Landroid/content/Intent;
    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 1186
    .local v4, "info":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 1187
    .local v5, "cls":Landroid/content/ComponentName;
    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v6, :cond_1c

    .line 1188
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v4, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    .line 1190
    :cond_1c
    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 1191
    .local v6, "userId":I
    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v3, :cond_2a

    move v9, v7

    goto :goto_2b

    :cond_2a
    move v9, v8

    :goto_2b
    invoke-virtual {v3}, Landroid/content/Intent;->isDocument()Z

    move-result v10

    and-int/2addr v9, v10

    .line 1193
    .local v9, "isDocument":Z
    if-eqz v9, :cond_37

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    goto :goto_38

    :cond_37
    const/4 v11, 0x0

    .line 1196
    .local v11, "documentData":Landroid/net/Uri;
    :goto_38
    iget-object v12, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    sub-int/2addr v12, v7

    .local v12, "taskNdx":I
    :goto_3f
    if-ltz v12, :cond_148

    .line 1197
    iget-object v13, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/TaskRecord;

    .line 1198
    .local v13, "task":Lcom/android/server/am/TaskRecord;
    iget-object v14, v13, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v14, :cond_54

    .line 1201
    nop

    .line 1196
    .end local v4    # "info":Landroid/content/pm/ActivityInfo;
    .end local v13    # "task":Lcom/android/server/am/TaskRecord;
    .local v19, "info":Landroid/content/pm/ActivityInfo;
    :cond_4e
    :goto_4e
    move-object/from16 v19, v4

    move v4, v7

    move v0, v8

    goto/16 :goto_13e

    .line 1203
    .end local v19    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v4    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v13    # "task":Lcom/android/server/am/TaskRecord;
    :cond_54
    iget v14, v13, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v14, v6, :cond_59

    .line 1206
    goto :goto_4e

    .line 1210
    :cond_59
    invoke-virtual {v13, v8}, Lcom/android/server/am/TaskRecord;->getTopActivity(Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v14

    .line 1213
    .local v14, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v14, :cond_13a

    iget-boolean v15, v14, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v15, :cond_13a

    iget v15, v14, Lcom/android/server/am/ActivityRecord;->userId:I

    if-eq v15, v6, :cond_6f

    iget v15, v14, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v15, v6}, Lcom/android/server/am/ActivityStackInjector;->isAllowCross(II)Z

    move-result v15

    if-eqz v15, :cond_4e

    :cond_6f
    iget v15, v14, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v10, 0x3

    if-ne v15, v10, :cond_75

    .line 1216
    goto :goto_4e

    .line 1218
    :cond_75
    invoke-virtual {v14, v1}, Lcom/android/server/am/ActivityRecord;->hasCompatibleActivityType(Lcom/android/server/wm/ConfigurationContainer;)Z

    move-result v10

    if-nez v10, :cond_7c

    .line 1220
    goto :goto_4e

    .line 1223
    :cond_7c
    iget-object v10, v13, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 1224
    .local v10, "taskIntent":Landroid/content/Intent;
    iget-object v15, v13, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    .line 1227
    .local v15, "affinityIntent":Landroid/content/Intent;
    if-eqz v10, :cond_8f

    invoke-virtual {v10}, Landroid/content/Intent;->isDocument()Z

    move-result v16

    if-eqz v16, :cond_8f

    .line 1228
    const/16 v16, 0x1

    .line 1229
    .local v16, "taskIsDocument":Z
    invoke-virtual {v10}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v17

    .local v17, "taskDocumentData":Landroid/net/Uri;
    :goto_8e
    goto :goto_a2

    .line 1230
    .end local v16    # "taskIsDocument":Z
    .end local v17    # "taskDocumentData":Landroid/net/Uri;
    :cond_8f
    if-eqz v15, :cond_9e

    invoke-virtual {v15}, Landroid/content/Intent;->isDocument()Z

    move-result v16

    if-eqz v16, :cond_9e

    .line 1231
    const/16 v16, 0x1

    .line 1232
    .restart local v16    # "taskIsDocument":Z
    invoke-virtual {v15}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v17

    goto :goto_8e

    .line 1234
    .end local v16    # "taskIsDocument":Z
    :cond_9e
    const/16 v16, 0x0

    .line 1235
    .restart local v16    # "taskIsDocument":Z
    const/16 v17, 0x0

    .restart local v17    # "taskDocumentData":Landroid/net/Uri;
    :goto_a2
    move-object/from16 v18, v17

    .line 1243
    .end local v17    # "taskDocumentData":Landroid/net/Uri;
    .local v18, "taskDocumentData":Landroid/net/Uri;
    if-eqz v10, :cond_c7

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    if-eqz v17, :cond_c7

    .line 1244
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v7

    if-nez v7, :cond_c7

    .line 1245
    move-object/from16 v7, v18

    invoke-static {v11, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v17

    .end local v18    # "taskDocumentData":Landroid/net/Uri;
    .local v7, "taskDocumentData":Landroid/net/Uri;
    if-eqz v17, :cond_c9

    .line 1250
    iput-object v14, v2, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    .line 1251
    iput-boolean v8, v2, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->matchedByRootAffinity:Z

    .line 1252
    nop

    .line 1282
    .end local v4    # "info":Landroid/content/pm/ActivityInfo;
    .end local v7    # "taskDocumentData":Landroid/net/Uri;
    .end local v10    # "taskIntent":Landroid/content/Intent;
    .end local v12    # "taskNdx":I
    .end local v13    # "task":Lcom/android/server/am/TaskRecord;
    .end local v14    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v15    # "affinityIntent":Landroid/content/Intent;
    .end local v16    # "taskIsDocument":Z
    .restart local v19    # "info":Landroid/content/pm/ActivityInfo;
    :goto_c3
    move-object/from16 v19, v4

    goto/16 :goto_14a

    .line 1253
    .end local v19    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v4    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v10    # "taskIntent":Landroid/content/Intent;
    .restart local v12    # "taskNdx":I
    .restart local v13    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v14    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v15    # "affinityIntent":Landroid/content/Intent;
    .restart local v16    # "taskIsDocument":Z
    .restart local v18    # "taskDocumentData":Landroid/net/Uri;
    :cond_c7
    move-object/from16 v7, v18

    .end local v18    # "taskDocumentData":Landroid/net/Uri;
    .restart local v7    # "taskDocumentData":Landroid/net/Uri;
    :cond_c9
    if-eqz v15, :cond_e7

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    if-eqz v17, :cond_e7

    .line 1254
    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v8

    if-nez v8, :cond_e7

    .line 1255
    invoke-static {v11, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e7

    .line 1260
    iput-object v14, v2, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    .line 1261
    const/4 v8, 0x0

    iput-boolean v8, v2, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->matchedByRootAffinity:Z

    .line 1262
    goto :goto_c3

    .line 1263
    :cond_e7
    if-nez v9, :cond_107

    if-nez v16, :cond_107

    iget-object v8, v2, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    if-nez v8, :cond_107

    iget-object v8, v13, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v8, :cond_107

    .line 1265
    iget-object v8, v13, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    move-object/from16 v19, v4

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    .end local v4    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v19    # "info":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_105

    .line 1270
    iput-object v14, v2, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    .line 1271
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->matchedByRootAffinity:Z

    goto :goto_138

    .line 1196
    .end local v7    # "taskDocumentData":Landroid/net/Uri;
    .end local v10    # "taskIntent":Landroid/content/Intent;
    .end local v13    # "task":Lcom/android/server/am/TaskRecord;
    .end local v14    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v15    # "affinityIntent":Landroid/content/Intent;
    .end local v16    # "taskIsDocument":Z
    :cond_105
    const/4 v4, 0x1

    goto :goto_138

    .line 1274
    .end local v19    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v4    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v7    # "taskDocumentData":Landroid/net/Uri;
    .restart local v10    # "taskIntent":Landroid/content/Intent;
    .restart local v13    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v14    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v15    # "affinityIntent":Landroid/content/Intent;
    .restart local v16    # "taskIsDocument":Z
    :cond_107
    move-object/from16 v19, v4

    const/4 v4, 0x1

    .end local v4    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v19    # "info":Landroid/content/pm/ActivityInfo;
    iget-object v8, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-static {v1, v13, v8}, Lcom/android/server/am/ActivityStackInjector;->findMatchTask(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;)Z

    move-result v8

    if-eqz v8, :cond_138

    .line 1275
    const-string v4, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MIUI found matching task for "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " bringing to top: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    iput-object v14, v2, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    .line 1277
    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->matchedByRootAffinity:Z

    .line 1278
    goto :goto_14a

    .line 1196
    .end local v7    # "taskDocumentData":Landroid/net/Uri;
    .end local v10    # "taskIntent":Landroid/content/Intent;
    .end local v13    # "task":Lcom/android/server/am/TaskRecord;
    .end local v14    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v15    # "affinityIntent":Landroid/content/Intent;
    .end local v16    # "taskIsDocument":Z
    :cond_138
    :goto_138
    const/4 v0, 0x0

    goto :goto_13e

    .end local v19    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v4    # "info":Landroid/content/pm/ActivityInfo;
    :cond_13a
    move-object/from16 v19, v4

    move v4, v7

    move v0, v8

    .end local v4    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v19    # "info":Landroid/content/pm/ActivityInfo;
    :goto_13e
    add-int/lit8 v12, v12, -0x1

    move v8, v0

    move v7, v4

    move-object/from16 v4, v19

    move-object/from16 v0, p0

    goto/16 :goto_3f

    .line 1282
    .end local v12    # "taskNdx":I
    .end local v19    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v4    # "info":Landroid/content/pm/ActivityInfo;
    :cond_148
    move-object/from16 v19, v4

    .end local v4    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v19    # "info":Landroid/content/pm/ActivityInfo;
    :goto_14a
    return-void
.end method

.method final finishActivityAffinityLocked(Lcom/android/server/am/ActivityRecord;)Z
    .registers 11
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 3952
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3953
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 3953
    .local v1, "index":I
    :goto_a
    if-ltz v1, :cond_2b

    .line 3954
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 3955
    .local v2, "cur":Lcom/android/server/am/ActivityRecord;
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 3956
    goto :goto_2b

    .line 3958
    :cond_1d
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "request-affinity"

    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, v2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3953
    .end local v2    # "cur":Lcom/android/server/am/ActivityRecord;
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 3960
    .end local v1    # "index":I
    :cond_2b
    :goto_2b
    const/4 v1, 0x1

    return v1
.end method

.method final finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z
    .registers 13
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "oomAdj"    # Z

    .line 4000
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method final finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;ZZ)Z
    .registers 22
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "oomAdj"    # Z
    .param p6, "pauseImmediately"    # Z

    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    move-object v1, p0

    move-object/from16 v2, p1

    .line 4009
    iget-boolean v0, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_1f

    .line 4010
    const-string v0, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Duplicate finish request for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4011
    return v3

    .line 4015
    :cond_1f
    iget-boolean v0, v2, Lcom/android/server/am/ActivityRecord;->mIsCastMode:Z

    const/4 v4, 0x0

    if-eqz v0, :cond_32

    .line 4016
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityRecord;->setCastMode(Z)V

    .line 4017
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5, v3}, Lcom/android/server/am/ActivityManagerService;->setCurrentCastModeState(Ljava/lang/String;I)V

    .line 4018
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v4, v0, Lcom/android/server/am/ActivityManagerService;->mCastActivity:Lcom/android/server/am/ActivityRecord;

    .line 4021
    :cond_32
    iget-boolean v0, v2, Lcom/android/server/am/ActivityRecord;->mIsLastFrame:Z

    if-eqz v0, :cond_39

    .line 4022
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityRecord;->setLastFrame(Z)V

    .line 4026
    :cond_39
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 4028
    :try_start_3e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->makeFinishingLocked()V

    .line 4029
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 4030
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    const/16 v5, 0x7531

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    .line 4033
    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v7, :cond_53

    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v7, v7, Lcom/android/server/am/ProcessRecord;->pid:I

    goto :goto_54

    :cond_53
    move v7, v3

    :goto_54
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    iget v7, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 4034
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x2

    aput-object v7, v6, v9

    const/4 v7, 0x3

    iget-object v10, v2, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v10, v6, v7

    const/4 v7, 0x4

    aput-object p4, v6, v7

    .line 4030
    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4035
    iget-object v5, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4036
    .local v5, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 4037
    .local v6, "index":I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v8

    if-ge v6, v7, :cond_a1

    .line 4038
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->setFrontOfTask()V

    .line 4039
    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getFlags()I

    move-result v7

    const/high16 v11, 0x80000

    and-int/2addr v7, v11

    if-eqz v7, :cond_a1

    .line 4043
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    .line 4044
    .local v7, "next":Lcom/android/server/am/ActivityRecord;
    iget-object v12, v7, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v12, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4048
    .end local v7    # "next":Lcom/android/server/am/ActivityRecord;
    :cond_a1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->pauseKeyDispatchingLocked()V

    .line 4050
    const-string v7, "finishActivity"

    invoke-direct {v1, v2, v7}, Lcom/android/server/am/ActivityStack;->adjustFocusedActivityStack(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 4052
    invoke-direct/range {p0 .. p3}, Lcom/android/server/am/ActivityStack;->finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V

    .line 4054
    if-gtz v6, :cond_b6

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->isClearingToReuseTask()Z

    move-result v7

    if-nez v7, :cond_b6

    move v7, v8

    goto :goto_b7

    :cond_b6
    move v7, v3

    .line 4055
    .local v7, "endTask":Z
    :goto_b7
    if-eqz v7, :cond_bc

    const/16 v11, 0x9

    goto :goto_bd

    :cond_bc
    const/4 v11, 0x7

    .line 4056
    .local v11, "transit":I
    :goto_bd
    iget-object v12, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v12, v2, :cond_f2

    .line 4059
    if-eqz v7, :cond_cc

    .line 4060
    iget-object v8, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    iget v9, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v8, v9}, Lcom/android/server/am/TaskChangeNotificationController;->notifyTaskRemovalStarted(I)V
    :try_end_cc
    .catchall {:try_start_3e .. :try_end_cc} :catchall_163

    .line 4063
    :cond_cc
    :try_start_cc
    iget-object v8, v1, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8, v11, v3}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 4066
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V

    .line 4068
    iget-object v8, v1, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;
    :try_end_d6
    .catchall {:try_start_cc .. :try_end_d6} :catchall_ed

    if-nez v8, :cond_de

    .line 4072
    move/from16 v12, p6

    :try_start_da
    invoke-virtual {v1, v3, v3, v4, v12}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZLcom/android/server/am/ActivityRecord;Z)Z

    goto :goto_e0

    .line 4075
    :cond_de
    move/from16 v12, p6

    :goto_e0
    if-eqz v7, :cond_157

    .line 4076
    iget-object v4, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/server/am/LockTaskController;->clearLockedTask(Lcom/android/server/am/TaskRecord;)V

    goto/16 :goto_157

    .line 4119
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    .end local v5    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v6    # "index":I
    .end local v7    # "endTask":Z
    .end local v11    # "transit":I
    :catchall_ed
    move-exception v0

    move/from16 v12, p6

    goto/16 :goto_160

    .line 4078
    .restart local v0    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v5    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v6    # "index":I
    .restart local v7    # "endTask":Z
    .restart local v11    # "transit":I
    :cond_f2
    move/from16 v12, p6

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v4

    if-nez v4, :cond_157

    .line 4082
    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v4, :cond_114

    .line 4085
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V

    .line 4086
    iget-object v4, v1, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_114

    .line 4087
    iget-object v4, v1, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4092
    :cond_114
    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v4, :cond_11f

    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v4, :cond_11d

    goto :goto_11f

    .line 4093
    :cond_11d
    move v9, v8

    goto :goto_120

    .line 4092
    :cond_11f
    :goto_11f
    nop

    .line 4093
    :goto_120
    move v4, v9

    .line 4094
    .local v4, "finishMode":I
    const-string v9, "finishActivityLocked"
    :try_end_123
    .catchall {:try_start_da .. :try_end_123} :catchall_15f

    move/from16 v13, p5

    :try_start_125
    invoke-virtual {v1, v2, v4, v13, v9}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZLjava/lang/String;)Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    if-nez v9, :cond_12d

    move v3, v8

    nop

    .line 4104
    .local v3, "removedActivity":Z
    :cond_12d
    invoke-virtual {v0, v8}, Lcom/android/server/am/TaskRecord;->onlyHasTaskOverlayActivities(Z)Z

    move-result v8

    if-eqz v8, :cond_14e

    .line 4105
    iget-object v8, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_139
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_14e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityRecord;

    .line 4106
    .local v9, "taskOverlay":Lcom/android/server/am/ActivityRecord;
    iget-boolean v14, v9, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    if-nez v14, :cond_14a

    .line 4107
    goto :goto_139

    .line 4109
    :cond_14a
    invoke-direct {v1, v9, v11}, Lcom/android/server/am/ActivityStack;->prepareActivityHideTransitionAnimation(Lcom/android/server/am/ActivityRecord;I)V
    :try_end_14d
    .catchall {:try_start_125 .. :try_end_14d} :catchall_155

    .line 4110
    .end local v9    # "taskOverlay":Lcom/android/server/am/ActivityRecord;
    goto :goto_139

    .line 4112
    :cond_14e
    nop

    .line 4119
    iget-object v8, v1, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 4112
    return v3

    .line 4119
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    .end local v3    # "removedActivity":Z
    .end local v4    # "finishMode":I
    .end local v5    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v6    # "index":I
    .end local v7    # "endTask":Z
    .end local v11    # "transit":I
    :catchall_155
    move-exception v0

    goto :goto_168

    .line 4117
    .restart local v0    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v5    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v6    # "index":I
    .restart local v7    # "endTask":Z
    .restart local v11    # "transit":I
    :cond_157
    :goto_157
    move/from16 v13, p5

    .line 4119
    iget-object v4, v1, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 4117
    return v3

    .line 4119
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    .end local v5    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v6    # "index":I
    .end local v7    # "endTask":Z
    .end local v11    # "transit":I
    :catchall_15f
    move-exception v0

    :goto_160
    move/from16 v13, p5

    goto :goto_168

    :catchall_163
    move-exception v0

    move/from16 v13, p5

    move/from16 v12, p6

    :goto_168
    iget-object v3, v1, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method finishAllActivitiesLocked(Z)V
    .registers 10
    .param p1, "immediately"    # Z

    .line 4211
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v0, 0x1

    .line 4212
    .local v0, "noActivitiesInStack":Z
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "taskNdx":I
    :goto_9
    if-ltz v1, :cond_52

    .line 4213
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4214
    .local v2, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "activityNdx":I
    :goto_1b
    if-ltz v3, :cond_4f

    .line 4215
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 4216
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    const/4 v0, 0x0

    .line 4217
    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_2b

    if-nez p1, :cond_2b

    .line 4218
    goto :goto_4c

    .line 4220
    :cond_2b
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "finishAllActivitiesLocked: finishing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " immediately"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4221
    const-string v5, "finishAllActivitiesLocked"

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v6, v6, v5}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZLjava/lang/String;)Lcom/android/server/am/ActivityRecord;

    .line 4214
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_4c
    add-int/lit8 v3, v3, -0x1

    goto :goto_1b

    .line 4212
    .end local v2    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "activityNdx":I
    :cond_4f
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 4225
    .end local v1    # "taskNdx":I
    :cond_52
    if-eqz v0, :cond_57

    .line 4226
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->remove()V

    .line 4228
    :cond_57
    return-void
.end method

.method final finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZLjava/lang/String;)Lcom/android/server/am/ActivityRecord;
    .registers 13
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "mode"    # I
    .param p3, "oomAdj"    # Z
    .param p4, "reason"    # Ljava/lang/String;

    .line 4145
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked(Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 4148
    .local v0, "next":Lcom/android/server/am/ActivityRecord;
    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne p2, v2, :cond_39

    iget-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v4, :cond_13

    iget-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v4, :cond_39

    :cond_13
    if-eqz v0, :cond_39

    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v4, :cond_1d

    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->mIsDummyVisible:Z

    if-eqz v4, :cond_39

    .line 4152
    :cond_1d
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 4153
    invoke-virtual {p0, p1, v3, v3}, Lcom/android/server/am/ActivityStack;->addToStopping(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 4157
    :cond_2a
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string v2, "finishCurrentActivityLocked"

    invoke-virtual {p1, v1, v2}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 4158
    if-eqz p3, :cond_38

    .line 4159
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 4161
    :cond_38
    return-object p1

    .line 4165
    :cond_39
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4166
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4167
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4168
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v4

    .line 4171
    .local v4, "prevState":Lcom/android/server/am/ActivityStack$ActivityState;
    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->FINISHING:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string v6, "finishCurrentActivityLocked"

    invoke-virtual {p1, v5, v6}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 4172
    nop

    .line 4173
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v6

    if-eq v5, v6, :cond_6e

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v4, v5, :cond_6e

    if-ne p2, v2, :cond_6e

    move v2, v1

    goto :goto_6f

    :cond_6e
    move v2, v3

    .line 4176
    .local v2, "finishingActivityInNonFocusedStack":Z
    :goto_6f
    if-eqz p2, :cond_9c

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v4, v5, :cond_7d

    if-eq p2, v1, :cond_9c

    .line 4178
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->inPinnedWindowingMode()Z

    move-result v5

    if-nez v5, :cond_9c

    :cond_7d
    if-nez v2, :cond_9c

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v4, v5, :cond_9c

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v4, v5, :cond_9c

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v4, v5, :cond_8c

    goto :goto_9c

    .line 4204
    :cond_8c
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4205
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 4206
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 4207
    return-object p1

    .line 4183
    :cond_9c
    :goto_9c
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->makeFinishingLocked()V

    .line 4184
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "finish-imm:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v1, v5}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    move-result v5

    .line 4186
    .local v5, "activityRemoved":Z
    if-eqz v2, :cond_bd

    .line 4189
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v7, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {v6, v0, v7, v3, v1}, Lcom/android/server/am/ActivityStackSupervisor;->ensureVisibilityAndConfig(Lcom/android/server/am/ActivityRecord;IZZ)Z

    .line 4192
    :cond_bd
    if-eqz v5, :cond_c4

    .line 4193
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 4198
    :cond_c4
    if-eqz v5, :cond_c8

    const/4 v1, 0x0

    goto :goto_c9

    :cond_c8
    move-object v1, p1

    :goto_c9
    return-object v1
.end method

.method finishDisabledPackageActivitiesLocked(Ljava/lang/String;Ljava/util/Set;ZZI)Z
    .registers 24
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

    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    .line 5253
    move/from16 v9, p5

    const/4 v0, 0x0

    .line 5254
    .local v0, "didSomething":Z
    const/4 v1, 0x0

    .line 5255
    .local v1, "lastTask":Lcom/android/server/am/TaskRecord;
    const/4 v2, 0x0

    .line 5256
    .local v2, "homeActivity":Landroid/content/ComponentName;
    iget-object v3, v6, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v10, 0x1

    sub-int/2addr v3, v10

    .local v3, "taskNdx":I
    :goto_13
    move v11, v3

    .end local v3    # "taskNdx":I
    .local v11, "taskNdx":I
    if-ltz v11, :cond_f1

    .line 5257
    iget-object v3, v6, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    iget-object v12, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5258
    .local v12, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    iget-object v3, v6, Lcom/android/server/am/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 5259
    iget-object v3, v6, Lcom/android/server/am/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5261
    :goto_2a
    iget-object v3, v6, Lcom/android/server/am/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_ed

    .line 5262
    iget-object v3, v6, Lcom/android/server/am/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lcom/android/server/am/ActivityRecord;

    .line 5263
    .local v13, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v3, v13, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 5264
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    if-eqz v8, :cond_58

    iget-object v3, v13, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 5265
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_58

    :cond_52
    if-nez v7, :cond_5a

    iget v3, v13, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v3, v9, :cond_5a

    :cond_58
    move v4, v10

    nop

    :cond_5a
    move v14, v4

    .line 5267
    .local v14, "sameComponent":Z
    const/4 v3, -0x1

    if-eq v9, v3, :cond_62

    iget v3, v13, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v3, v9, :cond_eb

    :cond_62
    if-nez v14, :cond_6e

    .line 5270
    invoke-virtual {v13}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    if-ne v3, v1, :cond_eb

    iget-boolean v3, v13, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-nez v3, :cond_eb

    :cond_6e
    iget-object v3, v13, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_7a

    if-nez p4, :cond_7a

    iget-object v3, v13, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v3, v3, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v3, :cond_eb

    .line 5272
    :cond_7a
    if-nez p3, :cond_82

    .line 5273
    iget-boolean v3, v13, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_81

    .line 5276
    goto :goto_2a

    .line 5278
    :cond_81
    return v10

    .line 5280
    :cond_82
    invoke-virtual {v13}, Lcom/android/server/am/ActivityRecord;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_ab

    .line 5281
    if-eqz v2, :cond_a9

    iget-object v3, v13, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a9

    .line 5282
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skip force-stop again "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5283
    goto :goto_2a

    .line 5285
    :cond_a9
    iget-object v2, v13, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 5288
    .end local v2    # "homeActivity":Landroid/content/ComponentName;
    .local v15, "homeActivity":Landroid/content/ComponentName;
    :cond_ab
    move-object v15, v2

    const/16 v16, 0x1

    .line 5289
    .end local v0    # "didSomething":Z
    .local v16, "didSomething":Z
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Force finishing activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5290
    if-eqz v14, :cond_d8

    .line 5291
    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_d5

    .line 5292
    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-boolean v10, v0, Lcom/android/server/am/ProcessRecord;->removed:Z

    .line 5294
    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5296
    :cond_d5
    const/4 v0, 0x0

    iput-object v0, v13, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 5298
    :cond_d8
    invoke-virtual {v13}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v17

    .line 5299
    .end local v1    # "lastTask":Lcom/android/server/am/TaskRecord;
    .local v17, "lastTask":Lcom/android/server/am/TaskRecord;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "force-stop"

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, v13

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 5302
    .end local v13    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v14    # "sameComponent":Z
    move-object v2, v15

    move/from16 v0, v16

    move-object/from16 v1, v17

    .end local v15    # "homeActivity":Landroid/content/ComponentName;
    .end local v16    # "didSomething":Z
    .end local v17    # "lastTask":Lcom/android/server/am/TaskRecord;
    .restart local v0    # "didSomething":Z
    .restart local v1    # "lastTask":Lcom/android/server/am/TaskRecord;
    .restart local v2    # "homeActivity":Landroid/content/ComponentName;
    :cond_eb
    goto/16 :goto_2a

    .line 5256
    .end local v12    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_ed
    add-int/lit8 v3, v11, -0x1

    .end local v11    # "taskNdx":I
    .restart local v3    # "taskNdx":I
    goto/16 :goto_13

    .line 5304
    .end local v3    # "taskNdx":I
    :cond_f1
    return v0
.end method

.method final finishSubActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V
    .registers 14
    .param p1, "self"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "resultWho"    # Ljava/lang/String;
    .param p3, "requestCode"    # I

    .line 3837
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 3837
    .local v0, "taskNdx":I
    :goto_8
    if-ltz v0, :cond_4d

    .line 3838
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3839
    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 3839
    .local v2, "activityNdx":I
    :goto_1a
    if-ltz v2, :cond_4a

    .line 3840
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 3841
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-ne v4, p1, :cond_47

    iget v4, v3, Lcom/android/server/am/ActivityRecord;->requestCode:I

    if-ne v4, p3, :cond_47

    .line 3842
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    if-nez v4, :cond_30

    if-eqz p2, :cond_3c

    :cond_30
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    if-eqz v4, :cond_47

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 3843
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 3844
    :cond_3c
    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "request-sub"

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, v3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3839
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_47
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    .line 3837
    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v2    # "activityNdx":I
    :cond_4a
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3850
    .end local v0    # "taskNdx":I
    :cond_4d
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 3851
    return-void
.end method

.method final finishTopCrashedActivityLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Lcom/android/server/am/TaskRecord;
    .registers 18
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    move-object v6, p0

    .line 3862
    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    .line 3863
    .local v7, "r":Lcom/android/server/am/ActivityRecord;
    const/4 v0, 0x0

    .line 3864
    .local v0, "finishedTask":Lcom/android/server/am/TaskRecord;
    if-eqz v7, :cond_ee

    iget-object v1, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v8, p1

    if-eq v1, v8, :cond_10

    goto/16 :goto_f0

    .line 3867
    :cond_10
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Force finishing activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 3868
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3867
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3869
    invoke-virtual {v7}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v9

    .line 3870
    .end local v0    # "finishedTask":Lcom/android/server/am/TaskRecord;
    .local v9, "finishedTask":Lcom/android/server/am/TaskRecord;
    iget-object v0, v6, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    .line 3871
    .local v10, "taskNdx":I
    move-object v11, v9

    .line 3872
    .local v11, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v11, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    .line 3873
    .local v12, "activityNdx":I
    iget-object v0, v6, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v1, 0x1a

    const/4 v13, 0x0

    invoke-virtual {v0, v1, v13}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 3875
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3876
    nop

    .line 3880
    add-int/lit8 v12, v12, -0x1

    .line 3883
    iget-object v0, v6, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    .line 3884
    .local v14, "newTaskNdx":I
    const/4 v0, 0x1

    if-eq v14, v10, :cond_67

    if-gez v14, :cond_66

    goto :goto_67

    :cond_66
    goto :goto_68

    :cond_67
    :goto_67
    move v13, v0

    .line 3885
    .local v13, "needFinishTwice":Z
    :goto_68
    if-ne v14, v10, :cond_6c

    if-ltz v12, :cond_6e

    :cond_6c
    if-gez v14, :cond_92

    .line 3886
    :cond_6e
    if-gez v14, :cond_77

    iget-object v1, v6, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_78

    :cond_77
    move v1, v10

    .line 3889
    .end local v10    # "taskNdx":I
    .local v1, "taskNdx":I
    :cond_78
    :goto_78
    add-int/lit8 v1, v1, -0x1

    .line 3890
    if-gez v1, :cond_7f

    .line 3891
    nop

    .line 3898
    .end local v1    # "taskNdx":I
    .restart local v10    # "taskNdx":I
    :goto_7d
    move v10, v1

    goto :goto_92

    .line 3893
    .end local v10    # "taskNdx":I
    .restart local v1    # "taskNdx":I
    :cond_7f
    iget-object v2, v6, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v12, v2, -0x1

    .line 3894
    if-ltz v12, :cond_78

    goto :goto_7d

    .line 3898
    .end local v1    # "taskNdx":I
    .restart local v10    # "taskNdx":I
    :cond_92
    :goto_92
    if-ltz v12, :cond_ed

    if-ltz v10, :cond_ed

    if-eqz v13, :cond_ed

    .line 3899
    iget-object v0, v6, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    .line 3900
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v7, v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 3901
    invoke-virtual {v7}, Lcom/android/server/am/ActivityRecord;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_c3

    iget-object v0, v6, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v0, v1, :cond_ed

    .line 3902
    :cond_c3
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Force finishing activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 3903
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3902
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3904
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3908
    :cond_ed
    return-object v9

    .line 3865
    .end local v9    # "finishedTask":Lcom/android/server/am/TaskRecord;
    .end local v10    # "taskNdx":I
    .end local v11    # "task":Lcom/android/server/am/TaskRecord;
    .end local v12    # "activityNdx":I
    .end local v13    # "needFinishTwice":Z
    .end local v14    # "newTaskNdx":I
    .restart local v0    # "finishedTask":Lcom/android/server/am/TaskRecord;
    :cond_ee
    move-object/from16 v8, p1

    :goto_f0
    const/4 v1, 0x0

    return-object v1
.end method

.method final finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    .registers 14
    .param p1, "session"    # Landroid/service/voice/IVoiceInteractionSession;

    .line 3912
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3913
    .local v0, "sessionBinder":Landroid/os/IBinder;
    const/4 v1, 0x0

    .line 3914
    .local v1, "didOne":Z
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "taskNdx":I
    :goto_d
    if-ltz v2, :cond_80

    .line 3915
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 3916
    .local v3, "tr":Lcom/android/server/am/TaskRecord;
    iget-object v4, v3, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v4, :cond_47

    iget-object v4, v3, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v4}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, v0, :cond_47

    .line 3917
    iget-object v4, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "activityNdx":I
    :goto_2b
    if-ltz v4, :cond_7d

    .line 3918
    iget-object v5, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 3919
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v6, :cond_44

    .line 3920
    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "finish-voice"

    const/4 v11, 0x0

    move-object v6, p0

    move-object v7, v5

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3922
    const/4 v1, 0x1

    .line 3917
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_44
    add-int/lit8 v4, v4, -0x1

    goto :goto_2b

    .line 3927
    .end local v4    # "activityNdx":I
    :cond_47
    iget-object v4, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .restart local v4    # "activityNdx":I
    :goto_4f
    if-ltz v4, :cond_7d

    .line 3928
    iget-object v5, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 3929
    .restart local v5    # "r":Lcom/android/server/am/ActivityRecord;
    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v6, :cond_7a

    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 3930
    invoke-interface {v6}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-ne v6, v0, :cond_7a

    .line 3932
    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->clearVoiceSessionLocked()V

    .line 3934
    :try_start_68
    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/app/IApplicationThread;->scheduleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V
    :try_end_72
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_72} :catch_73

    .line 3938
    goto :goto_74

    .line 3936
    :catch_73
    move-exception v6

    .line 3939
    :goto_74
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->finishRunningVoiceLocked()V

    .line 3940
    goto :goto_7d

    .line 3927
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_7a
    add-int/lit8 v4, v4, -0x1

    goto :goto_4f

    .line 3914
    .end local v3    # "tr":Lcom/android/server/am/TaskRecord;
    .end local v4    # "activityNdx":I
    :cond_7d
    :goto_7d
    add-int/lit8 v2, v2, -0x1

    goto :goto_d

    .line 3946
    .end local v2    # "taskNdx":I
    :cond_80
    if-eqz v1, :cond_87

    .line 3947
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 3949
    :cond_87
    return-void
.end method

.method getAdjustedPositionForTask(Lcom/android/server/am/TaskRecord;ILcom/android/server/am/ActivityRecord;)I
    .registers 8
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "suggestedPosition"    # I
    .param p3, "starting"    # Lcom/android/server/am/ActivityRecord;

    .line 3067
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3068
    .local v0, "maxPosition":I
    if-eqz p3, :cond_e

    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->okToShowLocked()Z

    move-result v1

    if-nez v1, :cond_16

    :cond_e
    if-nez p3, :cond_1b

    .line 3069
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->okToShowLocked()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 3071
    :cond_16
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1

    .line 3075
    :cond_1b
    :goto_1b
    if-lez v0, :cond_3b

    .line 3076
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 3077
    .local v1, "tmpTask":Lcom/android/server/am/TaskRecord;
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v3, v1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 3078
    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-nez v2, :cond_38

    .line 3079
    goto :goto_3b

    .line 3081
    :cond_38
    add-int/lit8 v0, v0, -0x1

    .line 3082
    .end local v1    # "tmpTask":Lcom/android/server/am/TaskRecord;
    goto :goto_1b

    .line 3084
    :cond_3b
    :goto_3b
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method getAllRunningVisibleActivitiesLocked(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    .line 891
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    .local p1, "outActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 892
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_b
    if-ltz v0, :cond_1b

    .line 893
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1, p1}, Lcom/android/server/am/TaskRecord;->getAllRunningVisibleActivitiesLocked(Ljava/util/ArrayList;)V

    .line 892
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 895
    .end local v0    # "taskNdx":I
    :cond_1b
    return-void
.end method

.method getAllTasks()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation

    .line 5586
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method getBoundsForNewConfiguration(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 816
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/StackWindowController;->getBoundsForNewConfiguration(Landroid/graphics/Rect;)V

    .line 817
    return-void
.end method

.method protected getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;
    .registers 3
    .param p1, "index"    # I

    .line 238
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ConfigurationContainer;

    return-object v0
.end method

.method protected getChildCount()I
    .registers 2

    .line 233
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getDisplay()Lcom/android/server/am/ActivityDisplay;
    .registers 3

    .line 791
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v1, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplay(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    return-object v0
.end method

.method getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    .line 5429
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5431
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const-string v1, "all"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 5432
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 5432
    .local v1, "taskNdx":I
    :goto_15
    if-ltz v1, :cond_95

    .line 5433
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5432
    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    .line 5435
    .end local v1    # "taskNdx":I
    :cond_27
    const-string/jumbo v1, "top"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 5436
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 5437
    .local v1, "top":I
    if-ltz v1, :cond_55

    .line 5438
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5439
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 5440
    .local v3, "listTop":I
    if-ltz v3, :cond_55

    .line 5441
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5444
    .end local v1    # "top":I
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "listTop":I
    :cond_55
    goto :goto_95

    .line 5445
    :cond_56
    new-instance v1, Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    invoke-direct {v1}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;-><init>()V

    .line 5446
    .local v1, "matcher":Lcom/android/server/am/ActivityManagerService$ItemMatcher;
    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->build(Ljava/lang/String;)V

    .line 5448
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 5448
    .local v2, "taskNdx":I
    :goto_66
    if-ltz v2, :cond_95

    .line 5449
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_76
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_92

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 5450
    .local v4, "r1":Lcom/android/server/am/ActivityRecord;
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_91

    .line 5451
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5453
    .end local v4    # "r1":Lcom/android/server/am/ActivityRecord;
    :cond_91
    goto :goto_76

    .line 5448
    :cond_92
    add-int/lit8 v2, v2, -0x1

    goto :goto_66

    .line 5457
    .end local v1    # "matcher":Lcom/android/server/am/ActivityManagerService$ItemMatcher;
    .end local v2    # "taskNdx":I
    :cond_95
    :goto_95
    return-object v0
.end method

.method protected getParent()Lcom/android/server/wm/ConfigurationContainer;
    .registers 2

    .line 243
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    return-object v0
.end method

.method getPresentUIDs(Landroid/util/IntArray;)V
    .registers 7
    .param p1, "presentUIDs"    # Landroid/util/IntArray;

    .line 1034
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 1035
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    iget-object v2, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 1036
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getUid()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/util/IntArray;->add(I)V

    .line 1037
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    goto :goto_18

    .line 1038
    .end local v1    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2c
    goto :goto_6

    .line 1039
    :cond_2d
    return-void
.end method

.method protected getResumedActivity()Lcom/android/server/am/ActivityRecord;
    .registers 2

    .line 2501
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    return-object v0
.end method

.method getRunningTasks(Ljava/util/List;IIIZ)V
    .registers 12
    .param p2, "ignoreActivityType"    # I
        .annotation build Landroid/app/WindowConfiguration$ActivityType;
        .end annotation
    .end param
    .param p3, "ignoreWindowingMode"    # I
        .annotation build Landroid/app/WindowConfiguration$WindowingMode;
        .end annotation
    .end param
    .param p4, "callingUid"    # I
    .param p5, "allowed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/am/TaskRecord;",
            ">;IIIZ)V"
        }
    .end annotation

    .line 5314
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    .local p1, "tasksOut":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskRecord;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    const/4 v1, 0x1

    if-ne v0, p0, :cond_b

    move v0, v1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 5315
    .local v0, "focusedStack":Z
    :goto_c
    const/4 v2, 0x1

    .line 5316
    .local v2, "topTask":Z
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    .local v3, "taskNdx":I
    :goto_14
    move v1, v3

    .end local v3    # "taskNdx":I
    .local v1, "taskNdx":I
    if-ltz v1, :cond_56

    .line 5317
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 5318
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-nez v4, :cond_26

    .line 5320
    goto :goto_53

    .line 5322
    :cond_26
    if-nez p5, :cond_33

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->isActivityTypeHome()Z

    move-result v4

    if-nez v4, :cond_33

    iget v4, v3, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    if-eq v4, p4, :cond_33

    .line 5324
    goto :goto_53

    .line 5326
    :cond_33
    if-eqz p2, :cond_3c

    .line 5327
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getActivityType()I

    move-result v4

    if-ne v4, p2, :cond_3c

    .line 5329
    goto :goto_53

    .line 5331
    :cond_3c
    if-eqz p3, :cond_45

    .line 5332
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getWindowingMode()I

    move-result v4

    if-ne v4, p3, :cond_45

    .line 5334
    goto :goto_53

    .line 5336
    :cond_45
    if-eqz v0, :cond_50

    if-eqz v2, :cond_50

    .line 5340
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    .line 5341
    const/4 v2, 0x0

    .line 5343
    :cond_50
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5316
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :goto_53
    add-int/lit8 v3, v1, -0x1

    .end local v1    # "taskNdx":I
    .local v3, "taskNdx":I
    goto :goto_14

    .line 5345
    .end local v3    # "taskNdx":I
    :cond_56
    return-void
.end method

.method getStackDockedModeBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .registers 6
    .param p1, "currentTempTaskBounds"    # Landroid/graphics/Rect;
    .param p2, "outStackBounds"    # Landroid/graphics/Rect;
    .param p3, "outTempTaskBounds"    # Landroid/graphics/Rect;
    .param p4, "ignoreVisibility"    # Z

    .line 799
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wm/StackWindowController;->getStackDockedModeBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 801
    return-void
.end method

.method public getStackId()I
    .registers 2

    .line 5702
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget v0, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    return v0
.end method

.method getTopActivity()Lcom/android/server/am/ActivityRecord;
    .registers 3

    .line 963
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 964
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 965
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_19

    .line 966
    return-object v1

    .line 963
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 969
    .end local v0    # "taskNdx":I
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method getTopDismissingKeyguardActivity()Lcom/android/server/am/ActivityRecord;
    .registers 2

    .line 2180
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTopDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    return-object v0
.end method

.method getWindowContainerBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 808
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    if-eqz v0, :cond_a

    .line 809
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/StackWindowController;->getBounds(Landroid/graphics/Rect;)V

    .line 810
    return-void

    .line 812
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 813
    return-void
.end method

.method getWindowContainerController()Lcom/android/server/wm/StackWindowController;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 497
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    return-object v0
.end method

.method goToSleep()V
    .registers 10

    .line 1470
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v0}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 1475
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "taskNdx":I
    :goto_d
    if-ltz v0, :cond_3d

    .line 1476
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1477
    .local v2, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    .local v3, "activityNdx":I
    :goto_1e
    if-ltz v3, :cond_3a

    .line 1478
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 1479
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 1480
    invoke-virtual {v4, v1}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    .line 1477
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_37
    add-int/lit8 v3, v3, -0x1

    goto :goto_1e

    .line 1475
    .end local v2    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "activityNdx":I
    :cond_3a
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 1484
    .end local v0    # "taskNdx":I
    :cond_3d
    return-void
.end method

.method goToSleepIfPossible(Z)Z
    .registers 6
    .param p1, "shuttingDown"    # Z

    .line 1427
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v0, 0x1

    .line 1429
    .local v0, "shouldSleep":Z
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_d

    .line 1435
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZLcom/android/server/am/ActivityRecord;Z)Z

    .line 1436
    const/4 v0, 0x0

    goto :goto_12

    .line 1437
    :cond_d
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_12

    .line 1440
    const/4 v0, 0x0

    .line 1443
    :cond_12
    :goto_12
    if-nez p1, :cond_2f

    .line 1444
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityStack;->containsActivityFromStack(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1449
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    .line 1450
    const/4 v0, 0x0

    .line 1453
    :cond_24
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityStack;->containsActivityFromStack(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1457
    const/4 v0, 0x0

    .line 1461
    :cond_2f
    if-eqz v0, :cond_34

    .line 1462
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->goToSleep()V

    .line 1465
    :cond_34
    return v0
.end method

.method handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 9
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 5380
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_8
    if-ltz v0, :cond_67

    .line 5381
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5382
    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "activityNdx":I
    :goto_1a
    if-ltz v2, :cond_64

    .line 5383
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 5384
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v4, p1, :cond_61

    .line 5385
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Force finishing activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 5386
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5385
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5389
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_51

    .line 5390
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5393
    :cond_51
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 5394
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v5, 0x1a

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 5396
    const-string v4, "handleAppCrashedLocked"

    invoke-virtual {p0, v3, v6, v6, v4}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZLjava/lang/String;)Lcom/android/server/am/ActivityRecord;

    .line 5382
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_61
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    .line 5380
    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v2    # "activityNdx":I
    :cond_64
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 5401
    .end local v0    # "taskNdx":I
    :cond_67
    return-void
.end method

.method handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;)Z
    .registers 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 5366
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v0, p1, :cond_d

    .line 5369
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 5371
    :cond_d
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v0, p1, :cond_1b

    .line 5372
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 5373
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    .line 5376
    :cond_1b
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    return v0
.end method

.method inFrontOfStandardStack()Z
    .registers 5

    .line 4232
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    .line 4233
    .local v0, "display":Lcom/android/server/am/ActivityDisplay;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 4234
    return v1

    .line 4236
    :cond_8
    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityDisplay;->getIndexOf(Lcom/android/server/am/ActivityStack;)I

    move-result v2

    .line 4237
    .local v2, "index":I
    if-nez v2, :cond_f

    .line 4238
    return v1

    .line 4240
    :cond_f
    add-int/lit8 v1, v2, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 4241
    .local v1, "stackBehind":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isActivityTypeStandard()Z

    move-result v3

    return v3
.end method

.method final isAttached()Z
    .registers 2

    .line 1176
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getParent()Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isCompatible(II)Z
    .registers 5
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I

    .line 713
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    if-nez p2, :cond_3

    .line 716
    const/4 p2, 0x1

    .line 718
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    .line 719
    .local v0, "display":Lcom/android/server/am/ActivityDisplay;
    if-eqz v0, :cond_12

    const/4 v1, 0x1

    if-ne p2, v1, :cond_12

    if-nez p1, :cond_12

    .line 723
    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getWindowingMode()I

    move-result p1

    .line 725
    :cond_12
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/ConfigurationContainer;->isCompatible(II)Z

    move-result v1

    return v1
.end method

.method isFocusable()Z
    .registers 4

    .line 1171
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1172
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    invoke-virtual {v1, p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusable(Lcom/android/server/wm/ConfigurationContainer;Z)Z

    move-result v1

    return v1
.end method

.method final isHomeOrRecentsStack()Z
    .registers 2

    .line 1054
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isActivityTypeRecents()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 998
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 999
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    return-object v1
.end method

.method isInStackLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .registers 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 1003
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1004
    return-object v0

    .line 1006
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 1007
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 1008
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v2, :cond_28

    iget-object v3, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 1009
    if-eq v2, p0, :cond_27

    const-string v0, "ActivityManager"

    const-string v3, "Illegal state! task does not point to stack it is in."

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    :cond_27
    return-object p1

    .line 1013
    :cond_28
    return-object v0
.end method

.method isInStackLocked(Lcom/android/server/am/TaskRecord;)Z
    .registers 3
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .line 1017
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final isOnHomeDisplay()Z
    .registers 2

    .line 1065
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget v0, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method final isRecentsStackLaunchBehind()Z
    .registers 3

    .line 1059
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getActivityType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchRecentsFromGesture:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method isStackTranslucent(Lcom/android/server/am/ActivityRecord;)Z
    .registers 9
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1820
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_50

    iget-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mForceHidden:Z

    if-eqz v0, :cond_c

    goto :goto_50

    .line 1823
    :cond_c
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .local v0, "taskNdx":I
    :goto_13
    if-ltz v0, :cond_4f

    .line 1824
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 1825
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    iget-object v3, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1826
    .local v3, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    .local v4, "activityNdx":I
    :goto_24
    if-ltz v4, :cond_4c

    .line 1827
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 1829
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_31

    .line 1832
    goto :goto_47

    .line 1835
    :cond_31
    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-nez v6, :cond_38

    if-eq v5, p1, :cond_38

    .line 1838
    goto :goto_47

    .line 1843
    :cond_38
    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v6, :cond_4a

    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->hasWallpaper:Z

    if-eqz v6, :cond_47

    .line 1844
    invoke-static {v5}, Lcom/android/server/am/ActivityStackInjector;->ignoreWallpaper(Lcom/android/server/am/ActivityRecord;)Z

    move-result v6

    if-nez v6, :cond_47

    goto :goto_4a

    .line 1826
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_47
    :goto_47
    add-int/lit8 v4, v4, -0x1

    goto :goto_24

    .line 1848
    .restart local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_4a
    :goto_4a
    const/4 v1, 0x0

    return v1

    .line 1823
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    .end local v3    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v4    # "activityNdx":I
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_4c
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 1852
    .end local v0    # "taskNdx":I
    :cond_4f
    return v1

    .line 1821
    :cond_50
    :goto_50
    return v1
.end method

.method isTopActivityVisible()Z
    .registers 3

    .line 1868
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1869
    .local v0, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_c

    iget-boolean v1, v0, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method isTopStackOnDisplay()Z
    .registers 3

    .line 1858
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    .line 1859
    .local v0, "display":Lcom/android/server/am/ActivityDisplay;
    if-eqz v0, :cond_b

    .line 1860
    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityDisplay;->isTopStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v1

    return v1

    .line 1862
    :cond_b
    const/4 v1, 0x0

    return v1
.end method

.method isUidPresent(I)Z
    .registers 7
    .param p1, "uid"    # I

    .line 1022
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 1023
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    iget-object v2, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 1024
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getUid()I

    move-result v4

    if-ne v4, p1, :cond_2c

    .line 1025
    const/4 v0, 0x1

    return v0

    .line 1027
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2c
    goto :goto_18

    .line 1028
    .end local v1    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2d
    goto :goto_6

    .line 1029
    :cond_2e
    const/4 v0, 0x0

    return v0
.end method

.method minimalResumeActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 1353
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string/jumbo v1, "minimalResumeActivityLocked"

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 1354
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->completeResumeLocked()V

    .line 1355
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchTimeTracker()Lcom/android/server/am/LaunchTimeTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/LaunchTimeTracker;->setLaunchTime(Lcom/android/server/am/ActivityRecord;)V

    .line 1358
    return-void
.end method

.method moveHomeStackTaskToTop()V
    .registers 5

    .line 4894
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 4898
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 4899
    .local v0, "top":I
    if-ltz v0, :cond_25

    .line 4900
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 4903
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4904
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4905
    invoke-direct {p0, v2, v1}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    .line 4907
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_25
    return-void

    .line 4895
    .end local v0    # "top":I
    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling moveHomeStackTaskToTop() on non-home stack: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final moveTaskToBackLocked(I)Z
    .registers 10
    .param p1, "taskId"    # I

    .line 5000
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->taskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 5001
    .local v0, "tr":Lcom/android/server/am/TaskRecord;
    const/4 v1, 0x0

    if-nez v0, :cond_1f

    .line 5002
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moveTaskToBack: bad taskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5003
    return v1

    .line 5005
    :cond_1f
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moveTaskToBack: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5009
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/am/LockTaskController;->canMoveTaskToBack(Lcom/android/server/am/TaskRecord;)Z

    move-result v2

    if-nez v2, :cond_43

    .line 5010
    return v1

    .line 5016
    :cond_43
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isTopStackOnDisplay()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_79

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v2, :cond_79

    .line 5017
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 5018
    .local v4, "next":Lcom/android/server/am/ActivityRecord;
    if-nez v4, :cond_5b

    .line 5019
    invoke-virtual {p0, v2, v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 5021
    :cond_5b
    if-eqz v4, :cond_79

    .line 5023
    move v5, v3

    .line 5025
    .local v5, "moveOK":Z
    :try_start_5e
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    iget-object v7, v4, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v6, v7}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z

    move-result v6
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_68} :catch_6a

    move v5, v6

    .line 5029
    goto :goto_76

    .line 5026
    :catch_6a
    move-exception v6

    .line 5027
    .local v6, "e":Landroid/os/RemoteException;
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v2, v7, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    .line 5028
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 5030
    .end local v6    # "e":Landroid/os/RemoteException;
    :goto_76
    if-nez v5, :cond_79

    .line 5031
    return v1

    .line 5038
    .end local v4    # "next":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "moveOK":Z
    :cond_79
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5039
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5040
    invoke-direct {p0, v0, v1}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    .line 5042
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v4, 0xb

    invoke-virtual {v2, v4, v1}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 5043
    const-string/jumbo v1, "moveTaskToBackLocked"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/ActivityStack;->moveToBack(Ljava/lang/String;Lcom/android/server/am/TaskRecord;)V

    .line 5045
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 5046
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActivityStackSupervisor;->removeStack(Lcom/android/server/am/ActivityStack;)V

    .line 5047
    return v3

    .line 5051
    :cond_9f
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_bd

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 5052
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v1

    if-eqz v1, :cond_bd

    .line 5053
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 5054
    .local v1, "curTop":Lcom/android/server/am/ActivityRecord;
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityStackSupervisor;->updateMiuiAnimationInfo(Lcom/android/server/am/ActivityRecord;)V

    .line 5055
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityStackSupervisor;->setIsMultiWindowMode(Lcom/android/server/am/ActivityRecord;)V

    .line 5059
    .end local v1    # "curTop":Lcom/android/server/am/ActivityRecord;
    :cond_bd
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 5060
    return v3
.end method

.method final moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V
    .registers 22
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;
    .param p2, "noAnimation"    # Z
    .param p3, "options"    # Landroid/app/ActivityOptions;
    .param p4, "timeTracker"    # Lcom/android/server/am/AppTimeTracker;
    .param p5, "reason"    # Ljava/lang/String;

    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 4913
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getTopStack()Lcom/android/server/am/ActivityStack;

    move-result-object v5

    .line 4914
    .local v5, "topStack":Lcom/android/server/am/ActivityStack;
    const/4 v0, 0x0

    if-eqz v5, :cond_18

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    goto :goto_19

    :cond_18
    move-object v6, v0

    .line 4915
    .local v6, "topActivity":Lcom/android/server/am/ActivityRecord;
    :goto_19
    iget-object v7, v1, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 4916
    .local v7, "numTasks":I
    iget-object v8, v1, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 4917
    .local v8, "index":I
    const/16 v9, 0xa

    if-eqz v7, :cond_df

    if-gez v8, :cond_2d

    goto/16 :goto_df

    .line 4927
    :cond_2d
    const/4 v10, 0x1

    if-eqz v4, :cond_46

    .line 4929
    iget-object v11, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int/2addr v11, v10

    .local v11, "i":I
    :goto_37
    if-ltz v11, :cond_46

    .line 4930
    iget-object v12, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ActivityRecord;

    iput-object v4, v12, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 4929
    add-int/lit8 v11, v11, -0x1

    goto :goto_37

    .line 4938
    .end local v11    # "i":I
    :cond_46
    :try_start_46
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/am/ActivityDisplay;->deferUpdateImeTarget()V

    .line 4942
    invoke-direct {v1, v2, v0}, Lcom/android/server/am/ActivityStack;->insertTaskAtTop(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 4945
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v11

    .line 4946
    .local v11, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v11, :cond_b7

    invoke-virtual {v11}, Lcom/android/server/am/ActivityRecord;->okToShowLocked()Z

    move-result v12

    if-nez v12, :cond_5d

    goto :goto_b7

    .line 4955
    :cond_5d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    .line 4956
    .local v12, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v13, v1, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;
    :try_end_63
    .catchall {:try_start_46 .. :try_end_63} :catchall_d4

    move-object/from16 v14, p5

    :try_start_65
    invoke-virtual {v13, v12, v14}, Lcom/android/server/am/ActivityStackSupervisor;->moveFocusableActivityStackToFrontLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    .line 4959
    const/4 v13, 0x0

    if-eqz p2, :cond_7d

    .line 4960
    iget-object v9, v1, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9, v13, v13}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 4961
    if-eqz v12, :cond_79

    .line 4962
    iget-object v9, v1, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4964
    :cond_79
    invoke-static/range {p3 .. p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    goto :goto_80

    .line 4966
    :cond_7d
    invoke-direct {v1, v9, v3}, Lcom/android/server/am/ActivityStack;->updateTransitLocked(ILandroid/app/ActivityOptions;)V

    .line 4974
    :goto_80
    invoke-direct {v1, v6, v2, v0, v3}, Lcom/android/server/am/ActivityStack;->canEnterPipOnTaskSwitch(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 4976
    iput-boolean v10, v6, Lcom/android/server/am/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    .line 4979
    :cond_88
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 4980
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    iget v0, v2, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v9, v13

    iget v0, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v9, v10

    const/16 v0, 0x7532

    invoke-static {v0, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4982
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    iget v9, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v9}, Lcom/android/server/am/TaskChangeNotificationController;->notifyTaskMovedToFront(I)V
    :try_end_ae
    .catchall {:try_start_65 .. :try_end_ae} :catchall_c7

    .line 4984
    .end local v11    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v12    # "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->continueUpdateImeTarget()V

    .line 4985
    nop

    .line 4986
    return-void

    .line 4947
    .restart local v11    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_b7
    :goto_b7
    move-object/from16 v14, p5

    if-eqz v11, :cond_c9

    .line 4948
    :try_start_bb
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v11}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/android/server/am/RecentTasks;->add(Lcom/android/server/am/TaskRecord;)V

    goto :goto_c9

    .line 4984
    .end local v11    # "top":Lcom/android/server/am/ActivityRecord;
    :catchall_c7
    move-exception v0

    goto :goto_d7

    .line 4950
    .restart local v11    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_c9
    :goto_c9
    invoke-static/range {p3 .. p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V
    :try_end_cc
    .catchall {:try_start_bb .. :try_end_cc} :catchall_c7

    .line 4984
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->continueUpdateImeTarget()V

    .line 4951
    return-void

    .line 4984
    .end local v11    # "top":Lcom/android/server/am/ActivityRecord;
    :catchall_d4
    move-exception v0

    move-object/from16 v14, p5

    :goto_d7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/am/ActivityDisplay;->continueUpdateImeTarget()V

    throw v0

    .line 4919
    :cond_df
    :goto_df
    move-object/from16 v14, p5

    if-eqz p2, :cond_e7

    .line 4920
    invoke-static/range {p3 .. p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    goto :goto_ea

    .line 4922
    :cond_e7
    invoke-direct {v1, v9, v3}, Lcom/android/server/am/ActivityStack;->updateTransitLocked(ILandroid/app/ActivityOptions;)V

    .line 4924
    :goto_ea
    return-void
.end method

.method moveToBack(Ljava/lang/String;Lcom/android/server/am/TaskRecord;)V
    .registers 5
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "task"    # Lcom/android/server/am/TaskRecord;

    .line 1137
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1138
    return-void

    .line 1145
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_21

    .line 1147
    const-string/jumbo v0, "persist.sys.miui_optimization"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1148
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(Ljava/lang/String;)Z

    .line 1149
    return-void

    .line 1152
    :cond_1e
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->setWindowingMode(I)V

    .line 1156
    :cond_21
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2e

    .line 1157
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(Ljava/lang/String;)Z

    .line 1158
    return-void

    .line 1162
    :cond_2e
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityDisplay;->positionChildAtBottom(Lcom/android/server/am/ActivityStack;)V

    .line 1163
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getTopStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/ActivityStackSupervisor;->setFocusStackUnchecked(Ljava/lang/String;Lcom/android/server/am/ActivityStack;)V

    .line 1164
    if-eqz p2, :cond_48

    .line 1165
    invoke-direct {p0, p2}, Lcom/android/server/am/ActivityStack;->insertTaskAtBottom(Lcom/android/server/am/TaskRecord;)V

    .line 1166
    return-void

    .line 1168
    :cond_48
    return-void
.end method

.method moveToFront(Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;

    .line 1075
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;Lcom/android/server/am/TaskRecord;)V

    .line 1076
    return-void
.end method

.method moveToFront(Ljava/lang/String;Lcom/android/server/am/TaskRecord;)V
    .registers 9
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "task"    # Lcom/android/server/am/TaskRecord;

    .line 1083
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1084
    return-void

    .line 1088
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isRecentsStackLaunchBehind()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1089
    return-void

    .line 1093
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    .line 1095
    .local v0, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_42

    .line 1101
    nop

    .line 1102
    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 1103
    .local v1, "topFullScreenStack":Lcom/android/server/am/ActivityStack;
    if-eqz v1, :cond_42

    .line 1104
    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 1105
    .local v3, "primarySplitScreenStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityDisplay;->getIndexOf(Lcom/android/server/am/ActivityStack;)I

    move-result v4

    .line 1106
    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityDisplay;->getIndexOf(Lcom/android/server/am/ActivityStack;)I

    move-result v5

    if-le v4, v5, :cond_42

    .line 1107
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " splitScreenToTop"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 1112
    .end local v1    # "topFullScreenStack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "primarySplitScreenStack":Lcom/android/server/am/ActivityStack;
    :cond_42
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v1

    if-nez v1, :cond_64

    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->returnsToHomeStack()Z

    move-result v1

    if-eqz v1, :cond_64

    .line 1115
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " returnToHome"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackToFront(Ljava/lang/String;)V

    .line 1118
    :cond_64
    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityDisplay;->positionChildAtTop(Lcom/android/server/am/ActivityStack;)V

    .line 1119
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1, p0}, Lcom/android/server/am/ActivityStackSupervisor;->setFocusStackUnchecked(Ljava/lang/String;Lcom/android/server/am/ActivityStack;)V

    .line 1120
    if-eqz p2, :cond_80

    .line 1121
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/server/am/ActivityStack;->insertTaskAtTop(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 1123
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 1124
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_7f

    .line 1125
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v3, v4, v2}, Lcom/android/server/wm/WindowManagerService;->setFocusedApp(Landroid/os/IBinder;Z)V

    .line 1128
    :cond_7f
    return-void

    .line 1130
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_80
    return-void
.end method

.method moveToFrontAndResumeStateIfNeeded(Lcom/android/server/am/ActivityRecord;ZZZLjava/lang/String;)V
    .registers 8
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "moveToFront"    # Z
    .param p3, "setResume"    # Z
    .param p4, "setPause"    # Z
    .param p5, "reason"    # Ljava/lang/String;

    .line 5674
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    if-nez p2, :cond_3

    .line 5675
    return-void

    .line 5681
    :cond_3
    if-eqz p3, :cond_10

    .line 5682
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string/jumbo v1, "moveToFrontAndResumeStateIfNeeded"

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 5683
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 5686
    :cond_10
    if-eqz p4, :cond_17

    .line 5687
    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 5688
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->schedulePauseTimeout(Lcom/android/server/am/ActivityRecord;)V

    .line 5692
    :cond_17
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v0, :cond_23

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->inSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 5693
    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 5698
    :cond_23
    invoke-virtual {p0, p5}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 5699
    return-void
.end method

.method final navigateUpToLocked(Lcom/android/server/am/ActivityRecord;Landroid/content/Intent;ILandroid/content/Intent;)Z
    .registers 31
    .param p1, "srec"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "destIntent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Landroid/content/Intent;

    .line 4279
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    .line 4279
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v10

    .line 4280
    .local v10, "task":Lcom/android/server/am/TaskRecord;
    iget-object v11, v10, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4281
    .local v11, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    .line 4282
    .local v12, "start":I
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v13, 0x0

    if-eqz v0, :cond_170

    if-gez v12, :cond_1d

    goto/16 :goto_170

    .line 4285
    :cond_1d
    add-int/lit8 v0, v12, -0x1

    .line 4286
    .local v0, "finishTo":I
    const/4 v1, 0x0

    if-gez v0, :cond_24

    move-object v2, v1

    goto :goto_2a

    :cond_24
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 4287
    .local v2, "parent":Lcom/android/server/am/ActivityRecord;
    :goto_2a
    const/4 v3, 0x0

    .line 4288
    .local v3, "foundParentInTask":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    .line 4289
    .local v14, "dest":Landroid/content/ComponentName;
    if-lez v12, :cond_5f

    if-eqz v14, :cond_5f

    .line 4290
    move v4, v0

    .line 4290
    .local v4, "i":I
    :goto_34
    if-ltz v4, :cond_5f

    .line 4291
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 4292
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5c

    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 4293
    invoke-virtual {v14}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5c

    .line 4294
    move v0, v4

    .line 4295
    move-object v2, v5

    .line 4296
    const/4 v3, 0x1

    .line 4297
    goto :goto_5f

    .line 4290
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_5c
    add-int/lit8 v4, v4, -0x1

    goto :goto_34

    .line 4302
    .end local v0    # "finishTo":I
    .end local v2    # "parent":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "foundParentInTask":Z
    .end local v4    # "i":I
    .local v6, "finishTo":I
    .local v15, "parent":Lcom/android/server/am/ActivityRecord;
    .local v16, "foundParentInTask":Z
    :cond_5f
    :goto_5f
    move v6, v0

    move-object v15, v2

    move/from16 v16, v3

    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    .line 4303
    .local v5, "controller":Landroid/app/IActivityController;
    const/4 v4, 0x1

    if-eqz v5, :cond_8a

    .line 4304
    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v7, v0, v13}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 4305
    .local v2, "next":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_8a

    .line 4307
    move v3, v4

    .line 4309
    .local v3, "resumeOK":Z
    :try_start_73
    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v5, v0}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z

    move-result v0
    :try_end_79
    .catch Landroid/os/RemoteException; {:try_start_73 .. :try_end_79} :catch_7b

    move v3, v0

    .line 4313
    goto :goto_87

    .line 4310
    :catch_7b
    move-exception v0

    .line 4311
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v4, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v1, v4, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    .line 4312
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 4315
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_87
    if-nez v3, :cond_8a

    .line 4316
    return v13

    .line 4320
    .end local v2    # "next":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "resumeOK":Z
    :cond_8a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 4321
    .local v3, "origId":J
    move/from16 v18, p3

    move-object/from16 v19, p4

    move v0, v12

    .line 4321
    .end local p3    # "resultCode":I
    .end local p4    # "resultData":Landroid/content/Intent;
    .local v0, "i":I
    .local v18, "resultCode":I
    .local v19, "resultData":Landroid/content/Intent;
    :goto_93
    if-le v0, v6, :cond_cb

    .line 4322
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 4323
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const-string/jumbo v20, "navigate-up"

    const/16 v21, 0x1

    move-object/from16 v22, v1

    move-object v1, v7

    move-object/from16 v23, v2

    move-object/from16 v2, v22

    .line 4323
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .local v23, "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v24, v14

    move-wide v13, v3

    move/from16 v3, v18

    .line 4323
    .end local v3    # "origId":J
    .end local v14    # "dest":Landroid/content/ComponentName;
    .local v13, "origId":J
    .local v24, "dest":Landroid/content/ComponentName;
    move-object/from16 v4, v19

    move-object/from16 v17, v5

    move-object/from16 v5, v20

    .line 4323
    .end local v5    # "controller":Landroid/app/IActivityController;
    .local v17, "controller":Landroid/app/IActivityController;
    move/from16 v20, v6

    move/from16 v6, v21

    .line 4323
    .end local v6    # "finishTo":I
    .local v20, "finishTo":I
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 4325
    const/16 v18, 0x0

    .line 4326
    const/16 v19, 0x0

    .line 4321
    .end local v23    # "r":Lcom/android/server/am/ActivityRecord;
    add-int/lit8 v0, v0, -0x1

    move-wide v3, v13

    move-object/from16 v5, v17

    move/from16 v6, v20

    move-object/from16 v14, v24

    const/4 v13, 0x0

    goto :goto_93

    .line 4329
    .end local v0    # "i":I
    .end local v13    # "origId":J
    .end local v17    # "controller":Landroid/app/IActivityController;
    .end local v20    # "finishTo":I
    .end local v24    # "dest":Landroid/content/ComponentName;
    .restart local v3    # "origId":J
    .restart local v5    # "controller":Landroid/app/IActivityController;
    .restart local v6    # "finishTo":I
    .restart local v14    # "dest":Landroid/content/ComponentName;
    :cond_cb
    move-object/from16 v17, v5

    move/from16 v20, v6

    move-object/from16 v24, v14

    move-wide v13, v3

    .line 4329
    .end local v3    # "origId":J
    .end local v5    # "controller":Landroid/app/IActivityController;
    .end local v6    # "finishTo":I
    .end local v14    # "dest":Landroid/content/ComponentName;
    .restart local v13    # "origId":J
    .restart local v17    # "controller":Landroid/app/IActivityController;
    .restart local v20    # "finishTo":I
    .restart local v24    # "dest":Landroid/content/ComponentName;
    if-eqz v15, :cond_16c

    if-eqz v16, :cond_16c

    .line 4330
    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v6, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 4331
    .local v6, "parentLaunchMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v21

    .line 4332
    .local v21, "destIntentFlags":I
    const/4 v0, 0x3

    if-eq v6, v0, :cond_15f

    const/4 v0, 0x2

    if-eq v6, v0, :cond_15f

    const/4 v1, 0x1

    if-eq v6, v1, :cond_15f

    const/high16 v0, 0x4000000

    and-int v0, v21, v0

    if-eqz v0, :cond_f1

    .line 4336
    move/from16 v22, v6

    goto/16 :goto_161

    .line 4340
    :cond_f1
    :try_start_f1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 4341
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x400

    iget v4, v8, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 4340
    invoke-interface {v0, v2, v3, v4}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 4344
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v2, v7, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getActivityStartController()Lcom/android/server/am/ActivityStartController;

    move-result-object v2

    const-string/jumbo v3, "navigateUpTo"

    .line 4345
    invoke-virtual {v2, v9, v3}, Lcom/android/server/am/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    iget-object v3, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    .line 4346
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    .line 4347
    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    iget-object v3, v15, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 4348
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    .line 4349
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStarter;->setCallingPid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    iget v4, v15, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    .line 4350
    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStarter;->setCallingUid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    iget-object v4, v15, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 4351
    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    .line 4352
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStarter;->setRealCallingPid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    iget v3, v15, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    .line 4353
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    .line 4354
    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityStarter;->setComponentSpecified(Z)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    .line 4355
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStarter;->execute()I

    move-result v2
    :try_end_143
    .catch Landroid/os/RemoteException; {:try_start_f1 .. :try_end_143} :catch_149

    .line 4356
    .local v2, "res":I
    if-nez v2, :cond_146

    goto :goto_147

    :cond_146
    const/4 v1, 0x0

    :goto_147
    move v0, v1

    .line 4359
    .end local v2    # "res":I
    .end local v16    # "foundParentInTask":Z
    .local v0, "foundParentInTask":Z
    goto :goto_14b

    .line 4357
    .end local v0    # "foundParentInTask":Z
    .restart local v16    # "foundParentInTask":Z
    :catch_149
    move-exception v0

    .line 4358
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    .line 4360
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14b
    move/from16 v16, v0

    iget-object v2, v15, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const-string/jumbo v5, "navigate-top"

    const/4 v0, 0x1

    move-object v1, v7

    move/from16 v3, v18

    move-object/from16 v4, v19

    move/from16 v22, v6

    move v6, v0

    .end local v6    # "parentLaunchMode":I
    .local v22, "parentLaunchMode":I
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 4360
    .end local v21    # "destIntentFlags":I
    .end local v22    # "parentLaunchMode":I
    goto :goto_16c

    .line 4336
    .restart local v6    # "parentLaunchMode":I
    .restart local v21    # "destIntentFlags":I
    :cond_15f
    move/from16 v22, v6

    .line 4336
    .end local v6    # "parentLaunchMode":I
    .restart local v22    # "parentLaunchMode":I
    :goto_161
    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, v8, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v0, v9, v1}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 4364
    .end local v21    # "destIntentFlags":I
    .end local v22    # "parentLaunchMode":I
    :cond_16c
    :goto_16c
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4365
    return v16

    .line 4283
    .end local v13    # "origId":J
    .end local v15    # "parent":Lcom/android/server/am/ActivityRecord;
    .end local v16    # "foundParentInTask":Z
    .end local v17    # "controller":Landroid/app/IActivityController;
    .end local v18    # "resultCode":I
    .end local v19    # "resultData":Landroid/content/Intent;
    .end local v20    # "finishTo":I
    .end local v24    # "dest":Landroid/content/ComponentName;
    .restart local p3    # "resultCode":I
    .restart local p4    # "resultData":Landroid/content/Intent;
    :cond_170
    :goto_170
    const/4 v1, 0x0

    return v1
.end method

.method notifyActivityDrawnLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 2393
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 2394
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 2395
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 2398
    :cond_12
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    .line 2399
    .local v0, "waitingActivity":Lcom/android/server/am/ActivityRecord;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    .line 2400
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2401
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2403
    if-eqz v0, :cond_46

    .line 2404
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->setWindowOpaque(Landroid/os/IBinder;Z)V

    .line 2405
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_46

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_46

    .line 2407
    :try_start_37
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-eqz p1, :cond_41

    const/4 v3, 0x1

    nop

    :cond_41
    invoke-interface {v1, v2, v3}, Landroid/app/IApplicationThread;->scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_44} :catch_45

    .line 2410
    goto :goto_46

    .line 2409
    :catch_45
    move-exception v1

    .line 2414
    .end local v0    # "waitingActivity":Lcom/android/server/am/ActivityRecord;
    :cond_46
    :goto_46
    return-void
.end method

.method numActivities()I
    .registers 4

    .line 460
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v0, 0x0

    .line 461
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "taskNdx":I
    :goto_9
    if-ltz v1, :cond_1d

    .line 462
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 461
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 464
    .end local v1    # "taskNdx":I
    :cond_1d
    return v0
.end method

.method onActivityAddedToStack(Lcom/android/server/am/ActivityRecord;)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 4384
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v0, v1, :cond_e

    .line 4385
    const-string/jumbo v0, "onActivityAddedToStack"

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->setResumedActivity(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 4387
    :cond_e
    return-void
.end method

.method onActivityRemovedFromStack(Lcom/android/server/am/ActivityRecord;)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 4373
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4375
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v0, p1, :cond_12

    .line 4376
    const-string/jumbo v0, "onActivityRemovedFromStack"

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/ActivityStack;->setResumedActivity(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 4378
    :cond_12
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v0, p1, :cond_1c

    .line 4379
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 4381
    :cond_1c
    return-void
.end method

.method onActivityStateChanged(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V
    .registers 7
    .param p1, "record"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "state"    # Lcom/android/server/am/ActivityStack$ActivityState;
    .param p3, "reason"    # Ljava/lang/String;

    .line 509
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne p1, v0, :cond_1d

    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq p2, v0, :cond_1d

    .line 510
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - onActivityStateChanged"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/ActivityStack;->setResumedActivity(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 513
    :cond_1d
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne p2, v0, :cond_45

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - onActivityStateChanged"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->setResumedActivity(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 517
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/am/ActivityManagerService;->setResumedActivityUncheckLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 518
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/RecentTasks;->add(Lcom/android/server/am/TaskRecord;)V

    .line 520
    :cond_45
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 525
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getCastRotationChanged()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getCastModeStackId()I

    move-result v0

    iget v1, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-ne v0, v1, :cond_13

    .line 526
    return-void

    .line 528
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v0

    .line 529
    .local v0, "prevWindowingMode":I
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 530
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    .line 531
    .local v1, "display":Lcom/android/server/am/ActivityDisplay;
    if-eqz v1, :cond_29

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v2

    if-eq v0, v2, :cond_29

    .line 532
    invoke-virtual {v1, p0}, Lcom/android/server/am/ActivityDisplay;->onStackWindowingModeChanged(Lcom/android/server/am/ActivityStack;)V

    .line 534
    :cond_29
    return-void
.end method

.method onLockTaskPackagesUpdated()V
    .registers 3

    .line 5717
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_8
    if-ltz v0, :cond_18

    .line 5718
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->setLockTaskAuth()V

    .line 5717
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 5720
    .end local v0    # "taskNdx":I
    :cond_18
    return-void
.end method

.method protected onParentChanged()V
    .registers 2

    .line 248
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->onParentChanged()V

    .line 249
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->updateUIDsPresentOnDisplay()V

    .line 250
    return-void
.end method

.method onPipAnimationEndResize()V
    .registers 2

    .line 5174
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {v0}, Lcom/android/server/wm/StackWindowController;->onPipAnimationEndResize()V

    .line 5175
    return-void
.end method

.method positionChildAt(Lcom/android/server/am/TaskRecord;I)V
    .registers 10
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "index"    # I

    .line 5618
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-ne v0, p0, :cond_5c

    .line 5623
    invoke-virtual {p1, p0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfigurationForStack(Lcom/android/server/am/ActivityStack;)V

    .line 5625
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 5626
    .local v0, "topRunningActivity":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_19

    move v1, v2

    goto :goto_1a

    :cond_19
    move v1, v3

    .line 5627
    .local v1, "wasResumed":Z
    :goto_1a
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityStack;->insertTaskAtPosition(Lcom/android/server/am/TaskRecord;I)V

    .line 5628
    invoke-virtual {p1, p0}, Lcom/android/server/am/TaskRecord;->setStack(Lcom/android/server/am/ActivityStack;)V

    .line 5629
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4, v2}, Lcom/android/server/am/ActivityStack;->postAddTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;Z)V

    .line 5631
    if-eqz v1, :cond_53

    .line 5632
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_4b

    .line 5633
    const-string v2, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mResumedActivity was already set when moving mResumedActivity from other stack to this stack mResumedActivity="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " other mResumedActivity="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5637
    :cond_4b
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string/jumbo v5, "positionChildAt"

    invoke-virtual {v0, v2, v5}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 5642
    :cond_53
    invoke-virtual {p0, v4, v3, v3}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 5643
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 5644
    return-void

    .line 5619
    .end local v0    # "topRunningActivity":Lcom/android/server/am/ActivityRecord;
    .end local v1    # "wasResumed":Z
    :cond_5c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AS.positionChildAt: task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not a child of stack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " current parent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5620
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method positionChildWindowContainerAtTop(Lcom/android/server/am/TaskRecord;)V
    .registers 5
    .param p1, "child"    # Lcom/android/server/am/TaskRecord;

    .line 820
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/StackWindowController;->positionChildAtTop(Lcom/android/server/wm/TaskWindowContainerController;Z)V

    .line 822
    return-void
.end method

.method prepareFreezingTaskBounds()V
    .registers 2

    .line 804
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {v0}, Lcom/android/server/wm/StackWindowController;->prepareFreezingTaskBounds()V

    .line 805
    return-void
.end method

.method final rankTaskLayers(I)I
    .registers 7
    .param p1, "baseLayer"    # I

    .line 1968
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v0, 0x0

    .line 1969
    .local v0, "layer":I
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "taskNdx":I
    :goto_9
    if-ltz v1, :cond_2f

    .line 1970
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 1971
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 1972
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_29

    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v4, :cond_29

    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v4, :cond_22

    goto :goto_29

    .line 1975
    :cond_22
    add-int/lit8 v4, v0, 0x1

    .local v4, "layer":I
    add-int/2addr v0, p1

    .end local v0    # "layer":I
    iput v0, v2, Lcom/android/server/am/TaskRecord;->mLayerRank:I

    .line 1969
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    move v0, v4

    goto :goto_2c

    .line 1973
    .end local v4    # "layer":I
    .restart local v0    # "layer":I
    .restart local v2    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_29
    :goto_29
    const/4 v4, -0x1

    iput v4, v2, Lcom/android/server/am/TaskRecord;->mLayerRank:I

    .line 1969
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_2c
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1978
    .end local v1    # "taskNdx":I
    :cond_2f
    return v0
.end method

.method final releaseSomeActivitiesLocked(Lcom/android/server/am/ProcessRecord;Landroid/util/ArraySet;Ljava/lang/String;)I
    .registers 15
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ProcessRecord;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 4568
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    .local p2, "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    .line 4569
    .local v0, "maxTasks":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_a

    .line 4570
    const/4 v0, 0x1

    .line 4572
    :cond_a
    const/4 v2, 0x0

    .line 4573
    .local v2, "numReleased":I
    const/4 v3, 0x0

    move v4, v2

    move v2, v0

    move v0, v3

    .local v0, "taskNdx":I
    .local v2, "maxTasks":I
    .local v4, "numReleased":I
    :goto_f
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_63

    if-lez v2, :cond_63

    .line 4574
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .line 4575
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {p2, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_28

    .line 4576
    goto :goto_61

    .line 4579
    :cond_28
    const/4 v6, 0x0

    .line 4580
    .local v6, "curNum":I
    iget-object v7, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4581
    .local v7, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move v8, v6

    move v6, v3

    .local v6, "actNdx":I
    .local v8, "curNum":I
    :goto_2d
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_52

    .line 4582
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityRecord;

    .line 4583
    .local v9, "activity":Lcom/android/server/am/ActivityRecord;
    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v10, p1, :cond_50

    invoke-virtual {v9}, Lcom/android/server/am/ActivityRecord;->isDestroyable()Z

    move-result v10

    if-eqz v10, :cond_50

    .line 4587
    invoke-virtual {p0, v9, v1, p3}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    .line 4588
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eq v10, v9, :cond_4e

    .line 4590
    add-int/lit8 v6, v6, -0x1

    .line 4592
    :cond_4e
    add-int/lit8 v8, v8, 0x1

    .line 4581
    .end local v9    # "activity":Lcom/android/server/am/ActivityRecord;
    :cond_50
    add-int/2addr v6, v1

    goto :goto_2d

    .line 4595
    .end local v6    # "actNdx":I
    :cond_52
    if-lez v8, :cond_61

    .line 4596
    add-int/2addr v4, v8

    .line 4597
    add-int/lit8 v2, v2, -0x1

    .line 4598
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eq v6, v5, :cond_61

    .line 4600
    add-int/lit8 v0, v0, -0x1

    .line 4573
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    .end local v7    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v8    # "curNum":I
    :cond_61
    :goto_61
    add-int/2addr v0, v1

    goto :goto_f

    .line 4606
    .end local v0    # "taskNdx":I
    :cond_63
    return v4
.end method

.method remove()V
    .registers 3

    .line 780
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    .line 781
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStack;->setWindowingMode(I)V

    .line 784
    :cond_b
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->removeFromDisplay()V

    .line 785
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {v0}, Lcom/android/server/wm/StackWindowController;->removeContainer()V

    .line 786
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    .line 787
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->onParentChanged()V

    .line 788
    return-void
.end method

.method final removeActivitiesFromLRUListLocked(Lcom/android/server/am/TaskRecord;)V
    .registers 5
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .line 1042
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1043
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1044
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    goto :goto_6

    .line 1045
    :cond_18
    return-void
.end method

.method removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;I)V
    .registers 11
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "mode"    # I

    .line 5490
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 5491
    .local v1, "record":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->onActivityRemovedFromStack(Lcom/android/server/am/ActivityRecord;)V

    .line 5492
    .end local v1    # "record":Lcom/android/server/am/ActivityRecord;
    goto :goto_6

    .line 5494
    :cond_16
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 5496
    .local v0, "removed":Z
    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_3a

    .line 5497
    const/16 v4, 0x756d

    new-array v5, v2, [Ljava/lang/Object;

    iget v6, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5500
    :cond_3a
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->removeActivitiesFromLRUListLocked(Lcom/android/server/am/TaskRecord;)V

    .line 5501
    invoke-direct {p0, p1, v3}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    .line 5503
    if-nez p3, :cond_6f

    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 5505
    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v4, :cond_50

    move v1, v3

    nop

    .line 5506
    .local v1, "isVoiceSession":Z
    :cond_50
    if-eqz v1, :cond_5d

    .line 5508
    :try_start_52
    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    iget v5, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v3, v4, v5}, Landroid/service/voice/IVoiceInteractionSession;->taskFinished(Landroid/content/Intent;I)V
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_5b} :catch_5c

    .line 5510
    goto :goto_5d

    .line 5509
    :catch_5c
    move-exception v3

    .line 5512
    :cond_5d
    :goto_5d
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->autoRemoveFromRecents()Z

    move-result v3

    if-nez v3, :cond_65

    if-eqz v1, :cond_6c

    .line 5515
    :cond_65
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v3, p1}, Lcom/android/server/am/RecentTasks;->remove(Lcom/android/server/am/TaskRecord;)V

    .line 5518
    :cond_6c
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->removeWindowContainer()V

    .line 5521
    .end local v1    # "isVoiceSession":Z
    :cond_6f
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_bf

    .line 5525
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v1

    if-eqz v1, :cond_a9

    if-eq p3, v2, :cond_a9

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 5526
    invoke-virtual {v1, p0}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v1

    if-eqz v1, :cond_a9

    .line 5527
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " leftTaskHistoryEmpty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5528
    .local v1, "myReason":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->inMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_a4

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->adjustFocusToNextFocusableStack(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a9

    .line 5529
    :cond_a4
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackToFront(Ljava/lang/String;)V

    .line 5532
    .end local v1    # "myReason":Ljava/lang/String;
    :cond_a9
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_b6

    .line 5533
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActivityDisplay;->positionChildAtBottom(Lcom/android/server/am/ActivityStack;)V

    .line 5535
    :cond_b6
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v1

    if-nez v1, :cond_bf

    .line 5536
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->remove()V

    .line 5540
    :cond_bf
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/server/am/TaskRecord;->setStack(Lcom/android/server/am/ActivityStack;)V

    .line 5543
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_d0

    .line 5544
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-virtual {v1}, Lcom/android/server/am/TaskChangeNotificationController;->notifyActivityUnpinned()V

    .line 5546
    :cond_d0
    return-void
.end method

.method removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 4438
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4439
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4440
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4441
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4442
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->finishLaunchTickingLocked()V

    .line 4443
    return-void
.end method

.method reparent(Lcom/android/server/am/ActivityDisplay;Z)V
    .registers 6
    .param p1, "activityDisplay"    # Lcom/android/server/am/ActivityDisplay;
    .param p2, "onTop"    # Z

    .line 732
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->removeFromDisplay()V

    .line 735
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 736
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    iget v1, p1, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/server/wm/StackWindowController;->reparent(ILandroid/graphics/Rect;Z)V

    .line 737
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    move-object v0, v1

    goto :goto_1e

    :cond_1c
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    :goto_1e
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/am/ActivityStack;->postAddToDisplay(Lcom/android/server/am/ActivityDisplay;Landroid/graphics/Rect;Z)V

    .line 738
    const-string/jumbo v0, "reparent"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/server/am/ActivityStack;->adjustFocusToNextFocusableStack(Ljava/lang/String;Z)Z

    .line 739
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 742
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 744
    return-void
.end method

.method final requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z
    .registers 13
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "oomAdj"    # Z

    .line 3823
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .line 3828
    .local v6, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v6, :cond_8

    .line 3829
    const/4 v0, 0x0

    return v0

    .line 3832
    :cond_8
    move-object v0, p0

    move-object v1, v6

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3833
    const/4 v0, 0x1

    return v0
.end method

.method public requestResize(Landroid/graphics/Rect;)V
    .registers 9
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 5121
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v1, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityManagerService;->resizeStack(ILandroid/graphics/Rect;ZZZI)V

    .line 5123
    return-void
.end method

.method final resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .registers 16
    .param p1, "taskTop"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "newActivity"    # Lcom/android/server/am/ActivityRecord;

    .line 3578
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    move v0, v1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 3580
    .local v0, "forceReset":Z
    :goto_c
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    .line 3584
    .local v8, "task":Lcom/android/server/am/TaskRecord;
    const/4 v2, 0x0

    .line 3587
    .local v2, "taskFound":Z
    const/4 v3, 0x0

    .line 3590
    .local v3, "topOptions":Landroid/app/ActivityOptions;
    const/4 v4, -0x1

    .line 3592
    .local v4, "reparentInsertionPoint":I
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v1

    move v9, v2

    move-object v1, v3

    move v10, v4

    .end local v2    # "taskFound":Z
    .end local v3    # "topOptions":Landroid/app/ActivityOptions;
    .end local v4    # "reparentInsertionPoint":I
    .local v1, "topOptions":Landroid/app/ActivityOptions;
    .local v5, "i":I
    .local v9, "taskFound":Z
    .local v10, "reparentInsertionPoint":I
    :goto_1d
    move v11, v5

    .end local v5    # "i":I
    .local v11, "i":I
    if-ltz v11, :cond_3e

    .line 3593
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/android/server/am/TaskRecord;

    .line 3595
    .local v12, "targetTask":Lcom/android/server/am/TaskRecord;
    if-ne v12, v8, :cond_31

    .line 3596
    invoke-direct {p0, v8, v0}, Lcom/android/server/am/ActivityStack;->resetTargetTaskIfNeededLocked(Lcom/android/server/am/TaskRecord;Z)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 3597
    const/4 v9, 0x1

    goto :goto_3b

    .line 3599
    :cond_31
    move-object v2, p0

    move-object v3, v12

    move-object v4, v8

    move v5, v9

    move v6, v0

    move v7, v10

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->resetAffinityTaskIfNeededLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;ZZI)I

    move-result v10

    .line 3592
    .end local v12    # "targetTask":Lcom/android/server/am/TaskRecord;
    :goto_3b
    add-int/lit8 v5, v11, -0x1

    .end local v11    # "i":I
    .restart local v5    # "i":I
    goto :goto_1d

    .line 3604
    .end local v5    # "i":I
    :cond_3e
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 3605
    .local v2, "taskNdx":I
    if-ltz v2, :cond_5c

    .line 3607
    :goto_46
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, -0x1

    .local v4, "taskNdx":I
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "taskNdx":I
    check-cast v2, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object p1

    .line 3608
    if-nez p1, :cond_5b

    if-gez v4, :cond_59

    goto :goto_5b

    .line 3607
    :cond_59
    move v2, v4

    goto :goto_46

    .line 3611
    :cond_5b
    :goto_5b
    move v2, v4

    .end local v4    # "taskNdx":I
    .restart local v2    # "taskNdx":I
    :cond_5c
    if-eqz v1, :cond_67

    .line 3614
    if-eqz p1, :cond_64

    .line 3615
    invoke-virtual {p1, v1}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    goto :goto_67

    .line 3617
    :cond_64
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->abort()V

    .line 3621
    :cond_67
    :goto_67
    return-object p1
.end method

.method resize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 12
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "tempTaskBounds"    # Landroid/graphics/Rect;
    .param p3, "tempTaskInsetBounds"    # Landroid/graphics/Rect;

    .line 5128
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ActivityStack;->updateBoundsAllowed(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 5129
    return-void

    .line 5133
    :cond_7
    if-eqz p2, :cond_b

    move-object v0, p2

    goto :goto_c

    :cond_b
    move-object v0, p1

    .line 5134
    .local v0, "taskBounds":Landroid/graphics/Rect;
    :goto_c
    if-eqz p3, :cond_10

    move-object v1, p3

    goto :goto_11

    :cond_10
    move-object v1, v0

    .line 5136
    .local v1, "insetBounds":Landroid/graphics/Rect;
    :goto_11
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTmpBounds:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 5137
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTmpInsetBounds:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 5139
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 5140
    :try_start_22
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_2a
    if-ltz v3, :cond_7e

    .line 5141
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 5142
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v5

    if-eqz v5, :cond_67

    .line 5143
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->inFreeformWindowingMode()Z

    move-result v5

    if-eqz v5, :cond_54

    .line 5148
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5149
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-static {v5, p1}, Lcom/android/server/am/ActivityStack;->fitWithinBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 5150
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    goto :goto_67

    .line 5152
    :cond_54
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->inSplitScreenWindowingMode()Z

    move-result v5

    if-eqz v5, :cond_64

    .line 5153
    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->supportsSplitScreenWindowingMode()Z

    move-result v5

    if-eqz v5, :cond_67

    .line 5154
    invoke-virtual {v4, v0, v1}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    goto :goto_67

    .line 5158
    :cond_64
    invoke-virtual {v4, v0, v1}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 5162
    :cond_67
    :goto_67
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTmpBounds:Landroid/util/SparseArray;

    iget v6, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5163
    if-eqz p3, :cond_7b

    .line 5164
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTmpInsetBounds:Landroid/util/SparseArray;

    iget v6, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v5, v6, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5140
    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    :cond_7b
    add-int/lit8 v3, v3, -0x1

    goto :goto_2a

    .line 5168
    .end local v3    # "i":I
    :cond_7e
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTmpBounds:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTmpInsetBounds:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/wm/StackWindowController;->resize(Landroid/graphics/Rect;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 5169
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->setBounds(Landroid/graphics/Rect;)I

    .line 5170
    monitor-exit v2

    .line 5171
    return-void

    .line 5170
    :catchall_8c
    move-exception v3

    monitor-exit v2
    :try_end_8e
    .catchall {:try_start_22 .. :try_end_8e} :catchall_8c

    throw v3
.end method

.method resizeStackWithLaunchBounds()Z
    .registers 2

    .line 2157
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->inPinnedWindowingMode()Z

    move-result v0

    return v0
.end method

.method restartPackage(Ljava/lang/String;)Lcom/android/server/am/ActivityRecord;
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;

    .line 5461
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 5465
    .local v0, "starting":Lcom/android/server/am/ActivityRecord;
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "taskNdx":I
    :goto_c
    if-ltz v1, :cond_46

    .line 5466
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5467
    .local v3, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    .local v4, "activityNdx":I
    :goto_1d
    if-ltz v4, :cond_43

    .line 5468
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 5469
    .local v5, "a":Lcom/android/server/am/ActivityRecord;
    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_40

    .line 5470
    iput-boolean v2, v5, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 5471
    if-eqz v0, :cond_40

    if-ne v5, v0, :cond_40

    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v6, :cond_40

    .line 5472
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/16 v7, 0x100

    invoke-virtual {v5, v6, v7}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 5467
    .end local v5    # "a":Lcom/android/server/am/ActivityRecord;
    :cond_40
    add-int/lit8 v4, v4, -0x1

    goto :goto_1d

    .line 5465
    .end local v3    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v4    # "activityNdx":I
    :cond_43
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 5479
    .end local v1    # "taskNdx":I
    :cond_46
    return-object v0
.end method

.method resumeTopActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .registers 7
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mService"
    .end annotation

    .line 2468
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 2470
    return v1

    .line 2473
    :cond_8
    move v0, v1

    .line 2476
    .local v0, "result":Z
    :try_start_9
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    .line 2477
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityStack;->resumeTopActivityInnerLocked(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v2

    move v0, v2

    .line 2486
    invoke-direct {p0, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 2487
    .local v2, "next":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->canTurnScreenOn()Z

    move-result v3

    if-nez v3, :cond_22

    .line 2488
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleep()V
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_28

    .line 2491
    .end local v2    # "next":Lcom/android/server/am/ActivityRecord;
    :cond_22
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-boolean v1, v2, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    .line 2492
    nop

    .line 2494
    return v0

    .line 2491
    :catchall_28
    move-exception v2

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-boolean v1, v3, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    throw v2
.end method

.method final safelyDestroyActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z
    .registers 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 4555
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isDestroyable()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4559
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    move-result v0

    return v0

    .line 4561
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method final scheduleDestroyActivities(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .registers 5
    .param p1, "owner"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 4514
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4515
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;

    invoke-direct {v1, p1, p2}, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;-><init>(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4516
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4517
    return-void
.end method

.method sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V
    .registers 16
    .param p1, "callingUid"    # I
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "resultWho"    # Ljava/lang/String;
    .param p4, "requestCode"    # I
    .param p5, "resultCode"    # I
    .param p6, "data"    # Landroid/content/Intent;

    .line 3627
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    if-lez p1, :cond_11

    .line 3628
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 3629
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v4

    iget v5, p2, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 3628
    move v1, p1

    move-object v3, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;I)V

    .line 3635
    :cond_11
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v0, p2, :cond_57

    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_57

    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_57

    .line 3637
    :try_start_1f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3638
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    new-instance v1, Landroid/app/ResultInfo;

    invoke-direct {v1, p3, p4, p5, p6}, Landroid/app/ResultInfo;-><init>(Ljava/lang/String;IILandroid/content/Intent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3640
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getLifecycleManager()Lcom/android/server/am/ClientLifecycleManager;

    move-result-object v1

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 3641
    invoke-static {v0}, Landroid/app/servertransaction/ActivityResultItem;->obtain(Ljava/util/List;)Landroid/app/servertransaction/ActivityResultItem;

    move-result-object v4

    .line 3640
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_3f} :catch_40

    .line 3642
    return-void

    .line 3643
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    :catch_40
    move-exception v0

    .line 3644
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown sending result to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3648
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_57
    const/4 v4, 0x0

    move-object v3, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityRecord;->addResultLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 3649
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)I
    .registers 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 883
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->inMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    move-object v0, p1

    :goto_9
    invoke-super {p0, v0}, Lcom/android/server/wm/ConfigurationContainer;->setBounds(Landroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method public setWindowingMode(I)V
    .registers 8
    .param p1, "windowingMode"    # I

    .line 538
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->setWindowingMode(IZZZZ)V

    .line 540
    return-void
.end method

.method setWindowingMode(IZZZZ)V
    .registers 29
    .param p1, "preferredWindowingMode"    # I
    .param p2, "animate"    # Z
    .param p3, "showRecents"    # Z
    .param p4, "enteringSplitScreenMode"    # Z
    .param p5, "deferEnsuringVisibility"    # Z

    .line 544
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 544
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    const/4 v4, 0x1

    if-nez v0, :cond_b

    move v0, v4

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    move v5, v0

    .line 545
    .local v5, "creating":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v6

    .line 546
    .local v6, "currentMode":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v7

    .line 547
    .local v7, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    .line 548
    .local v8, "topTask":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v7}, Lcom/android/server/am/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/am/ActivityStack;

    move-result-object v9

    .line 549
    .local v9, "splitScreenStack":Lcom/android/server/am/ActivityStack;
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mTmpOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0, v2}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 553
    const/4 v0, 0x0

    if-eqz v5, :cond_28

    .line 554
    nop

    .line 555
    move v10, v2

    goto :goto_32

    :cond_28
    iget-object v10, v1, Lcom/android/server/am/ActivityStack;->mTmpOptions:Landroid/app/ActivityOptions;

    .line 556
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getActivityType()I

    move-result v11

    .line 555
    invoke-virtual {v7, v0, v10, v8, v11}, Lcom/android/server/am/ActivityDisplay;->resolveWindowingMode(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;I)I

    move-result v10

    .line 557
    .local v10, "windowingMode":I
    :goto_32
    const/4 v11, 0x4

    if-ne v9, v1, :cond_38

    if-ne v10, v11, :cond_38

    .line 560
    const/4 v10, 0x1

    .line 563
    :cond_38
    invoke-virtual {v7}, Lcom/android/server/am/ActivityDisplay;->hasSplitScreenPrimaryStack()Z

    move-result v12

    .line 567
    .local v12, "alreadyInSplitScreenMode":Z
    xor-int/lit8 v14, p4, 0x1

    .line 569
    .local v14, "sendNonResizeableNotification":Z
    const/4 v3, 0x3

    if-eqz v12, :cond_78

    if-ne v10, v4, :cond_78

    if-eqz v14, :cond_78

    .line 570
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isActivityTypeStandardOrUndefined()Z

    move-result v15

    if-eqz v15, :cond_78

    .line 571
    if-eq v2, v3, :cond_52

    if-ne v2, v11, :cond_50

    goto :goto_52

    :cond_50
    const/4 v15, 0x0

    goto :goto_53

    :cond_52
    :goto_52
    move v15, v4

    .line 576
    .local v15, "preferredSplitScreen":Z
    :goto_53
    if-nez v15, :cond_57

    if-eqz v5, :cond_78

    :cond_57
    const-string/jumbo v11, "persist.sys.miui_optimization"

    .line 577
    invoke-static {v11, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_78

    .line 581
    iget-object v11, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-virtual {v11}, Lcom/android/server/am/TaskChangeNotificationController;->notifyActivityDismissingDockedStack()V

    .line 582
    invoke-virtual {v7}, Lcom/android/server/am/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/am/ActivityStack;

    move-result-object v16

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    invoke-virtual/range {v16 .. v21}, Lcom/android/server/am/ActivityStack;->setWindowingMode(IZZZZ)V

    .line 588
    .end local v15    # "preferredSplitScreen":Z
    :cond_78
    if-ne v6, v10, :cond_7b

    .line 590
    return-void

    .line 593
    :cond_7b
    iget-object v11, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 594
    .local v11, "wm":Lcom/android/server/wm/WindowManagerService;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 596
    .local v3, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v14, :cond_a1

    if-eq v10, v4, :cond_a1

    if-eqz v3, :cond_a1

    .line 597
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->isNonResizableOrForcedResizable()Z

    move-result v15

    if-eqz v15, :cond_a1

    iget-boolean v0, v3, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-nez v0, :cond_a1

    .line 601
    iget-object v0, v3, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 602
    .local v0, "packageName":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    iget v2, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v13, 0x1

    invoke-virtual {v4, v2, v13, v0}, Lcom/android/server/am/TaskChangeNotificationController;->notifyActivityForcedResizable(IILjava/lang/String;)V

    .line 606
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_a1
    invoke-virtual {v11}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 608
    if-nez p2, :cond_b3

    if-eqz v3, :cond_b3

    .line 609
    :try_start_a8
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b3

    .line 679
    :catchall_b0
    move-exception v0

    goto/16 :goto_199

    .line 612
    :cond_b3
    :goto_b3
    const/4 v4, 0x3

    if-ne v10, v4, :cond_ba

    .line 614
    const/4 v13, 0x1

    iput-boolean v13, v7, Lcom/android/server/am/ActivityDisplay;->mNeedWaitResumePrimaryActivity:Z

    goto :goto_d2

    .line 615
    :cond_ba
    const/4 v13, 0x1

    if-ne v6, v4, :cond_d2

    if-eqz v10, :cond_c1

    if-ne v10, v13, :cond_d2

    .line 617
    :cond_c1
    iget-object v0, v7, Lcom/android/server/am/ActivityDisplay;->mCurrentSplitScreenPrimaryActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_cc

    .line 618
    iget-object v0, v7, Lcom/android/server/am/ActivityDisplay;->mCurrentSplitScreenPrimaryActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/server/am/SplitScreenReporter;->reportExitSplitScreen(Ljava/lang/String;)V

    .line 620
    :cond_cc
    const/4 v0, 0x0

    iput-object v0, v7, Lcom/android/server/am/ActivityDisplay;->mCurrentSplitScreenPrimaryActivity:Lcom/android/server/am/ActivityRecord;

    .line 621
    const/4 v0, 0x0

    iput-boolean v0, v7, Lcom/android/server/am/ActivityDisplay;->mNeedWaitResumePrimaryActivity:Z

    .line 624
    :cond_d2
    :goto_d2
    invoke-super {v1, v10}, Lcom/android/server/wm/ConfigurationContainer;->setWindowingMode(I)V
    :try_end_d5
    .catchall {:try_start_a8 .. :try_end_d5} :catchall_b0

    .line 626
    if-eqz v5, :cond_f9

    .line 679
    if-eqz p3, :cond_f5

    if-nez v12, :cond_f5

    iget v0, v1, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-nez v0, :cond_f5

    const/4 v4, 0x3

    if-ne v10, v4, :cond_f5

    .line 694
    const/4 v2, 0x4

    const/4 v13, 0x1

    invoke-virtual {v7, v2, v4, v13}, Lcom/android/server/am/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 697
    .local v0, "recentStack":Lcom/android/server/am/ActivityStack;
    const-string/jumbo v2, "setWindowingMode"

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 699
    iget-object v2, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->showRecentApps()V

    .line 701
    .end local v0    # "recentStack":Lcom/android/server/am/ActivityStack;
    :cond_f5
    invoke-virtual {v11}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 628
    return-void

    .line 631
    :cond_f9
    const/4 v0, 0x2

    if-eq v10, v0, :cond_191

    if-eq v6, v0, :cond_191

    .line 639
    const/4 v2, 0x3

    if-ne v10, v2, :cond_10c

    if-nez v9, :cond_104

    goto :goto_10c

    .line 643
    :cond_104
    :try_start_104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Setting primary split-screen windowing mode while there is already one isn\'t currently supported"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 648
    :cond_10c
    :goto_10c
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 649
    const/4 v2, 0x1

    if-eq v10, v2, :cond_12f

    .line 650
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    iget-object v2, v1, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/StackWindowController;->getRawBounds(Landroid/graphics/Rect;)V

    .line 651
    const/4 v0, 0x5

    if-ne v10, v0, :cond_12f

    .line 652
    if-eqz v8, :cond_12f

    .line 654
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 655
    .local v0, "bounds":Landroid/graphics/Rect;
    if-eqz v0, :cond_12f

    .line 656
    iget-object v2, v1, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 662
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_12f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_142

    .line 663
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2}, Lcom/android/server/am/ActivityStack;->resize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_148

    .line 666
    :cond_142
    const/4 v2, 0x0

    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2, v2}, Lcom/android/server/am/ActivityStack;->updateBoundsAllowed(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 671
    :goto_148
    const/4 v2, 0x1

    if-ne v10, v2, :cond_15f

    .line 672
    if-eqz v8, :cond_15f

    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15f

    .line 673
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v2, v2, v2}, Lcom/android/server/am/TaskRecord;->resize(Landroid/graphics/Rect;IZZ)Z

    .line 674
    invoke-static {v1, v6, v10}, Lcom/android/server/am/ActivityStackInjector;->onWindowingModeChanged(Lcom/android/server/am/ActivityStack;II)V
    :try_end_15f
    .catchall {:try_start_104 .. :try_end_15f} :catchall_b0

    .line 679
    :cond_15f
    if-eqz p3, :cond_17d

    if-nez v12, :cond_17d

    iget v0, v1, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-nez v0, :cond_17d

    const/4 v2, 0x3

    if-ne v10, v2, :cond_17d

    .line 694
    const/4 v4, 0x1

    const/4 v13, 0x4

    invoke-virtual {v7, v13, v2, v4}, Lcom/android/server/am/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 697
    .local v0, "recentStack":Lcom/android/server/am/ActivityStack;
    const-string/jumbo v2, "setWindowingMode"

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 699
    iget-object v2, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->showRecentApps()V

    .line 701
    .end local v0    # "recentStack":Lcom/android/server/am/ActivityStack;
    :cond_17d
    invoke-virtual {v11}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 702
    nop

    .line 704
    if-nez p5, :cond_190

    .line 705
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v13, 0x0

    invoke-virtual {v0, v13, v2, v4}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 706
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 708
    :cond_190
    return-void

    .line 635
    :cond_191
    :try_start_191
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Changing pinned windowing mode not currently supported"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_199
    .catchall {:try_start_191 .. :try_end_199} :catchall_b0

    .line 679
    :goto_199
    if-eqz p3, :cond_1b7

    if-nez v12, :cond_1b7

    iget v2, v1, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-nez v2, :cond_1b7

    const/4 v2, 0x3

    if-ne v10, v2, :cond_1b7

    .line 694
    const/4 v4, 0x1

    const/4 v13, 0x4

    invoke-virtual {v7, v13, v2, v4}, Lcom/android/server/am/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 697
    .local v2, "recentStack":Lcom/android/server/am/ActivityStack;
    const-string/jumbo v4, "setWindowingMode"

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 699
    iget-object v4, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->showRecentApps()V

    .line 701
    .end local v2    # "recentStack":Lcom/android/server/am/ActivityStack;
    :cond_1b7
    invoke-virtual {v11}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z
    .registers 16
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;

    .line 1878
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8e

    iget-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mForceHidden:Z

    if-eqz v0, :cond_d

    goto/16 :goto_8e

    .line 1881
    :cond_d
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_17

    .line 1882
    return v2

    .line 1885
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1886
    .local v0, "top":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_2a

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-nez v3, :cond_2a

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isTopStackOnDisplay()Z

    move-result v3

    if-nez v3, :cond_2a

    .line 1889
    return v1

    .line 1892
    :cond_2a
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v3

    .line 1893
    .local v3, "display":Lcom/android/server/am/ActivityDisplay;
    const/4 v4, 0x0

    .line 1894
    .local v4, "gotSplitScreenStack":Z
    const/4 v5, 0x0

    .line 1895
    .local v5, "gotOpaqueSplitScreenPrimary":Z
    const/4 v6, 0x0

    .line 1896
    .local v6, "gotOpaqueSplitScreenSecondary":Z
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v7

    .line 1897
    .local v7, "windowingMode":I
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isActivityTypeAssistant()Z

    move-result v8

    .line 1898
    .local v8, "isAssistantType":Z
    invoke-virtual {v3}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v9

    sub-int/2addr v9, v2

    .local v9, "i":I
    :goto_3e
    if-ltz v9, :cond_8d

    .line 1899
    invoke-virtual {v3, v9}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v10

    .line 1900
    .local v10, "other":Lcom/android/server/am/ActivityStack;
    if-ne v10, p0, :cond_47

    .line 1902
    return v2

    .line 1905
    :cond_47
    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v11

    .line 1907
    .local v11, "otherWindowingMode":I
    const/4 v12, 0x3

    if-ne v11, v2, :cond_5d

    .line 1914
    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->getActivityType()I

    move-result v13

    .line 1915
    .local v13, "activityType":I
    if-ne v7, v12, :cond_55

    .line 1920
    return v2

    .line 1924
    :cond_55
    invoke-virtual {v10, p1}, Lcom/android/server/am/ActivityStack;->isStackTranslucent(Lcom/android/server/am/ActivityRecord;)Z

    move-result v12

    if-eqz v12, :cond_5c

    .line 1926
    goto :goto_8a

    .line 1928
    :cond_5c
    return v1

    .line 1929
    .end local v13    # "activityType":I
    :cond_5d
    if-ne v11, v12, :cond_6e

    if-nez v5, :cond_6e

    .line 1931
    const/4 v4, 0x1

    .line 1932
    nop

    .line 1933
    invoke-virtual {v10, p1}, Lcom/android/server/am/ActivityStack;->isStackTranslucent(Lcom/android/server/am/ActivityRecord;)Z

    move-result v13

    xor-int/2addr v13, v2

    move v5, v13

    .line 1934
    if-ne v7, v12, :cond_80

    if-eqz v5, :cond_80

    .line 1937
    return v1

    .line 1939
    :cond_6e
    const/4 v12, 0x4

    if-ne v11, v12, :cond_80

    if-nez v6, :cond_80

    .line 1941
    const/4 v4, 0x1

    .line 1942
    nop

    .line 1943
    invoke-virtual {v10, p1}, Lcom/android/server/am/ActivityStack;->isStackTranslucent(Lcom/android/server/am/ActivityRecord;)Z

    move-result v13

    xor-int/2addr v13, v2

    move v6, v13

    .line 1944
    if-ne v7, v12, :cond_80

    if-eqz v6, :cond_80

    .line 1947
    return v1

    .line 1950
    :cond_80
    if-eqz v5, :cond_85

    if-eqz v6, :cond_85

    .line 1953
    return v1

    .line 1955
    :cond_85
    if-eqz v8, :cond_8a

    if-eqz v4, :cond_8a

    .line 1959
    return v1

    .line 1898
    .end local v10    # "other":Lcom/android/server/am/ActivityStack;
    .end local v11    # "otherWindowingMode":I
    :cond_8a
    :goto_8a
    add-int/lit8 v9, v9, -0x1

    goto :goto_3e

    .line 1964
    .end local v9    # "i":I
    :cond_8d
    return v2

    .line 1879
    .end local v0    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v4    # "gotSplitScreenStack":Z
    .end local v5    # "gotOpaqueSplitScreenPrimary":Z
    .end local v6    # "gotOpaqueSplitScreenSecondary":Z
    .end local v7    # "windowingMode":I
    .end local v8    # "isAssistantType":Z
    :cond_8e
    :goto_8e
    return v1
.end method

.method shouldSleepActivities()Z
    .registers 3

    .line 5728
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    .line 5732
    .local v0, "display":Lcom/android/server/am/ActivityDisplay;
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    if-ne v1, p0, :cond_1a

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 5733
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/am/KeyguardController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/KeyguardController;->isKeyguardGoingAway()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 5734
    const/4 v1, 0x0

    return v1

    .line 5737
    :cond_1a
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->isSleeping()Z

    move-result v1

    goto :goto_27

    :cond_21
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->isSleepingLocked()Z

    move-result v1

    :goto_27
    return v1
.end method

.method shouldSleepOrShutDownActivities()Z
    .registers 2

    .line 5741
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->shouldSleepActivities()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isShuttingDownLocked()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method shouldUpRecreateTaskLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z
    .registers 10
    .param p1, "srec"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "destAffinity"    # Ljava/lang/String;

    .line 4247
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v0, 0x1

    if-eqz p1, :cond_6c

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v1, :cond_6c

    .line 4248
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_6c

    .line 4255
    :cond_18
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 4256
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_6b

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_6b

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->isDocument()Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 4258
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->inFrontOfStandardStack()Z

    move-result v2

    if-nez v2, :cond_38

    .line 4260
    return v0

    .line 4263
    :cond_38
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 4264
    .local v2, "taskIdx":I
    if-gtz v2, :cond_58

    .line 4265
    const-string v0, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "shouldUpRecreateTask: task not in history for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4266
    return v3

    .line 4268
    :cond_58
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 4269
    .local v4, "prevTask":Lcom/android/server/am/TaskRecord;
    iget-object v5, v1, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v6, v4, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6b

    .line 4271
    return v0

    .line 4274
    .end local v2    # "taskIdx":I
    .end local v4    # "prevTask":Lcom/android/server/am/TaskRecord;
    :cond_6b
    return v3

    .line 4249
    .end local v1    # "task":Lcom/android/server/am/TaskRecord;
    :cond_6c
    :goto_6c
    return v0
.end method

.method startActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZZLandroid/app/ActivityOptions;)V
    .registers 23
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "focusedTopActivity"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "newTask"    # Z
    .param p4, "keepCurTransition"    # Z
    .param p5, "options"    # Landroid/app/ActivityOptions;

    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p4

    .line 3135
    move-object/from16 v5, p5

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    .line 3136
    .local v6, "rTask":Lcom/android/server/am/TaskRecord;
    iget v7, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 3138
    .local v7, "taskId":I
    iget-boolean v8, v1, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-nez v8, :cond_1f

    invoke-virtual {v0, v7}, Lcom/android/server/am/ActivityStack;->taskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v8

    if-eqz v8, :cond_1c

    if-eqz p3, :cond_1f

    .line 3142
    :cond_1c
    invoke-direct {v0, v6, v1}, Lcom/android/server/am/ActivityStack;->insertTaskAtTop(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 3144
    :cond_1f
    const/4 v8, 0x0

    .line 3145
    .local v8, "task":Lcom/android/server/am/TaskRecord;
    const/4 v9, 0x1

    if-nez p3, :cond_50

    .line 3147
    const/4 v10, 0x1

    .line 3148
    .local v10, "startIt":Z
    iget-object v11, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int/2addr v11, v9

    .local v11, "taskNdx":I
    :goto_2b
    if-ltz v11, :cond_50

    .line 3149
    iget-object v12, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v8, v12

    check-cast v8, Lcom/android/server/am/TaskRecord;

    .line 3150
    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    if-nez v12, :cond_3d

    .line 3152
    goto :goto_4d

    .line 3154
    :cond_3d
    if-ne v8, v6, :cond_48

    .line 3158
    if-nez v10, :cond_50

    .line 3161
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->createWindowContainer()V

    .line 3162
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 3163
    return-void

    .line 3166
    :cond_48
    iget v12, v8, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    if-lez v12, :cond_4d

    .line 3167
    const/4 v10, 0x0

    .line 3148
    :cond_4d
    :goto_4d
    add-int/lit8 v11, v11, -0x1

    goto :goto_2b

    .line 3176
    .end local v10    # "startIt":Z
    .end local v11    # "taskNdx":I
    :cond_50
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v10

    .line 3177
    .local v10, "activityTask":Lcom/android/server/am/TaskRecord;
    const/4 v11, 0x0

    if-ne v8, v10, :cond_6a

    iget-object v12, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    iget-object v13, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    sub-int/2addr v13, v9

    if-eq v12, v13, :cond_6a

    .line 3178
    iget-object v12, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-boolean v11, v12, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    .line 3183
    :cond_6a
    move-object v8, v10

    .line 3191
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getWindowContainerController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v12

    if-nez v12, :cond_74

    .line 3192
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->createWindowContainer()V

    .line 3194
    :cond_74
    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->setFrontOfTask()V

    .line 3196
    sget-object v12, Lcom/android/server/am/ActivityStack;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    if-eqz v12, :cond_88

    .line 3197
    sget-object v12, Lcom/android/server/am/ActivityStack;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    iget-object v13, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v14, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v15, v1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v9, v1, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    invoke-virtual {v12, v13, v14, v15, v9}, Lcom/android/internal/app/ActivityTrigger;->activityStartTrigger(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;Z)V

    .line 3199
    :cond_88
    sget-object v9, Lcom/android/server/am/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/am/ActivityPluginDelegate;

    if-eqz v9, :cond_97

    .line 3200
    sget-object v9, Lcom/android/server/am/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/am/ActivityPluginDelegate;

    iget-object v9, v1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-boolean v12, v1, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    .line 3201
    invoke-static {v9, v12}, Lcom/android/server/am/ActivityPluginDelegate;->activityInvokeNotification(Ljava/lang/String;Z)V

    .line 3203
    :cond_97
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v9

    if-eqz v9, :cond_ab

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->numActivities()I

    move-result v9

    if-lez v9, :cond_a4

    goto :goto_ab

    .line 3278
    :cond_a4
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 3280
    move/from16 v3, p3

    goto/16 :goto_142

    .line 3209
    :cond_ab
    :goto_ab
    iget-object v9, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getFlags()I

    move-result v9

    const/high16 v12, 0x10000

    and-int/2addr v9, v12

    const/4 v12, 0x0

    if-eqz v9, :cond_c4

    .line 3210
    iget-object v9, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9, v11, v4}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 3211
    iget-object v9, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e5

    .line 3213
    :cond_c4
    const/4 v9, 0x6

    .line 3214
    .local v9, "transit":I
    if-eqz p3, :cond_d9

    .line 3215
    iget-boolean v13, v1, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v13, :cond_ce

    .line 3216
    const/16 v9, 0x10

    goto :goto_d9

    .line 3222
    :cond_ce
    invoke-direct {v0, v2, v12, v1, v5}, Lcom/android/server/am/ActivityStack;->canEnterPipOnTaskSwitch(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v13

    if-eqz v13, :cond_d7

    .line 3224
    const/4 v13, 0x1

    iput-boolean v13, v2, Lcom/android/server/am/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    .line 3226
    :cond_d7
    const/16 v9, 0x8

    .line 3229
    :cond_d9
    :goto_d9
    iget-object v13, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v13, v9, v4}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 3230
    iget-object v13, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v13, v13, Lcom/android/server/am/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3232
    .end local v9    # "transit":I
    :goto_e5
    const/4 v9, 0x1

    .line 3233
    .local v9, "doShow":Z
    if-eqz p3, :cond_101

    .line 3239
    iget-object v13, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v13}, Landroid/content/Intent;->getFlags()I

    move-result v13

    const/high16 v14, 0x200000

    and-int/2addr v13, v14

    if-eqz v13, :cond_10b

    .line 3240
    invoke-virtual {v0, v1, v1}, Lcom/android/server/am/ActivityStack;->resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    .line 3241
    invoke-virtual {v0, v12}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v13

    if-ne v13, v1, :cond_fe

    const/4 v13, 0x1

    goto :goto_ff

    :cond_fe
    move v13, v11

    :goto_ff
    move v9, v13

    goto :goto_10b

    .line 3243
    :cond_101
    if-eqz v5, :cond_10b

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v13

    const/4 v14, 0x5

    if-ne v13, v14, :cond_10b

    .line 3245
    const/4 v9, 0x0

    .line 3248
    :cond_10b
    :goto_10b
    iget-object v13, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1, v13}, Lcom/android/server/am/ActivityStackInjector;->isStartingWindowSupported(Lcom/android/server/am/ActivityRecord;Landroid/content/Context;)Z

    move-result v13

    or-int v3, p3, v13

    .line 3250
    .end local p3    # "newTask":Z
    .local v3, "newTask":Z
    iget-boolean v13, v1, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v13, :cond_121

    .line 3253
    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V

    .line 3254
    invoke-virtual {v0, v12, v11, v11}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    goto :goto_141

    .line 3255
    :cond_121
    if-eqz v9, :cond_141

    .line 3260
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v11

    .line 3261
    .local v11, "prevTask":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v11}, Lcom/android/server/am/TaskRecord;->topRunningActivityWithStartingWindowLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    .line 3262
    .local v12, "prev":Lcom/android/server/am/ActivityRecord;
    if-eqz v12, :cond_13a

    .line 3265
    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v13

    if-eq v13, v11, :cond_135

    .line 3266
    const/4 v12, 0x0

    goto :goto_13a

    .line 3269
    :cond_135
    iget-boolean v13, v12, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v13, :cond_13a

    .line 3270
    const/4 v12, 0x0

    .line 3273
    :cond_13a
    :goto_13a
    invoke-direct/range {p0 .. p2}, Lcom/android/server/am/ActivityStack;->isTaskSwitch(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z

    move-result v13

    invoke-virtual {v1, v12, v3, v13}, Lcom/android/server/am/ActivityRecord;->showStartingWindow(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 3275
    .end local v9    # "doShow":Z
    .end local v11    # "prevTask":Lcom/android/server/am/TaskRecord;
    .end local v12    # "prev":Lcom/android/server/am/ActivityRecord;
    :cond_141
    :goto_141
    nop

    .line 3280
    :goto_142
    return-void
.end method

.method final startPausingLocked(ZZLcom/android/server/am/ActivityRecord;Z)Z
    .registers 14
    .param p1, "userLeaving"    # Z
    .param p2, "uiSleeping"    # Z
    .param p3, "resuming"    # Lcom/android/server/am/ActivityRecord;
    .param p4, "pauseImmediately"    # Z

    .line 1524
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_34

    .line 1525
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Going to pause when pause is already pending for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1526
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1525
    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->shouldSleepActivities()Z

    move-result v0

    if-nez v0, :cond_34

    .line 1531
    invoke-direct {p0, v1, p3}, Lcom/android/server/am/ActivityStack;->completePauseLocked(ZLcom/android/server/am/ActivityRecord;)V

    .line 1534
    :cond_34
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1536
    .local v0, "prev":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_47

    .line 1537
    if-nez p3, :cond_46

    .line 1538
    const-string v2, "ActivityManager"

    const-string v3, "Trying to pause when nothing is resumed"

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 1541
    :cond_46
    return v1

    .line 1544
    :cond_47
    if-ne v0, p3, :cond_51

    .line 1545
    const-string v2, "ActivityManager"

    const-string v3, "Trying to pause activity that is in process of being resumed"

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    return v1

    .line 1549
    :cond_51
    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->mIsCastMode:Z

    if-eqz v2, :cond_6e

    .line 1550
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current activity should not stop, activity:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    return v1

    .line 1557
    :cond_6e
    sget-object v2, Lcom/android/server/am/ActivityStack;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    if-eqz v2, :cond_7d

    .line 1558
    sget-object v2, Lcom/android/server/am/ActivityStack;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/app/ActivityTrigger;->activityPauseTrigger(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;)V

    .line 1561
    :cond_7d
    sget-object v2, Lcom/android/server/am/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/am/ActivityPluginDelegate;

    const/4 v3, 0x1

    if-eqz v2, :cond_8d

    .line 1562
    sget-object v2, Lcom/android/server/am/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/am/ActivityPluginDelegate;

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    .line 1563
    invoke-static {v2, v4, v3}, Lcom/android/server/am/ActivityPluginDelegate;->activitySuspendNotification(Ljava/lang/String;ZZ)V

    .line 1566
    :cond_8d
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1567
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1568
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1569
    nop

    .line 1570
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1569
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v4, v5

    if-nez v4, :cond_ab

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_a9

    goto :goto_ab

    .line 1570
    :cond_a9
    move-object v4, v2

    goto :goto_ac

    :cond_ab
    :goto_ab
    move-object v4, v0

    :goto_ac
    iput-object v4, p0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    .line 1571
    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string/jumbo v5, "startPausingLocked"

    invoke-virtual {v0, v4, v5}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 1572
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 1573
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStack;->clearLaunchTime(Lcom/android/server/am/ActivityRecord;)V

    .line 1575
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchTimeTracker()Lcom/android/server/am/LaunchTimeTracker;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/LaunchTimeTracker;->stopFullyDrawnTraceIfNeeded(I)V

    .line 1577
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    .line 1579
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_12e

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_12e

    .line 1584
    :try_start_dc
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_e5

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    goto :goto_e7

    :cond_e5
    iget v4, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    :goto_e7
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "userLeaving="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/android/server/am/EventLogTags;->writeAmPauseActivity(IILjava/lang/String;Ljava/lang/String;)V

    .line 1586
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4, v0, v1}, Lcom/android/server/am/ActivityManagerService;->updateUsageStats(Lcom/android/server/am/ActivityRecord;Z)V

    .line 1588
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getLifecycleManager()Lcom/android/server/am/ClientLifecycleManager;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v7, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    iget v8, v0, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    .line 1589
    invoke-static {v7, p1, v8, p4}, Landroid/app/servertransaction/PauseActivityItem;->obtain(ZZIZ)Landroid/app/servertransaction/PauseActivityItem;

    move-result-object v7

    .line 1588
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ActivityLifecycleItem;)V
    :try_end_11e
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_11e} :catch_11f

    goto :goto_12d

    .line 1591
    :catch_11f
    move-exception v4

    .line 1593
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "ActivityManager"

    const-string v6, "Exception thrown during pause"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1594
    iput-object v2, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1595
    iput-object v2, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1596
    iput-object v2, p0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    .line 1597
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_12d
    goto :goto_134

    .line 1599
    :cond_12e
    iput-object v2, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1600
    iput-object v2, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1601
    iput-object v2, p0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    .line 1606
    :goto_134
    if-nez p2, :cond_143

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDownLocked()Z

    move-result v2

    if-nez v2, :cond_143

    .line 1607
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->acquireLaunchWakelock()V

    .line 1610
    :cond_143
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_156

    .line 1615
    if-nez p2, :cond_14c

    .line 1616
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->pauseKeyDispatchingLocked()V

    .line 1621
    :cond_14c
    if-eqz p4, :cond_152

    .line 1624
    invoke-direct {p0, v1, p3}, Lcom/android/server/am/ActivityStack;->completePauseLocked(ZLcom/android/server/am/ActivityRecord;)V

    .line 1625
    return v1

    .line 1628
    :cond_152
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStack;->schedulePauseTimeout(Lcom/android/server/am/ActivityRecord;)V

    .line 1629
    return v3

    .line 1636
    :cond_156
    if-nez p3, :cond_15d

    .line 1637
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 1639
    :cond_15d
    return v1
.end method

.method final stopActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 10
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 3748
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->launching:Z

    .line 3749
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v1, v2

    if-nez v1, :cond_16

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_33

    .line 3751
    :cond_16
    iget-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v1, :cond_33

    .line 3752
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->shouldSleepActivities()Z

    move-result v1

    if-nez v1, :cond_33

    .line 3754
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "stop-no-history"

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 3758
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 3759
    return-void

    .line 3768
    :cond_33
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_cd

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_cd

    .line 3769
    const-string/jumbo v1, "stopActivity"

    invoke-direct {p0, p1, v1}, Lcom/android/server/am/ActivityStack;->adjustFocusedActivityStack(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 3770
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 3772
    const/4 v1, 0x1

    :try_start_47
    iput-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 3776
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string/jumbo v3, "stopActivityLocked"

    invoke-virtual {p1, v2, v3}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 3780
    sget-object v2, Lcom/android/server/am/ActivityStack;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    if-eqz v2, :cond_60

    .line 3781
    sget-object v2, Lcom/android/server/am/ActivityStack;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/app/ActivityTrigger;->activityStopTrigger(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;)V

    .line 3784
    :cond_60
    sget-object v2, Lcom/android/server/am/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/am/ActivityPluginDelegate;

    if-eqz v2, :cond_6f

    .line 3785
    sget-object v2, Lcom/android/server/am/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/am/ActivityPluginDelegate;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    .line 3786
    invoke-static {v2, v3, v0}, Lcom/android/server/am/ActivityPluginDelegate;->activitySuspendNotification(Ljava/lang/String;ZZ)V

    .line 3789
    :cond_6f
    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v2, :cond_76

    .line 3790
    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityRecord;->setVisible(Z)V

    .line 3792
    :cond_76
    iget v0, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 3793
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 3792
    invoke-static {v0, v2, v3}, Lcom/android/server/am/EventLogTags;->writeAmStopActivity(IILjava/lang/String;)V

    .line 3794
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getLifecycleManager()Lcom/android/server/am/ClientLifecycleManager;

    move-result-object v0

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    iget v5, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    .line 3795
    invoke-static {v4, v5}, Landroid/app/servertransaction/StopActivityItem;->obtain(ZI)Landroid/app/servertransaction/StopActivityItem;

    move-result-object v4

    .line 3794
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/am/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ActivityLifecycleItem;)V

    .line 3796
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 3797
    invoke-virtual {p1, v1}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    .line 3799
    :cond_a1
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3800
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x2af8

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_b0} :catch_b1

    .line 3813
    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_cd

    .line 3801
    :catch_b1
    move-exception v0

    .line 3805
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ActivityManager"

    const-string v3, "Exception thrown during pause"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3807
    iput-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 3809
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    const-string/jumbo v3, "stopActivityLocked"

    invoke-virtual {p1, v2, v3}, Lcom/android/server/am/ActivityRecord;->setState(Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 3810
    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->deferRelaunchUntilPaused:Z

    if-eqz v2, :cond_cd

    .line 3811
    const-string/jumbo v2, "stop-except"

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    .line 3815
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_cd
    :goto_cd
    return-void
.end method

.method public supportsSplitScreenWindowingMode()Z
    .registers 3

    .line 2162
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 2163
    .local v0, "topTask":Lcom/android/server/am/TaskRecord;
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->supportsSplitScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_14

    if-eqz v0, :cond_12

    .line 2164
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->supportsSplitScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_14

    :cond_12
    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    .line 2163
    :goto_15
    return v1
.end method

.method final switchUserLocked(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 1327
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget v0, p0, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    if-ne v0, p1, :cond_5

    .line 1328
    return-void

    .line 1330
    :cond_5
    iput p1, p0, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    .line 1333
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1334
    .local v0, "index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v0, :cond_2e

    .line 1335
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 1337
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->okToShowLocked()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 1340
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1341
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1342
    add-int/lit8 v0, v0, -0x1

    goto :goto_2d

    .line 1345
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    .line 1347
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :goto_2d
    goto :goto_e

    .line 1348
    .end local v1    # "i":I
    :cond_2e
    return-void
.end method

.method taskForIdLocked(I)Lcom/android/server/am/TaskRecord;
    .registers 5
    .param p1, "id"    # I

    .line 988
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_8
    if-ltz v0, :cond_1a

    .line 989
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 990
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    iget v2, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v2, p1, :cond_17

    .line 991
    return-object v1

    .line 988
    .end local v1    # "task":Lcom/android/server/am/TaskRecord;
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 994
    .end local v0    # "taskNdx":I
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 5707
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityStack{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " stackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5708
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getActivityType()I

    move-result v1

    invoke-static {v1}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5709
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v1

    invoke-static {v1}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5710
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " translucent="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5711
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->isStackTranslucent(Lcom/android/server/am/ActivityRecord;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    .line 5713
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " tasks}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5707
    return-object v0
.end method

.method topActivityOccludesKeyguard()Z
    .registers 2

    .line 2149
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mTopActivityOccludesKeyguard:Z

    return v0
.end method

.method topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;
    .registers 2

    .line 887
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method final topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;
    .registers 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "taskId"    # I

    .line 945
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_8
    if-ltz v0, :cond_3c

    .line 946
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 947
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    iget v2, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v2, p2, :cond_17

    .line 948
    goto :goto_39

    .line 950
    :cond_17
    iget-object v2, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 951
    .local v2, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_1f
    if-ltz v3, :cond_39

    .line 952
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 954
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_36

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-eq p1, v5, :cond_36

    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->okToShowLocked()Z

    move-result v5

    if-eqz v5, :cond_36

    .line 955
    return-object v4

    .line 951
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_36
    add-int/lit8 v3, v3, -0x1

    goto :goto_1f

    .line 945
    .end local v1    # "task":Lcom/android/server/am/TaskRecord;
    .end local v2    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "i":I
    :cond_39
    :goto_39
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 959
    .end local v0    # "taskNdx":I
    :cond_3c
    const/4 v0, 0x0

    return-object v0
.end method

.method topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .registers 8
    .param p1, "notTop"    # Lcom/android/server/am/ActivityRecord;

    .line 922
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_8
    if-ltz v0, :cond_39

    .line 923
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 924
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    iget-object v2, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 925
    .local v2, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "activityNdx":I
    :goto_1a
    if-ltz v3, :cond_36

    .line 926
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 927
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_33

    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    if-nez v5, :cond_33

    if-eq v4, p1, :cond_33

    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->okToShowLocked()Z

    move-result v5

    if-eqz v5, :cond_33

    .line 928
    return-object v4

    .line 925
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_33
    add-int/lit8 v3, v3, -0x1

    goto :goto_1a

    .line 922
    .end local v1    # "task":Lcom/android/server/am/TaskRecord;
    .end local v2    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "activityNdx":I
    :cond_36
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 932
    .end local v0    # "taskNdx":I
    :cond_39
    const/4 v0, 0x0

    return-object v0
.end method

.method topRunningNonOverlayTaskActivity()Lcom/android/server/am/ActivityRecord;
    .registers 7

    .line 908
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_8
    if-ltz v0, :cond_31

    .line 909
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 910
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    iget-object v2, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 911
    .local v2, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "activityNdx":I
    :goto_1a
    if-ltz v3, :cond_2e

    .line 912
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 913
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_2b

    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    if-nez v5, :cond_2b

    .line 914
    return-object v4

    .line 911
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2b
    add-int/lit8 v3, v3, -0x1

    goto :goto_1a

    .line 908
    .end local v1    # "task":Lcom/android/server/am/TaskRecord;
    .end local v2    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "activityNdx":I
    :cond_2e
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 918
    .end local v0    # "taskNdx":I
    :cond_31
    const/4 v0, 0x0

    return-object v0
.end method

.method final topTask()Lcom/android/server/am/TaskRecord;
    .registers 4

    .line 973
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 974
    .local v0, "size":I
    if-lez v0, :cond_13

    .line 975
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    return-object v1

    .line 977
    :cond_13
    const/4 v1, 0x0

    return-object v1
.end method

.method unhandledBackLocked()V
    .registers 11

    .line 5348
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 5350
    .local v0, "top":I
    if-ltz v0, :cond_2d

    .line 5351
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5352
    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 5353
    .local v2, "activityTop":I
    if-ltz v2, :cond_2d

    .line 5354
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "unhandled-back"

    const/4 v9, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 5358
    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v2    # "activityTop":I
    :cond_2d
    return-void
.end method

.method updateActivityApplicationInfoLocked(Landroid/content/pm/ApplicationInfo;)V
    .registers 9
    .param p1, "aInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 1394
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1395
    .local v0, "packageName":Ljava/lang/String;
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1397
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "taskNdx":I
    :goto_10
    if-ltz v2, :cond_3f

    .line 1398
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1399
    .local v3, "activities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "activityNdx":I
    :goto_22
    if-ltz v4, :cond_3c

    .line 1400
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 1402
    .local v5, "ar":Lcom/android/server/am/ActivityRecord;
    iget v6, v5, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v1, v6, :cond_39

    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 1403
    invoke-virtual {v5, p1}, Lcom/android/server/am/ActivityRecord;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;)V

    .line 1399
    .end local v5    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_39
    add-int/lit8 v4, v4, -0x1

    goto :goto_22

    .line 1397
    .end local v3    # "activities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    .end local v4    # "activityNdx":I
    :cond_3c
    add-int/lit8 v2, v2, -0x1

    goto :goto_10

    .line 1407
    .end local v2    # "taskNdx":I
    :cond_3f
    return-void
.end method

.method updateBoundsAllowed(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 6
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "tempTaskBounds"    # Landroid/graphics/Rect;
    .param p3, "tempTaskInsetBounds"    # Landroid/graphics/Rect;

    .line 859
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mUpdateBoundsDeferred:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 860
    return v1

    .line 862
    :cond_6
    if-eqz p1, :cond_e

    .line 863
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mDeferredBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_13

    .line 865
    :cond_e
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mDeferredBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 867
    :goto_13
    if-eqz p2, :cond_1b

    .line 868
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mDeferredTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_20

    .line 870
    :cond_1b
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mDeferredTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 872
    :goto_20
    if-eqz p3, :cond_28

    .line 873
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mDeferredTaskInsetBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_2d

    .line 875
    :cond_28
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mDeferredTaskInsetBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 877
    :goto_2d
    iput-boolean v1, p0, Lcom/android/server/am/ActivityStack;->mUpdateBoundsDeferredCalled:Z

    .line 878
    const/4 v0, 0x0

    return v0
.end method

.method final updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z
    .registers 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 1048
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 1049
    .local v0, "hadit":Z
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1050
    return v0
.end method

.method willActivityBeVisibleLocked(Landroid/os/IBinder;)Z
    .registers 9
    .param p1, "token"    # Landroid/os/IBinder;

    .line 5218
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 5218
    .local v0, "taskNdx":I
    :goto_8
    const/4 v2, 0x0

    if-ltz v0, :cond_36

    .line 5219
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5220
    .local v3, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    .line 5220
    .local v4, "activityNdx":I
    :goto_1a
    if-ltz v4, :cond_33

    .line 5221
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 5222
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-ne v6, p1, :cond_27

    .line 5223
    return v1

    .line 5225
    :cond_27
    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v6, :cond_30

    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v6, :cond_30

    .line 5226
    return v2

    .line 5220
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_30
    add-int/lit8 v4, v4, -0x1

    goto :goto_1a

    .line 5218
    .end local v3    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v4    # "activityNdx":I
    :cond_33
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 5230
    .end local v0    # "taskNdx":I
    :cond_36
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 5231
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_3d

    .line 5232
    return v2

    .line 5234
    :cond_3d
    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_58

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "willActivityBeVisibleLocked: Returning false, would have returned true for r="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5236
    :cond_58
    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    xor-int/2addr v1, v2

    return v1
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 10
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 5745
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 5746
    .local v0, "token":J
    const-wide v2, 0x10b00000001L

    const/4 v4, 0x0

    invoke-super {p0, p1, v2, v3, v4}, Lcom/android/server/wm/ConfigurationContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V

    .line 5747
    iget v2, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5748
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "taskNdx":I
    :goto_1f
    if-ltz v2, :cond_34

    .line 5749
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 5750
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    const-wide v4, 0x20b00000003L

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/am/TaskRecord;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5748
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    add-int/lit8 v2, v2, -0x1

    goto :goto_1f

    .line 5752
    .end local v2    # "taskNdx":I
    :cond_34
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_42

    .line 5753
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    const-wide v3, 0x10b00000004L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/am/ActivityRecord;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5755
    :cond_42
    const-wide v2, 0x10500000005L

    iget v4, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5756
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->matchParentBounds()Z

    move-result v2

    if-nez v2, :cond_5e

    .line 5757
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5758
    .local v2, "bounds":Landroid/graphics/Rect;
    const-wide v3, 0x10b00000007L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5762
    .end local v2    # "bounds":Landroid/graphics/Rect;
    :cond_5e
    const-wide v2, 0x10800000006L

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->matchParentBounds()Z

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5763
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 5764
    return-void
.end method
