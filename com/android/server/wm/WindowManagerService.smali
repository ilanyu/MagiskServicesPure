.class public Lcom/android/server/wm/WindowManagerService;
.super Landroid/view/IWindowManager$Stub;
.source "WindowManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;
.implements Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowManagerService$LocalService;,
        Lcom/android/server/wm/WindowManagerService$MousePositionTracker;,
        Lcom/android/server/wm/WindowManagerService$H;,
        Lcom/android/server/wm/WindowManagerService$AppFreezeListener;,
        Lcom/android/server/wm/WindowManagerService$WindowChangeListener;,
        Lcom/android/server/wm/WindowManagerService$SettingsObserver;,
        Lcom/android/server/wm/WindowManagerService$RotationWatcher;,
        Lcom/android/server/wm/WindowManagerService$UpdateAnimationScaleMode;
    }
.end annotation


# static fields
.field private static final ALWAYS_KEEP_CURRENT:Z = true

.field private static final ANIMATION_DURATION_SCALE:I = 0x2

.field private static final BOOT_ANIMATION_POLL_INTERVAL:I = 0xc8

.field private static final BOOT_ANIMATION_SERVICE:Ljava/lang/String; = "bootanim"

.field public static final CAST_ROTATION_UNSPECIFIED:I = -0x1

.field static final CUSTOM_SCREEN_ROTATION:Z = true

.field static final DEFAULT_INPUT_DISPATCHING_TIMEOUT_NANOS:J = 0x1dcd65000L

.field private static final DENSITY_OVERRIDE:Ljava/lang/String; = "ro.config.density_override"

.field private static final DRAG_SHADOW_ALPHA_TRANSPARENT:F = 0.7071f

.field private static final INPUT_DEVICES_READY_FOR_SAFE_MODE_DETECTION_TIMEOUT_MILLIS:I = 0x3e8

.field static final LAST_ANR_LIFETIME_DURATION_MSECS:I = 0x6ddd00

.field static final LAYER_OFFSET_DIM:I = 0x1

.field static final LAYER_OFFSET_THUMBNAIL:I = 0x4

.field static final LAYOUT_REPEAT_THRESHOLD:I = 0x4

.field static final MAX_ANIMATION_DURATION:I = 0x2710

.field private static final MAX_SCREENSHOT_RETRIES:I = 0x3

.field static final PROFILE_ORIENTATION:Z = false

.field private static final PROPERTY_EMULATOR_CIRCULAR:Ljava/lang/String; = "ro.emulator.circular"

.field static final SEAMLESS_ROTATION_TIMEOUT_DURATION:I = 0x7d0

.field private static final SIZE_OVERRIDE:Ljava/lang/String; = "ro.config.size_override"

.field private static final SYSTEM_DEBUGGABLE:Ljava/lang/String; = "ro.debuggable"

.field private static final SYSTEM_SECURE:Ljava/lang/String; = "ro.secure"

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final TRANSITION_ANIMATION_SCALE:I = 0x1

.field static final TYPE_LAYER_MULTIPLIER:I = 0x2710

.field static final TYPE_LAYER_OFFSET:I = 0x3e8

.field static final UPDATE_FOCUS_NORMAL:I = 0x0

.field static final UPDATE_FOCUS_PLACING_SURFACES:I = 0x2

.field static final UPDATE_FOCUS_WILL_ASSIGN_LAYERS:I = 0x1

.field static final UPDATE_FOCUS_WILL_PLACE_SURFACES:I = 0x3

.field static final WINDOWS_FREEZING_SCREENS_ACTIVE:I = 0x1

.field static final WINDOWS_FREEZING_SCREENS_NONE:I = 0x0

.field static final WINDOWS_FREEZING_SCREENS_TIMEOUT:I = 0x2

.field private static final WINDOW_ANIMATION_SCALE:I = 0x0

.field static final WINDOW_FREEZE_TIMEOUT_DURATION:I = 0x7d0

.field static final WINDOW_LAYER_MULTIPLIER:I = 0x5

.field static final WINDOW_REPLACEMENT_TIMEOUT_DURATION:I = 0x7d0

.field static final localLOGV:Z = false

.field static mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

.field static final mEnableAnimCheck:Z

.field static mFocusingWindow:Lcom/android/server/wm/WindowState;

.field private static sInstance:Lcom/android/server/wm/WindowManagerService;

.field static sThreadPriorityBooster:Lcom/android/server/wm/WindowManagerThreadPriorityBooster;


# instance fields
.field enableMIUIWatermark:Z

.field mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

.field final mActivityManager:Landroid/app/IActivityManager;

.field final mActivityManagerAppTransitionNotifier:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

.field final mAllowAnimationsInLowPowerMode:Z

.field final mAllowBootMessages:Z

.field mAllowTheaterModeWakeFromLayout:Z

.field final mAmInternal:Landroid/app/ActivityManagerInternal;

.field final mAnimationHandler:Landroid/os/Handler;

.field final mAnimationTransferMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/AnimationAdapter;",
            "Lcom/android/server/wm/SurfaceAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationsDisabled:Z

.field final mAnimator:Lcom/android/server/wm/WindowAnimator;

.field private mAnimatorDurationScaleSetting:F

.field final mAppFreezeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowManagerService$AppFreezeListener;",
            ">;"
        }
    .end annotation
.end field

.field final mAppOps:Landroid/app/AppOpsManager;

.field final mAppTransition:Lcom/android/server/wm/AppTransition;

.field mAppsFreezingScreen:I

.field mBootAnimationStopped:Z

.field final mBoundsAnimationController:Lcom/android/server/wm/BoundsAnimationController;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public mCastRotation:I

.field private mCastStackId:I

.field private mCastWindow:Lcom/android/server/wm/WindowState;

.field mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;

.field mClientFreezingScreen:Z

.field final mClosingApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field mCurrentFocus:Lcom/android/server/wm/WindowState;

.field mCurrentProfileIds:[I

.field mCurrentUserId:I

.field mDeferredRotationPauseCount:I

.field final mDestroyPreservedSurface:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field final mDestroySurface:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mDisableTransitionAnimation:Z

.field mDisplayEnabled:Z

.field mDisplayFreezeTime:J

.field mDisplayFrozen:Z

.field final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field mDisplayReady:Z

.field final mDisplaySettings:Lcom/android/server/wm/DisplaySettings;

.field mDockedStackCreateBounds:Landroid/graphics/Rect;

.field mDockedStackCreateMode:I

.field final mDragDropController:Lcom/android/server/wm/DragDropController;

.field final mDrawLockTimeoutMillis:J

.field mDummyVisibleApp:Lcom/android/server/wm/AppWindowToken;

.field mDummyVisibleAppEnter:Z

.field mEmulatorDisplayOverlay:Lcom/android/server/wm/EmulatorDisplayOverlay;

.field private mEnterAnimId:I

.field private mEventDispatchingEnabled:Z

.field private mExitAnimId:I

.field final mFinishedStarting:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mFocusMayChange:Z

.field mFocusedApp:Lcom/android/server/wm/AppWindowToken;

.field mFocusingActivity:Ljava/lang/String;

.field mForceDisplayEnabled:Z

.field final mForceRemoves:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mForceResizableTasks:Z

.field private mFrozenDisplayId:I

.field final mH:Lcom/android/server/wm/WindowManagerService$H;

.field mHardKeyboardAvailable:Z

.field mHardKeyboardStatusChangeListener:Lcom/android/server/wm/WindowManagerInternal$OnHardKeyboardStatusChangeListener;

.field final mHasPermanentDpad:Z

.field private mHasWideColorGamutSupport:Z

.field final mHaveInputMethods:Z

.field private mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mHoldingScreenOn:Lcom/android/server/wm/Session;

.field private mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

.field mInTouchMode:Z

.field final mInputManager:Lcom/android/server/input/InputManagerService;

.field mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

.field mInputMethodTarget:Lcom/android/server/wm/WindowState;

.field mInputMethodTargetWaitingAnim:Z

.field mInputMethodWindow:Lcom/android/server/wm/WindowState;

.field final mInputMonitor:Lcom/android/server/wm/InputMonitor;

.field private mIsCastMode:Z

.field private mIsCastModeRotationChanged:Z

.field mIsInMultiWindowMode:Z

.field public mIsInScreenProjection:Z

.field public mIsLastFrameWin:Lcom/android/server/wm/WindowState;

.field private mIsScreenProjectionPrivace:I

.field private mIsScreenProjectionSmallWindow:I

.field mIsTouchDevice:Z

.field private final mKeyguardDisableHandler:Lcom/android/server/wm/KeyguardDisableHandler;

.field mKeyguardGoingAway:Z

.field mKeyguardOrAodShowingOnDefaultDisplay:Z

.field mLastANRState:Ljava/lang/String;

.field mLastDispatchedSystemUiVisibility:I

.field mLastDisplayFreezeDuration:I

.field mLastFinishedFreezeSource:Ljava/lang/Object;

.field mLastFocus:Lcom/android/server/wm/WindowState;

.field mLastStatusBarVisibility:I

.field mLastWakeLockHoldingWindow:Lcom/android/server/wm/WindowState;

.field mLastWakeLockObscuringWindow:Lcom/android/server/wm/WindowState;

.field private final mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

.field final mLimitedAlphaCompositing:Z

.field mLosingFocus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mMIUIWatermark:Lcom/android/server/wm/MIUIWatermark;

.field final mMaxUiWidth:I

.field mMiuiAppTransitionAnimationHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

.field mMiuiGestureController:Lcom/android/server/wm/MiuiGestureController;

.field mMousePositionTracker:Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

.field final mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field final mOnlyCore:Z

.field final mOpeningApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mPendingExecuteAppTransition:Z

.field final mPendingRemove:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

.field private mPerf:Landroid/util/BoostFramework;

.field final mPmInternal:Landroid/content/pm/PackageManagerInternal;

.field private final mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

.field final mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

.field mPowerManager:Landroid/os/PowerManager;

.field mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private final mPriorityDumper:Lcom/android/server/utils/PriorityDump$PriorityDumper;

.field private mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

.field final mResizingWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mRoot:Lcom/android/server/wm/RootWindowContainer;

.field private mRotatingSeamlessly:Z

.field mRotationWatchers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowManagerService$RotationWatcher;",
            ">;"
        }
    .end annotation
.end field

.field mSafeMode:Z

.field mSaveSurfaceByKeyguardToken:Lcom/android/server/wm/AppWindowToken;

.field private final mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

.field private mScreenProjectionOnOrOff:I

.field final mScreenRect:Landroid/graphics/Rect;

.field private mSeamlessRotationCount:I

.field final mSessions:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/Session;",
            ">;"
        }
    .end annotation
.end field

.field mSettingsObserver:Lcom/android/server/wm/WindowManagerService$SettingsObserver;

.field mShowAlertWindowNotifications:Z

.field mShowingBootMessages:Z

.field mSkipAppTransitionAnimation:Z

.field mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

.field mSupportsPictureInPicture:Z

.field final mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

.field mSurfaceBuilderFactory:Lcom/android/server/wm/SurfaceBuilderFactory;

.field mSwitchingUser:Z

.field mSystemBooted:Z

.field mSystemDecorLayer:I

.field mTalkbackWatermark:Lcom/android/server/wm/TalkbackWatermark;

.field final mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

.field final mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

.field final mTempConfiguration:Landroid/content/res/Configuration;

.field private mTempWindowRenderStats:Landroid/view/WindowContentFrameStats;

.field final mTmpFloats:[F

.field final mTmpRect:Landroid/graphics/Rect;

.field final mTmpRect2:Landroid/graphics/Rect;

.field final mTmpRect3:Landroid/graphics/Rect;

.field final mTmpRectF:Landroid/graphics/RectF;

.field final mTmpTransform:Landroid/graphics/Matrix;

.field private final mTransaction:Landroid/view/SurfaceControl$Transaction;

.field mTransactionFactory:Lcom/android/server/wm/TransactionFactory;

.field mTransactionSequence:I

.field private mTransitionAnimationScaleSetting:F

.field final mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

.field private mViewServer:Lcom/android/server/wm/ViewServer;

.field mVr2dDisplayId:I

.field mWaitingForConfig:Z

.field mWaitingForDrawn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mWaitingForDrawnCallback:Ljava/lang/Runnable;

.field final mWallpaperVisibilityListeners:Lcom/android/server/wm/WallpaperVisibilityListeners;

.field mWatermark:Lcom/android/server/wm/Watermark;

.field private final mWinAddedSinceNullFocus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mWinRemovedSinceNullFocus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowAnimationScaleSetting:F

.field final mWindowChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowManagerService$WindowChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field final mWindowMap:Lcom/android/server/wm/WindowHashMap;

.field final mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

.field final mWindowReplacementTimeouts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mWindowTracing:Lcom/android/server/wm/WindowTracing;

.field mWindowsChanged:Z

.field mWindowsFreezingScreen:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 305
    const-string/jumbo v0, "persist.vendor.qti.animcheck.enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/WindowManagerService;->mEnableAnimCheck:Z

    .line 306
    new-instance v0, Lcom/android/internal/app/ActivityTrigger;

    invoke-direct {v0}, Lcom/android/internal/app/ActivityTrigger;-><init>()V

    sput-object v0, Lcom/android/server/wm/WindowManagerService;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    .line 931
    new-instance v0, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;

    invoke-direct {v0}, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;-><init>()V

    sput-object v0, Lcom/android/server/wm/WindowManagerService;->sThreadPriorityBooster:Lcom/android/server/wm/WindowManagerThreadPriorityBooster;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZLcom/android/server/policy/WindowManagerPolicy;)V
    .registers 27
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inputManager"    # Lcom/android/server/input/InputManagerService;
    .param p3, "haveInputMethods"    # Z
    .param p4, "showBootMsgs"    # Z
    .param p5, "onlyCore"    # Z
    .param p6, "policy"    # Lcom/android/server/policy/WindowManagerPolicy;

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 1065
    invoke-direct/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;-><init>()V

    .line 405
    const/4 v8, 0x0

    iput-object v8, v6, Lcom/android/server/wm/WindowManagerService;->mPerf:Landroid/util/BoostFramework;

    .line 413
    const/4 v0, -0x1

    iput v0, v6, Lcom/android/server/wm/WindowManagerService;->mVr2dDisplayId:I

    .line 415
    new-instance v1, Lcom/android/server/wm/WindowManagerService$1;

    invoke-direct {v1, v6}, Lcom/android/server/wm/WindowManagerService$1;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 427
    new-instance v1, Lcom/android/server/wm/WindowManagerService$2;

    invoke-direct {v1, v6}, Lcom/android/server/wm/WindowManagerService$2;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mPriorityDumper:Lcom/android/server/utils/PriorityDump$PriorityDumper;

    .line 449
    const/4 v9, 0x0

    new-array v1, v9, [I

    iput-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mCurrentProfileIds:[I

    .line 475
    const/4 v1, 0x1

    iput-boolean v1, v6, Lcom/android/server/wm/WindowManagerService;->mShowAlertWindowNotifications:Z

    .line 480
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, v6, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    .line 487
    new-instance v2, Lcom/android/server/wm/WindowHashMap;

    invoke-direct {v2}, Lcom/android/server/wm/WindowHashMap;-><init>()V

    iput-object v2, v6, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    .line 493
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v6, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    .line 499
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v6, Lcom/android/server/wm/WindowManagerService;->mWindowReplacementTimeouts:Ljava/util/ArrayList;

    .line 506
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v6, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    .line 511
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v6, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    .line 516
    const/16 v2, 0x14

    new-array v2, v2, [Lcom/android/server/wm/WindowState;

    iput-object v2, v6, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    .line 521
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v6, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    .line 528
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v6, Lcom/android/server/wm/WindowManagerService;->mDestroyPreservedSurface:Ljava/util/ArrayList;

    .line 534
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v6, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    .line 540
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v6, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    .line 545
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v6, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    .line 552
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v6, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    .line 569
    const/16 v2, 0x9

    new-array v2, v2, [F

    iput-object v2, v6, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    .line 570
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v6, Lcom/android/server/wm/WindowManagerService;->mTmpRect:Landroid/graphics/Rect;

    .line 571
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v6, Lcom/android/server/wm/WindowManagerService;->mTmpRect2:Landroid/graphics/Rect;

    .line 572
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v6, Lcom/android/server/wm/WindowManagerService;->mTmpRect3:Landroid/graphics/Rect;

    .line 573
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v6, Lcom/android/server/wm/WindowManagerService;->mTmpRectF:Landroid/graphics/RectF;

    .line 575
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, v6, Lcom/android/server/wm/WindowManagerService;->mTmpTransform:Landroid/graphics/Matrix;

    .line 579
    iput-boolean v9, v6, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    .line 580
    iput-boolean v9, v6, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    .line 581
    iput-boolean v9, v6, Lcom/android/server/wm/WindowManagerService;->mForceDisplayEnabled:Z

    .line 582
    iput-boolean v9, v6, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    .line 583
    iput-boolean v9, v6, Lcom/android/server/wm/WindowManagerService;->mBootAnimationStopped:Z

    .line 585
    iput-boolean v9, v6, Lcom/android/server/wm/WindowManagerService;->enableMIUIWatermark:Z

    .line 588
    iput-object v8, v6, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockHoldingWindow:Lcom/android/server/wm/WindowState;

    .line 589
    iput-object v8, v6, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockObscuringWindow:Lcom/android/server/wm/WindowState;

    .line 598
    iput v9, v6, Lcom/android/server/wm/WindowManagerService;->mDockedStackCreateMode:I

    .line 601
    iput-boolean v9, v6, Lcom/android/server/wm/WindowManagerService;->mForceResizableTasks:Z

    .line 602
    iput-boolean v9, v6, Lcom/android/server/wm/WindowManagerService;->mSupportsPictureInPicture:Z

    .line 604
    iput-boolean v9, v6, Lcom/android/server/wm/WindowManagerService;->mDisableTransitionAnimation:Z

    .line 622
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v6, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    .line 624
    new-instance v2, Lcom/android/server/wm/WallpaperVisibilityListeners;

    invoke-direct {v2}, Lcom/android/server/wm/WallpaperVisibilityListeners;-><init>()V

    iput-object v2, v6, Lcom/android/server/wm/WindowManagerService;->mWallpaperVisibilityListeners:Lcom/android/server/wm/WallpaperVisibilityListeners;

    .line 627
    iput v9, v6, Lcom/android/server/wm/WindowManagerService;->mSystemDecorLayer:I

    .line 628
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v6, Lcom/android/server/wm/WindowManagerService;->mScreenRect:Landroid/graphics/Rect;

    .line 630
    iput-boolean v9, v6, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    .line 631
    const-wide/16 v2, 0x0

    iput-wide v2, v6, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    .line 632
    iput v9, v6, Lcom/android/server/wm/WindowManagerService;->mLastDisplayFreezeDuration:I

    .line 633
    iput-object v8, v6, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    .line 634
    iput-boolean v9, v6, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    .line 635
    iput-boolean v9, v6, Lcom/android/server/wm/WindowManagerService;->mSwitchingUser:Z

    .line 640
    iput v9, v6, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    .line 642
    iput-boolean v9, v6, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    .line 643
    iput v9, v6, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    .line 646
    iput v9, v6, Lcom/android/server/wm/WindowManagerService;->mLastStatusBarVisibility:I

    .line 648
    iput v9, v6, Lcom/android/server/wm/WindowManagerService;->mLastDispatchedSystemUiVisibility:I

    .line 659
    iput-boolean v9, v6, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    .line 661
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, v6, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    .line 662
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, v6, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    .line 669
    new-instance v2, Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-direct {v2, v6}, Lcom/android/server/wm/UnknownAppVisibilityController;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v2, v6, Lcom/android/server/wm/WindowManagerService;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    .line 675
    new-instance v2, Lcom/android/server/wm/WindowManagerService$H;

    invoke-direct {v2, v6}, Lcom/android/server/wm/WindowManagerService$H;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v2, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 682
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/AnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, v6, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    .line 684
    iput-object v8, v6, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 685
    iput-object v8, v6, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    .line 688
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v6, Lcom/android/server/wm/WindowManagerService;->mWinAddedSinceNullFocus:Ljava/util/ArrayList;

    .line 690
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v6, Lcom/android/server/wm/WindowManagerService;->mWinRemovedSinceNullFocus:Ljava/util/ArrayList;

    .line 694
    iput-object v8, v6, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 699
    iput-object v8, v6, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 711
    iput v9, v6, Lcom/android/server/wm/WindowManagerService;->mSeamlessRotationCount:I

    .line 716
    iput-boolean v9, v6, Lcom/android/server/wm/WindowManagerService;->mRotatingSeamlessly:Z

    .line 723
    iput-boolean v9, v6, Lcom/android/server/wm/WindowManagerService;->mIsCastMode:Z

    .line 725
    iput-boolean v9, v6, Lcom/android/server/wm/WindowManagerService;->mIsCastModeRotationChanged:Z

    .line 726
    iput v0, v6, Lcom/android/server/wm/WindowManagerService;->mCastStackId:I

    .line 727
    iput-object v8, v6, Lcom/android/server/wm/WindowManagerService;->mCastWindow:Lcom/android/server/wm/WindowState;

    .line 729
    iput v0, v6, Lcom/android/server/wm/WindowManagerService;->mCastRotation:I

    .line 852
    iput-object v8, v6, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    .line 857
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v6, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    .line 858
    iput v0, v6, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    .line 859
    iput v0, v6, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    .line 860
    iput-boolean v9, v6, Lcom/android/server/wm/WindowManagerService;->mAnimationsDisabled:Z

    .line 896
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mAnimationTransferMap:Landroid/util/ArrayMap;

    .line 912
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    .line 913
    iput-boolean v9, v6, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 920
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    .line 929
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    .line 934
    sget-object v0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$XZ-U3HlCFtHp_gydNmNMeRmQMCI;->INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowManagerService$XZ-U3HlCFtHp_gydNmNMeRmQMCI;

    iput-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mSurfaceBuilderFactory:Lcom/android/server/wm/SurfaceBuilderFactory;

    .line 935
    sget-object v0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$hBnABSAsqXWvQ0zKwHWE4BZ3Mc0;->INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowManagerService$hBnABSAsqXWvQ0zKwHWE4BZ3Mc0;

    iput-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Lcom/android/server/wm/TransactionFactory;

    .line 937
    iget-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Lcom/android/server/wm/TransactionFactory;

    invoke-interface {v0}, Lcom/android/server/wm/TransactionFactory;->make()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 977
    new-instance v0, Lcom/android/server/wm/WindowManagerService$3;

    invoke-direct {v0, v6}, Lcom/android/server/wm/WindowManagerService$3;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mActivityManagerAppTransitionNotifier:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    .line 1027
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mAppFreezeListeners:Ljava/util/ArrayList;

    .line 4823
    new-instance v0, Lcom/android/server/wm/InputMonitor;

    invoke-direct {v0, v6}, Lcom/android/server/wm/InputMonitor;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    .line 7459
    new-instance v0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    invoke-direct {v0, v8}, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;-><init>(Lcom/android/server/wm/WindowManagerService$1;)V

    iput-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mMousePositionTracker:Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    .line 1066
    const/4 v0, 0x5

    invoke-static {v6, v0}, Lcom/android/server/LockGuard;->installLock(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 1067
    iput-object v7, v6, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 1068
    move/from16 v10, p3

    iput-boolean v10, v6, Lcom/android/server/wm/WindowManagerService;->mHaveInputMethods:Z

    .line 1069
    move/from16 v11, p4

    iput-boolean v11, v6, Lcom/android/server/wm/WindowManagerService;->mAllowBootMessages:Z

    .line 1070
    move/from16 v12, p5

    iput-boolean v12, v6, Lcom/android/server/wm/WindowManagerService;->mOnlyCore:Z

    .line 1071
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x112009e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v6, Lcom/android/server/wm/WindowManagerService;->mLimitedAlphaCompositing:Z

    .line 1073
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x112007a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v6, Lcom/android/server/wm/WindowManagerService;->mHasPermanentDpad:Z

    .line 1075
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1120038

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v6, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    .line 1077
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10e003e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, v6, Lcom/android/server/wm/WindowManagerService;->mDrawLockTimeoutMillis:J

    .line 1079
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1120007

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v6, Lcom/android/server/wm/WindowManagerService;->mAllowAnimationsInLowPowerMode:Z

    .line 1081
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10e005e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v6, Lcom/android/server/wm/WindowManagerService;->mMaxUiWidth:I

    .line 1083
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1120043

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v6, Lcom/android/server/wm/WindowManagerService;->mDisableTransitionAnimation:Z

    .line 1085
    move-object/from16 v13, p2

    iput-object v13, v6, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 1086
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 1087
    new-instance v0, Lcom/android/server/wm/DisplaySettings;

    invoke-direct {v0}, Lcom/android/server/wm/DisplaySettings;-><init>()V

    iput-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mDisplaySettings:Lcom/android/server/wm/DisplaySettings;

    .line 1088
    iget-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mDisplaySettings:Lcom/android/server/wm/DisplaySettings;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplaySettings;->readSettingsLocked()V

    .line 1090
    move-object/from16 v14, p6

    iput-object v14, v6, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 1091
    new-instance v0, Lcom/android/server/wm/WindowAnimator;

    invoke-direct {v0, v6}, Lcom/android/server/wm/WindowAnimator;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 1092
    new-instance v0, Lcom/android/server/wm/RootWindowContainer;

    invoke-direct {v0, v6}, Lcom/android/server/wm/RootWindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 1094
    new-instance v0, Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-direct {v0, v6}, Lcom/android/server/wm/WindowSurfacePlacer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 1095
    new-instance v0, Lcom/android/server/wm/TaskSnapshotController;

    invoke-direct {v0, v6}, Lcom/android/server/wm/TaskSnapshotController;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 1097
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/WindowTracing;->createDefaultAndStartLooper(Landroid/content/Context;)Lcom/android/server/wm/WindowTracing;

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mWindowTracing:Lcom/android/server/wm/WindowTracing;

    .line 1099
    const-class v0, Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v2, v6, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-static {v0, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1101
    iget-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    if-eqz v0, :cond_261

    .line 1102
    iget-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const-string v2, "WindowManager"

    invoke-virtual {v0, v2}, Lcom/android/server/input/InputManagerService;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v0

    .line 1103
    .local v0, "inputChannel":Landroid/view/InputChannel;
    if-eqz v0, :cond_25d

    .line 1104
    new-instance v2, Lcom/android/server/wm/PointerEventDispatcher;

    invoke-direct {v2, v0}, Lcom/android/server/wm/PointerEventDispatcher;-><init>(Landroid/view/InputChannel;)V

    goto :goto_25e

    :cond_25d
    move-object v2, v8

    :goto_25e
    iput-object v2, v6, Lcom/android/server/wm/WindowManagerService;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    .line 1105
    .end local v0    # "inputChannel":Landroid/view/InputChannel;
    goto :goto_263

    .line 1106
    :cond_261
    iput-object v8, v6, Lcom/android/server/wm/WindowManagerService;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    .line 1109
    :goto_263
    const-string v0, "display"

    invoke-virtual {v7, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 1111
    new-instance v0, Lcom/android/server/wm/KeyguardDisableHandler;

    iget-object v2, v6, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object v3, v6, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-direct {v0, v2, v3}, Lcom/android/server/wm/KeyguardDisableHandler;-><init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy;)V

    iput-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mKeyguardDisableHandler:Lcom/android/server/wm/KeyguardDisableHandler;

    .line 1113
    const-string/jumbo v0, "power"

    invoke-virtual {v7, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 1114
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 1116
    iget-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_2a6

    .line 1117
    iget-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    new-instance v2, Lcom/android/server/wm/WindowManagerService$5;

    invoke-direct {v2, v6}, Lcom/android/server/wm/WindowManagerService$5;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    invoke-virtual {v0, v2}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 1135
    iget-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v2, 0x3

    .line 1136
    invoke-virtual {v0, v2}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v0, v6, Lcom/android/server/wm/WindowManagerService;->mAnimationsDisabled:Z

    .line 1138
    :cond_2a6
    iget-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    const-string v2, "SCREEN_FROZEN"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    .line 1140
    iget-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v9}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1142
    new-instance v0, Lcom/android/server/wm/AppTransition;

    invoke-direct {v0, v7, v6}, Lcom/android/server/wm/AppTransition;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 1143
    iget-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mActivityManagerAppTransitionNotifier:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTransition;->registerListenerLocked(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 1145
    new-instance v0, Landroid/animation/AnimationHandler;

    invoke-direct {v0}, Landroid/animation/AnimationHandler;-><init>()V

    move-object v15, v0

    .line 1146
    .local v15, "animationHandler":Landroid/animation/AnimationHandler;
    new-instance v0, Lcom/android/server/wm/BoundsAnimationController;

    iget-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 1147
    invoke-static {}, Lcom/android/server/AnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v7, v1, v2, v15}, Lcom/android/server/wm/BoundsAnimationController;-><init>(Landroid/content/Context;Lcom/android/server/wm/AppTransition;Landroid/os/Handler;Landroid/animation/AnimationHandler;)V

    iput-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mBoundsAnimationController:Lcom/android/server/wm/BoundsAnimationController;

    .line 1149
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 1150
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 1151
    const-string v0, "appops"

    invoke-virtual {v7, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 1152
    new-instance v0, Lcom/android/server/wm/WindowManagerService$6;

    invoke-direct {v0, v6}, Lcom/android/server/wm/WindowManagerService$6;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    move-object v5, v0

    .line 1158
    .local v5, "opListener":Landroid/app/AppOpsManager$OnOpChangedInternalListener;
    iget-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x18

    invoke-virtual {v0, v1, v8, v5}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 1159
    iget-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1, v8, v5}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 1161
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1162
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v4, v0

    .line 1163
    .local v4, "suspendPackagesFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1164
    const-string v0, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1165
    new-instance v1, Lcom/android/server/wm/WindowManagerService$7;

    invoke-direct {v1, v6}, Lcom/android/server/wm/WindowManagerService$7;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v0, v7

    move-object v3, v4

    move-object/from16 v18, v4

    move-object/from16 v4, v16

    .end local v4    # "suspendPackagesFilter":Landroid/content/IntentFilter;
    .local v18, "suspendPackagesFilter":Landroid/content/IntentFilter;
    move-object/from16 v16, v5

    move-object/from16 v5, v17

    .line 1165
    .end local v5    # "opListener":Landroid/app/AppOpsManager$OnOpChangedInternalListener;
    .local v16, "opListener":Landroid/app/AppOpsManager$OnOpChangedInternalListener;
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1178
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "window_animation_scale"

    iget v2, v6, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    iput v0, v6, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    .line 1180
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "transition_animation_scale"

    .line 1182
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105003f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    .line 1180
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    iput v0, v6, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    .line 1185
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "animator_duration_scale"

    iget v2, v6, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    invoke-direct {v6, v0}, Lcom/android/server/wm/WindowManagerService;->setAnimatorDurationScale(F)V

    .line 1188
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v5, v0

    .line 1190
    .local v5, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1191
    iget-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1193
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 1195
    new-instance v0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;

    invoke-direct {v0, v6}, Lcom/android/server/wm/WindowManagerService$SettingsObserver;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mSettingsObserver:Lcom/android/server/wm/WindowManagerService$SettingsObserver;

    .line 1197
    iget-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    const v1, 0x2000000a

    const-string v2, "WindowManager"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1199
    iget-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v9}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1201
    new-instance v0, Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-direct {v0}, Lcom/android/server/wm/SurfaceAnimationRunner;-><init>()V

    iput-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 1203
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v6, Lcom/android/server/wm/WindowManagerService;->mAllowTheaterModeWakeFromLayout:Z

    .line 1206
    new-instance v9, Lcom/android/server/wm/TaskPositioningController;

    iget-object v2, v6, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v3, v6, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    iget-object v4, v6, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 1207
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v17

    move-object v0, v9

    move-object v1, v6

    move-object/from16 v19, v5

    move-object/from16 v5, v17

    .line 1207
    .end local v5    # "filter":Landroid/content/IntentFilter;
    .local v19, "filter":Landroid/content/IntentFilter;
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/TaskPositioningController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/input/InputManagerService;Lcom/android/server/wm/InputMonitor;Landroid/app/IActivityManager;Landroid/os/Looper;)V

    iput-object v9, v6, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    .line 1208
    new-instance v0, Lcom/android/server/wm/DragDropController;

    iget-object v1, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v6, v1}, Lcom/android/server/wm/DragDropController;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/Looper;)V

    iput-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 1210
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    new-instance v1, Lcom/android/server/wm/WindowManagerService$LocalService;

    invoke-direct {v1, v6, v8}, Lcom/android/server/wm/WindowManagerService$LocalService;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowManagerService$1;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1212
    iput-object v8, v6, Lcom/android/server/wm/WindowManagerService;->mTalkbackWatermark:Lcom/android/server/wm/TalkbackWatermark;

    .line 1213
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/KeyguardDisableHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService;

    .line 297
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardDisableHandler:Lcom/android/server/wm/KeyguardDisableHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/WindowManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService;
    .param p1, "x1"    # Ljava/io/FileDescriptor;
    .param p2, "x2"    # Ljava/io/PrintWriter;
    .param p3, "x3"    # [Ljava/lang/String;
    .param p4, "x4"    # Z

    .line 297
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowManagerService;->doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/wm/WindowManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService;

    .line 297
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->notifyFocusChanged()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/wm/WindowManagerService;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService;

    .line 297
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/wm/WindowManagerService;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService;
    .param p1, "x1"    # F

    .line 297
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/wm/WindowManagerService;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService;

    .line 297
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/wm/WindowManagerService;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService;
    .param p1, "x1"    # F

    .line 297
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/wm/WindowManagerService;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService;

    .line 297
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/wm/WindowManagerService;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService;
    .param p1, "x1"    # F

    .line 297
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/wm/WindowManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService;

    .line 297
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/wm/WindowManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService;

    .line 297
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->notifyWindowsChanged()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/wm/WindowManagerService;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 297
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->showStrictModeViolation(II)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/wm/WindowManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService;

    .line 297
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->checkBootAnimationCompleteLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/RecentsAnimationController;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService;

    .line 297
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/WindowManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService;

    .line 297
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->updateCircularDisplayMaskIfNeeded()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/wm/WindowManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService;

    .line 297
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mIsCastModeRotationChanged:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/WindowState;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService;

    .line 297
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindowLocked()Lcom/android/server/wm/WindowState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/WindowManagerService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService;
    .param p1, "x1"    # Z

    .line 297
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->updateTalkbackWatermark(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wm/WindowManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService;

    .line 297
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mScreenProjectionOnOrOff:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/wm/WindowManagerService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService;
    .param p1, "x1"    # I

    .line 297
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mScreenProjectionOnOrOff:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/wm/WindowManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService;

    .line 297
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mIsScreenProjectionPrivace:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/wm/WindowManagerService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService;
    .param p1, "x1"    # I

    .line 297
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mIsScreenProjectionPrivace:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/wm/WindowManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService;

    .line 297
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mIsScreenProjectionSmallWindow:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/wm/WindowManagerService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService;
    .param p1, "x1"    # I

    .line 297
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mIsScreenProjectionSmallWindow:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/wm/WindowManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService;

    .line 297
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationsDisabled:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/wm/WindowManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService;
    .param p1, "x1"    # Z

    .line 297
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationsDisabled:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/wm/WindowManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService;

    .line 297
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->updateAppOpsState()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/wm/WindowManagerService;Landroid/util/ArraySet;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService;
    .param p1, "x1"    # Landroid/util/ArraySet;
    .param p2, "x2"    # Z

    .line 297
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->updateHiddenWhileSuspendedState(Landroid/util/ArraySet;Z)V

    return-void
.end method

.method private animationScalesCheck(I)F
    .registers 7
    .param p1, "which"    # I

    .line 3471
    const/high16 v0, -0x40800000    # -1.0f

    .line 3472
    .local v0, "value":F
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationsDisabled:Z

    if-nez v1, :cond_3a

    .line 3473
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->mEnableAnimCheck:Z

    if-eqz v1, :cond_27

    .line 3474
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mFocusingActivity:Ljava/lang/String;

    if-eqz v1, :cond_27

    .line 3475
    sget-object v1, Lcom/android/server/wm/WindowManagerService;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    if-nez v1, :cond_19

    .line 3476
    new-instance v1, Lcom/android/internal/app/ActivityTrigger;

    invoke-direct {v1}, Lcom/android/internal/app/ActivityTrigger;-><init>()V

    sput-object v1, Lcom/android/server/wm/WindowManagerService;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    .line 3478
    :cond_19
    sget-object v1, Lcom/android/server/wm/WindowManagerService;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    if-eqz v1, :cond_27

    .line 3479
    sget-object v1, Lcom/android/server/wm/WindowManagerService;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mFocusingActivity:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, p1, v4}, Lcom/android/internal/app/ActivityTrigger;->activityMiscTrigger(ILjava/lang/String;II)F

    move-result v0

    .line 3483
    :cond_27
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_3b

    .line 3484
    packed-switch p1, :pswitch_data_3c

    goto :goto_3b

    .line 3487
    :pswitch_31
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    goto :goto_3b

    .line 3486
    :pswitch_34
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    goto :goto_3b

    .line 3485
    :pswitch_37
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    goto :goto_3b

    .line 3491
    :cond_3a
    const/4 v0, 0x0

    .line 3493
    :cond_3b
    :goto_3b
    return v0

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_37
        :pswitch_34
        :pswitch_31
    .end packed-switch
.end method

.method static boostPriorityForLockedSection()V
    .registers 1

    .line 940
    sget-object v0, Lcom/android/server/wm/WindowManagerService;->sThreadPriorityBooster:Lcom/android/server/wm/WindowManagerThreadPriorityBooster;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->boost()V

    .line 941
    return-void
.end method

.method private checkBootAnimationCompleteLocked()Z
    .registers 5

    .line 3832
    const-string v0, "bootanim"

    invoke-static {v0}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3833
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 3834
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 3837
    const/4 v0, 0x0

    return v0

    .line 3840
    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method private computeNewConfigurationLocked(I)Landroid/content/res/Configuration;
    .registers 4
    .param p1, "displayId"    # I

    .line 4798
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-nez v0, :cond_6

    .line 4799
    const/4 v0, 0x0

    return-object v0

    .line 4801
    :cond_6
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 4802
    .local v0, "config":Landroid/content/res/Configuration;
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 4803
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent;->computeScreenConfiguration(Landroid/content/res/Configuration;)V

    .line 4804
    return-object v0
.end method

.method private createSurfaceControl(Landroid/view/Surface;ILcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowStateAnimator;)I
    .registers 9
    .param p1, "outSurface"    # Landroid/view/Surface;
    .param p2, "result"    # I
    .param p3, "win"    # Lcom/android/server/wm/WindowState;
    .param p4, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;

    .line 2502
    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v1, p3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2503
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mMiuiGestureController:Lcom/android/server/wm/MiuiGestureController;

    iget-object v1, p3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MiuiGestureController;->cancelGoHomeAnimationIfNeeded(Lcom/android/server/wm/AppWindowToken;)V

    .line 2506
    :cond_15
    iget-boolean v0, p3, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-nez v0, :cond_1b

    .line 2507
    or-int/lit8 p2, p2, 0x4

    .line 2512
    :cond_1b
    const-wide/16 v0, 0x20

    :try_start_1d
    const-string v2, "createSurfaceControl"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2513
    iget-object v2, p3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v3, p3, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-virtual {p4, v2, v3}, Lcom/android/server/wm/WindowStateAnimator;->createSurfaceLocked(II)Lcom/android/server/wm/WindowSurfaceController;

    move-result-object v2
    :try_end_2c
    .catchall {:try_start_1d .. :try_end_2c} :catchall_51

    .line 2515
    .local v2, "surfaceController":Lcom/android/server/wm/WindowSurfaceController;
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2516
    nop

    .line 2515
    nop

    .line 2517
    if-eqz v2, :cond_37

    .line 2518
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowSurfaceController;->getSurface(Landroid/view/Surface;)V

    goto :goto_50

    .line 2523
    :cond_37
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create surface control for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2524
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 2527
    :goto_50
    return p2

    .line 2515
    .end local v2    # "surfaceController":Lcom/android/server/wm/WindowSurfaceController;
    :catchall_51
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method static dipToPixel(ILandroid/util/DisplayMetrics;)I
    .registers 4
    .param p0, "dip"    # I
    .param p1, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .line 7394
    int-to-float v0, p0

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private displayReady(I)V
    .registers 5
    .param p1, "displayId"    # I

    .line 4942
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4943
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 4944
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_19

    .line 4945
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowAnimator;->addDisplayLocked(I)V

    .line 4946
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->initializeDisplayBaseInfo()V

    .line 4947
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 4949
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4950
    return-void

    .line 4949
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .registers 15
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "useProto"    # Z

    .line 7030
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "WindowManager"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 7031
    :cond_b
    const/4 v0, 0x0

    .line 7033
    .local v0, "dumpAll":Z
    const/4 v1, 0x0

    move v8, v0

    move v0, v1

    .line 7034
    .local v0, "opti":I
    .local v8, "dumpAll":Z
    :goto_f
    array-length v2, p3

    if-ge v0, v2, :cond_b7

    .line 7035
    aget-object v2, p3, v0

    .line 7036
    .local v2, "opt":Ljava/lang/String;
    if-eqz v2, :cond_b7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_b7

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_26

    .line 7037
    goto/16 :goto_b7

    .line 7039
    :cond_26
    add-int/lit8 v0, v0, 0x1

    .line 7040
    const-string v3, "-a"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 7041
    const/4 v3, 0x1

    .line 7066
    .end local v8    # "dumpAll":Z
    .local v3, "dumpAll":Z
    move v8, v3

    goto/16 :goto_b5

    .line 7042
    .end local v3    # "dumpAll":Z
    .restart local v8    # "dumpAll":Z
    :cond_34
    const-string v3, "-h"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9c

    .line 7043
    const-string v1, "Window manager dump options:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7044
    const-string v1, "  [-a] [-h] [cmd] ..."

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7045
    const-string v1, "  cmd may be one of:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7046
    const-string v1, "    l[astanr]: last ANR information"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7047
    const-string v1, "    p[policy]: policy state"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7048
    const-string v1, "    a[animator]: animator state"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7049
    const-string v1, "    s[essions]: active sessions"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7050
    const-string v1, "    surfaces: active surfaces (debugging enabled only)"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7051
    const-string v1, "    d[isplays]: active display contents"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7052
    const-string v1, "    t[okens]: token list"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7053
    const-string v1, "    w[indows]: window list"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7054
    const-string v1, "  cmd may also be a NAME to dump windows.  NAME may"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7055
    const-string v1, "    be a partial substring in a window name, a"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7056
    const-string v1, "    Window hex object identifier, or"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7057
    const-string v1, "    \"all\" for all windows, or"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7058
    const-string v1, "    \"visible\" for the visible windows."

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7059
    const-string v1, "    \"visible-apps\" for the visible app windows."

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7060
    const-string v1, "  -a: include all available server state."

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7061
    const-string v1, "  --proto: output dump in protocol buffer format."

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7062
    return-void

    .line 7064
    :cond_9c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown argument: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; use -h for help"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7066
    .end local v2    # "opt":Ljava/lang/String;
    :goto_b5
    goto/16 :goto_f

    .line 7068
    :cond_b7
    :goto_b7
    if-eqz p4, :cond_d5

    .line 7069
    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v2, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 7070
    .local v2, "proto":Landroid/util/proto/ProtoOutputStream;
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v3

    :try_start_c1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7071
    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/WindowManagerService;->writeToProtoLocked(Landroid/util/proto/ProtoOutputStream;Z)V

    .line 7072
    monitor-exit v3
    :try_end_c8
    .catchall {:try_start_c1 .. :try_end_c8} :catchall_cf

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7073
    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 7074
    return-void

    .line 7072
    :catchall_cf
    move-exception v1

    :try_start_d0
    monitor-exit v3
    :try_end_d1
    .catchall {:try_start_d0 .. :try_end_d1} :catchall_cf

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 7077
    .end local v2    # "proto":Landroid/util/proto/ProtoOutputStream;
    :cond_d5
    array-length v1, p3

    const/4 v2, 0x0

    if-ge v0, v1, :cond_27c

    .line 7078
    aget-object v1, p3, v0

    .line 7079
    .local v1, "cmd":Ljava/lang/String;
    const/4 v3, 0x1

    add-int/lit8 v9, v0, 0x1

    .line 7080
    .end local v0    # "opti":I
    .local v9, "opti":I
    const-string/jumbo v0, "lastanr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_268

    const-string/jumbo v0, "l"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f2

    goto/16 :goto_268

    .line 7085
    :cond_f2
    const-string/jumbo v0, "policy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_254

    const-string/jumbo v0, "p"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_106

    goto/16 :goto_254

    .line 7090
    :cond_106
    const-string v0, "animator"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_240

    const-string v0, "a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_118

    goto/16 :goto_240

    .line 7095
    :cond_118
    const-string/jumbo v0, "sessions"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22c

    const-string/jumbo v0, "s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12c

    goto/16 :goto_22c

    .line 7100
    :cond_12c
    const-string v0, "displays"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_216

    const-string v0, "d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13e

    goto/16 :goto_216

    .line 7105
    :cond_13e
    const-string/jumbo v0, "tokens"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_202

    const-string/jumbo v0, "t"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_152

    goto/16 :goto_202

    .line 7110
    :cond_152
    const-string/jumbo v0, "windows"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ee

    const-string/jumbo v0, "w"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_166

    goto/16 :goto_1ee

    .line 7115
    :cond_166
    const-string v0, "all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1da

    const-string v0, "a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_177

    goto :goto_1da

    .line 7120
    :cond_177
    const-string v0, "containers"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a6

    .line 7121
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_182
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7122
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const-string v4, " "

    invoke-virtual {v2, p2, v4}, Lcom/android/server/wm/RootWindowContainer;->dumpChildrenNames(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 7123
    const-string v2, " "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7124
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v4, Lcom/android/server/wm/-$$Lambda$WindowManagerService$bLtA9qjvcyGYU0ingebsLSeUie8;

    invoke-direct {v4, p2}, Lcom/android/server/wm/-$$Lambda$WindowManagerService$bLtA9qjvcyGYU0ingebsLSeUie8;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v2, v4, v3}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 7127
    monitor-exit v0
    :try_end_19c
    .catchall {:try_start_182 .. :try_end_19c} :catchall_1a0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7128
    return-void

    .line 7127
    :catchall_1a0
    move-exception v2

    :try_start_1a1
    monitor-exit v0
    :try_end_1a2
    .catchall {:try_start_1a1 .. :try_end_1a2} :catchall_1a0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 7130
    :cond_1a6
    const-string v0, "gesture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b4

    .line 7131
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mMiuiGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/wm/MiuiGestureController;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 7132
    return-void

    .line 7137
    :cond_1b4
    move-object v2, p0

    move-object v3, p2

    move-object v4, v1

    move-object v5, p3

    move v6, v9

    move v7, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/WindowManagerService;->dumpWindows(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZ)Z

    move-result v0

    if-nez v0, :cond_1d9

    .line 7138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad window command, or no windows match: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7139
    const-string v0, "Use -h for help."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7141
    :cond_1d9
    return-void

    .line 7116
    :cond_1da
    :goto_1da
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_1dd
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7117
    invoke-direct {p0, p2, v3, v2}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    .line 7118
    monitor-exit v0
    :try_end_1e4
    .catchall {:try_start_1dd .. :try_end_1e4} :catchall_1e8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7119
    return-void

    .line 7118
    :catchall_1e8
    move-exception v2

    :try_start_1e9
    monitor-exit v0
    :try_end_1ea
    .catchall {:try_start_1e9 .. :try_end_1ea} :catchall_1e8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 7111
    :cond_1ee
    :goto_1ee
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_1f1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7112
    invoke-direct {p0, p2, v3, v2}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    .line 7113
    monitor-exit v0
    :try_end_1f8
    .catchall {:try_start_1f1 .. :try_end_1f8} :catchall_1fc

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7114
    return-void

    .line 7113
    :catchall_1fc
    move-exception v2

    :try_start_1fd
    monitor-exit v0
    :try_end_1fe
    .catchall {:try_start_1fd .. :try_end_1fe} :catchall_1fc

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 7106
    :cond_202
    :goto_202
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_205
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7107
    invoke-direct {p0, p2, v3}, Lcom/android/server/wm/WindowManagerService;->dumpTokensLocked(Ljava/io/PrintWriter;Z)V

    .line 7108
    monitor-exit v0
    :try_end_20c
    .catchall {:try_start_205 .. :try_end_20c} :catchall_210

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7109
    return-void

    .line 7108
    :catchall_210
    move-exception v2

    :try_start_211
    monitor-exit v0
    :try_end_212
    .catchall {:try_start_211 .. :try_end_212} :catchall_210

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 7101
    :cond_216
    :goto_216
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_219
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7102
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, p2}, Lcom/android/server/wm/RootWindowContainer;->dumpDisplayContents(Ljava/io/PrintWriter;)V

    .line 7103
    monitor-exit v0
    :try_end_222
    .catchall {:try_start_219 .. :try_end_222} :catchall_226

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7104
    return-void

    .line 7103
    :catchall_226
    move-exception v2

    :try_start_227
    monitor-exit v0
    :try_end_228
    .catchall {:try_start_227 .. :try_end_228} :catchall_226

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 7096
    :cond_22c
    :goto_22c
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_22f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7097
    invoke-direct {p0, p2, v3}, Lcom/android/server/wm/WindowManagerService;->dumpSessionsLocked(Ljava/io/PrintWriter;Z)V

    .line 7098
    monitor-exit v0
    :try_end_236
    .catchall {:try_start_22f .. :try_end_236} :catchall_23a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7099
    return-void

    .line 7098
    :catchall_23a
    move-exception v2

    :try_start_23b
    monitor-exit v0
    :try_end_23c
    .catchall {:try_start_23b .. :try_end_23c} :catchall_23a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 7091
    :cond_240
    :goto_240
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_243
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7092
    invoke-direct {p0, p2, p3, v3}, Lcom/android/server/wm/WindowManagerService;->dumpAnimatorLocked(Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 7093
    monitor-exit v0
    :try_end_24a
    .catchall {:try_start_243 .. :try_end_24a} :catchall_24e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7094
    return-void

    .line 7093
    :catchall_24e
    move-exception v2

    :try_start_24f
    monitor-exit v0
    :try_end_250
    .catchall {:try_start_24f .. :try_end_250} :catchall_24e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 7086
    :cond_254
    :goto_254
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_257
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7087
    invoke-direct {p0, p2, p3, v3}, Lcom/android/server/wm/WindowManagerService;->dumpPolicyLocked(Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 7088
    monitor-exit v0
    :try_end_25e
    .catchall {:try_start_257 .. :try_end_25e} :catchall_262

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7089
    return-void

    .line 7088
    :catchall_262
    move-exception v2

    :try_start_263
    monitor-exit v0
    :try_end_264
    .catchall {:try_start_263 .. :try_end_264} :catchall_262

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 7081
    :cond_268
    :goto_268
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v3

    :try_start_26b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7082
    invoke-direct {p0, p2}, Lcom/android/server/wm/WindowManagerService;->dumpLastANRLocked(Ljava/io/PrintWriter;)V

    .line 7083
    monitor-exit v3
    :try_end_272
    .catchall {:try_start_26b .. :try_end_272} :catchall_276

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7084
    return-void

    .line 7083
    :catchall_276
    move-exception v0

    :try_start_277
    monitor-exit v3
    :try_end_278
    .catchall {:try_start_277 .. :try_end_278} :catchall_276

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 7145
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v9    # "opti":I
    .restart local v0    # "opti":I
    :cond_27c
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_27f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7146
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 7147
    if-eqz v8, :cond_28c

    .line 7148
    const-string v3, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7150
    :cond_28c
    invoke-direct {p0, p2}, Lcom/android/server/wm/WindowManagerService;->dumpLastANRLocked(Ljava/io/PrintWriter;)V

    .line 7151
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 7152
    if-eqz v8, :cond_299

    .line 7153
    const-string v3, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7155
    :cond_299
    invoke-direct {p0, p2, p3, v8}, Lcom/android/server/wm/WindowManagerService;->dumpPolicyLocked(Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 7156
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 7157
    if-eqz v8, :cond_2a6

    .line 7158
    const-string v3, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7160
    :cond_2a6
    invoke-direct {p0, p2, p3, v8}, Lcom/android/server/wm/WindowManagerService;->dumpAnimatorLocked(Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 7161
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 7162
    if-eqz v8, :cond_2b3

    .line 7163
    const-string v3, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7165
    :cond_2b3
    invoke-direct {p0, p2, v8}, Lcom/android/server/wm/WindowManagerService;->dumpSessionsLocked(Ljava/io/PrintWriter;Z)V

    .line 7166
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 7167
    if-eqz v8, :cond_2c0

    .line 7168
    const-string v3, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7170
    :cond_2c0
    if-eqz v8, :cond_2c7

    .line 7171
    const-string v3, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7173
    :cond_2c7
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p2}, Lcom/android/server/wm/RootWindowContainer;->dumpDisplayContents(Ljava/io/PrintWriter;)V

    .line 7174
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 7175
    if-eqz v8, :cond_2d6

    .line 7176
    const-string v3, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7178
    :cond_2d6
    invoke-direct {p0, p2, v8}, Lcom/android/server/wm/WindowManagerService;->dumpTokensLocked(Ljava/io/PrintWriter;Z)V

    .line 7179
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 7180
    if-eqz v8, :cond_2e3

    .line 7181
    const-string v3, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7183
    :cond_2e3
    invoke-direct {p0, p2, v8, v2}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    .line 7185
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 7186
    if-eqz v8, :cond_2f0

    .line 7187
    const-string v2, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7189
    :cond_2f0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mMiuiGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v2, p2, p3}, Lcom/android/server/wm/MiuiGestureController;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 7191
    monitor-exit v1
    :try_end_2f6
    .catchall {:try_start_27f .. :try_end_2f6} :catchall_2fa

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7192
    return-void

    .line 7191
    :catchall_2fa
    move-exception v2

    :try_start_2fb
    monitor-exit v1
    :try_end_2fc
    .catchall {:try_start_2fb .. :try_end_2fc} :catchall_2fa

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method private doesAddToastWindowRequireToken(Ljava/lang/String;ILcom/android/server/wm/WindowState;)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "attachedWindow"    # Lcom/android/server/wm/WindowState;

    .line 1743
    const/4 v0, 0x1

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-eqz p3, :cond_13

    .line 1744
    iget-object v3, p3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_11

    iget-object v3, p3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v3, v3, Lcom/android/server/wm/AppWindowToken;->mTargetSdk:I

    if-lt v3, v1, :cond_11

    goto :goto_12

    :cond_11
    move v0, v2

    :goto_12
    return v0

    .line 1749
    :cond_13
    :try_start_13
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1751
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 1750
    invoke-virtual {v3, p1, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 1752
    .local v3, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, p2, :cond_2b

    .line 1756
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v4, v1, :cond_2a

    .line 1757
    return v0

    .line 1761
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_2a
    goto :goto_4b

    .line 1753
    .restart local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_2b
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not in UID "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_4a} :catch_4a

    .line 1759
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_4a
    move-exception v0

    .line 1763
    :goto_4b
    return v2
.end method

.method private dumpAnimatorLocked(Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .line 6688
    const-string v0, "WINDOW MANAGER ANIMATOR STATE (dumpsys window animator)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6689
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    const-string v1, "    "

    invoke-virtual {v0, p1, v1, p3}, Lcom/android/server/wm/WindowAnimator;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 6690
    return-void
.end method

.method private dumpLastANRLocked(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 6976
    const-string v0, "WINDOW MANAGER LAST ANR (dumpsys window lastanr)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6977
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastANRState:Ljava/lang/String;

    if-nez v0, :cond_f

    .line 6978
    const-string v0, "  <no ANR has occurred since boot>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_14

    .line 6980
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastANRState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6982
    :goto_14
    return-void
.end method

.method private dumpPolicyLocked(Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .line 6683
    const-string v0, "WINDOW MANAGER POLICY STATE (dumpsys window policy)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6684
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const-string v1, "    "

    invoke-interface {v0, v1, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 6685
    return-void
.end method

.method private dumpSessionsLocked(Ljava/io/PrintWriter;Z)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpAll"    # Z

    .line 6707
    const-string v0, "WINDOW MANAGER SESSIONS (dumpsys window sessions)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6708
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_2b

    .line 6709
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Session;

    .line 6710
    .local v1, "s":Lcom/android/server/wm/Session;
    const-string v2, "  Session "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(C)V

    .line 6711
    const-string v2, "    "

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/Session;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 6708
    .end local v1    # "s":Lcom/android/server/wm/Session;
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 6713
    .end local v0    # "i":I
    :cond_2b
    return-void
.end method

.method private dumpTokensLocked(Ljava/io/PrintWriter;Z)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpAll"    # Z

    .line 6693
    const-string v0, "WINDOW MANAGER TOKENS (dumpsys window tokens)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6694
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->dumpTokens(Ljava/io/PrintWriter;Z)V

    .line 6695
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_41

    .line 6696
    :cond_1a
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6697
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_2f

    .line 6698
    const-string v0, "  mOpeningApps="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6700
    :cond_2f
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_41

    .line 6701
    const-string v0, "  mClosingApps="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6704
    :cond_41
    return-void
.end method

.method private dumpWindows(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZ)Z
    .registers 13
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "opti"    # I
    .param p5, "dumpAll"    # Z

    .line 6943
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6944
    .local v0, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    const-string v1, "apps"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_37

    const-string/jumbo v1, "visible"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    const-string/jumbo v1, "visible-apps"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    goto :goto_37

    .line 6960
    :cond_21
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_24
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6961
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, v0, p2}, Lcom/android/server/wm/RootWindowContainer;->getWindowsByName(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 6962
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_31

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_60

    :catchall_31
    move-exception v2

    :try_start_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 6945
    :cond_37
    :goto_37
    const-string v1, "apps"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 6946
    .local v1, "appsOnly":Z
    const-string/jumbo v3, "visible"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 6947
    .local v3, "visibleOnly":Z
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v4

    :try_start_47
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6948
    if-eqz v1, :cond_51

    .line 6949
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5, p1}, Lcom/android/server/wm/RootWindowContainer;->dumpDisplayContents(Ljava/io/PrintWriter;)V

    .line 6952
    :cond_51
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v6, Lcom/android/server/wm/-$$Lambda$WindowManagerService$oNT-Y2LsGFr06rEAi5_MG-71m5U;

    invoke-direct {v6, v3, v1, v0}, Lcom/android/server/wm/-$$Lambda$WindowManagerService$oNT-Y2LsGFr06rEAi5_MG-71m5U;-><init>(ZZLjava/util/ArrayList;)V

    invoke-virtual {v5, v6, v2}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 6958
    monitor-exit v4
    :try_end_5c
    .catchall {:try_start_47 .. :try_end_5c} :catchall_7c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6959
    .end local v1    # "appsOnly":Z
    .end local v3    # "visibleOnly":Z
    nop

    .line 6965
    :goto_60
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_68

    .line 6966
    const/4 v1, 0x0

    return v1

    .line 6969
    :cond_68
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v5

    :try_start_6b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6970
    invoke-direct {p0, p1, p5, v0}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    .line 6971
    monitor-exit v5
    :try_end_72
    .catchall {:try_start_6b .. :try_end_72} :catchall_76

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6972
    return v2

    .line 6971
    :catchall_76
    move-exception v1

    :try_start_77
    monitor-exit v5
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_76

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 6958
    .restart local v1    # "appsOnly":Z
    .restart local v3    # "visibleOnly":Z
    :catchall_7c
    move-exception v2

    :try_start_7d
    monitor-exit v4
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method private dumpWindowsLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpAll"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Z",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    .line 6754
    .local p3, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    const-string v0, "WINDOW MANAGER WINDOWS (dumpsys window windows)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6755
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsNoHeaderLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    .line 6756
    return-void
.end method

.method private dumpWindowsNoHeaderLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpAll"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Z",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    .line 6760
    .local p3, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/RootWindowContainer;->dumpWindowsNoHeader(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    .line 6762
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/16 v1, 0x20

    const/4 v2, 0x1

    if-nez v0, :cond_4a

    .line 6763
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6764
    const-string v0, "  Hiding System Alert Windows:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6765
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    .local v0, "i":I
    :goto_1f
    if-ltz v0, :cond_4a

    .line 6766
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 6767
    .local v3, "w":Lcom/android/server/wm/WindowState;
    const-string v4, "  #"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 6768
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 6769
    if-eqz p2, :cond_44

    .line 6770
    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6771
    const-string v4, "    "

    invoke-virtual {v3, p1, v4, v2}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_47

    .line 6773
    :cond_44
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6765
    .end local v3    # "w":Lcom/android/server/wm/WindowState;
    :goto_47
    add-int/lit8 v0, v0, -0x1

    goto :goto_1f

    .line 6777
    .end local v0    # "i":I
    :cond_4a
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_94

    .line 6778
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6779
    const-string v0, "  Remove pending for:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6780
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    .restart local v0    # "i":I
    :goto_61
    if-ltz v0, :cond_94

    .line 6781
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 6782
    .restart local v3    # "w":Lcom/android/server/wm/WindowState;
    if-eqz p3, :cond_73

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_91

    .line 6783
    :cond_73
    const-string v4, "  Remove #"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 6784
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 6785
    if-eqz p2, :cond_8e

    .line 6786
    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6787
    const-string v4, "    "

    invoke-virtual {v3, p1, v4, v2}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_91

    .line 6789
    :cond_8e
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6780
    .end local v3    # "w":Lcom/android/server/wm/WindowState;
    :cond_91
    :goto_91
    add-int/lit8 v0, v0, -0x1

    goto :goto_61

    .line 6794
    .end local v0    # "i":I
    :cond_94
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    if-eqz v0, :cond_da

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_da

    .line 6795
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6796
    const-string v0, "  Windows force removing:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6797
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    .restart local v0    # "i":I
    :goto_af
    if-ltz v0, :cond_da

    .line 6798
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 6799
    .restart local v3    # "w":Lcom/android/server/wm/WindowState;
    const-string v4, "  Removing #"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 6800
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 6801
    if-eqz p2, :cond_d4

    .line 6802
    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6803
    const-string v4, "    "

    invoke-virtual {v3, p1, v4, v2}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_d7

    .line 6805
    :cond_d4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6797
    .end local v3    # "w":Lcom/android/server/wm/WindowState;
    :goto_d7
    add-int/lit8 v0, v0, -0x1

    goto :goto_af

    .line 6809
    .end local v0    # "i":I
    :cond_da
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_124

    .line 6810
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6811
    const-string v0, "  Windows waiting to destroy their surface:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6812
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    .restart local v0    # "i":I
    :goto_f1
    if-ltz v0, :cond_124

    .line 6813
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 6814
    .restart local v3    # "w":Lcom/android/server/wm/WindowState;
    if-eqz p3, :cond_103

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_121

    .line 6815
    :cond_103
    const-string v4, "  Destroy #"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 6816
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 6817
    if-eqz p2, :cond_11e

    .line 6818
    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6819
    const-string v4, "    "

    invoke-virtual {v3, p1, v4, v2}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_121

    .line 6821
    :cond_11e
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6812
    .end local v3    # "w":Lcom/android/server/wm/WindowState;
    :cond_121
    :goto_121
    add-int/lit8 v0, v0, -0x1

    goto :goto_f1

    .line 6826
    .end local v0    # "i":I
    :cond_124
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_16e

    .line 6827
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6828
    const-string v0, "  Windows losing focus:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6829
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    .restart local v0    # "i":I
    :goto_13b
    if-ltz v0, :cond_16e

    .line 6830
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 6831
    .restart local v3    # "w":Lcom/android/server/wm/WindowState;
    if-eqz p3, :cond_14d

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16b

    .line 6832
    :cond_14d
    const-string v4, "  Losing #"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 6833
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 6834
    if-eqz p2, :cond_168

    .line 6835
    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6836
    const-string v4, "    "

    invoke-virtual {v3, p1, v4, v2}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_16b

    .line 6838
    :cond_168
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6829
    .end local v3    # "w":Lcom/android/server/wm/WindowState;
    :cond_16b
    :goto_16b
    add-int/lit8 v0, v0, -0x1

    goto :goto_13b

    .line 6843
    .end local v0    # "i":I
    :cond_16e
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1b8

    .line 6844
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6845
    const-string v0, "  Windows waiting to resize:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6846
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    .restart local v0    # "i":I
    :goto_185
    if-ltz v0, :cond_1b8

    .line 6847
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 6848
    .restart local v3    # "w":Lcom/android/server/wm/WindowState;
    if-eqz p3, :cond_197

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b5

    .line 6849
    :cond_197
    const-string v4, "  Resizing #"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 6850
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 6851
    if-eqz p2, :cond_1b2

    .line 6852
    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6853
    const-string v4, "    "

    invoke-virtual {v3, p1, v4, v2}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_1b5

    .line 6855
    :cond_1b2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6846
    .end local v3    # "w":Lcom/android/server/wm/WindowState;
    :cond_1b5
    :goto_1b5
    add-int/lit8 v0, v0, -0x1

    goto :goto_185

    .line 6860
    .end local v0    # "i":I
    :cond_1b8
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1ea

    .line 6861
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6862
    const-string v0, "  Clients waiting for these windows to be drawn:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6863
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    .restart local v0    # "i":I
    :goto_1cf
    if-ltz v0, :cond_1ea

    .line 6864
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 6865
    .local v2, "win":Lcom/android/server/wm/WindowState;
    const-string v3, "  Waiting #"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 6863
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_1cf

    .line 6868
    .end local v0    # "i":I
    :cond_1ea
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6869
    const-string v0, "  mGlobalConfiguration="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6870
    const-string v0, "  mHasPermanentDpad="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mHasPermanentDpad:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6871
    const-string v0, "  mCurrentFocus="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6872
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eq v0, v1, :cond_21f

    .line 6873
    const-string v0, "  mLastFocus="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6875
    :cond_21f
    const-string v0, "  mFocusedApp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6876
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_237

    .line 6877
    const-string v0, "  mInputMethodTarget="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6879
    :cond_237
    const-string v0, "  mInTouchMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6880
    const-string v0, "  mLastDisplayFreezeDuration="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6881
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastDisplayFreezeDuration:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 6882
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    if-eqz v0, :cond_25a

    .line 6883
    const-string v0, " due to "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6884
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 6886
    :cond_25a
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6887
    const-string v0, "  mLastWakeLockHoldingWindow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockHoldingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 6888
    const-string v0, " mLastWakeLockObscuringWindow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockObscuringWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 6889
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 6891
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const-string v1, "  "

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/InputMonitor;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 6892
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    const-string v1, "  "

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/UnknownAppVisibilityController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 6893
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    const-string v1, "  "

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/TaskSnapshotController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 6895
    if-eqz p2, :cond_3b9

    .line 6896
    const-string v0, "  mSystemDecorLayer="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mSystemDecorLayer:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6897
    const-string v0, " mScreenRect="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6898
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastStatusBarVisibility:I

    if-eqz v0, :cond_2b5

    .line 6899
    const-string v0, "  mLastStatusBarVisibility=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6900
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastStatusBarVisibility:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6902
    :cond_2b5
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_2c3

    .line 6903
    const-string v0, "  mInputMethodWindow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6905
    :cond_2c3
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    const-string v1, "  "

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/WindowSurfacePlacer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 6906
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    const-string v1, "  "

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/WallpaperController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 6907
    const-string v0, "  mSystemBooted="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6908
    const-string v0, " mDisplayEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6910
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->dumpLayoutNeededDisplayIds(Ljava/io/PrintWriter;)V

    .line 6912
    const-string v0, "  mTransactionSequence="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6913
    const-string v0, "  mDisplayFrozen="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6914
    const-string v0, " windows="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6915
    const-string v0, " client="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6916
    const-string v0, " apps="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6917
    const-string v0, " waitingForConfig="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6918
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 6919
    .local v0, "defaultDisplayContent":Lcom/android/server/wm/DisplayContent;
    const-string v1, "  mRotation="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 6920
    const-string v1, " mAltOrientation="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6921
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getAltOrientation()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 6922
    const-string v1, "  mLastWindowForcedOrientation="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6923
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getLastWindowForcedOrientation()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 6924
    const-string v1, " mLastOrientation="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6925
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getLastOrientation()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 6926
    const-string v1, "  mDeferredRotationPauseCount="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 6927
    const-string v1, "  Animation settings: disabled="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mAnimationsDisabled:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 6928
    const-string v1, " window="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    .line 6929
    const-string v1, " transition="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    .line 6930
    const-string v1, " animator="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(F)V

    .line 6931
    const-string v1, "  mSkipAppTransitionAnimation="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 6932
    const-string v1, "  mLayoutToAnim:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6933
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    const-string v2, "    "

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/AppTransition;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 6934
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    if-eqz v1, :cond_3b9

    .line 6935
    const-string v1, "  mRecentsAnimationController="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6936
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    const-string v2, "    "

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/RecentsAnimationController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 6939
    .end local v0    # "defaultDisplayContent":Lcom/android/server/wm/DisplayContent;
    :cond_3b9
    return-void
.end method

.method static excludeWindowTypeFromTapOutTask(I)Z
    .registers 2
    .param p0, "windowType"    # I

    .line 1290
    const/16 v0, 0x7d0

    if-eq p0, v0, :cond_e

    const/16 v0, 0x7dc

    if-eq p0, v0, :cond_e

    const/16 v0, 0x7e3

    if-eq p0, v0, :cond_e

    .line 1296
    const/4 v0, 0x0

    return v0

    .line 1294
    :cond_e
    const/4 v0, 0x1

    return v0
.end method

.method private findWindow(I)Lcom/android/server/wm/WindowState;
    .registers 5
    .param p1, "hashCode"    # I

    .line 4751
    const/4 v0, -0x1

    if-ne p1, v0, :cond_8

    .line 4753
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    return-object v0

    .line 4756
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4757
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$WindowManagerService$r4TV5nJBkjzvUCeyV6sY2bt-bEA;

    invoke-direct {v2, p1}, Lcom/android/server/wm/-$$Lambda$WindowManagerService$r4TV5nJBkjzvUCeyV6sY2bt-bEA;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 4758
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method static fixScale(F)F
    .registers 2
    .param p0, "scale"    # F

    .line 3418
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_7

    const/4 p0, 0x0

    goto :goto_f

    .line 3419
    :cond_7
    const/high16 v0, 0x41a00000    # 20.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_f

    const/high16 p0, 0x41a00000    # 20.0f

    .line 3420
    :cond_f
    :goto_f
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method private getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;
    .registers 6
    .param p1, "displayId"    # I

    .line 1725
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1729
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_17

    .line 1730
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    .line 1732
    .local v1, "display":Landroid/view/Display;
    if-eqz v1, :cond_17

    .line 1733
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/server/wm/RootWindowContainer;->createDisplayContent(Landroid/view/Display;Lcom/android/server/wm/DisplayWindowController;)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1737
    .end local v1    # "display":Landroid/view/Display;
    :cond_17
    return-object v0
.end method

.method private getFocusedWindow()Lcom/android/server/wm/WindowState;
    .registers 3

    .line 4841
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4842
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindowLocked()Lcom/android/server/wm/WindowState;

    move-result-object v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 4843
    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private getFocusedWindowLocked()Lcom/android/server/wm/WindowState;
    .registers 2

    .line 4847
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method private getForcedDisplayDensityForUserLocked(I)I
    .registers 5
    .param p1, "userId"    # I

    .line 5816
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_density_forced"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 5818
    .local v0, "densityStr":Ljava/lang/String;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1c

    .line 5819
    :cond_14
    const-string/jumbo v1, "ro.config.density_override"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5821
    :cond_1c
    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2a

    .line 5823
    :try_start_24
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_28
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_28} :catch_29

    return v1

    .line 5824
    :catch_29
    move-exception v1

    .line 5829
    :cond_2a
    sget v1, Lcom/android/server/wm/WindowManagerServiceInjector;->sMiuiDisplayDensity:I

    return v1
.end method

.method static getInstance()Lcom/android/server/wm/WindowManagerService;
    .registers 1

    .line 1035
    sget-object v0, Lcom/android/server/wm/WindowManagerService;->sInstance:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I
    .registers 7
    .param p0, "tokens"    # [Ljava/lang/String;
    .param p1, "index"    # I
    .param p2, "defUnits"    # I
    .param p3, "defDps"    # I
    .param p4, "dm"    # Landroid/util/DisplayMetrics;

    .line 6366
    array-length v0, p0

    if-ge p1, v0, :cond_13

    .line 6367
    aget-object v0, p0, p1

    .line 6368
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_13

    .line 6370
    :try_start_d
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_11} :catch_12

    .line 6371
    .local v1, "val":I
    return v1

    .line 6372
    .end local v1    # "val":I
    :catch_12
    move-exception v1

    .line 6376
    .end local v0    # "str":Ljava/lang/String;
    :cond_13
    if-nez p2, :cond_16

    .line 6377
    return p3

    .line 6379
    :cond_16
    int-to-float v0, p3

    invoke-static {p2, v0, p4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 6380
    .local v0, "val":I
    return v0
.end method

.method private initMiuiGestureController()V
    .registers 3

    .line 8222
    new-instance v0, Lcom/android/server/wm/MiuiGestureController;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/MiuiGestureController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/PointerEventDispatcher;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mMiuiGestureController:Lcom/android/server/wm/MiuiGestureController;

    .line 8223
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mMiuiGestureController:Lcom/android/server/wm/MiuiGestureController;

    new-instance v1, Lcom/android/server/wm/WindowManagerService$12;

    invoke-direct {v1, p0}, Lcom/android/server/wm/WindowManagerService$12;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MiuiGestureController;->registerGestureCallback(Lcom/android/server/wm/MiuiGestureController$GestureCallback;)V

    .line 8342
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mMiuiGestureController:Lcom/android/server/wm/MiuiGestureController;

    sget-object v1, Lcom/android/server/wm/-$$Lambda$WindowManagerService$-UMxxP3LuSdsllS1GAfki53bHVw;->INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowManagerService$-UMxxP3LuSdsllS1GAfki53bHVw;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MiuiGestureController;->registerScCallback(Lcom/android/server/wm/MiuiGestureController$SurfaceControlCallback;)V

    .line 8351
    return-void
.end method

.method private initPolicy()V
    .registers 5

    .line 1048
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/WindowManagerService$4;

    invoke-direct {v1, p0}, Lcom/android/server/wm/WindowManagerService$4;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 1055
    return-void
.end method

.method private isSystemSecure()Z
    .registers 4

    .line 4463
    const-string v0, "1"

    const-string/jumbo v1, "ro.secure"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "0"

    const-string/jumbo v1, "ro.debuggable"

    const-string v2, "0"

    .line 4464
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    .line 4463
    :goto_25
    return v0
.end method

.method public static synthetic lambda$XZ-U3HlCFtHp_gydNmNMeRmQMCI(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;
    .registers 2

    new-instance v0, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v0, p0}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    return-object v0
.end method

.method static synthetic lambda$doDump$6(Ljava/io/PrintWriter;Lcom/android/server/wm/WindowState;)V
    .registers 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 7125
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7126
    return-void
.end method

.method static synthetic lambda$dumpWindows$5(ZZLjava/util/ArrayList;Lcom/android/server/wm/WindowState;)V
    .registers 5
    .param p0, "visibleOnly"    # Z
    .param p1, "appsOnly"    # Z
    .param p2, "windows"    # Ljava/util/ArrayList;
    .param p3, "w"    # Lcom/android/server/wm/WindowState;

    .line 6953
    if-eqz p0, :cond_a

    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_a
    if-eqz p1, :cond_10

    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_13

    .line 6955
    :cond_10
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6957
    :cond_13
    return-void
.end method

.method static synthetic lambda$findWindow$4(ILcom/android/server/wm/WindowState;)Z
    .registers 3
    .param p0, "hashCode"    # I
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 4757
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, p0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static synthetic lambda$hBnABSAsqXWvQ0zKwHWE4BZ3Mc0()Landroid/view/SurfaceControl$Transaction;
    .registers 1

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$initMiuiGestureController$8(Lcom/android/server/wm/AppWindowToken;Landroid/view/SurfaceControl$Transaction;F)V
    .registers 4
    .param p0, "aToken"    # Lcom/android/server/wm/AppWindowToken;
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "radius"    # F

    .line 8343
    if-eqz p0, :cond_e

    .line 8344
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_b

    .line 8345
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AppWindowToken;->setRoundCornerForAppTransition(Landroid/view/SurfaceControl$Transaction;F)V

    goto :goto_e

    .line 8347
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWindowToken;->resetRoundCornerForAppTransition(Landroid/view/SurfaceControl$Transaction;)V

    .line 8350
    :cond_e
    :goto_e
    return-void
.end method

.method static synthetic lambda$main$0(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZLcom/android/server/policy/WindowManagerPolicy;)V
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "im"    # Lcom/android/server/input/InputManagerService;
    .param p2, "haveInputMethods"    # Z
    .param p3, "showBootMsgs"    # Z
    .param p4, "onlyCore"    # Z
    .param p5, "policy"    # Lcom/android/server/policy/WindowManagerPolicy;

    .line 1042
    new-instance v7, Lcom/android/server/wm/WindowManagerService;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/WindowManagerService;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZLcom/android/server/policy/WindowManagerPolicy;)V

    sput-object v7, Lcom/android/server/wm/WindowManagerService;->sInstance:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method

.method public static synthetic lambda$notifyKeyguardFlagsChanged$1(Lcom/android/server/wm/WindowManagerService;Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 3202
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_e
    move-exception v1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method static synthetic lambda$requestAssistScreenshot$2(Landroid/app/IAssistDataReceiver;Landroid/graphics/Bitmap;)V
    .registers 3
    .param p0, "receiver"    # Landroid/app/IAssistDataReceiver;
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .line 4112
    :try_start_0
    invoke-interface {p0, p1}, Landroid/app/IAssistDataReceiver;->onHandleAssistScreenshot(Landroid/graphics/Bitmap;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 4114
    goto :goto_5

    .line 4113
    :catch_4
    move-exception v0

    .line 4115
    :goto_5
    return-void
.end method

.method public static synthetic lambda$setLastFrame$9(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowState;)V
    .registers 3
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 8415
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v0, :cond_7

    .line 8416
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mIsLastFrameWin:Lcom/android/server/wm/WindowState;

    .line 8417
    return-void

    .line 8419
    :cond_7
    return-void
.end method

.method static synthetic lambda$setScreenProjectionList$10(Ljava/util/ArrayList;Lcom/android/server/wm/WindowState;)V
    .registers 2
    .param p0, "windows"    # Ljava/util/ArrayList;
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 8441
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8442
    return-void
.end method

.method static synthetic lambda$updateNonSystemOverlayWindowsVisibilityIfNeeded$7(ZLcom/android/server/wm/WindowState;)V
    .registers 2
    .param p0, "hideSystemAlertWindows"    # Z
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 8072
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowState;->setForceHideNonSystemOverlayWindowIfNeeded(Z)V

    .line 8073
    return-void
.end method

.method static synthetic lambda$viewServerListWindows$3(Ljava/util/ArrayList;Lcom/android/server/wm/WindowState;)V
    .registers 2
    .param p0, "windows"    # Ljava/util/ArrayList;
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 4529
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4530
    return-void
.end method

.method static logSurface(Landroid/view/SurfaceControl;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "s"    # Landroid/view/SurfaceControl;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 1950
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  SURFACE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1951
    .local v0, "str":Ljava/lang/String;
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1952
    return-void
.end method

.method static logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V
    .registers 5
    .param p0, "w"    # Lcom/android/server/wm/WindowState;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "withStackTrace"    # Z

    .line 1941
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  SURFACE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1942
    .local v0, "str":Ljava/lang/String;
    if-eqz p2, :cond_21

    .line 1943
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Lcom/android/server/wm/WindowManagerService;->logWithStack(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26

    .line 1945
    :cond_21
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    :goto_26
    return-void
.end method

.method static logWithStack(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .line 1955
    const/4 v0, 0x0

    .line 1960
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {p0, p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1961
    return-void
.end method

.method public static main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZLcom/android/server/policy/WindowManagerPolicy;)Lcom/android/server/wm/WindowManagerService;
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "im"    # Lcom/android/server/input/InputManagerService;
    .param p2, "haveInputMethods"    # Z
    .param p3, "showBootMsgs"    # Z
    .param p4, "onlyCore"    # Z
    .param p5, "policy"    # Lcom/android/server/policy/WindowManagerPolicy;

    .line 1041
    invoke-static {}, Lcom/android/server/DisplayThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v8, Lcom/android/server/wm/-$$Lambda$WindowManagerService$qOaUiWHWefHk1N5K-T4WND2mknQ;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/-$$Lambda$WindowManagerService$qOaUiWHWefHk1N5K-T4WND2mknQ;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZLcom/android/server/policy/WindowManagerPolicy;)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v8, v1, v2}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 1044
    sget-object v0, Lcom/android/server/wm/WindowManagerService;->sInstance:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method private notifyFocusChanged()V
    .registers 5

    .line 4737
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4738
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 4739
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4741
    :cond_13
    :try_start_13
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/server/wm/WindowManagerService$WindowChangeListener;

    .line 4742
    .local v1, "windowChangeListeners":[Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/wm/WindowManagerService$WindowChangeListener;

    move-object v1, v2

    .line 4743
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4744
    array-length v0, v1

    .line 4745
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2a
    if-ge v2, v0, :cond_34

    .line 4746
    aget-object v3, v1, v2

    invoke-interface {v3}, Lcom/android/server/wm/WindowManagerService$WindowChangeListener;->focusChanged()V

    .line 4745
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 4748
    .end local v2    # "i":I
    :cond_34
    return-void

    .line 4743
    .end local v0    # "N":I
    .end local v1    # "windowChangeListeners":[Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
    :catchall_35
    move-exception v1

    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private notifyWindowsChanged()V
    .registers 5

    .line 4722
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4723
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 4724
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4726
    :cond_13
    :try_start_13
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/server/wm/WindowManagerService$WindowChangeListener;

    .line 4727
    .local v1, "windowChangeListeners":[Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/wm/WindowManagerService$WindowChangeListener;

    move-object v1, v2

    .line 4728
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4729
    array-length v0, v1

    .line 4730
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2a
    if-ge v2, v0, :cond_34

    .line 4731
    aget-object v3, v1, v2

    invoke-interface {v3}, Lcom/android/server/wm/WindowManagerService$WindowChangeListener;->windowsChanged()V

    .line 4730
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 4733
    .end local v2    # "i":I
    :cond_34
    return-void

    .line 4728
    .end local v0    # "N":I
    .end local v1    # "windowChangeListeners":[Lcom/android/server/wm/WindowManagerService$WindowChangeListener;
    :catchall_35
    move-exception v1

    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private performEnableScreen()V
    .registers 9

    .line 3744
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3753
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mOnlyCore:Z

    if-eqz v1, :cond_1e

    const-string v1, ""

    const-string/jumbo v2, "vold.encrypt_progress"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 3754
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_e9

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3758
    :cond_1e
    :try_start_1e
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v1, :cond_27

    .line 3759
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_e9

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3761
    :cond_27
    :try_start_27
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-nez v1, :cond_34

    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    if-nez v1, :cond_34

    .line 3762
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_e9

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3765
    :cond_34
    :try_start_34
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    if-nez v1, :cond_45

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy;->canDismissBootAnimation()Z

    move-result v1

    if-nez v1, :cond_45

    .line 3766
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_34 .. :try_end_41} :catchall_e9

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3770
    :cond_45
    :try_start_45
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mForceDisplayEnabled:Z

    if-nez v1, :cond_58

    .line 3772
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->checkWaitingForWindows()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 3773
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_45 .. :try_end_54} :catchall_e9

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3776
    :cond_58
    :try_start_58
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mBootAnimationStopped:Z

    const-wide/16 v2, 0x20

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_6f

    .line 3777
    const-string v1, "Stop bootanim"

    invoke-static {v2, v3, v1, v5}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 3781
    const-string/jumbo v1, "service.bootanim.exit"

    const-string v6, "1"

    invoke-static {v1, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3782
    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mBootAnimationStopped:Z

    .line 3785
    :cond_6f
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mForceDisplayEnabled:Z

    if-nez v1, :cond_7e

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->checkBootAnimationCompleteLocked()Z

    move-result v1

    if-nez v1, :cond_7e

    .line 3787
    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_58 .. :try_end_7a} :catchall_e9

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3791
    :cond_7e
    :try_start_7e
    const-string v1, "SurfaceFlinger"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 3792
    .local v1, "surfaceFlinger":Landroid/os/IBinder;
    if-eqz v1, :cond_9d

    .line 3793
    const-string v6, "WindowManager"

    const-string v7, "******* TELLING SURFACE FLINGER WE ARE BOOTED!"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3794
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 3795
    .local v6, "data":Landroid/os/Parcel;
    const-string v7, "android.ui.ISurfaceComposer"

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3796
    const/4 v7, 0x0

    invoke-interface {v1, v4, v6, v7, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3798
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V
    :try_end_9d
    .catch Landroid/os/RemoteException; {:try_start_7e .. :try_end_9d} :catch_9e
    .catchall {:try_start_7e .. :try_end_9d} :catchall_e9

    .line 3802
    .end local v1    # "surfaceFlinger":Landroid/os/IBinder;
    .end local v6    # "data":Landroid/os/Parcel;
    :cond_9d
    goto :goto_a6

    .line 3800
    :catch_9e
    move-exception v1

    .line 3801
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_9f
    const-string v6, "WindowManager"

    const-string v7, "Boot completed: SurfaceFlinger is dead!"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3804
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_a6
    const/16 v1, 0x791f

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-static {v1, v6, v7}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 3805
    const-string v1, "Stop bootanim"

    invoke-static {v2, v3, v1, v5}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 3806
    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    .line 3807
    const-string v1, "WindowManager"

    const-string v2, "******************** ENABLING SCREEN!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3810
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mEventDispatchingEnabled:Z

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InputMonitor;->setEventDispatchingLw(Z)V

    .line 3811
    monitor-exit v0
    :try_end_c5
    .catchall {:try_start_9f .. :try_end_c5} :catchall_e9

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3814
    :try_start_c8
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->bootAnimationComplete()V
    :try_end_cd
    .catch Landroid/os/RemoteException; {:try_start_c8 .. :try_end_cd} :catch_ce

    .line 3816
    goto :goto_cf

    .line 3815
    :catch_ce
    move-exception v0

    .line 3818
    :goto_cf
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->enableMIUIWatermark:Z

    if-eqz v0, :cond_e0

    .line 3819
    const-string v0, "WindowManager"

    const-string v1, "initwatermark after boot"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3820
    invoke-static {p0}, Lcom/android/server/wm/MIUIWatermark;->initWatermark(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/MIUIWatermark;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mMIUIWatermark:Lcom/android/server/wm/MIUIWatermark;

    .line 3825
    :cond_e0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->enableScreenAfterBoot()V

    .line 3828
    invoke-direct {p0, v5, v5}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(ZZ)V

    .line 3829
    return-void

    .line 3811
    :catchall_e9
    move-exception v1

    :try_start_ea
    monitor-exit v0
    :try_end_eb
    .catchall {:try_start_ea .. :try_end_eb} :catchall_e9

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private prepareNoneTransitionForRelaunching(Lcom/android/server/wm/AppWindowToken;)V
    .registers 3
    .param p1, "atoken"    # Lcom/android/server/wm/AppWindowToken;

    .line 1795
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1796
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1797
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 1798
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 1800
    :cond_1e
    return-void
.end method

.method private prepareWindowReplacementTransition(Lcom/android/server/wm/AppWindowToken;)Z
    .registers 10
    .param p1, "atoken"    # Lcom/android/server/wm/AppWindowToken;

    .line 1770
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->clearAllDrawn()V

    .line 1771
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getReplacingWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 1772
    .local v0, "replacedWindow":Lcom/android/server/wm/WindowState;
    if-nez v0, :cond_b

    .line 1775
    const/4 v1, 0x0

    return v1

    .line 1779
    :cond_b
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    .line 1782
    .local v1, "frame":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1783
    const/16 v2, 0x12

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 1784
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    .line 1785
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 1784
    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionClipReveal(IIII)V

    .line 1786
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 1787
    return v3
.end method

.method private static queryWideColorGamutSupport()Z
    .registers 3

    .line 4963
    :try_start_0
    invoke-static {}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;->getService()Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;

    move-result-object v0

    .line 4964
    .local v0, "surfaceFlinger":Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;
    invoke-interface {v0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;->hasWideColorDisplay()Landroid/hardware/configstore/V1_0/OptionalBool;

    move-result-object v1

    .line 4965
    .local v1, "hasWideColor":Landroid/hardware/configstore/V1_0/OptionalBool;
    if-eqz v1, :cond_d

    .line 4966
    iget-boolean v2, v1, Landroid/hardware/configstore/V1_0/OptionalBool;->value:Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_e

    return v2

    .line 4970
    .end local v0    # "surfaceFlinger":Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;
    .end local v1    # "hasWideColor":Landroid/hardware/configstore/V1_0/OptionalBool;
    :cond_d
    goto :goto_f

    .line 4968
    :catch_e
    move-exception v0

    .line 4971
    :goto_f
    const/4 v0, 0x0

    return v0
.end method

.method private readForcedDisplayPropertiesLocked(Lcom/android/server/wm/DisplayContent;)V
    .registers 10
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 5645
    invoke-static {p1}, Lcom/android/server/wm/WindowManagerServiceInjector;->initializeMiuiResolutionLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 5647
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_size_forced"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5649
    .local v0, "sizeStr":Ljava/lang/String;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1f

    .line 5650
    :cond_17
    const-string/jumbo v1, "ro.config.size_override"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5652
    :cond_1f
    const/4 v1, 0x0

    if-eqz v0, :cond_76

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_76

    .line 5653
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 5654
    .local v3, "pos":I
    if-lez v3, :cond_76

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-ne v2, v3, :cond_76

    .line 5657
    :try_start_36
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 5658
    .local v2, "width":I
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 5659
    .local v4, "height":I
    iget v5, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    if-ne v5, v2, :cond_50

    iget v5, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    if-eq v5, v4, :cond_74

    .line 5661
    :cond_50
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FORCED DISPLAY SIZE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5662
    iget v5, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {p1, v2, v4, v5}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(III)V
    :try_end_74
    .catch Ljava/lang/NumberFormatException; {:try_start_36 .. :try_end_74} :catch_75

    .line 5666
    :cond_74
    goto :goto_76

    .line 5665
    .end local v2    # "width":I
    .end local v4    # "height":I
    :catch_75
    move-exception v2

    .line 5671
    .end local v3    # "pos":I
    :cond_76
    :goto_76
    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    invoke-direct {p0, v2}, Lcom/android/server/wm/WindowManagerService;->getForcedDisplayDensityForUserLocked(I)I

    move-result v2

    .line 5672
    .local v2, "density":I
    if-eqz v2, :cond_80

    .line 5673
    iput v2, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 5677
    :cond_80
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "display_scaling_force"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 5679
    .local v1, "mode":I
    if-eqz v1, :cond_98

    .line 5680
    const-string v3, "WindowManager"

    const-string v4, "FORCED DISPLAY SCALING DISABLED"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5681
    const/4 v3, 0x1

    iput-boolean v3, p1, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    .line 5683
    :cond_98
    return-void
.end method

.method static resetPriorityAfterLockedSection()V
    .registers 1

    .line 944
    sget-object v0, Lcom/android/server/wm/WindowManagerService;->sThreadPriorityBooster:Lcom/android/server/wm/WindowManagerThreadPriorityBooster;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->reset()V

    .line 945
    return-void
.end method

.method private setAnimatorDurationScale(F)V
    .registers 2
    .param p1, "scale"    # F

    .line 3466
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    .line 3467
    invoke-static {p1}, Landroid/animation/ValueAnimator;->setDurationScale(F)V

    .line 3468
    return-void
.end method

.method private setForcedDisplayDensityLocked(Lcom/android/server/wm/DisplayContent;I)V
    .registers 3
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "density"    # I

    .line 5840
    iput p2, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 5841
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 5842
    return-void
.end method

.method private setForcedDisplayScalingModeLocked(Lcom/android/server/wm/DisplayContent;I)V
    .registers 6
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "mode"    # I

    .line 5638
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using display scaling mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_11

    const-string v2, "auto"

    goto :goto_14

    :cond_11
    const-string/jumbo v2, "off"

    :goto_14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5639
    if-eqz p2, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    iput-boolean v0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    .line 5640
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 5641
    return-void
.end method

.method private setForcedDisplaySizeLocked(Lcom/android/server/wm/DisplayContent;II)V
    .registers 7
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 5687
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using new display size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5688
    iget v0, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {p1, p2, p3, v0}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(III)V

    .line 5689
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 5690
    return-void
.end method

.method private setOverscanLocked(Lcom/android/server/wm/DisplayContent;IIII)V
    .registers 14
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 5902
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 5903
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iput p2, v0, Landroid/view/DisplayInfo;->overscanLeft:I

    .line 5904
    iput p3, v0, Landroid/view/DisplayInfo;->overscanTop:I

    .line 5905
    iput p4, v0, Landroid/view/DisplayInfo;->overscanRight:I

    .line 5906
    iput p5, v0, Landroid/view/DisplayInfo;->overscanBottom:I

    .line 5908
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplaySettings:Lcom/android/server/wm/DisplaySettings;

    iget-object v2, v0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iget-object v3, v0, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/DisplaySettings;->setOverscanLocked(Ljava/lang/String;Ljava/lang/String;IIII)V

    .line 5910
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplaySettings:Lcom/android/server/wm/DisplaySettings;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplaySettings;->writeSettingsLocked()V

    .line 5912
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 5913
    return-void
.end method

.method private setSlideCoverState(Landroid/os/Parcel;Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .param p3, "flags"    # I

    .line 8354
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 8355
    const-string v0, "android.permission.INJECT_EVENTS"

    const-string/jumbo v1, "setSlideCoverState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 8357
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires INJECT_EVENTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeException(Ljava/lang/Exception;)V

    goto :goto_2f

    .line 8359
    :cond_1b
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    instance-of v0, v0, Lcom/android/server/policy/PhoneWindowManager;

    if-eqz v0, :cond_2c

    .line 8360
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->setSlideCoverState(I)V

    .line 8362
    :cond_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 8364
    :goto_2f
    return-void
.end method

.method private setWindowOpaqueLocked(Landroid/os/IBinder;Z)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "isOpaque"    # Z

    .line 3078
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 3079
    .local v0, "wtoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_13

    .line 3080
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 3081
    .local v1, "win":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_13

    .line 3082
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2, p2}, Lcom/android/server/wm/WindowStateAnimator;->setOpaqueLocked(Z)V

    .line 3085
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    :cond_13
    return-void
.end method

.method private showStrictModeViolation(II)V
    .registers 7
    .param p1, "arg"    # I
    .param p2, "pid"    # I

    .line 4037
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 4038
    .local v0, "on":Z
    :goto_5
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4041
    if-eqz v0, :cond_1a

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, p2}, Lcom/android/server/wm/RootWindowContainer;->canShowStrictModeViolation(I)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 4042
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4049
    :cond_1a
    :try_start_1a
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_3f

    .line 4052
    :try_start_1d
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    if-nez v2, :cond_2c

    .line 4053
    new-instance v2, Lcom/android/server/wm/StrictModeFlash;

    .line 4054
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/wm/StrictModeFlash;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    .line 4056
    :cond_2c
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/StrictModeFlash;->setVisibility(Z)V
    :try_end_31
    .catchall {:try_start_1d .. :try_end_31} :catchall_3a

    .line 4058
    :try_start_31
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 4061
    nop

    .line 4062
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4063
    return-void

    .line 4058
    :catchall_3a
    move-exception v2

    :try_start_3b
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v2

    .line 4062
    :catchall_3f
    move-exception v2

    monitor-exit v1
    :try_end_41
    .catchall {:try_start_3b .. :try_end_41} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method private tryStartExitingAnimation(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowStateAnimator;ZZ)Z
    .registers 16
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;
    .param p3, "isDefaultDisplay"    # Z
    .param p4, "focusMayChange"    # Z

    .line 2437
    const/4 v0, 0x2

    .line 2438
    .local v0, "transit":I
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_9

    .line 2439
    const/4 v0, 0x5

    .line 2441
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isWinVisibleLw()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1c

    invoke-virtual {p2, v0, v2}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 2442
    move p4, p3

    .line 2443
    iput-boolean v3, p1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    goto/16 :goto_a8

    .line 2444
    :cond_1c
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 2447
    iput-boolean v3, p1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    goto/16 :goto_a8

    .line 2448
    :cond_28
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 2452
    iput-boolean v3, p1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    goto/16 :goto_a8

    .line 2454
    :cond_38
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-ne v1, p1, :cond_40

    .line 2455
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->setInputMethodWindowLocked(Lcom/android/server/wm/WindowState;)V

    .line 2457
    :cond_40
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_49

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    goto :goto_4a

    :cond_49
    move v1, v3

    .line 2464
    .local v1, "stopped":Z
    :goto_4a
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_78

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v4}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowingAndNotOccluded()Z

    move-result v4

    if-eqz v4, :cond_78

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 2465
    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->isOnTop()Z

    move-result v4

    if-eqz v4, :cond_78

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->isActivityTypeHome()Z

    move-result v4

    if-nez v4, :cond_78

    .line 2466
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hasDrawnLw()Z

    move-result v4

    if-eqz v4, :cond_78

    .line 2467
    iput-boolean v2, p1, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 2468
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2469
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mSaveSurfaceByKeyguardToken:Lcom/android/server/wm/AppWindowToken;

    goto :goto_a8

    .line 2471
    :cond_78
    iput-boolean v3, p1, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 2474
    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v3, :cond_a5

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_a5

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a5

    .line 2475
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2476
    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x1

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v10, v3, Lcom/android/server/wm/AppWindowToken;->mVoiceInteraction:Z

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/AppWindowToken;->setVisibility(Landroid/view/WindowManager$LayoutParams;ZIZZ)Z

    .line 2477
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 2479
    :cond_a5
    invoke-virtual {p1, v2, v1}, Lcom/android/server/wm/WindowState;->destroySurface(ZZ)Z

    .line 2484
    .end local v1    # "stopped":Z
    :goto_a8
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v1, :cond_b7

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    if-nez v1, :cond_b7

    .line 2485
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/wm/AccessibilityController;->onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    .line 2492
    :cond_b7
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 2493
    invoke-virtual {p2}, Lcom/android/server/wm/WindowStateAnimator;->detachChildren()V

    .line 2494
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 2496
    return p4
.end method

.method private updateAppOpsState()V
    .registers 3

    .line 1935
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1936
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->updateAppOpsState()V

    .line 1937
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1938
    return-void

    .line 1937
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private updateCircularDisplayMaskIfNeeded()V
    .registers 6

    .line 3934
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 3935
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 3938
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_22
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3939
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    .line 3940
    .local v1, "currentUserId":I
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_4d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3944
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "accessibility_display_inversion_enabled"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 3946
    .local v0, "inversionState":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_3d

    move v2, v3

    nop

    .line 3947
    .local v2, "showMask":I
    :cond_3d
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v4, 0x23

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 3948
    .local v3, "m":Landroid/os/Message;
    iput v2, v3, Landroid/os/Message;->arg1:I

    .line 3949
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .end local v0    # "inversionState":I
    .end local v1    # "currentUserId":I
    .end local v2    # "showMask":I
    .end local v3    # "m":Landroid/os/Message;
    goto :goto_53

    .line 3940
    :catchall_4d
    move-exception v1

    :try_start_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 3951
    :cond_53
    :goto_53
    return-void
.end method

.method private updateHiddenWhileSuspendedState(Landroid/util/ArraySet;Z)V
    .registers 5
    .param p2, "suspended"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 1929
    .local p1, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1930
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->updateHiddenWhileSuspendedState(Landroid/util/ArraySet;Z)V

    .line 1931
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1932
    return-void

    .line 1931
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private updateOrientationFromAppTokensLocked(Landroid/content/res/Configuration;Landroid/os/IBinder;IZ)Landroid/content/res/Configuration;
    .registers 10
    .param p1, "currentConfig"    # Landroid/content/res/Configuration;
    .param p2, "freezeThisOneIfNeeded"    # Landroid/os/IBinder;
    .param p3, "displayId"    # I
    .param p4, "forceUpdate"    # Z

    .line 2666
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-nez v0, :cond_6

    .line 2667
    const/4 v0, 0x0

    return-object v0

    .line 2669
    :cond_6
    const/4 v0, 0x0

    .line 2671
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {p0, p3, p4}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(IZ)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 2674
    if-eqz p2, :cond_20

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-boolean v1, v1, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    if-nez v1, :cond_20

    .line 2675
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .line 2676
    .local v1, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_20

    .line 2677
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->startFreezingScreen()V

    .line 2680
    .end local v1    # "atoken":Lcom/android/server/wm/AppWindowToken;
    :cond_20
    invoke-direct {p0, p3}, Lcom/android/server/wm/WindowManagerService;->computeNewConfigurationLocked(I)Landroid/content/res/Configuration;

    move-result-object v0

    goto :goto_62

    .line 2682
    :cond_25
    if-eqz p1, :cond_62

    .line 2688
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->unset()V

    .line 2689
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 2690
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 2691
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->computeScreenConfiguration(Landroid/content/res/Configuration;)V

    .line 2692
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v2

    if-eqz v2, :cond_62

    .line 2693
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    .line 2694
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 2695
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 2696
    .local v3, "anim":[I
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v4, v3}, Lcom/android/server/policy/WindowManagerPolicy;->selectRotationAnimationLw([I)V

    .line 2698
    const/4 v4, 0x0

    aget v4, v3, v4

    aget v2, v3, v2

    invoke-virtual {p0, v4, v2, v1}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(IILcom/android/server/wm/DisplayContent;)V

    .line 2699
    new-instance v2, Landroid/content/res/Configuration;

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v2, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object v0, v2

    .line 2703
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v3    # "anim":[I
    :cond_62
    :goto_62
    return-object v0
.end method

.method private updateRotationUnchecked(ZZ)V
    .registers 11
    .param p1, "alwaysSendConfiguration"    # Z
    .param p2, "forceRelayout"    # Z

    .line 4245
    const-string/jumbo v0, "updateRotation"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4247
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 4253
    .local v3, "origId":J
    :try_start_c
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_60

    :try_start_f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4254
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    .line 4255
    .local v5, "displayContent":Lcom/android/server/wm/DisplayContent;
    const-string/jumbo v6, "updateRotation: display"

    invoke-static {v1, v2, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4256
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->updateRotationUnchecked()Z

    move-result v6

    .line 4257
    .local v6, "rotationChanged":Z
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 4258
    if-eqz v6, :cond_27

    if-eqz p2, :cond_38

    .line 4259
    :cond_27
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 4260
    const-string/jumbo v7, "updateRotation: performSurfacePlacement"

    invoke-static {v1, v2, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4262
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 4263
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 4265
    :cond_38
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v7

    .line 4265
    .end local v5    # "displayContent":Lcom/android/server/wm/DisplayContent;
    move v5, v7

    .line 4266
    .local v5, "displayId":I
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_f .. :try_end_3e} :catchall_5a

    :try_start_3e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    move v0, v6

    .line 4268
    .end local v6    # "rotationChanged":Z
    .local v0, "rotationChanged":Z
    if-nez v0, :cond_46

    if-eqz p1, :cond_52

    .line 4269
    :cond_46
    const-string/jumbo v6, "updateRotation: sendNewConfiguration"

    invoke-static {v1, v2, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4270
    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration(I)V

    .line 4271
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_52
    .catchall {:try_start_3e .. :try_end_52} :catchall_60

    .line 4274
    .end local v0    # "rotationChanged":Z
    .end local v5    # "displayId":I
    :cond_52
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4275
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 4276
    nop

    .line 4277
    return-void

    .line 4266
    :catchall_5a
    move-exception v5

    :try_start_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    :try_start_5c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v5
    :try_end_60
    .catchall {:try_start_5c .. :try_end_60} :catchall_60

    .line 4274
    :catchall_60
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4275
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private updateStatusBarVisibilityLocked(I)Z
    .registers 4
    .param p1, "visibility"    # I

    .line 6482
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastDispatchedSystemUiVisibility:I

    if-ne v0, p1, :cond_6

    .line 6483
    const/4 v0, 0x0

    return v0

    .line 6485
    :cond_6
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastDispatchedSystemUiVisibility:I

    xor-int/2addr v0, p1

    and-int/lit8 v0, v0, 0x7

    not-int v1, p1

    and-int/2addr v0, v1

    .line 6492
    .local v0, "globalDiff":I
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mLastDispatchedSystemUiVisibility:I

    .line 6493
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/input/InputManagerService;->setSystemUiVisibility(I)V

    .line 6494
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/server/wm/DisplayContent;->updateSystemUiVisibility(II)V

    .line 6495
    const/4 v1, 0x1

    return v1
.end method

.method private updateTalkbackWatermark(Z)V
    .registers 4
    .param p1, "talkbackMode"    # Z

    .line 3898
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v1, Lcom/android/server/wm/WindowManagerService$10;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/WindowManagerService$10;-><init>(Lcom/android/server/wm/WindowManagerService;Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 3930
    return-void
.end method


# virtual methods
.method public addWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;Landroid/view/InputChannel;)I
    .registers 70
    .param p1, "session"    # Lcom/android/server/wm/Session;
    .param p2, "client"    # Landroid/view/IWindow;
    .param p3, "seq"    # I
    .param p4, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p5, "viewVisibility"    # I
    .param p6, "displayId"    # I
    .param p7, "outFrame"    # Landroid/graphics/Rect;
    .param p8, "outContentInsets"    # Landroid/graphics/Rect;
    .param p9, "outStableInsets"    # Landroid/graphics/Rect;
    .param p10, "outOutsets"    # Landroid/graphics/Rect;
    .param p11, "outDisplayCutout"    # Landroid/view/DisplayCutout$ParcelableWrapper;
    .param p12, "outInputChannel"    # Landroid/view/InputChannel;

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p4

    move/from16 v12, p6

    .line 1303
    move-object/from16 v11, p12

    const/4 v0, 0x1

    new-array v10, v0, [I

    .line 1304
    .local v10, "appOp":[I
    iget-object v1, v13, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, v15, v10}, Lcom/android/server/policy/WindowManagerPolicy;->checkAddPermission(Landroid/view/WindowManager$LayoutParams;[I)I

    move-result v16

    .line 1305
    .local v16, "res":I
    if-eqz v16, :cond_16

    .line 1306
    return v16

    .line 1309
    :cond_16
    iget-object v1, v13, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object v2, v13, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iget-object v3, v15, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget v4, v14, Lcom/android/server/wm/Session;->mUid:I

    invoke-static {v1, v2, v15, v3, v4}, Lcom/android/server/wm/WindowManagerServiceInjector;->adjustWindowParams(Landroid/content/Context;Landroid/app/AppOpsManager;Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;I)V

    .line 1312
    const/16 v17, 0x0

    .line 1313
    .local v17, "reportNewConfig":Z
    const/4 v1, 0x0

    .line 1315
    .local v1, "parentWindow":Lcom/android/server/wm/WindowState;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1316
    .local v7, "callingUid":I
    iget v6, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1318
    .local v6, "type":I
    invoke-virtual/range {p4 .. p4}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Lcom/android/server/wm/WindowManagerService;->mFocusingActivity:Ljava/lang/String;

    .line 1320
    iget-object v5, v13, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v5

    :try_start_37
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1321
    iget-boolean v2, v13, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-eqz v2, :cond_8ce

    .line 1325
    invoke-direct {v13, v12}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2
    :try_end_42
    .catchall {:try_start_37 .. :try_end_42} :catchall_8e0

    move-object v4, v2

    .line 1327
    .local v4, "displayContent":Lcom/android/server/wm/DisplayContent;
    const/16 v18, -0x9

    if-nez v4, :cond_74

    .line 1328
    :try_start_47
    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to add window to a display that does not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".  Aborting."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    monitor-exit v5
    :try_end_63
    .catchall {:try_start_47 .. :try_end_63} :catchall_67

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v18

    .line 1703
    .end local v4    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :catchall_67
    move-exception v0

    .end local v6    # "type":I
    .end local v7    # "callingUid":I
    .end local v10    # "appOp":[I
    .local v25, "appOp":[I
    .local v49, "type":I
    .local v52, "callingUid":I
    :goto_68
    move-object/from16 v23, v5

    move/from16 v49, v6

    move/from16 v52, v7

    move-object/from16 v25, v10

    move-object v14, v11

    move v3, v12

    goto/16 :goto_8eb

    .line 1332
    .end local v25    # "appOp":[I
    .end local v49    # "type":I
    .end local v52    # "callingUid":I
    .restart local v4    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v6    # "type":I
    .restart local v7    # "callingUid":I
    .restart local v10    # "appOp":[I
    :cond_74
    :try_start_74
    iget v2, v14, Lcom/android/server/wm/Session;->mUid:I

    invoke-virtual {v4, v2}, Lcom/android/server/wm/DisplayContent;->hasAccess(I)Z

    move-result v2
    :try_end_7a
    .catchall {:try_start_74 .. :try_end_7a} :catchall_8e0

    if-nez v2, :cond_a6

    :try_start_7c
    iget-object v2, v13, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v3, v14, Lcom/android/server/wm/Session;->mUid:I

    .line 1333
    invoke-virtual {v2, v3, v12}, Landroid/hardware/display/DisplayManagerInternal;->isUidPresentOnDisplay(II)Z

    move-result v2

    if-nez v2, :cond_a6

    .line 1334
    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to add window to a display for which the application does not have access: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".  Aborting."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    monitor-exit v5
    :try_end_a2
    .catchall {:try_start_7c .. :try_end_a2} :catchall_67

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v18

    .line 1339
    :cond_a6
    :try_start_a6
    iget-object v2, v13, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2
    :try_end_b0
    .catchall {:try_start_a6 .. :try_end_b0} :catchall_8e0

    const/16 v19, -0x5

    if-eqz v2, :cond_da

    .line 1340
    :try_start_b4
    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_c0
    .catchall {:try_start_b4 .. :try_end_c0} :catchall_d6

    move-object/from16 v9, p2

    :try_start_c2
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is already added"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    monitor-exit v5
    :try_end_d2
    .catchall {:try_start_c2 .. :try_end_d2} :catchall_67

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v19

    .line 1703
    .end local v4    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :catchall_d6
    move-exception v0

    move-object/from16 v9, p2

    goto :goto_68

    .line 1344
    .restart local v4    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_da
    move-object/from16 v9, p2

    const/16 v2, 0x3e8

    const/4 v8, 0x0

    const/4 v3, 0x0

    if-lt v6, v2, :cond_143

    const/16 v0, 0x7cf

    if-gt v6, v0, :cond_143

    .line 1345
    :try_start_e6
    iget-object v0, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v13, v8, v0, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    move-object v1, v0

    .line 1346
    if-nez v1, :cond_112

    .line 1347
    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to add window with token that is not a window: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ".  Aborting."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    const/4 v0, -0x2

    monitor-exit v5
    :try_end_10e
    .catchall {:try_start_e6 .. :try_end_10e} :catchall_67

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    .line 1351
    :cond_112
    :try_start_112
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v0, v2, :cond_143

    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7cf

    if-gt v0, v2, :cond_143

    .line 1353
    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to add window with token that is a sub-window: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ".  Aborting."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    const/4 v0, -0x2

    monitor-exit v5
    :try_end_13f
    .catchall {:try_start_112 .. :try_end_13f} :catchall_67

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    .line 1359
    :cond_143
    move-object v2, v1

    .end local v1    # "parentWindow":Lcom/android/server/wm/WindowState;
    .local v2, "parentWindow":Lcom/android/server/wm/WindowState;
    const/16 v0, 0x7ee

    if-ne v6, v0, :cond_15f

    :try_start_148
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_15f

    .line 1360
    const-string v0, "WindowManager"

    const-string v1, "Attempted to add private presentation window to a non-private display.  Aborting."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    const/4 v0, -0x8

    monitor-exit v5
    :try_end_157
    .catchall {:try_start_148 .. :try_end_157} :catchall_15b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    .line 1703
    .end local v4    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :catchall_15b
    move-exception v0

    move-object v1, v2

    goto/16 :goto_68

    .line 1364
    .restart local v4    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_15f
    const/4 v0, 0x0

    .line 1365
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v2, :cond_164

    const/4 v1, 0x1

    goto :goto_165

    :cond_164
    move v1, v3

    :goto_165
    move/from16 v20, v1

    .line 1368
    .local v20, "hasParent":Z
    nop

    .line 1369
    if-eqz v20, :cond_16f

    :try_start_16a
    iget-object v1, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;
    :try_end_16e
    .catchall {:try_start_16a .. :try_end_16e} :catchall_15b

    goto :goto_171

    :cond_16f
    :try_start_16f
    iget-object v1, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1368
    :goto_171
    invoke-virtual {v4, v1}, Lcom/android/server/wm/DisplayContent;->getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v1
    :try_end_175
    .catchall {:try_start_16f .. :try_end_175} :catchall_8be

    .line 1372
    .local v1, "token":Lcom/android/server/wm/WindowToken;
    if-eqz v20, :cond_17c

    :try_start_177
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_17d

    :cond_17c
    move v3, v6

    .line 1374
    .local v3, "rootType":I
    :goto_17d
    const/16 v22, 0x0

    .line 1376
    .local v22, "addToastWindowRequiresToken":Z
    const/16 v30, -0x1

    if-nez v1, :cond_333

    .line 1377
    const/4 v8, 0x1

    if-lt v3, v8, :cond_1b0

    const/16 v8, 0x63

    if-gt v3, v8, :cond_1b0

    .line 1378
    const-string v8, "WindowManager"

    move-object/from16 v32, v0

    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .local v32, "atoken":Lcom/android/server/wm/AppWindowToken;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v33, v1

    const-string v1, "Attempted to add application window with unknown token "

    .end local v1    # "token":Lcom/android/server/wm/WindowToken;
    .local v33, "token":Lcom/android/server/wm/WindowToken;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".  Aborting."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    monitor-exit v5
    :try_end_1ac
    .catchall {:try_start_177 .. :try_end_1ac} :catchall_15b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v30

    .line 1382
    .end local v32    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v33    # "token":Lcom/android/server/wm/WindowToken;
    .restart local v0    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .restart local v1    # "token":Lcom/android/server/wm/WindowToken;
    :cond_1b0
    move-object/from16 v32, v0

    move-object/from16 v33, v1

    .end local v0    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v1    # "token":Lcom/android/server/wm/WindowToken;
    .restart local v32    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .restart local v33    # "token":Lcom/android/server/wm/WindowToken;
    const/16 v0, 0x7db

    if-ne v3, v0, :cond_1da

    .line 1383
    :try_start_1b8
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add input method window with unknown token "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ".  Aborting."

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    monitor-exit v5
    :try_end_1d6
    .catchall {:try_start_1b8 .. :try_end_1d6} :catchall_15b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v30

    .line 1387
    :cond_1da
    const/16 v1, 0x7ef

    if-ne v3, v1, :cond_200

    .line 1388
    :try_start_1de
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add voice interaction window with unknown token "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ".  Aborting."

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    monitor-exit v5
    :try_end_1fc
    .catchall {:try_start_1de .. :try_end_1fc} :catchall_15b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v30

    .line 1392
    :cond_200
    const/16 v1, 0x7dd

    if-ne v3, v1, :cond_226

    .line 1393
    :try_start_204
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add wallpaper window with unknown token "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ".  Aborting."

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    monitor-exit v5
    :try_end_222
    .catchall {:try_start_204 .. :try_end_222} :catchall_15b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v30

    .line 1397
    :cond_226
    const/16 v8, 0x7e7

    if-ne v3, v8, :cond_24c

    .line 1398
    :try_start_22a
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add Dream window with unknown token "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ".  Aborting."

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    monitor-exit v5
    :try_end_248
    .catchall {:try_start_22a .. :try_end_248} :catchall_15b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v30

    .line 1402
    :cond_24c
    const/16 v8, 0x7f3

    if-ne v3, v8, :cond_272

    .line 1403
    :try_start_250
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add QS dialog window with unknown token "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ".  Aborting."

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    monitor-exit v5
    :try_end_26e
    .catchall {:try_start_250 .. :try_end_26e} :catchall_15b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v30

    .line 1407
    :cond_272
    const/16 v8, 0x7f0

    if-ne v3, v8, :cond_298

    .line 1408
    :try_start_276
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add Accessibility overlay window with unknown token "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ".  Aborting."

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    monitor-exit v5
    :try_end_294
    .catchall {:try_start_276 .. :try_end_294} :catchall_15b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v30

    .line 1412
    :cond_298
    const/16 v8, 0x7d5

    if-ne v6, v8, :cond_2c6

    .line 1414
    :try_start_29c
    iget-object v0, v15, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-direct {v13, v0, v7, v2}, Lcom/android/server/wm/WindowManagerService;->doesAddToastWindowRequireToken(Ljava/lang/String;ILcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_2c6

    .line 1416
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add a toast window with unknown token "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ".  Aborting."

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    monitor-exit v5
    :try_end_2c2
    .catchall {:try_start_29c .. :try_end_2c2} :catchall_15b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v30

    .line 1421
    :cond_2c6
    :try_start_2c6
    iget-object v0, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;
    :try_end_2c8
    .catchall {:try_start_2c6 .. :try_end_2c8} :catchall_321

    if-eqz v0, :cond_2cd

    :try_start_2ca
    iget-object v0, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;
    :try_end_2cc
    .catchall {:try_start_2ca .. :try_end_2cc} :catchall_15b

    goto :goto_2d1

    :cond_2cd
    :try_start_2cd
    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_2d1
    move/from16 v35, v3

    move-object v3, v0

    .line 1422
    .local v3, "binder":Landroid/os/IBinder;
    .local v35, "rootType":I
    iget v0, v15, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v21, 0x100000

    and-int v0, v0, v21

    if-eqz v0, :cond_2de

    const/4 v0, 0x1

    goto :goto_2df

    :cond_2de
    const/4 v0, 0x0

    :goto_2df
    const/16 v1, 0x7db

    move v8, v0

    .line 1427
    .local v8, "isRoundedCornerOverlay":Z
    iget v0, v15, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v21, -0x80000000

    and-int v0, v0, v21

    if-eqz v0, :cond_2ec

    const/4 v0, 0x1

    goto :goto_2ed

    :cond_2ec
    const/4 v0, 0x0

    :goto_2ed
    move v9, v0

    .line 1429
    .local v9, "isHbmOverlay":Z
    new-instance v0, Lcom/android/server/wm/WindowToken;
    :try_end_2f0
    .catchall {:try_start_2cd .. :try_end_2f0} :catchall_321

    const/16 v21, 0x0

    move-object/from16 v37, v5

    :try_start_2f4
    iget-boolean v5, v14, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z
    :try_end_2f6
    .catchall {:try_start_2f4 .. :try_end_2f6} :catchall_31b

    move-object/from16 v38, v33

    move-object v1, v0

    .end local v33    # "token":Lcom/android/server/wm/WindowToken;
    .local v38, "token":Lcom/android/server/wm/WindowToken;
    move-object/from16 v39, v2

    move-object v2, v13

    .end local v2    # "parentWindow":Lcom/android/server/wm/WindowState;
    .local v39, "parentWindow":Lcom/android/server/wm/WindowState;
    move-object/from16 v40, v4

    move v4, v6

    .end local v4    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .local v40, "displayContent":Lcom/android/server/wm/DisplayContent;
    move/from16 v24, v5

    move-object/from16 v23, v37

    move/from16 v5, v21

    move/from16 v41, v6

    move-object/from16 v6, v40

    .end local v6    # "type":I
    .local v41, "type":I
    move v12, v7

    move/from16 v7, v24

    .end local v7    # "callingUid":I
    .local v12, "callingUid":I
    :try_start_30c
    invoke-direct/range {v1 .. v9}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZLcom/android/server/wm/DisplayContent;ZZZ)V
    :try_end_30f
    .catchall {:try_start_30c .. :try_end_30f} :catchall_374

    .line 1432
    .end local v3    # "binder":Landroid/os/IBinder;
    .end local v8    # "isRoundedCornerOverlay":Z
    .end local v9    # "isHbmOverlay":Z
    .end local v38    # "token":Lcom/android/server/wm/WindowToken;
    .local v0, "token":Lcom/android/server/wm/WindowToken;
    nop

    .line 1501
    move-object v8, v0

    move-object/from16 v7, v32

    move/from16 v42, v35

    move-object/from16 v24, v39

    move/from16 v9, v41

    goto/16 :goto_3bf

    .line 1703
    .end local v0    # "token":Lcom/android/server/wm/WindowToken;
    .end local v12    # "callingUid":I
    .end local v20    # "hasParent":Z
    .end local v22    # "addToastWindowRequiresToken":Z
    .end local v32    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v35    # "rootType":I
    .end local v39    # "parentWindow":Lcom/android/server/wm/WindowState;
    .end local v40    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v41    # "type":I
    .restart local v2    # "parentWindow":Lcom/android/server/wm/WindowState;
    .restart local v6    # "type":I
    .restart local v7    # "callingUid":I
    :catchall_31b
    move-exception v0

    move-object/from16 v39, v2

    move-object/from16 v23, v37

    goto :goto_326

    :catchall_321
    move-exception v0

    move-object/from16 v39, v2

    move-object/from16 v23, v5

    .end local v10    # "appOp":[I
    .local v1, "parentWindow":Lcom/android/server/wm/WindowState;
    .restart local v25    # "appOp":[I
    .restart local v49    # "type":I
    .restart local v52    # "callingUid":I
    :goto_326
    move/from16 v49, v6

    move/from16 v52, v7

    move-object/from16 v25, v10

    move-object v14, v11

    move-object/from16 v1, v39

    move/from16 v3, p6

    .end local v2    # "parentWindow":Lcom/android/server/wm/WindowState;
    .end local v6    # "type":I
    .end local v7    # "callingUid":I
    .restart local v12    # "callingUid":I
    .restart local v39    # "parentWindow":Lcom/android/server/wm/WindowState;
    .restart local v41    # "type":I
    goto/16 :goto_8eb

    .line 1432
    .end local v12    # "callingUid":I
    .end local v25    # "appOp":[I
    .end local v39    # "parentWindow":Lcom/android/server/wm/WindowState;
    .end local v41    # "type":I
    .end local v49    # "type":I
    .end local v52    # "callingUid":I
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    .local v1, "token":Lcom/android/server/wm/WindowToken;
    .restart local v2    # "parentWindow":Lcom/android/server/wm/WindowState;
    .local v3, "rootType":I
    .restart local v4    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v6    # "type":I
    .restart local v7    # "callingUid":I
    .restart local v10    # "appOp":[I
    .restart local v20    # "hasParent":Z
    .restart local v22    # "addToastWindowRequiresToken":Z
    :cond_333
    move-object/from16 v32, v0

    move-object/from16 v38, v1

    move-object/from16 v39, v2

    move/from16 v35, v3

    move-object/from16 v40, v4

    move-object/from16 v23, v5

    move/from16 v41, v6

    move v12, v7

    .end local v0    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v1    # "token":Lcom/android/server/wm/WindowToken;
    .end local v2    # "parentWindow":Lcom/android/server/wm/WindowState;
    .end local v3    # "rootType":I
    .end local v4    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v6    # "type":I
    .end local v7    # "callingUid":I
    .restart local v12    # "callingUid":I
    .restart local v32    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .restart local v35    # "rootType":I
    .restart local v38    # "token":Lcom/android/server/wm/WindowToken;
    .restart local v39    # "parentWindow":Lcom/android/server/wm/WindowState;
    .restart local v40    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v41    # "type":I
    move/from16 v0, v35

    const/4 v1, 0x1

    if-lt v0, v1, :cond_3d3

    .end local v35    # "rootType":I
    .local v0, "rootType":I
    const/16 v1, 0x63

    if-gt v0, v1, :cond_3d3

    .line 1433
    move-object/from16 v8, v38

    :try_start_34d
    invoke-virtual {v8}, Lcom/android/server/wm/WindowToken;->asAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v1
    :try_end_351
    .catchall {:try_start_34d .. :try_end_351} :catchall_3c5

    .line 1434
    .end local v32    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v38    # "token":Lcom/android/server/wm/WindowToken;
    .local v1, "atoken":Lcom/android/server/wm/AppWindowToken;
    .local v8, "token":Lcom/android/server/wm/WindowToken;
    if-nez v1, :cond_380

    .line 1435
    :try_start_353
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to add window with non-application token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ".  Aborting."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    const/4 v2, -0x3

    monitor-exit v23
    :try_end_370
    .catchall {:try_start_353 .. :try_end_370} :catchall_374

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 1703
    .end local v0    # "rootType":I
    .end local v1    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v8    # "token":Lcom/android/server/wm/WindowToken;
    .end local v20    # "hasParent":Z
    .end local v22    # "addToastWindowRequiresToken":Z
    .end local v40    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :catchall_374
    move-exception v0

    move-object/from16 v25, v10

    move-object v14, v11

    move/from16 v52, v12

    move-object/from16 v1, v39

    move/from16 v49, v41

    goto/16 :goto_415

    .line 1438
    .restart local v0    # "rootType":I
    .restart local v1    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .restart local v8    # "token":Lcom/android/server/wm/WindowToken;
    .restart local v20    # "hasParent":Z
    .restart local v22    # "addToastWindowRequiresToken":Z
    .restart local v40    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_380
    :try_start_380
    iget-boolean v2, v1, Lcom/android/server/wm/AppWindowToken;->removed:Z
    :try_end_382
    .catchall {:try_start_380 .. :try_end_382} :catchall_3c5

    if-eqz v2, :cond_3a5

    .line 1439
    :try_start_384
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to add window with exiting application token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ".  Aborting."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    const/4 v2, -0x4

    monitor-exit v23
    :try_end_3a1
    .catchall {:try_start_384 .. :try_end_3a1} :catchall_374

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 1442
    :cond_3a5
    const/4 v2, 0x3

    move/from16 v9, v41

    if-ne v9, v2, :cond_3ba

    .end local v41    # "type":I
    .local v9, "type":I
    :try_start_3aa
    iget-object v2, v1, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_3ba

    .line 1443
    const-string v2, "WindowManager"

    const-string v3, "Attempted to add starting window to token with already existing starting window"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    monitor-exit v23
    :try_end_3b6
    .catchall {:try_start_3aa .. :try_end_3b6} :catchall_40b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v19

    .line 1501
    :cond_3ba
    move/from16 v42, v0

    move-object v7, v1

    move-object/from16 v24, v39

    .end local v0    # "rootType":I
    .end local v1    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v39    # "parentWindow":Lcom/android/server/wm/WindowState;
    .local v7, "atoken":Lcom/android/server/wm/AppWindowToken;
    .local v24, "parentWindow":Lcom/android/server/wm/WindowState;
    .local v42, "rootType":I
    :goto_3bf
    const/16 v0, 0x7d5

    :goto_3c1
    const/16 v27, 0x0

    goto/16 :goto_5b9

    .line 1703
    .end local v7    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v8    # "token":Lcom/android/server/wm/WindowToken;
    .end local v9    # "type":I
    .end local v20    # "hasParent":Z
    .end local v22    # "addToastWindowRequiresToken":Z
    .end local v24    # "parentWindow":Lcom/android/server/wm/WindowState;
    .end local v40    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v42    # "rootType":I
    .restart local v39    # "parentWindow":Lcom/android/server/wm/WindowState;
    .restart local v41    # "type":I
    :catchall_3c5
    move-exception v0

    move-object/from16 v25, v10

    move-object v14, v11

    move/from16 v52, v12

    move-object/from16 v1, v39

    move/from16 v49, v41

    move/from16 v3, p6

    .end local v41    # "type":I
    .restart local v9    # "type":I
    goto/16 :goto_8eb

    .line 1447
    .end local v9    # "type":I
    .restart local v0    # "rootType":I
    .restart local v20    # "hasParent":Z
    .restart local v22    # "addToastWindowRequiresToken":Z
    .restart local v32    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .restart local v38    # "token":Lcom/android/server/wm/WindowToken;
    .restart local v40    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v41    # "type":I
    :cond_3d3
    move-object/from16 v8, v38

    move/from16 v9, v41

    .end local v38    # "token":Lcom/android/server/wm/WindowToken;
    .end local v41    # "type":I
    .restart local v8    # "token":Lcom/android/server/wm/WindowToken;
    .restart local v9    # "type":I
    const/16 v7, 0x7db

    if-ne v0, v7, :cond_419

    .line 1448
    :try_start_3db
    iget v1, v8, Lcom/android/server/wm/WindowToken;->windowType:I

    if-eq v1, v7, :cond_401

    .line 1449
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to add input method window with bad token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ".  Aborting."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    monitor-exit v23
    :try_end_3fd
    .catchall {:try_start_3db .. :try_end_3fd} :catchall_40b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v30

    .line 1501
    :cond_401
    move/from16 v42, v0

    move-object/from16 v24, v39

    const/16 v0, 0x7d5

    :goto_407
    const/16 v27, 0x0

    goto/16 :goto_5b7

    .line 1703
    .end local v0    # "rootType":I
    .end local v8    # "token":Lcom/android/server/wm/WindowToken;
    .end local v20    # "hasParent":Z
    .end local v22    # "addToastWindowRequiresToken":Z
    .end local v32    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v40    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :catchall_40b
    move-exception v0

    move/from16 v49, v9

    move-object/from16 v25, v10

    move-object v14, v11

    move/from16 v52, v12

    move-object/from16 v1, v39

    .end local v9    # "type":I
    .end local v10    # "appOp":[I
    .end local v12    # "callingUid":I
    .end local v39    # "parentWindow":Lcom/android/server/wm/WindowState;
    .local v1, "parentWindow":Lcom/android/server/wm/WindowState;
    .restart local v25    # "appOp":[I
    .restart local v49    # "type":I
    .restart local v52    # "callingUid":I
    :goto_415
    move/from16 v3, p6

    goto/16 :goto_8eb

    .line 1453
    .end local v1    # "parentWindow":Lcom/android/server/wm/WindowState;
    .end local v25    # "appOp":[I
    .end local v49    # "type":I
    .end local v52    # "callingUid":I
    .restart local v0    # "rootType":I
    .restart local v8    # "token":Lcom/android/server/wm/WindowToken;
    .restart local v9    # "type":I
    .restart local v10    # "appOp":[I
    .restart local v12    # "callingUid":I
    .restart local v20    # "hasParent":Z
    .restart local v22    # "addToastWindowRequiresToken":Z
    .restart local v32    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .restart local v39    # "parentWindow":Lcom/android/server/wm/WindowState;
    .restart local v40    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_419
    const/16 v1, 0x7ef

    if-ne v0, v1, :cond_443

    .line 1454
    :try_start_41d
    iget v2, v8, Lcom/android/server/wm/WindowToken;->windowType:I

    if-eq v2, v1, :cond_401

    .line 1455
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to add voice interaction window with bad token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ".  Aborting."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    monitor-exit v23
    :try_end_43f
    .catchall {:try_start_41d .. :try_end_43f} :catchall_40b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v30

    .line 1459
    :cond_443
    const/16 v6, 0x7dd

    if-ne v0, v6, :cond_46d

    .line 1460
    :try_start_447
    iget v1, v8, Lcom/android/server/wm/WindowToken;->windowType:I

    if-eq v1, v6, :cond_401

    .line 1461
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to add wallpaper window with bad token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ".  Aborting."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    monitor-exit v23
    :try_end_469
    .catchall {:try_start_447 .. :try_end_469} :catchall_40b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v30

    .line 1465
    :cond_46d
    const/16 v1, 0x7e7

    if-ne v0, v1, :cond_497

    .line 1466
    :try_start_471
    iget v2, v8, Lcom/android/server/wm/WindowToken;->windowType:I

    if-eq v2, v1, :cond_401

    .line 1467
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to add Dream window with bad token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ".  Aborting."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    monitor-exit v23
    :try_end_493
    .catchall {:try_start_471 .. :try_end_493} :catchall_40b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v30

    .line 1471
    :cond_497
    const/16 v1, 0x7f0

    if-ne v0, v1, :cond_4c1

    .line 1472
    :try_start_49b
    iget v2, v8, Lcom/android/server/wm/WindowToken;->windowType:I

    if-eq v2, v1, :cond_401

    .line 1473
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to add Accessibility overlay window with bad token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ".  Aborting."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    monitor-exit v23
    :try_end_4bd
    .catchall {:try_start_49b .. :try_end_4bd} :catchall_40b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v30

    .line 1477
    :cond_4c1
    const/16 v5, 0x7d5

    if-ne v9, v5, :cond_51a

    .line 1479
    :try_start_4c5
    iget-object v1, v15, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;
    :try_end_4c7
    .catchall {:try_start_4c5 .. :try_end_4c7} :catchall_50b

    move-object/from16 v4, v39

    :try_start_4c9
    invoke-direct {v13, v1, v12, v4}, Lcom/android/server/wm/WindowManagerService;->doesAddToastWindowRequireToken(Ljava/lang/String;ILcom/android/server/wm/WindowState;)Z

    move-result v1

    .end local v39    # "parentWindow":Lcom/android/server/wm/WindowState;
    .local v4, "parentWindow":Lcom/android/server/wm/WindowState;
    move/from16 v22, v1

    .line 1481
    if-eqz v22, :cond_4f7

    iget v1, v8, Lcom/android/server/wm/WindowToken;->windowType:I

    if-eq v1, v5, :cond_4f7

    .line 1482
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to add a toast window with bad token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ".  Aborting."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    monitor-exit v23
    :try_end_4f3
    .catchall {:try_start_4c9 .. :try_end_4f3} :catchall_500

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v30

    .line 1501
    :cond_4f7
    move/from16 v42, v0

    move-object/from16 v24, v4

    move v0, v5

    move-object/from16 v7, v32

    goto/16 :goto_3c1

    .line 1703
    .end local v0    # "rootType":I
    .end local v8    # "token":Lcom/android/server/wm/WindowToken;
    .end local v20    # "hasParent":Z
    .end local v22    # "addToastWindowRequiresToken":Z
    .end local v32    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v40    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :catchall_500
    move-exception v0

    move-object v1, v4

    move/from16 v49, v9

    move-object/from16 v25, v10

    move-object v14, v11

    move/from16 v52, v12

    goto/16 :goto_415

    .end local v4    # "parentWindow":Lcom/android/server/wm/WindowState;
    .restart local v39    # "parentWindow":Lcom/android/server/wm/WindowState;
    :catchall_50b
    move-exception v0

    move-object/from16 v4, v39

    move-object v1, v4

    move/from16 v49, v9

    move-object/from16 v25, v10

    move-object v14, v11

    move/from16 v52, v12

    move/from16 v3, p6

    .end local v39    # "parentWindow":Lcom/android/server/wm/WindowState;
    .restart local v4    # "parentWindow":Lcom/android/server/wm/WindowState;
    goto/16 :goto_8eb

    .line 1486
    .end local v4    # "parentWindow":Lcom/android/server/wm/WindowState;
    .restart local v0    # "rootType":I
    .restart local v8    # "token":Lcom/android/server/wm/WindowToken;
    .restart local v20    # "hasParent":Z
    .restart local v22    # "addToastWindowRequiresToken":Z
    .restart local v32    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .restart local v39    # "parentWindow":Lcom/android/server/wm/WindowState;
    .restart local v40    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_51a
    move-object/from16 v4, v39

    .end local v39    # "parentWindow":Lcom/android/server/wm/WindowState;
    .restart local v4    # "parentWindow":Lcom/android/server/wm/WindowState;
    const/16 v1, 0x7f3

    if-ne v9, v1, :cond_54d

    .line 1487
    :try_start_520
    iget v2, v8, Lcom/android/server/wm/WindowToken;->windowType:I

    if-eq v2, v1, :cond_546

    .line 1488
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to add QS dialog window with bad token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ".  Aborting."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    monitor-exit v23
    :try_end_542
    .catchall {:try_start_520 .. :try_end_542} :catchall_500

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v30

    .line 1501
    :cond_546
    move/from16 v42, v0

    move-object/from16 v24, v4

    move v0, v5

    goto/16 :goto_407

    .line 1492
    :cond_54d
    :try_start_54d
    invoke-virtual {v8}, Lcom/android/server/wm/WindowToken;->asAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v1
    :try_end_551
    .catchall {:try_start_54d .. :try_end_551} :catchall_8af

    if-eqz v1, :cond_5b0

    .line 1493
    :try_start_553
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-null appWindowToken for system window of rootType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    const/4 v3, 0x0

    iput-object v3, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1497
    new-instance v21, Lcom/android/server/wm/WindowToken;

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v24

    const/16 v25, 0x0

    iget-boolean v2, v14, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z
    :try_end_576
    .catchall {:try_start_553 .. :try_end_576} :catchall_5a0

    move-object/from16 v1, v21

    move/from16 v26, v2

    move-object v2, v13

    move-object/from16 v27, v3

    move-object/from16 v3, v24

    move-object/from16 v24, v4

    move v4, v9

    .end local v4    # "parentWindow":Lcom/android/server/wm/WindowState;
    .restart local v24    # "parentWindow":Lcom/android/server/wm/WindowState;
    move/from16 v42, v0

    move v0, v5

    move/from16 v5, v25

    .end local v0    # "rootType":I
    .restart local v42    # "rootType":I
    move-object/from16 v6, v40

    move/from16 v7, v26

    :try_start_58b
    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZLcom/android/server/wm/DisplayContent;Z)V
    :try_end_58e
    .catchall {:try_start_58b .. :try_end_58e} :catchall_594

    move-object/from16 v1, v21

    .line 1501
    .end local v8    # "token":Lcom/android/server/wm/WindowToken;
    .local v1, "token":Lcom/android/server/wm/WindowToken;
    move-object v8, v1

    move-object/from16 v7, v32

    goto :goto_5b9

    .line 1703
    .end local v1    # "token":Lcom/android/server/wm/WindowToken;
    .end local v20    # "hasParent":Z
    .end local v22    # "addToastWindowRequiresToken":Z
    .end local v32    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v40    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v42    # "rootType":I
    :catchall_594
    move-exception v0

    move/from16 v49, v9

    move-object/from16 v25, v10

    move-object v14, v11

    move/from16 v52, v12

    .end local v9    # "type":I
    .end local v10    # "appOp":[I
    .end local v12    # "callingUid":I
    .end local v24    # "parentWindow":Lcom/android/server/wm/WindowState;
    .local v1, "parentWindow":Lcom/android/server/wm/WindowState;
    .restart local v25    # "appOp":[I
    .restart local v49    # "type":I
    .restart local v52    # "callingUid":I
    :goto_59c
    move-object/from16 v1, v24

    goto/16 :goto_415

    .end local v1    # "parentWindow":Lcom/android/server/wm/WindowState;
    .end local v25    # "appOp":[I
    .end local v49    # "type":I
    .end local v52    # "callingUid":I
    .restart local v4    # "parentWindow":Lcom/android/server/wm/WindowState;
    .restart local v9    # "type":I
    .restart local v10    # "appOp":[I
    .restart local v12    # "callingUid":I
    :catchall_5a0
    move-exception v0

    move-object/from16 v24, v4

    move/from16 v49, v9

    move-object/from16 v25, v10

    move-object v14, v11

    move/from16 v52, v12

    move-object/from16 v1, v24

    move/from16 v3, p6

    .end local v4    # "parentWindow":Lcom/android/server/wm/WindowState;
    .restart local v24    # "parentWindow":Lcom/android/server/wm/WindowState;
    goto/16 :goto_8eb

    .line 1501
    .end local v24    # "parentWindow":Lcom/android/server/wm/WindowState;
    .restart local v0    # "rootType":I
    .restart local v4    # "parentWindow":Lcom/android/server/wm/WindowState;
    .restart local v8    # "token":Lcom/android/server/wm/WindowToken;
    .restart local v20    # "hasParent":Z
    .restart local v22    # "addToastWindowRequiresToken":Z
    .restart local v32    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .restart local v40    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_5b0
    move/from16 v42, v0

    move-object/from16 v24, v4

    move v0, v5

    const/16 v27, 0x0

    .end local v4    # "parentWindow":Lcom/android/server/wm/WindowState;
    .restart local v39    # "parentWindow":Lcom/android/server/wm/WindowState;
    :goto_5b7
    move-object/from16 v7, v32

    .end local v0    # "rootType":I
    .end local v32    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v39    # "parentWindow":Lcom/android/server/wm/WindowState;
    .restart local v7    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .restart local v24    # "parentWindow":Lcom/android/server/wm/WindowState;
    .restart local v42    # "rootType":I
    :goto_5b9
    :try_start_5b9
    new-instance v21, Lcom/android/server/wm/WindowState;

    const/4 v6, 0x0

    aget v25, v10, v6

    iget v5, v14, Lcom/android/server/wm/Session;->mUid:I

    iget-boolean v4, v14, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z
    :try_end_5c2
    .catchall {:try_start_5b9 .. :try_end_5c2} :catchall_8a2

    move-object/from16 v1, v21

    move-object v2, v13

    move-object v3, v14

    move/from16 v26, v4

    move-object/from16 v4, p2

    move/from16 v28, v5

    move-object v5, v8

    move-object/from16 v6, v24

    move-object/from16 v43, v7

    move/from16 v7, v25

    .end local v7    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .local v43, "atoken":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v44, v8

    move/from16 v8, p3

    .end local v8    # "token":Lcom/android/server/wm/WindowToken;
    .local v44, "token":Lcom/android/server/wm/WindowToken;
    move v14, v9

    move-object v9, v15

    .end local v9    # "type":I
    .local v14, "type":I
    move-object/from16 v25, v10

    move/from16 v10, p5

    .end local v10    # "appOp":[I
    .restart local v25    # "appOp":[I
    move/from16 v45, v14

    move-object v14, v11

    move/from16 v11, v28

    .end local v14    # "type":I
    .local v45, "type":I
    move/from16 v46, v12

    move/from16 v12, v26

    .end local v12    # "callingUid":I
    .local v46, "callingUid":I
    :try_start_5e6
    invoke-direct/range {v1 .. v12}, Lcom/android/server/wm/WindowState;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/Session;Landroid/view/IWindow;Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/WindowState;IILandroid/view/WindowManager$LayoutParams;IIZ)V

    move-object/from16 v1, v21

    .line 1504
    .local v1, "win":Lcom/android/server/wm/WindowState;
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;
    :try_end_5ed
    .catchall {:try_start_5e6 .. :try_end_5ed} :catchall_898

    if-nez v2, :cond_61d

    .line 1507
    :try_start_5ef
    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding window client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " that is dead, aborting."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    const/4 v0, -0x4

    monitor-exit v23
    :try_end_610
    .catchall {:try_start_5ef .. :try_end_610} :catchall_614

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    .line 1703
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    .end local v20    # "hasParent":Z
    .end local v22    # "addToastWindowRequiresToken":Z
    .end local v40    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v42    # "rootType":I
    .end local v43    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v44    # "token":Lcom/android/server/wm/WindowToken;
    :catchall_614
    move-exception v0

    move-object/from16 v1, v24

    move/from16 v49, v45

    move/from16 v52, v46

    goto/16 :goto_415

    .line 1512
    .restart local v1    # "win":Lcom/android/server/wm/WindowState;
    .restart local v20    # "hasParent":Z
    .restart local v22    # "addToastWindowRequiresToken":Z
    .restart local v40    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v42    # "rootType":I
    .restart local v43    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .restart local v44    # "token":Lcom/android/server/wm/WindowToken;
    :cond_61d
    :try_start_61d
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2
    :try_end_621
    .catchall {:try_start_61d .. :try_end_621} :catchall_898

    if-nez v2, :cond_62f

    .line 1513
    :try_start_623
    const-string v0, "WindowManager"

    const-string v2, "Adding window to Display that has been removed."

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    monitor-exit v23
    :try_end_62b
    .catchall {:try_start_623 .. :try_end_62b} :catchall_614

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v18

    .line 1517
    :cond_62f
    :try_start_62f
    iget-object v2, v13, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.STATUS_BAR_SERVICE"

    .line 1518
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_63b

    const/4 v2, 0x1

    goto :goto_63c

    :cond_63b
    const/4 v2, 0x0

    .line 1520
    .local v2, "hasStatusBarServicePermission":Z
    :goto_63c
    iget-object v3, v13, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v1, v4, v2}, Lcom/android/server/policy/WindowManagerPolicy;->adjustWindowParamsLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Z)V

    .line 1521
    iget-object v3, v13, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v3, v15}, Lcom/android/server/policy/WindowManagerPolicy;->checkShowToOwnerOnly(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowState;->setShowToOwnerOnlyLocked(Z)V

    .line 1523
    iget-object v3, v13, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v3, v1, v15}, Lcom/android/server/policy/WindowManagerPolicy;->prepareAddWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v3
    :try_end_652
    .catchall {:try_start_62f .. :try_end_652} :catchall_898

    move/from16 v16, v3

    .line 1524
    if-eqz v16, :cond_65b

    .line 1525
    :try_start_656
    monitor-exit v23
    :try_end_657
    .catchall {:try_start_656 .. :try_end_657} :catchall_614

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v16

    .line 1528
    :cond_65b
    if-eqz v14, :cond_665

    :try_start_65d
    iget v3, v15, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_665

    const/4 v3, 0x1

    goto :goto_666

    :cond_665
    const/4 v3, 0x0

    .line 1530
    .local v3, "openInputChannels":Z
    :goto_666
    if-eqz v3, :cond_66b

    .line 1531
    invoke-virtual {v1, v14}, Lcom/android/server/wm/WindowState;->openInputChannel(Landroid/view/InputChannel;)V
    :try_end_66b
    .catchall {:try_start_65d .. :try_end_66b} :catchall_614

    .line 1544
    :cond_66b
    move/from16 v4, v45

    if-ne v4, v0, :cond_6bd

    .line 1545
    .end local v45    # "type":I
    .local v4, "type":I
    :try_start_66f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0
    :try_end_673
    .catchall {:try_start_66f .. :try_end_673} :catchall_6b2

    move/from16 v5, v46

    :try_start_675
    invoke-virtual {v0, v5}, Lcom/android/server/wm/DisplayContent;->canAddToastWindowForUid(I)Z

    move-result v0

    .end local v46    # "callingUid":I
    .local v5, "callingUid":I
    if-nez v0, :cond_687

    .line 1546
    const-string v0, "WindowManager"

    const-string v6, "Adding more than one toast window for UID at a time."

    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    monitor-exit v23
    :try_end_683
    .catchall {:try_start_675 .. :try_end_683} :catchall_6ab

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v19

    .line 1554
    :cond_687
    if-nez v22, :cond_699

    :try_start_689
    iget v0, v15, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_699

    iget-object v0, v13, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_699

    iget-object v0, v13, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-eq v0, v5, :cond_6bf

    .line 1558
    :cond_699
    iget-object v0, v13, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v6, v13, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v7, 0x34

    .line 1559
    invoke-virtual {v6, v7, v1}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v7, v7, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 1558
    invoke-virtual {v0, v6, v7, v8}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_6aa
    .catchall {:try_start_689 .. :try_end_6aa} :catchall_6ab

    goto :goto_6bf

    .line 1703
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    .end local v2    # "hasStatusBarServicePermission":Z
    .end local v3    # "openInputChannels":Z
    .end local v20    # "hasParent":Z
    .end local v22    # "addToastWindowRequiresToken":Z
    .end local v40    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v42    # "rootType":I
    .end local v43    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v44    # "token":Lcom/android/server/wm/WindowToken;
    :catchall_6ab
    move-exception v0

    move/from16 v49, v4

    move/from16 v52, v5

    goto/16 :goto_59c

    .end local v5    # "callingUid":I
    .restart local v46    # "callingUid":I
    :catchall_6b2
    move-exception v0

    move/from16 v49, v4

    move-object/from16 v1, v24

    move/from16 v52, v46

    move/from16 v3, p6

    .end local v46    # "callingUid":I
    .restart local v5    # "callingUid":I
    goto/16 :goto_8eb

    .line 1566
    .end local v5    # "callingUid":I
    .restart local v1    # "win":Lcom/android/server/wm/WindowState;
    .restart local v2    # "hasStatusBarServicePermission":Z
    .restart local v3    # "openInputChannels":Z
    .restart local v20    # "hasParent":Z
    .restart local v22    # "addToastWindowRequiresToken":Z
    .restart local v40    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v42    # "rootType":I
    .restart local v43    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .restart local v44    # "token":Lcom/android/server/wm/WindowToken;
    .restart local v46    # "callingUid":I
    :cond_6bd
    move/from16 v5, v46

    .end local v46    # "callingUid":I
    .restart local v5    # "callingUid":I
    :cond_6bf
    :goto_6bf
    const/16 v16, 0x0

    .line 1567
    :try_start_6c1
    iget-object v0, v13, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;
    :try_end_6c3
    .catchall {:try_start_6c1 .. :try_end_6c3} :catchall_88d

    if-nez v0, :cond_6ca

    .line 1568
    :try_start_6c5
    iget-object v0, v13, Lcom/android/server/wm/WindowManagerService;->mWinAddedSinceNullFocus:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6ca
    .catchall {:try_start_6c5 .. :try_end_6ca} :catchall_6ab

    .line 1571
    :cond_6ca
    :try_start_6ca
    invoke-static {v4}, Lcom/android/server/wm/WindowManagerService;->excludeWindowTypeFromTapOutTask(I)Z

    move-result v0
    :try_end_6ce
    .catchall {:try_start_6ca .. :try_end_6ce} :catchall_88d

    if-eqz v0, :cond_6d8

    .line 1572
    move-object/from16 v0, v40

    :try_start_6d2
    iget-object v6, v0, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    .end local v40    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6d7
    .catchall {:try_start_6d2 .. :try_end_6d7} :catchall_6ab

    goto :goto_6da

    .line 1575
    .end local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v40    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_6d8
    move-object/from16 v0, v40

    .end local v40    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :goto_6da
    :try_start_6da
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1577
    .local v6, "origId":J
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->attach()V

    .line 1578
    iget-object v8, v13, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v8, v9, v1}, Lcom/android/server/wm/WindowHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1580
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->initAppOpsState()V

    .line 1582
    iget-object v8, v13, Lcom/android/server/wm/WindowManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v9

    .line 1583
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v10

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 1582
    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManagerInternal;->isPackageSuspended(Ljava/lang/String;I)Z

    move-result v8

    .line 1584
    .local v8, "suspended":Z
    invoke-virtual {v1, v8}, Lcom/android/server/wm/WindowState;->setHiddenWhileSuspended(Z)V

    .line 1586
    iget-object v9, v13, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    const/4 v10, 0x1

    xor-int/2addr v9, v10

    .line 1587
    .local v9, "hideSystemAlertWindows":Z
    invoke-virtual {v1, v9}, Lcom/android/server/wm/WindowState;->setForceHideNonSystemOverlayWindowIfNeeded(Z)V

    .line 1589
    move-object/from16 v10, v44

    invoke-virtual {v10}, Lcom/android/server/wm/WindowToken;->asAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v11
    :try_end_713
    .catchall {:try_start_6da .. :try_end_713} :catchall_88d

    .line 1590
    .end local v44    # "token":Lcom/android/server/wm/WindowToken;
    .local v10, "token":Lcom/android/server/wm/WindowToken;
    .local v11, "aToken":Lcom/android/server/wm/AppWindowToken;
    const/4 v12, 0x3

    if-ne v4, v12, :cond_71a

    if-eqz v11, :cond_71a

    .line 1591
    :try_start_718
    iput-object v1, v11, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;
    :try_end_71a
    .catchall {:try_start_718 .. :try_end_71a} :catchall_6ab

    .line 1596
    :cond_71a
    const/4 v12, 0x1

    .line 1598
    .local v12, "imMayMove":Z
    move/from16 v47, v2

    :try_start_71d
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .end local v2    # "hasStatusBarServicePermission":Z
    .local v47, "hasStatusBarServicePermission":Z
    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowToken;->addWindow(Lcom/android/server/wm/WindowState;)V
    :try_end_722
    .catchall {:try_start_71d .. :try_end_722} :catchall_88d

    .line 1600
    const/16 v2, 0x7db

    if-ne v4, v2, :cond_72e

    .line 1601
    const/4 v2, 0x1

    :try_start_727
    iput-boolean v2, v1, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    .line 1602
    invoke-virtual {v13, v1}, Lcom/android/server/wm/WindowManagerService;->setInputMethodWindowLocked(Lcom/android/server/wm/WindowState;)V

    .line 1603
    const/4 v12, 0x0

    goto :goto_765

    .line 1604
    :cond_72e
    const/16 v2, 0x7dc

    if-ne v4, v2, :cond_738

    .line 1605
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    .line 1606
    const/4 v12, 0x0

    goto :goto_765

    .line 1608
    :cond_738
    const/16 v2, 0x7dd

    if-ne v4, v2, :cond_748

    .line 1609
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperController;->clearLastWallpaperTimeoutTime()V

    .line 1610
    iget v2, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I
    :try_end_747
    .catchall {:try_start_727 .. :try_end_747} :catchall_6ab

    goto :goto_765

    .line 1611
    :cond_748
    :try_start_748
    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->flags:I
    :try_end_74a
    .catchall {:try_start_748 .. :try_end_74a} :catchall_88d

    const/high16 v18, 0x100000

    and-int v2, v2, v18

    if-eqz v2, :cond_757

    .line 1612
    :try_start_750
    iget v2, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I
    :try_end_756
    .catchall {:try_start_750 .. :try_end_756} :catchall_6ab

    goto :goto_765

    .line 1613
    :cond_757
    :try_start_757
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WallpaperController;->isBelowWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v2
    :try_end_75d
    .catchall {:try_start_757 .. :try_end_75d} :catchall_88d

    if-eqz v2, :cond_765

    .line 1619
    :try_start_75f
    iget v2, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I
    :try_end_765
    .catchall {:try_start_75f .. :try_end_765} :catchall_6ab

    .line 1625
    :cond_765
    :goto_765
    :try_start_765
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->applyAdjustForImeIfNeeded()V
    :try_end_768
    .catchall {:try_start_765 .. :try_end_768} :catchall_88d

    .line 1627
    const/16 v2, 0x7f2

    if-ne v4, v2, :cond_78b

    .line 1628
    :try_start_76c
    iget-object v2, v13, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;
    :try_end_76e
    .catchall {:try_start_76c .. :try_end_76e} :catchall_780

    move/from16 v48, v3

    move/from16 v3, p6

    :try_start_772
    invoke-virtual {v2, v3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .end local v3    # "openInputChannels":Z
    .local v48, "openInputChannels":Z
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/wm/DockedStackDividerController;->setWindow(Lcom/android/server/wm/WindowState;)V
    :try_end_77d
    .catchall {:try_start_772 .. :try_end_77d} :catchall_77e

    goto :goto_78f

    .line 1703
    .end local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    .end local v6    # "origId":J
    .end local v8    # "suspended":Z
    .end local v9    # "hideSystemAlertWindows":Z
    .end local v10    # "token":Lcom/android/server/wm/WindowToken;
    .end local v11    # "aToken":Lcom/android/server/wm/AppWindowToken;
    .end local v12    # "imMayMove":Z
    .end local v20    # "hasParent":Z
    .end local v22    # "addToastWindowRequiresToken":Z
    .end local v42    # "rootType":I
    .end local v43    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v47    # "hasStatusBarServicePermission":Z
    .end local v48    # "openInputChannels":Z
    :catchall_77e
    move-exception v0

    goto :goto_783

    :catchall_780
    move-exception v0

    move/from16 v3, p6

    .end local v4    # "type":I
    .end local v5    # "callingUid":I
    .end local v24    # "parentWindow":Lcom/android/server/wm/WindowState;
    .local v1, "parentWindow":Lcom/android/server/wm/WindowState;
    .restart local v49    # "type":I
    .restart local v52    # "callingUid":I
    :goto_783
    move/from16 v49, v4

    :goto_785
    move/from16 v52, v5

    :goto_787
    move-object/from16 v1, v24

    goto/16 :goto_8eb

    .line 1632
    .end local v49    # "type":I
    .end local v52    # "callingUid":I
    .restart local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .local v1, "win":Lcom/android/server/wm/WindowState;
    .restart local v3    # "openInputChannels":Z
    .restart local v4    # "type":I
    .restart local v5    # "callingUid":I
    .restart local v6    # "origId":J
    .restart local v8    # "suspended":Z
    .restart local v9    # "hideSystemAlertWindows":Z
    .restart local v10    # "token":Lcom/android/server/wm/WindowToken;
    .restart local v11    # "aToken":Lcom/android/server/wm/AppWindowToken;
    .restart local v12    # "imMayMove":Z
    .restart local v20    # "hasParent":Z
    .restart local v22    # "addToastWindowRequiresToken":Z
    .restart local v24    # "parentWindow":Lcom/android/server/wm/WindowState;
    .restart local v42    # "rootType":I
    .restart local v43    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .restart local v47    # "hasStatusBarServicePermission":Z
    :cond_78b
    move/from16 v48, v3

    move/from16 v3, p6

    .end local v3    # "openInputChannels":Z
    .restart local v48    # "openInputChannels":Z
    :goto_78f
    :try_start_78f
    iget-object v2, v13, Lcom/android/server/wm/WindowManagerService;->mMiuiGestureController:Lcom/android/server/wm/MiuiGestureController;
    :try_end_791
    .catchall {:try_start_78f .. :try_end_791} :catchall_887

    if-eqz v2, :cond_798

    .line 1633
    :try_start_793
    iget-object v2, v13, Lcom/android/server/wm/WindowManagerService;->mMiuiGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/MiuiGestureController;->tryToSetGestureStubWindow(Lcom/android/server/wm/WindowState;)V
    :try_end_798
    .catchall {:try_start_793 .. :try_end_798} :catchall_77e

    .line 1637
    :cond_798
    :try_start_798
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :try_end_79a
    .catchall {:try_start_798 .. :try_end_79a} :catchall_887

    .line 1638
    .local v2, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    move/from16 v49, v4

    const/4 v4, 0x1

    :try_start_79d
    iput-boolean v4, v2, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    .line 1639
    .end local v4    # "type":I
    .restart local v49    # "type":I
    iput-boolean v4, v2, Lcom/android/server/wm/WindowStateAnimator;->mEnteringAnimation:Z
    :try_end_7a1
    .catchall {:try_start_79d .. :try_end_7a1} :catchall_880

    .line 1641
    move-object/from16 v4, v43

    if-eqz v4, :cond_7b7

    .end local v43    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .local v4, "atoken":Lcom/android/server/wm/AppWindowToken;
    :try_start_7a5
    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->isVisible()Z

    move-result v18

    if-eqz v18, :cond_7b7

    .line 1642
    invoke-direct {v13, v4}, Lcom/android/server/wm/WindowManagerService;->prepareWindowReplacementTransition(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v18

    if-nez v18, :cond_7b7

    .line 1646
    invoke-direct {v13, v4}, Lcom/android/server/wm/WindowManagerService;->prepareNoneTransitionForRelaunching(Lcom/android/server/wm/AppWindowToken;)V
    :try_end_7b4
    .catchall {:try_start_7a5 .. :try_end_7b4} :catchall_7b5

    goto :goto_7b7

    .line 1703
    .end local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    .end local v2    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .end local v4    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v6    # "origId":J
    .end local v8    # "suspended":Z
    .end local v9    # "hideSystemAlertWindows":Z
    .end local v10    # "token":Lcom/android/server/wm/WindowToken;
    .end local v11    # "aToken":Lcom/android/server/wm/AppWindowToken;
    .end local v12    # "imMayMove":Z
    .end local v20    # "hasParent":Z
    .end local v22    # "addToastWindowRequiresToken":Z
    .end local v42    # "rootType":I
    .end local v47    # "hasStatusBarServicePermission":Z
    .end local v48    # "openInputChannels":Z
    :catchall_7b5
    move-exception v0

    goto :goto_785

    .line 1649
    .restart local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v1    # "win":Lcom/android/server/wm/WindowState;
    .restart local v2    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .restart local v4    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .restart local v6    # "origId":J
    .restart local v8    # "suspended":Z
    .restart local v9    # "hideSystemAlertWindows":Z
    .restart local v10    # "token":Lcom/android/server/wm/WindowToken;
    .restart local v11    # "aToken":Lcom/android/server/wm/AppWindowToken;
    .restart local v12    # "imMayMove":Z
    .restart local v20    # "hasParent":Z
    .restart local v22    # "addToastWindowRequiresToken":Z
    .restart local v42    # "rootType":I
    .restart local v47    # "hasStatusBarServicePermission":Z
    .restart local v48    # "openInputChannels":Z
    :cond_7b7
    :goto_7b7
    move-object/from16 v50, v2

    :try_start_7b9
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    .line 1651
    .local v2, "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .local v50, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v18
    :try_end_7bf
    .catchall {:try_start_7b9 .. :try_end_7bf} :catchall_880

    move-object/from16 v51, v18

    .line 1652
    .local v51, "displayInfo":Landroid/view/DisplayInfo;
    move/from16 v52, v5

    move/from16 v53, v8

    move-object/from16 v5, v51

    :try_start_7c7
    iget v8, v5, Landroid/view/DisplayInfo;->rotation:I

    .line 1653
    .end local v8    # "suspended":Z
    .end local v51    # "displayInfo":Landroid/view/DisplayInfo;
    .local v5, "displayInfo":Landroid/view/DisplayInfo;
    .restart local v52    # "callingUid":I
    .local v53, "suspended":Z
    invoke-virtual {v0, v8}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v8

    .line 1652
    invoke-virtual {v2, v5, v8}, Lcom/android/server/wm/DisplayFrames;->onDisplayInfoUpdated(Landroid/view/DisplayInfo;Lcom/android/server/wm/utils/WmDisplayCutout;)V

    .line 1655
    if-eqz v4, :cond_7ea

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v8

    if-eqz v8, :cond_7ea

    .line 1656
    iget-object v8, v13, Lcom/android/server/wm/WindowManagerService;->mTmpRect:Landroid/graphics/Rect;

    .line 1657
    .local v8, "taskBounds":Landroid/graphics/Rect;
    move-object/from16 v54, v5

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    .end local v5    # "displayInfo":Landroid/view/DisplayInfo;
    .local v54, "displayInfo":Landroid/view/DisplayInfo;
    move-object/from16 v55, v4

    iget-object v4, v13, Lcom/android/server/wm/WindowManagerService;->mTmpRect:Landroid/graphics/Rect;

    .end local v4    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .local v55, "atoken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v5, v4}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 1659
    move-object/from16 v30, v8

    goto :goto_7f0

    .end local v8    # "taskBounds":Landroid/graphics/Rect;
    .end local v54    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v55    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .restart local v4    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .restart local v5    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_7ea
    move-object/from16 v55, v4

    move-object/from16 v54, v5

    .end local v4    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v5    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v54    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v55    # "atoken":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v30, v27

    .line 1661
    .local v30, "taskBounds":Landroid/graphics/Rect;
    :goto_7f0
    iget-object v4, v13, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v28, v4

    move-object/from16 v29, v5

    move-object/from16 v31, v2

    move-object/from16 v32, p7

    move-object/from16 v33, p8

    move-object/from16 v34, p9

    move-object/from16 v35, p10

    move-object/from16 v36, p11

    invoke-interface/range {v28 .. v36}, Lcom/android/server/policy/WindowManagerPolicy;->getLayoutHintLw(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;)Z

    move-result v4

    if-eqz v4, :cond_80e

    .line 1663
    or-int/lit8 v4, v16, 0x4

    .line 1666
    .end local v16    # "res":I
    .local v4, "res":I
    move/from16 v16, v4

    .end local v4    # "res":I
    .restart local v16    # "res":I
    :cond_80e
    iget-boolean v4, v13, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    if-eqz v4, :cond_816

    .line 1667
    or-int/lit8 v4, v16, 0x1

    .line 1669
    .end local v16    # "res":I
    .restart local v4    # "res":I
    move/from16 v16, v4

    .end local v4    # "res":I
    .restart local v16    # "res":I
    :cond_816
    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_822

    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->isClientHidden()Z

    move-result v4

    if-nez v4, :cond_826

    .line 1670
    :cond_822
    or-int/lit8 v4, v16, 0x2

    .line 1673
    .end local v16    # "res":I
    .restart local v4    # "res":I
    move/from16 v16, v4

    .end local v4    # "res":I
    .restart local v16    # "res":I
    :cond_826
    iget-object v4, v13, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v4}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 1675
    const/4 v4, 0x0

    .line 1676
    .local v4, "focusChanged":Z
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v5

    if-eqz v5, :cond_83e

    .line 1677
    const/4 v5, 0x1

    const/4 v8, 0x0

    invoke-virtual {v13, v5, v8}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v18

    move/from16 v4, v18

    .line 1679
    if-eqz v4, :cond_83f

    .line 1680
    const/4 v12, 0x0

    goto :goto_83f

    .line 1684
    :cond_83e
    const/4 v8, 0x0

    :cond_83f
    :goto_83f
    if-eqz v12, :cond_845

    .line 1685
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    .line 1690
    :cond_845
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->assignChildLayers()V

    .line 1692
    if-eqz v4, :cond_859

    .line 1693
    iget-object v5, v13, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    iget-object v8, v13, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v56, v0

    const/4 v0, 0x0

    invoke-virtual {v5, v8, v0}, Lcom/android/server/wm/InputMonitor;->setInputFocusLw(Lcom/android/server/wm/WindowState;Z)V

    .end local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .local v56, "displayContent":Lcom/android/server/wm/DisplayContent;
    goto :goto_85b

    .line 1695
    .end local v56    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_859
    move-object/from16 v56, v0

    .end local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v56    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :goto_85b
    iget-object v0, v13, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 1700
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v0

    if-eqz v0, :cond_870

    invoke-virtual {v13, v3}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(I)Z

    move-result v0

    if-eqz v0, :cond_870

    .line 1701
    const/4 v0, 0x1

    .line 1703
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    .end local v2    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .end local v4    # "focusChanged":Z
    .end local v9    # "hideSystemAlertWindows":Z
    .end local v10    # "token":Lcom/android/server/wm/WindowToken;
    .end local v11    # "aToken":Lcom/android/server/wm/AppWindowToken;
    .end local v12    # "imMayMove":Z
    .end local v17    # "reportNewConfig":Z
    .end local v20    # "hasParent":Z
    .end local v22    # "addToastWindowRequiresToken":Z
    .end local v30    # "taskBounds":Landroid/graphics/Rect;
    .end local v42    # "rootType":I
    .end local v47    # "hasStatusBarServicePermission":Z
    .end local v48    # "openInputChannels":Z
    .end local v50    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .end local v53    # "suspended":Z
    .end local v54    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v55    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v56    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .local v0, "reportNewConfig":Z
    move/from16 v17, v0

    .end local v0    # "reportNewConfig":Z
    .restart local v17    # "reportNewConfig":Z
    :cond_870
    monitor-exit v23
    :try_end_871
    .catchall {:try_start_7c7 .. :try_end_871} :catchall_87d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1705
    if-eqz v17, :cond_879

    .line 1706
    invoke-virtual {v13, v3}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration(I)V

    .line 1709
    :cond_879
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1711
    return v16

    .line 1703
    .end local v6    # "origId":J
    :catchall_87d
    move-exception v0

    goto/16 :goto_787

    .end local v52    # "callingUid":I
    .local v5, "callingUid":I
    :catchall_880
    move-exception v0

    move/from16 v52, v5

    move-object/from16 v1, v24

    .end local v5    # "callingUid":I
    .restart local v52    # "callingUid":I
    goto/16 :goto_8eb

    .end local v49    # "type":I
    .end local v52    # "callingUid":I
    .local v4, "type":I
    .restart local v5    # "callingUid":I
    :catchall_887
    move-exception v0

    move/from16 v49, v4

    move/from16 v52, v5

    goto :goto_894

    :catchall_88d
    move-exception v0

    move/from16 v49, v4

    move/from16 v52, v5

    move/from16 v3, p6

    .end local v24    # "parentWindow":Lcom/android/server/wm/WindowState;
    .local v1, "parentWindow":Lcom/android/server/wm/WindowState;
    :goto_894
    move-object/from16 v1, v24

    .end local v4    # "type":I
    .end local v5    # "callingUid":I
    .restart local v49    # "type":I
    .restart local v52    # "callingUid":I
    goto/16 :goto_8eb

    .end local v1    # "parentWindow":Lcom/android/server/wm/WindowState;
    .end local v49    # "type":I
    .end local v52    # "callingUid":I
    .restart local v24    # "parentWindow":Lcom/android/server/wm/WindowState;
    .restart local v45    # "type":I
    .restart local v46    # "callingUid":I
    :catchall_898
    move-exception v0

    move/from16 v49, v45

    move/from16 v52, v46

    move/from16 v3, p6

    move-object/from16 v1, v24

    .end local v45    # "type":I
    .end local v46    # "callingUid":I
    .restart local v49    # "type":I
    .restart local v52    # "callingUid":I
    goto :goto_8eb

    .end local v25    # "appOp":[I
    .end local v49    # "type":I
    .end local v52    # "callingUid":I
    .local v9, "type":I
    .local v10, "appOp":[I
    .local v12, "callingUid":I
    :catchall_8a2
    move-exception v0

    move/from16 v49, v9

    move-object/from16 v25, v10

    move-object v14, v11

    move/from16 v52, v12

    move/from16 v3, p6

    move-object/from16 v1, v24

    .end local v9    # "type":I
    .end local v10    # "appOp":[I
    .end local v12    # "callingUid":I
    .restart local v25    # "appOp":[I
    .restart local v49    # "type":I
    .restart local v52    # "callingUid":I
    goto :goto_8eb

    .end local v24    # "parentWindow":Lcom/android/server/wm/WindowState;
    .end local v25    # "appOp":[I
    .end local v49    # "type":I
    .end local v52    # "callingUid":I
    .local v4, "parentWindow":Lcom/android/server/wm/WindowState;
    .restart local v9    # "type":I
    .restart local v10    # "appOp":[I
    .restart local v12    # "callingUid":I
    :catchall_8af
    move-exception v0

    move-object/from16 v24, v4

    move/from16 v49, v9

    move-object/from16 v25, v10

    move-object v14, v11

    move/from16 v52, v12

    move/from16 v3, p6

    move-object/from16 v1, v24

    .end local v4    # "parentWindow":Lcom/android/server/wm/WindowState;
    .end local v9    # "type":I
    .end local v10    # "appOp":[I
    .end local v12    # "callingUid":I
    .restart local v24    # "parentWindow":Lcom/android/server/wm/WindowState;
    .restart local v25    # "appOp":[I
    .restart local v49    # "type":I
    .restart local v52    # "callingUid":I
    goto :goto_8eb

    .end local v24    # "parentWindow":Lcom/android/server/wm/WindowState;
    .end local v25    # "appOp":[I
    .end local v49    # "type":I
    .end local v52    # "callingUid":I
    .local v2, "parentWindow":Lcom/android/server/wm/WindowState;
    .local v6, "type":I
    .local v7, "callingUid":I
    .restart local v10    # "appOp":[I
    :catchall_8be
    move-exception v0

    move-object/from16 v24, v2

    move-object/from16 v23, v5

    move/from16 v49, v6

    move/from16 v52, v7

    move-object/from16 v25, v10

    move-object v14, v11

    move v3, v12

    move-object/from16 v1, v24

    .end local v2    # "parentWindow":Lcom/android/server/wm/WindowState;
    .end local v6    # "type":I
    .end local v7    # "callingUid":I
    .end local v10    # "appOp":[I
    .restart local v24    # "parentWindow":Lcom/android/server/wm/WindowState;
    .restart local v25    # "appOp":[I
    .restart local v49    # "type":I
    .restart local v52    # "callingUid":I
    goto :goto_8eb

    .line 1322
    .end local v24    # "parentWindow":Lcom/android/server/wm/WindowState;
    .end local v25    # "appOp":[I
    .end local v49    # "type":I
    .end local v52    # "callingUid":I
    .restart local v1    # "parentWindow":Lcom/android/server/wm/WindowState;
    .restart local v6    # "type":I
    .restart local v7    # "callingUid":I
    .restart local v10    # "appOp":[I
    :cond_8ce
    move-object/from16 v23, v5

    move/from16 v49, v6

    move/from16 v52, v7

    move-object/from16 v25, v10

    move-object v14, v11

    move v3, v12

    .end local v6    # "type":I
    .end local v7    # "callingUid":I
    .end local v10    # "appOp":[I
    .restart local v25    # "appOp":[I
    .restart local v49    # "type":I
    .restart local v52    # "callingUid":I
    :try_start_8d8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Display has not been initialialized"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1703
    .end local v25    # "appOp":[I
    .end local v49    # "type":I
    .end local v52    # "callingUid":I
    .restart local v6    # "type":I
    .restart local v7    # "callingUid":I
    .restart local v10    # "appOp":[I
    :catchall_8e0
    move-exception v0

    move-object/from16 v23, v5

    move/from16 v49, v6

    move/from16 v52, v7

    move-object/from16 v25, v10

    move-object v14, v11

    move v3, v12

    .end local v6    # "type":I
    .end local v7    # "callingUid":I
    .end local v10    # "appOp":[I
    .restart local v25    # "appOp":[I
    .restart local v49    # "type":I
    .restart local v52    # "callingUid":I
    :goto_8eb
    monitor-exit v23
    :try_end_8ec
    .catchall {:try_start_8d8 .. :try_end_8ec} :catchall_8f0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_8f0
    move-exception v0

    goto :goto_8eb
.end method

.method public addWindowChangeListener(Lcom/android/server/wm/WindowManagerService$WindowChangeListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/android/server/wm/WindowManagerService$WindowChangeListener;

    .line 4709
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4710
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4711
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4712
    return-void

    .line 4711
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public addWindowToken(Landroid/os/IBinder;II)V
    .registers 14
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "type"    # I
    .param p3, "displayId"    # I

    .line 2585
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v1, "addWindowToken()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 2589
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2590
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 2591
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v2

    move-object v9, v2

    .line 2592
    .local v9, "token":Lcom/android/server/wm/WindowToken;
    if-eqz v9, :cond_48

    .line 2593
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addWindowToken: Attempted to add binder token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " for already created window token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " displayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2596
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_d .. :try_end_44} :catchall_67

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2598
    :cond_48
    const/16 v2, 0x7dd

    if-ne p2, v2, :cond_57

    .line 2599
    :try_start_4c
    new-instance v2, Lcom/android/server/wm/WallpaperWindowToken;

    const/4 v5, 0x1

    const/4 v7, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v6, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/WallpaperWindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;ZLcom/android/server/wm/DisplayContent;Z)V

    goto :goto_62

    .line 2602
    :cond_57
    new-instance v2, Lcom/android/server/wm/WindowToken;

    const/4 v6, 0x1

    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v7, v1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZLcom/android/server/wm/DisplayContent;Z)V

    .line 2604
    .end local v1    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v9    # "token":Lcom/android/server/wm/WindowToken;
    :goto_62
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_4c .. :try_end_63} :catchall_67

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2605
    return-void

    .line 2604
    :catchall_67
    move-exception v1

    :try_start_68
    monitor-exit v0
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 2586
    :cond_6d
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public applyMagnificationSpec(Landroid/view/MagnificationSpec;)V
    .registers 3
    .param p1, "spec"    # Landroid/view/MagnificationSpec;

    .line 8077
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->applyMagnificationSpec(Landroid/view/MagnificationSpec;)V

    .line 8078
    return-void
.end method

.method canDispatchPointerEvents()Z
    .registers 2

    .line 3543
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public canStartRecentsAnimation()Z
    .registers 3

    .line 3028
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3029
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 3030
    const/4 v1, 0x0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 3032
    :cond_14
    const/4 v1, 0x1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 3033
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public cancelMiuiThumbnailAnimation()V
    .registers 3

    .line 2912
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2913
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->cancelMiuiThumbnailAnimationLocked()V

    .line 2914
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mMiuiGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v1}, Lcom/android/server/wm/MiuiGestureController;->cancelGoHomeAnimationIfNeeded()V

    .line 2915
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2916
    return-void

    .line 2915
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public cancelRecentsAnimationSynchronously(ILjava/lang/String;)V
    .registers 4
    .param p1, "reorderMode"    # I
        .annotation build Lcom/android/server/wm/RecentsAnimationController$ReorderMode;
        .end annotation
    .end param
    .param p2, "reason"    # Ljava/lang/String;

    .line 3043
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    if-eqz v0, :cond_9

    .line 3046
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimationSynchronously(ILjava/lang/String;)V

    .line 3048
    :cond_9
    return-void
.end method

.method checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "func"    # Ljava/lang/String;

    .line 2569
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_c

    .line 2570
    return v2

    .line 2573
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    .line 2575
    return v2

    .line 2577
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2578
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2579
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2580
    const/4 v1, 0x0

    return v1
.end method

.method checkDrawnWindowsLocked()V
    .registers 6

    .line 6022
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ce

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    if-nez v0, :cond_e

    goto/16 :goto_ce

    .line 6025
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "j":I
    :goto_16
    if-ltz v0, :cond_b0

    .line 6026
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 6027
    .local v1, "win":Lcom/android/server/wm/WindowState;
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Waiting for drawn "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": removed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/android/server/wm/WindowState;->mRemoved:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " visible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6028
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mHasSurface="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " drawState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6027
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6031
    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-nez v2, :cond_91

    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v2, :cond_91

    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-nez v2, :cond_6f

    goto :goto_91

    .line 6035
    :cond_6f
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->hasDrawnLw()Z

    move-result v2

    if-eqz v2, :cond_ac

    .line 6037
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Window drawn win="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6038
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    goto :goto_ac

    .line 6033
    .restart local v1    # "win":Lcom/android/server/wm/WindowState;
    :cond_91
    :goto_91
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Aborted waiting for drawn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6034
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6025
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    :cond_ac
    :goto_ac
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_16

    .line 6041
    .end local v0    # "j":I
    :cond_b0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 6042
    const-string v0, "WindowManager"

    const-string v1, "All windows drawn!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6043
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 6044
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 6046
    :cond_cd
    return-void

    .line 6023
    :cond_ce
    :goto_ce
    return-void
.end method

.method public checkSplitScreenMinimizedChanged(Z)V
    .registers 5
    .param p1, "animate"    # Z

    .line 3099
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3100
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 3101
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/wm/DockedStackDividerController;->checkMinimizeChanged(Z)V

    .line 3102
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3103
    return-void

    .line 3102
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public cleanupRecentsAnimation(I)V
    .registers 4
    .param p1, "reorderMode"    # I
        .annotation build Lcom/android/server/wm/RecentsAnimationController$ReorderMode;
        .end annotation
    .end param

    .line 3051
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3052
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    if-eqz v1, :cond_17

    .line 3053
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RecentsAnimationController;->cleanupAnimation(I)V

    .line 3054
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    .line 3055
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->updateBooster()V

    .line 3057
    :cond_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3058
    return-void

    .line 3057
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public clearForcedDisplayDensityForUser(II)V
    .registers 11
    .param p1, "displayId"    # I
    .param p2, "userId"    # I

    .line 5779
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_62

    .line 5785
    if-nez p1, :cond_5a

    .line 5789
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 5790
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "clearForcedDisplayDensityForUser"

    const/4 v7, 0x0

    .line 5789
    move v3, p2

    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 5792
    .local v0, "callingUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5794
    .local v1, "ident":J
    :try_start_22
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v3
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_55

    :try_start_25
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5795
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    .line 5796
    .local v4, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v4, :cond_39

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    if-ne v5, v0, :cond_39

    .line 5797
    sget v5, Lcom/android/server/wm/WindowManagerServiceInjector;->sMiuiDisplayDensity:I

    invoke-direct {p0, v4, v5}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplayDensityLocked(Lcom/android/server/wm/DisplayContent;I)V

    .line 5802
    :cond_39
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "display_density_forced"

    const-string v7, ""

    invoke-static {v5, v6, v7, v0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 5804
    .end local v4    # "displayContent":Lcom/android/server/wm/DisplayContent;
    monitor-exit v3
    :try_end_47
    .catchall {:try_start_25 .. :try_end_47} :catchall_4f

    :try_start_47
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_55

    .line 5806
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5807
    nop

    .line 5808
    return-void

    .line 5804
    :catchall_4f
    move-exception v4

    :try_start_50
    monitor-exit v3
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    :try_start_51
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v4
    :try_end_55
    .catchall {:try_start_51 .. :try_end_55} :catchall_55

    .line 5806
    :catchall_55
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 5786
    .end local v0    # "callingUserId":I
    .end local v1    # "ident":J
    :cond_5a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only set the default display"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5782
    :cond_62
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must hold permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearForcedDisplaySize(I)V
    .registers 9
    .param p1, "displayId"    # I

    .line 5694
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4e

    .line 5700
    if-nez p1, :cond_46

    .line 5703
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5705
    .local v0, "ident":J
    :try_start_10
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_41

    :try_start_13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5706
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 5707
    .local v3, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v3, :cond_32

    .line 5711
    sget v4, Lcom/android/server/wm/WindowManagerServiceInjector;->sMiuiDisplayWidth:I

    sget v5, Lcom/android/server/wm/WindowManagerServiceInjector;->sMiuiDisplayHeight:I

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplaySizeLocked(Lcom/android/server/wm/DisplayContent;II)V

    .line 5715
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "display_size_forced"

    const-string v6, ""

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5718
    .end local v3    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_32
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_13 .. :try_end_33} :catchall_3b

    :try_start_33
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_41

    .line 5720
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5721
    nop

    .line 5722
    return-void

    .line 5718
    :catchall_3b
    move-exception v3

    :try_start_3c
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    :try_start_3d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_41

    .line 5720
    :catchall_41
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 5701
    .end local v0    # "ident":J
    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only set the default display"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5697
    :cond_4e
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must hold permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearWindowContentFrameStats(Landroid/os/IBinder;)Z
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;

    .line 6584
    const-string v0, "android.permission.FRAME_STATS"

    const-string v1, "clearWindowContentFrameStats()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 6588
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6589
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 6590
    .local v1, "windowState":Lcom/android/server/wm/WindowState;
    const/4 v2, 0x0

    if-nez v1, :cond_20

    .line 6591
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_34

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 6593
    :cond_20
    :try_start_20
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 6594
    .local v3, "surfaceController":Lcom/android/server/wm/WindowSurfaceController;
    if-nez v3, :cond_2b

    .line 6595
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_34

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 6597
    :cond_2b
    :try_start_2b
    invoke-virtual {v3}, Lcom/android/server/wm/WindowSurfaceController;->clearWindowContentFrameStats()Z

    move-result v2

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_34

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 6598
    .end local v1    # "windowState":Lcom/android/server/wm/WindowState;
    .end local v3    # "surfaceController":Lcom/android/server/wm/WindowSurfaceController;
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 6586
    :cond_3a
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FRAME_STATS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method closeSurfaceTransaction(Ljava/lang/String;)V
    .registers 6
    .param p1, "where"    # Ljava/lang/String;

    .line 964
    const-wide/16 v0, 0x20

    :try_start_2
    const-string v2, "closeSurfaceTransaction"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 965
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_28

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 967
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->traceStateLocked(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_1d

    .line 969
    :try_start_10
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 970
    nop

    .line 971
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_22

    :try_start_15
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_28

    .line 973
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 974
    nop

    .line 975
    return-void

    .line 969
    :catchall_1d
    move-exception v3

    :try_start_1e
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v3

    .line 971
    :catchall_22
    move-exception v3

    monitor-exit v2
    :try_end_24
    .catchall {:try_start_1e .. :try_end_24} :catchall_22

    :try_start_24
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_28

    .line 973
    :catchall_28
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method public closeSystemDialogs(Ljava/lang/String;)V
    .registers 4
    .param p1, "reason"    # Ljava/lang/String;

    .line 3412
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3413
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->closeSystemDialogs(Ljava/lang/String;)V

    .line 3414
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3415
    return-void

    .line 3414
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public computeNewConfiguration(I)Landroid/content/res/Configuration;
    .registers 4
    .param p1, "displayId"    # I

    .line 4792
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4793
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->computeNewConfigurationLocked(I)Landroid/content/res/Configuration;

    move-result-object v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 4794
    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public containsDismissKeyguardWindow(Landroid/os/IBinder;)Z
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;

    .line 3189
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3190
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .line 3191
    .local v1, "wtoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->containsDismissKeyguardWindow()Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x1

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 3192
    .end local v1    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public containsShowWhenLockedWindow(Landroid/os/IBinder;)Z
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;

    .line 3178
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3179
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .line 3180
    .local v1, "wtoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->containsShowWhenLockedWindow()Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x1

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 3181
    .end local v1    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public continueSurfaceLayout()V
    .registers 3

    .line 3168
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3169
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->continueLayout()V

    .line 3170
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3171
    return-void

    .line 3170
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public createInputConsumer(Landroid/os/Looper;Ljava/lang/String;Landroid/view/InputEventReceiver$Factory;)Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;
    .registers 6
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "inputEventReceiverFactory"    # Landroid/view/InputEventReceiver$Factory;

    .line 6529
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6530
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wm/InputMonitor;->createInputConsumer(Landroid/os/Looper;Ljava/lang/String;Landroid/view/InputEventReceiver$Factory;)Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    move-result-object v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 6531
    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public createInputConsumer(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;)V
    .registers 11
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "inputChannel"    # Landroid/view/InputChannel;

    .line 6536
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6537
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 6538
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    .line 6537
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/InputMonitor;->createInputConsumer(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;ILandroid/os/UserHandle;)V

    .line 6539
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6540
    return-void

    .line 6539
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method createWatermarkInTransaction()V
    .registers 9

    .line 6384
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    if-eqz v0, :cond_5

    .line 6385
    return-void

    .line 6388
    :cond_5
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/setup.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6389
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 6390
    .local v1, "in":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 6392
    .local v2, "ind":Ljava/io/DataInputStream;
    :try_start_e
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v3

    .line 6393
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v3

    .line 6394
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 6395
    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_38

    .line 6396
    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 6397
    .local v4, "toks":[Ljava/lang/String;
    if-eqz v4, :cond_38

    array-length v5, v4

    if-lez v5, :cond_38

    .line 6399
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    .line 6400
    .local v5, "displayContent":Lcom/android/server/wm/DisplayContent;
    new-instance v6, Lcom/android/server/wm/Watermark;

    iget-object v7, v5, Lcom/android/server/wm/DisplayContent;->mRealDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-direct {v6, v5, v7, v4}, Lcom/android/server/wm/Watermark;-><init>(Lcom/android/server/wm/DisplayContent;Landroid/util/DisplayMetrics;[Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;
    :try_end_38
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_38} :catch_60
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_38} :catch_51
    .catchall {:try_start_e .. :try_end_38} :catchall_3f

    .line 6407
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "toks":[Ljava/lang/String;
    .end local v5    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_38
    nop

    .line 6409
    :try_start_39
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_3d

    .line 6411
    :goto_3c
    goto :goto_6d

    .line 6410
    :catch_3d
    move-exception v3

    goto :goto_3c

    .line 6407
    :catchall_3f
    move-exception v3

    if-nez v2, :cond_4a

    .line 6412
    if-eqz v1, :cond_50

    .line 6414
    :try_start_44
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48

    .line 6416
    goto :goto_50

    .line 6415
    :catch_48
    move-exception v4

    goto :goto_50

    .line 6409
    :cond_4a
    :try_start_4a
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4e

    .line 6411
    :goto_4d
    goto :goto_50

    .line 6410
    :catch_4e
    move-exception v4

    goto :goto_4d

    .line 6416
    :cond_50
    :goto_50
    throw v3

    .line 6405
    :catch_51
    move-exception v3

    .line 6407
    if-eqz v2, :cond_58

    .line 6409
    :try_start_54
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_3d

    goto :goto_3c

    .line 6412
    :cond_58
    if-eqz v1, :cond_6d

    .line 6414
    :try_start_5a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5e

    .line 6416
    :goto_5d
    goto :goto_6d

    .line 6415
    :catch_5e
    move-exception v3

    goto :goto_5d

    .line 6404
    :catch_60
    move-exception v3

    .line 6407
    if-eqz v2, :cond_67

    .line 6409
    :try_start_63
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_3d

    goto :goto_3c

    .line 6412
    :cond_67
    if-eqz v1, :cond_6d

    .line 6414
    :try_start_69
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_5e

    goto :goto_5d

    .line 6419
    :cond_6d
    :goto_6d
    return-void
.end method

.method public deferSurfaceLayout()V
    .registers 3

    .line 3159
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3160
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->deferLayout()V

    .line 3161
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3162
    return-void

    .line 3161
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public destroyInputConsumer(Ljava/lang/String;)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 6544
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6545
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/InputMonitor;->destroyInputConsumer(Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 6546
    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method destroyPreservedSurfaceLocked()V
    .registers 4

    .line 5507
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDestroyPreservedSurface:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1a

    .line 5508
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mDestroyPreservedSurface:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 5509
    .local v1, "w":Lcom/android/server/wm/WindowState;
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->destroyPreservedSurfaceLocked()V

    .line 5507
    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 5511
    .end local v0    # "i":I
    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDestroyPreservedSurface:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5512
    return-void
.end method

.method public detectSafeMode()Z
    .registers 10

    .line 4860
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/InputMonitor;->waitForInputDevicesReady(J)Z

    move-result v0

    if-nez v0, :cond_11

    .line 4862
    const-string v0, "WindowManager"

    const-string v1, "Devices still not ready after waiting 1000 milliseconds before attempting to detect safe mode."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4867
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 4868
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "safe_boot_disallowed"

    .line 4867
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_22

    .line 4869
    return v2

    .line 4872
    :cond_22
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/16 v1, 0x52

    const/16 v3, -0x100

    const/4 v4, -0x1

    invoke-virtual {v0, v4, v3, v1}, Lcom/android/server/input/InputManagerService;->getKeyCodeState(III)I

    move-result v0

    .line 4874
    .local v0, "menuState":I
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/16 v5, 0x2f

    invoke-virtual {v1, v4, v3, v5}, Lcom/android/server/input/InputManagerService;->getKeyCodeState(III)I

    move-result v1

    .line 4875
    .local v1, "sState":I
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/16 v6, 0x201

    const/16 v7, 0x17

    invoke-virtual {v5, v4, v6, v7}, Lcom/android/server/input/InputManagerService;->getKeyCodeState(III)I

    move-result v5

    .line 4877
    .local v5, "dpadState":I
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const v7, 0x10004

    const/16 v8, 0x110

    invoke-virtual {v6, v4, v7, v8}, Lcom/android/server/input/InputManagerService;->getScanCodeState(III)I

    move-result v6

    .line 4879
    .local v6, "trackballState":I
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/16 v8, 0x19

    invoke-virtual {v7, v4, v3, v8}, Lcom/android/server/input/InputManagerService;->getKeyCodeState(III)I

    move-result v3

    .line 4881
    .local v3, "volumeDownState":I
    const/4 v4, 0x1

    if-gtz v0, :cond_60

    if-gtz v1, :cond_60

    if-gtz v5, :cond_60

    if-gtz v6, :cond_60

    if-lez v3, :cond_5e

    goto :goto_60

    :cond_5e
    move v7, v2

    goto :goto_61

    :cond_60
    :goto_60
    move v7, v4

    :goto_61
    iput-boolean v7, p0, Lcom/android/server/wm/WindowManagerService;->mSafeMode:Z

    .line 4884
    :try_start_63
    const-string/jumbo v7, "persist.sys.safemode"

    invoke-static {v7, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_75

    const-string/jumbo v7, "ro.sys.safemode"

    .line 4885
    invoke-static {v7, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_7f

    .line 4886
    :cond_75
    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mSafeMode:Z

    .line 4887
    const-string/jumbo v4, "persist.sys.safemode"

    const-string v7, ""

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_63 .. :try_end_7f} :catch_80

    .line 4890
    :cond_7f
    goto :goto_81

    .line 4889
    :catch_80
    move-exception v4

    .line 4891
    :goto_81
    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mSafeMode:Z

    if-eqz v4, :cond_ca

    .line 4892
    const-string v4, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SAFE MODE ENABLED (menu="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " s="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " dpad="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " trackball="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4895
    const-string/jumbo v4, "ro.sys.safemode"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_d1

    .line 4896
    const-string/jumbo v2, "ro.sys.safemode"

    const-string v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d1

    .line 4899
    :cond_ca
    const-string v2, "WindowManager"

    const-string v4, "SAFE MODE not enabled"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4901
    :cond_d1
    :goto_d1
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mSafeMode:Z

    invoke-interface {v2, v4}, Lcom/android/server/policy/WindowManagerPolicy;->setSafeMode(Z)V

    .line 4902
    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mSafeMode:Z

    return v2
.end method

.method public disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "tag"    # Ljava/lang/String;

    .line 3274
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5d

    .line 3279
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 3280
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3279
    invoke-static {v0, v1}, Lcom/android/server/wm/WindowManagerServiceInjector;->isAllowedDisableKeyguard(Landroid/app/AppOpsManager;I)Z

    move-result v0

    if-nez v0, :cond_17

    .line 3281
    return-void

    .line 3286
    :cond_17
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_2d

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 3287
    const-string v0, "WindowManager"

    const-string v1, "current mode is SecurityMode, ignore disableKeyguard"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3288
    return-void

    .line 3292
    :cond_2d
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result v0

    if-nez v0, :cond_40

    .line 3293
    const-string v0, "WindowManager"

    const-string/jumbo v1, "non-current profiles, ignore disableKeyguard"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3294
    return-void

    .line 3297
    :cond_40
    if-eqz p1, :cond_54

    .line 3301
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardDisableHandler:Lcom/android/server/wm/KeyguardDisableHandler;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardDisableHandler:Lcom/android/server/wm/KeyguardDisableHandler;

    const/4 v2, 0x1

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/KeyguardDisableHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/KeyguardDisableHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3303
    return-void

    .line 3298
    :cond_54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "token == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3276
    :cond_5d
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disableNonVrUi(Z)V
    .registers 7
    .param p1, "disable"    # Z

    .line 8031
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8033
    xor-int/lit8 v1, p1, 0x1

    .line 8034
    .local v1, "showAlertWindowNotifications":Z
    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mShowAlertWindowNotifications:Z

    if-ne v1, v2, :cond_11

    .line 8035
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_32

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 8037
    :cond_11
    :try_start_11
    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mShowAlertWindowNotifications:Z

    .line 8039
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_1b
    if-ltz v2, :cond_2d

    .line 8040
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Session;

    .line 8041
    .local v3, "s":Lcom/android/server/wm/Session;
    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mShowAlertWindowNotifications:Z

    invoke-virtual {v3, v4}, Lcom/android/server/wm/Session;->setShowingAlertWindowNotificationAllowed(Z)V

    .line 8039
    .end local v3    # "s":Lcom/android/server/wm/Session;
    add-int/lit8 v2, v2, -0x1

    goto :goto_1b

    .line 8043
    .end local v1    # "showAlertWindowNotifications":Z
    .end local v2    # "i":I
    :cond_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_11 .. :try_end_2e} :catchall_32

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 8044
    return-void

    .line 8043
    :catchall_32
    move-exception v1

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardDismissCallback;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .line 3374
    const-string v0, "android.permission.CONTROL_KEYGUARD"

    const-string v1, "dismissKeyguard"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 3378
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 3379
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3378
    invoke-static {v0, v1}, Lcom/android/server/wm/WindowManagerServiceInjector;->isAllowedDisableKeyguard(Landroid/app/AppOpsManager;I)Z

    move-result v0

    if-nez v0, :cond_17

    .line 3380
    return-void

    .line 3383
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_1a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3384
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->dismissKeyguardLw(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 3385
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3386
    return-void

    .line 3385
    :catchall_27
    move-exception v1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 3375
    :cond_2d
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires CONTROL_KEYGUARD permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method dispatchNewAnimatorScaleLocked(Lcom/android/server/wm/Session;)V
    .registers 4
    .param p1, "session"    # Lcom/android/server/wm/Session;

    .line 3528
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x22

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3529
    return-void
.end method

.method public displayReady()V
    .registers 6

    .line 4906
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 4907
    .local v0, "displayCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_1f

    .line 4908
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 4909
    .local v2, "display":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/wm/WindowManagerService;->displayReady(I)V

    .line 4907
    .end local v2    # "display":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 4913
    .end local v1    # "i":I
    :cond_1f
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_22
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4914
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 4915
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mMaxUiWidth:I

    if-lez v3, :cond_32

    .line 4916
    iget v3, p0, Lcom/android/server/wm/WindowManagerService;->mMaxUiWidth:I

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->setMaxUiWidth(I)V

    .line 4918
    :cond_32
    invoke-direct {p0, v2}, Lcom/android/server/wm/WindowManagerService;->readForcedDisplayPropertiesLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 4919
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    .line 4920
    .end local v2    # "displayContent":Lcom/android/server/wm/DisplayContent;
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_22 .. :try_end_39} :catchall_74

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4923
    const/4 v1, 0x0

    :try_start_3d
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v2, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)Z
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_42} :catch_43

    .line 4925
    goto :goto_44

    .line 4924
    :catch_43
    move-exception v2

    .line 4927
    :goto_44
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_47
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4928
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.touchscreen"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mIsTouchDevice:Z

    .line 4930
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->configureDisplayPolicy()V

    .line 4931
    monitor-exit v2
    :try_end_60
    .catchall {:try_start_47 .. :try_end_60} :catchall_6e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4934
    :try_start_63
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v2, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)Z
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_63 .. :try_end_68} :catch_69

    .line 4936
    goto :goto_6a

    .line 4935
    :catch_69
    move-exception v1

    .line 4938
    :goto_6a
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->updateCircularDisplayMaskIfNeeded()V

    .line 4939
    return-void

    .line 4931
    :catchall_6e
    move-exception v1

    :try_start_6f
    monitor-exit v2
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 4920
    :catchall_74
    move-exception v2

    :try_start_75
    monitor-exit v1
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public dontOverrideDisplayInfo(I)V
    .registers 6
    .param p1, "displayId"    # I

    .line 7575
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7576
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 7577
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_1a

    .line 7585
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/wm/DisplayContent;->mShouldOverrideDisplayConfiguration:Z

    .line 7586
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayInfoOverrideFromWindowManager(ILandroid/view/DisplayInfo;)V

    .line 7588
    .end local v1    # "dc":Lcom/android/server/wm/DisplayContent;
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7589
    return-void

    .line 7578
    .restart local v1    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_1a
    :try_start_1a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Trying to register a non existent display."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 7588
    .end local v1    # "dc":Lcom/android/server/wm/DisplayContent;
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 7026
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPriorityDumper:Lcom/android/server/utils/PriorityDump$PriorityDumper;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/utils/PriorityDump;->dump(Lcom/android/server/utils/PriorityDump$PriorityDumper;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 7027
    return-void
.end method

.method public enableScreenAfterBoot()V
    .registers 6

    .line 3676
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3685
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-eqz v1, :cond_f

    .line 3686
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_2b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3688
    :cond_f
    const/4 v1, 0x1

    :try_start_10
    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    .line 3689
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->hideBootMessagesLocked()V

    .line 3692
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x17

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 3693
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_2b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3695
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->systemBooted()V

    .line 3697
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    .line 3698
    return-void

    .line 3693
    :catchall_2b
    move-exception v1

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public enableScreenIfNeeded()V
    .registers 3

    .line 3702
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3703
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    .line 3704
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3705
    return-void

    .line 3704
    :catchall_e
    move-exception v1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method enableScreenIfNeededLocked()V
    .registers 3

    .line 3716
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v0, :cond_5

    .line 3717
    return-void

    .line 3719
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    if-nez v0, :cond_e

    .line 3720
    return-void

    .line 3722
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 3723
    return-void
.end method

.method public endProlongedAnimations()V
    .registers 1

    .line 2987
    return-void
.end method

.method public executeAppTransition()V
    .registers 3

    .line 2991
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v1, "executeAppTransition()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 2995
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3000
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v1

    if-eqz v1, :cond_26

    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mPendingExecuteAppTransition:Z

    if-nez v1, :cond_26

    .line 3001
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->setReady()V

    .line 3002
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 3004
    :cond_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_d .. :try_end_27} :catchall_2b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3005
    return-void

    .line 3004
    :catchall_2b
    move-exception v1

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 2992
    :cond_31
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V
    .registers 4
    .param p1, "callback"    # Landroid/view/IOnKeyguardExitResult;

    .line 3325
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1f

    .line 3330
    if-eqz p1, :cond_17

    .line 3334
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    new-instance v1, Lcom/android/server/wm/WindowManagerService$9;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/WindowManagerService$9;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IOnKeyguardExitResult;)V

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->exitKeyguardSecurely(Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;)V

    .line 3344
    return-void

    .line 3331
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3327
    :cond_1f
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method finishDrawingWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)V
    .registers 9
    .param p1, "session"    # Lcom/android/server/wm/Session;
    .param p2, "client"    # Landroid/view/IWindow;

    .line 2547
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2549
    .local v0, "origId":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_43

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2550
    const/4 v3, 0x0

    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 2553
    .local v3, "win":Lcom/android/server/wm/WindowState;
    if-eqz v3, :cond_34

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateAnimator;->finishDrawingLocked()Z

    move-result v4

    if-eqz v4, :cond_34

    .line 2554
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x100000

    and-int/2addr v4, v5

    if-eqz v4, :cond_2c

    .line 2555
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    iget v5, v4, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v4, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 2558
    :cond_2c
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 2559
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 2561
    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    :cond_34
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_7 .. :try_end_35} :catchall_3d

    :try_start_35
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_43

    .line 2563
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2564
    nop

    .line 2565
    return-void

    .line 2561
    :catchall_3d
    move-exception v3

    :try_start_3e
    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    :try_start_3f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_43
    .catchall {:try_start_3f .. :try_end_43} :catchall_43

    .line 2563
    :catchall_43
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method finishFetchingAppTransitionSpecs()V
    .registers 4

    .line 8176
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8177
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-boolean v1, v1, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsPending:Z

    if-eqz v1, :cond_1b

    .line 8178
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 8179
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsPending:Z

    .line 8180
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 8182
    :cond_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_20

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 8183
    return-void

    .line 8182
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method finishSeamlessRotation()V
    .registers 2

    .line 8098
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mRotatingSeamlessly:Z

    .line 8099
    return-void
.end method

.method public freezeRotation(I)V
    .registers 8
    .param p1, "rotation"    # I

    .line 4148
    const-string v0, "android.permission.SET_ORIENTATION"

    const-string v1, "freezeRotation()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 4152
    const/4 v0, -0x1

    if-lt p1, v0, :cond_31

    const/4 v1, 0x3

    if-gt p1, v1, :cond_31

    .line 4157
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayRotation()I

    move-result v1

    .line 4161
    .local v1, "defaultDisplayRotation":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4163
    .local v2, "origId":J
    :try_start_18
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/4 v5, 0x1

    .line 4164
    if-ne p1, v0, :cond_1f

    .line 4163
    move v0, v1

    goto :goto_20

    :cond_1f
    move v0, p1

    :goto_20
    invoke-interface {v4, v5, v0}, Lcom/android/server/policy/WindowManagerPolicy;->setUserRotationMode(II)V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_2c

    .line 4166
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4167
    nop

    .line 4169
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(ZZ)V

    .line 4170
    return-void

    .line 4166
    :catchall_2c
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 4153
    .end local v1    # "defaultDisplayRotation":I
    .end local v2    # "origId":J
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Rotation argument must be -1 or a valid rotation constant."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4150
    :cond_39
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_ORIENTATION permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAnimationScale(I)F
    .registers 3
    .param p1, "which"    # I

    .line 3506
    packed-switch p1, :pswitch_data_e

    .line 3511
    const/4 v0, 0x0

    return v0

    .line 3509
    :pswitch_5
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    return v0

    .line 3508
    :pswitch_8
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    return v0

    .line 3507
    :pswitch_b
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    return v0

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public getAnimationScales()[F
    .registers 4

    .line 3516
    const/4 v0, 0x3

    new-array v0, v0, [F

    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    const/4 v2, 0x2

    aput v1, v0, v2

    return-object v0
.end method

.method public getBaseDisplayDensity(I)I
    .registers 5
    .param p1, "displayId"    # I

    .line 5737
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5738
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 5739
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_1f

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->hasAccess(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 5740
    iget v2, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 5742
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_1f
    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5743
    const/4 v0, -0x1

    return v0

    .line 5742
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getBaseDisplaySize(ILandroid/graphics/Point;)V
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "size"    # Landroid/graphics/Point;

    .line 5564
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5565
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 5566
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_20

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->hasAccess(I)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 5567
    iget v2, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iput v2, p2, Landroid/graphics/Point;->x:I

    .line 5568
    iget v2, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    iput v2, p2, Landroid/graphics/Point;->y:I

    .line 5570
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5571
    return-void

    .line 5570
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getCameraLensCoverState()I
    .registers 5

    .line 3572
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v1, -0x1

    const/16 v2, -0x100

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v0

    .line 3574
    .local v0, "sw":I
    if-lez v0, :cond_f

    .line 3576
    const/4 v1, 0x1

    return v1

    .line 3577
    :cond_f
    if-nez v0, :cond_13

    .line 3579
    const/4 v1, 0x0

    return v1

    .line 3582
    :cond_13
    return v1
.end method

.method public getCastMode()Z
    .registers 2

    .line 8409
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mIsCastModeRotationChanged:Z

    return v0
.end method

.method public getCastStackId()I
    .registers 2

    .line 8405
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mCastStackId:I

    return v0
.end method

.method public getCurrentAnimatorScale()F
    .registers 3

    .line 3522
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3523
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/server/wm/WindowManagerService;->animationScalesCheck(I)F

    move-result v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 3524
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getCurrentImeTouchRegion()Landroid/graphics/Region;
    .registers 4

    .line 6551
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RESTRICTED_VR_ACCESS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_29

    .line 6554
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6555
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    .line 6556
    .local v1, "r":Landroid/graphics/Region;
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_1e

    .line 6557
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 6559
    :cond_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 6560
    .end local v1    # "r":Landroid/graphics/Region;
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 6552
    :cond_29
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "getCurrentImeTouchRegion is restricted to VR services"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;
    .registers 3

    .line 7204
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultDisplayRotation()I
    .registers 3

    .line 4281
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4282
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 4283
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getDisplaysInFocusOrder(Landroid/util/SparseIntArray;)V
    .registers 4
    .param p1, "displaysInFocusOrder"    # Landroid/util/SparseIntArray;

    .line 5874
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5875
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplaysInFocusOrder(Landroid/util/SparseIntArray;)V

    .line 5876
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5877
    return-void

    .line 5876
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getDockedDividerInsetsLw()I
    .registers 2

    .line 6679
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->getContentInsets()I

    move-result v0

    return v0
.end method

.method public getDockedStackSide()I
    .registers 4

    .line 7350
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7351
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 7352
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .line 7353
    .local v1, "dockedStack":Lcom/android/server/wm/TaskStack;
    if-nez v1, :cond_12

    const/4 v2, -0x1

    goto :goto_16

    :cond_12
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v2

    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 7354
    .end local v1    # "dockedStack":Lcom/android/server/wm/TaskStack;
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getDragLayerLocked()I
    .registers 3

    .line 607
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/16 v1, 0x7e0

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x2710

    add-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method getImeFocusStackLocked()Lcom/android/server/wm/TaskStack;
    .registers 2

    .line 4855
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 4856
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    .line 4855
    :goto_16
    return-object v0
.end method

.method public getInitialDisplayDensity(I)I
    .registers 5
    .param p1, "displayId"    # I

    .line 5726
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5727
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 5728
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_1f

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->hasAccess(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 5729
    iget v2, v1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 5731
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_1f
    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5732
    const/4 v0, -0x1

    return v0

    .line 5731
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getInitialDisplaySize(ILandroid/graphics/Point;)V
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "size"    # Landroid/graphics/Point;

    .line 5553
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5554
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 5555
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_20

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->hasAccess(I)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 5556
    iget v2, v1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iput v2, p2, Landroid/graphics/Point;->x:I

    .line 5557
    iget v2, v1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    iput v2, p2, Landroid/graphics/Point;->y:I

    .line 5559
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5560
    return-void

    .line 5559
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getInputMethodWindowLw()Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .registers 2

    .line 3130
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method public getInputMonitor()Lcom/android/server/wm/InputMonitor;
    .registers 2

    .line 1263
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    return-object v0
.end method

.method public getLidState()I
    .registers 5

    .line 3549
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/16 v3, -0x100

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v0

    .line 3551
    .local v0, "sw":I
    if-lez v0, :cond_d

    .line 3553
    return v1

    .line 3554
    :cond_d
    if-nez v0, :cond_11

    .line 3556
    const/4 v1, 0x1

    return v1

    .line 3559
    :cond_11
    return v2
.end method

.method public getNavBarPosition()I
    .registers 4

    .line 6516
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6519
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 6520
    .local v1, "defaultDisplayContent":Lcom/android/server/wm/DisplayContent;
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/android/server/wm/DisplayContent;->performLayout(ZZ)V

    .line 6522
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy;->getNavBarPosition()I

    move-result v2

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 6523
    .end local v1    # "defaultDisplayContent":Lcom/android/server/wm/DisplayContent;
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getPendingAppTransition()I
    .registers 2

    .line 2863
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v0

    return v0
.end method

.method public getPreferredOptionsPanelGravity()I
    .registers 9

    .line 4384
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4386
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 4387
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v2

    .line 4388
    .local v2, "rotation":I
    iget v3, v1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v4, v1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    const/16 v5, 0x55

    const v6, 0x800053

    const/16 v7, 0x51

    if-ge v3, v4, :cond_33

    .line 4390
    packed-switch v2, :pswitch_data_52

    .line 4393
    monitor-exit v0

    goto :goto_2f

    .line 4399
    :pswitch_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_4b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v6

    .line 4397
    :pswitch_25
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_4b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v7

    .line 4395
    :pswitch_2a
    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_4b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v5

    .line 4393
    :goto_2f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v7

    .line 4404
    :cond_33
    packed-switch v2, :pswitch_data_5c

    .line 4407
    :try_start_36
    monitor-exit v0

    goto :goto_47

    .line 4413
    :pswitch_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_4b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v7

    .line 4411
    :pswitch_3d
    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_4b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v6

    .line 4409
    :pswitch_42
    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_4b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v7

    .line 4407
    :goto_47
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v5

    .line 4415
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "rotation":I
    :catchall_4b
    move-exception v1

    :try_start_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_25
        :pswitch_20
    .end packed-switch

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_42
        :pswitch_3d
        :pswitch_38
    .end packed-switch
.end method

.method public getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;
    .registers 2

    .line 3020
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    return-object v0
.end method

.method public getScreenProjectionPrivaceState()I
    .registers 2

    .line 736
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mIsScreenProjectionPrivace:I

    return v0
.end method

.method public getScreenProjectionState()I
    .registers 2

    .line 732
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mScreenProjectionOnOrOff:I

    return v0
.end method

.method public getStableInsets(ILandroid/graphics/Rect;)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "outInsets"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7438
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7439
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->getStableInsetsLocked(ILandroid/graphics/Rect;)V

    .line 7440
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7441
    return-void

    .line 7440
    :catchall_e
    move-exception v1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getStableInsetsLocked(ILandroid/graphics/Rect;)V
    .registers 11
    .param p1, "displayId"    # I
    .param p2, "outInsets"    # Landroid/graphics/Rect;

    .line 7444
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 7445
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 7446
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_1d

    .line 7447
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 7448
    .local v1, "di":Landroid/view/DisplayInfo;
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v3, v1, Landroid/view/DisplayInfo;->rotation:I

    iget v4, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v5, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v6, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    move-object v7, p2

    invoke-interface/range {v2 .. v7}, Lcom/android/server/policy/WindowManagerPolicy;->getStableInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 7451
    .end local v1    # "di":Landroid/view/DisplayInfo;
    :cond_1d
    return-void
.end method

.method public getStackBounds(IILandroid/graphics/Rect;)V
    .registers 6
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .line 3113
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3114
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->getStack(II)Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .line 3115
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v1, :cond_16

    .line 3116
    invoke-virtual {v1, p3}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 3117
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3119
    :cond_16
    :try_start_16
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 3120
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3121
    return-void

    .line 3120
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getTaskSnapshot(IIZ)Landroid/app/ActivityManager$TaskSnapshot;
    .registers 6
    .param p1, "taskId"    # I
    .param p2, "userId"    # I
    .param p3, "reducedResolution"    # Z

    .line 4121
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshot(IIZZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v0

    return-object v0
.end method

.method public getTransitionAnimationScaleLocked()F
    .registers 2

    .line 3501
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerService;->animationScalesCheck(I)F

    move-result v0

    return v0
.end method

.method public getWindowAnimationScaleLocked()F
    .registers 2

    .line 3497
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerService;->animationScalesCheck(I)F

    move-result v0

    return v0
.end method

.method public getWindowContentFrameStats(Landroid/os/IBinder;)Landroid/view/WindowContentFrameStats;
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;

    .line 6603
    const-string v0, "android.permission.FRAME_STATS"

    const-string v1, "getWindowContentFrameStats()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 6607
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6608
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 6609
    .local v1, "windowState":Lcom/android/server/wm/WindowState;
    const/4 v2, 0x0

    if-nez v1, :cond_20

    .line 6610
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_48

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 6612
    :cond_20
    :try_start_20
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 6613
    .local v3, "surfaceController":Lcom/android/server/wm/WindowSurfaceController;
    if-nez v3, :cond_2b

    .line 6614
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_48

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 6616
    :cond_2b
    :try_start_2b
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mTempWindowRenderStats:Landroid/view/WindowContentFrameStats;

    if-nez v4, :cond_36

    .line 6617
    new-instance v4, Landroid/view/WindowContentFrameStats;

    invoke-direct {v4}, Landroid/view/WindowContentFrameStats;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mTempWindowRenderStats:Landroid/view/WindowContentFrameStats;

    .line 6619
    :cond_36
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mTempWindowRenderStats:Landroid/view/WindowContentFrameStats;

    .line 6620
    .local v4, "stats":Landroid/view/WindowContentFrameStats;
    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowSurfaceController;->getWindowContentFrameStats(Landroid/view/WindowContentFrameStats;)Z

    move-result v5

    if-nez v5, :cond_43

    .line 6621
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_2b .. :try_end_3f} :catchall_48

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 6623
    :cond_43
    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_48

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v4

    .line 6624
    .end local v1    # "windowState":Lcom/android/server/wm/WindowState;
    .end local v3    # "surfaceController":Lcom/android/server/wm/WindowSurfaceController;
    .end local v4    # "stats":Landroid/view/WindowContentFrameStats;
    :catchall_48
    move-exception v1

    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 6605
    :cond_4e
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FRAME_STATS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getWindowDisplayFrame(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "session"    # Lcom/android/server/wm/Session;
    .param p2, "client"    # Landroid/view/IWindow;
    .param p3, "outDisplayFrame"    # Landroid/graphics/Rect;

    .line 2019
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2020
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 2021
    .local v1, "win":Lcom/android/server/wm/WindowState;
    if-nez v1, :cond_15

    .line 2022
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 2023
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2025
    :cond_15
    :try_start_15
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {p3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2026
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2027
    return-void

    .line 2026
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;

    .line 2042
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2043
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 2044
    .local v1, "window":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_13

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWindowId:Lcom/android/server/wm/WindowState$WindowId;

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 2045
    .end local v1    # "window":Lcom/android/server/wm/WindowState;
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getWindowManagerLock()Ljava/lang/Object;
    .registers 2

    .line 7253
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    return-object v0
.end method

.method handleAnimatingStoppedAndTransitionLocked()I
    .registers 6

    .line 5992
    const/4 v0, 0x0

    .line 5994
    .local v0, "changes":I
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->setIdle()V

    .line 5996
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_e
    if-ltz v1, :cond_20

    .line 5997
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    .line 5998
    .local v3, "token":Landroid/os/IBinder;
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    .line 5996
    .end local v3    # "token":Landroid/os/IBinder;
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 6000
    .end local v1    # "i":I
    :cond_20
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 6003
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 6005
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    iget-object v3, v1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v3}, Lcom/android/server/wm/WallpaperController;->hideDeferredWallpapersIfNeeded()V

    .line 6007
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->onAppTransitionDone()V

    .line 6009
    or-int/2addr v0, v2

    .line 6012
    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    .line 6013
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iput-boolean v2, v3, Lcom/android/server/wm/RootWindowContainer;->mWallpaperMayChange:Z

    .line 6016
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 6018
    return v0
.end method

.method public hasNavigationBar()Z
    .registers 2

    .line 6565
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->hasNavigationBar()Z

    move-result v0

    return v0
.end method

.method hasWideColorGamutSupport()Z
    .registers 4

    .line 8047
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mHasWideColorGamutSupport:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    const-string/jumbo v0, "persist.sys.sf.native_mode"

    .line 8048
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_10

    goto :goto_11

    .line 8047
    :cond_10
    move v1, v2

    :goto_11
    return v1
.end method

.method public hideBootMessagesLocked()V
    .registers 2

    .line 3883
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    if-eqz v0, :cond_c

    .line 3884
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    .line 3885
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->hideBootMessages()V

    .line 3887
    :cond_c
    return-void
.end method

.method public inSurfaceTransaction(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "exec"    # Ljava/lang/Runnable;

    .line 8019
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8020
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1a

    .line 8022
    :try_start_9
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_15

    .line 8024
    :try_start_c
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 8025
    nop

    .line 8026
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 8027
    return-void

    .line 8024
    :catchall_15
    move-exception v1

    :try_start_16
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v1

    .line 8026
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public initializeRecentsAnimation(ILandroid/view/IRecentsAnimationRunner;Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;ILandroid/util/SparseBooleanArray;)V
    .registers 8
    .param p1, "targetActivityType"    # I
    .param p2, "recentsAnimationRunner"    # Landroid/view/IRecentsAnimationRunner;
    .param p3, "callbacks"    # Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;
    .param p4, "displayId"    # I
    .param p5, "recentTaskIds"    # Landroid/util/SparseBooleanArray;

    .line 3011
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3012
    new-instance v1, Lcom/android/server/wm/RecentsAnimationController;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/android/server/wm/RecentsAnimationController;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IRecentsAnimationRunner;Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;I)V

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    .line 3014
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->updateBooster()V

    .line 3015
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    invoke-virtual {v1, p1, p5}, Lcom/android/server/wm/RecentsAnimationController;->initialize(ILandroid/util/SparseBooleanArray;)V

    .line 3016
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3017
    return-void

    .line 3016
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z
    .registers 6
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;

    .line 5529
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5531
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_16

    .line 5532
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_3d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 5543
    :cond_16
    :try_start_16
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v1, v1, Lcom/android/server/wm/Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v1, v1, Lcom/android/server/wm/Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    .line 5544
    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v1, v3, :cond_37

    .line 5545
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_16 .. :try_end_33} :catchall_3d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 5547
    :cond_37
    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_3d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5548
    const/4 v0, 0x0

    return v0

    .line 5547
    :catchall_3d
    move-exception v1

    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method intersectDisplayInsetBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "display"    # Landroid/graphics/Rect;
    .param p2, "insets"    # Landroid/graphics/Rect;
    .param p3, "inOutBounds"    # Landroid/graphics/Rect;

    .line 7454
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTmpRect3:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 7455
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTmpRect3:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 7456
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTmpRect3:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 7457
    return-void
.end method

.method public isAppTransitionSkipped()Z
    .registers 2

    .line 8186
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mMiuiGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiGestureController;->isAppTransitionSkipped()Z

    move-result v0

    return v0
.end method

.method isCurrentProfileLocked(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 3668
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_6

    return v1

    .line 3669
    :cond_6
    const/4 v0, 0x0

    move v2, v0

    .local v2, "i":I
    :goto_8
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentProfileIds:[I

    array-length v3, v3

    if-ge v2, v3, :cond_17

    .line 3670
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentProfileIds:[I

    aget v3, v3, v2

    if-ne v3, p1, :cond_14

    return v1

    .line 3669
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 3672
    .end local v2    # "i":I
    :cond_17
    return v0
.end method

.method public isGestureOpen()Z
    .registers 2

    .line 8210
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mMiuiGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiGestureController;->isGestureOpen()Z

    move-result v0

    return v0
.end method

.method public isKeyguardLocked()Z
    .registers 2

    .line 3348
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardLocked()Z

    move-result v0

    return v0
.end method

.method public isKeyguardSecure()Z
    .registers 5

    .line 3357
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 3358
    .local v0, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3360
    .local v1, "origId":J
    :try_start_8
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v3, v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardSecure(I)Z

    move-result v3
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_12

    .line 3362
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3360
    return v3

    .line 3362
    :catchall_12
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public isKeyguardShowingAndNotOccluded()Z
    .registers 2

    .line 3352
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    return v0
.end method

.method public isKeyguardTrusted()Z
    .registers 3

    .line 3208
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3209
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardTrustedLw()Z

    move-result v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 3210
    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public isRotationFrozen()Z
    .registers 3

    .line 4288
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->getUserRotationMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method public isSafeModeEnabled()Z
    .registers 2

    .line 6579
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mSafeMode:Z

    return v0
.end method

.method isSecureLocked(Lcom/android/server/wm/WindowState;)Z
    .registers 5
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 1803
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x2000

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 1804
    return v1

    .line 1806
    :cond_a
    invoke-static {}, Landroid/app/admin/DevicePolicyCache;->getInstance()Landroid/app/admin/DevicePolicyCache;

    move-result-object v0

    iget v2, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    .line 1807
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 1806
    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyCache;->getScreenCaptureDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1808
    return v1

    .line 1810
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public isShowingDream()Z
    .registers 3

    .line 3367
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3368
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy;->isShowingDreamLw()Z

    move-result v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 3369
    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public isValidPictureInPictureAspectRatio(IF)Z
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "aspectRatio"    # F

    .line 3106
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 3107
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/server/wm/PinnedStackController;->isValidPictureInPictureAspectRatio(F)Z

    move-result v1

    return v1
.end method

.method public isViewServerRunning()Z
    .registers 4

    .line 4500
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 4501
    return v1

    .line 4504
    :cond_8
    const-string v0, "android.permission.DUMP"

    const-string/jumbo v2, "isViewServerRunning"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 4505
    return v1

    .line 4508
    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    invoke-virtual {v0}, Lcom/android/server/wm/ViewServer;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v1, 0x1

    nop

    :cond_22
    return v1
.end method

.method public isWindowTraceEnabled()Z
    .registers 2

    .line 5931
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowTracing:Lcom/android/server/wm/WindowTracing;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowTracing;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public lockDeviceNow()V
    .registers 2

    .line 3566
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->lockNow(Landroid/os/Bundle;)V

    .line 3567
    return-void
.end method

.method public lockNow(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "options"    # Landroid/os/Bundle;

    .line 6570
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicy;->lockNow(Landroid/os/Bundle;)V

    .line 6571
    return-void
.end method

.method makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;
    .registers 3
    .param p1, "s"    # Landroid/view/SurfaceSession;

    .line 8081
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mSurfaceBuilderFactory:Lcom/android/server/wm/SurfaceBuilderFactory;

    invoke-interface {v0, p1}, Lcom/android/server/wm/SurfaceBuilderFactory;->make(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method makeWindowFreezingScreenIfNeededLocked(Lcom/android/server/wm/WindowState;)V
    .registers 6
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 5970
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->okToDisplay()Z

    move-result v0

    if-nez v0, :cond_36

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_36

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_36

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->isCastMode:Z

    if-nez v0, :cond_36

    .line 5974
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    .line 5975
    const/4 v1, 0x0

    iput v1, p1, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    .line 5976
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iput-boolean v1, v2, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    .line 5977
    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    if-nez v1, :cond_36

    .line 5978
    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    .line 5981
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 5982
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 5986
    :cond_36
    return-void
.end method

.method markForSeamlessRotation(Lcom/android/server/wm/WindowState;Z)V
    .registers 7
    .param p1, "w"    # Lcom/android/server/wm/WindowState;
    .param p2, "seamlesslyRotated"    # Z

    .line 7611
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    if-ne p2, v0, :cond_5

    .line 7612
    return-void

    .line 7614
    :cond_5
    iput-boolean p2, p1, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    .line 7615
    if-eqz p2, :cond_10

    .line 7616
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mSeamlessRotationCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mSeamlessRotationCount:I

    goto :goto_16

    .line 7618
    :cond_10
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mSeamlessRotationCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mSeamlessRotationCount:I

    .line 7620
    :goto_16
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mSeamlessRotationCount:I

    if-nez v0, :cond_3a

    .line 7624
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->finishSeamlessRotation()V

    .line 7626
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 7627
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->updateRotationUnchecked()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 7628
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x12

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 7629
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 7632
    .end local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_3a
    return-void
.end method

.method public monitor()V
    .registers 3

    .line 7197
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7198
    return-void

    .line 7197
    :catchall_b
    move-exception v1

    :try_start_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public notifyAppRelaunchesCleared(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 6646
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6647
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .line 6648
    .local v1, "appWindow":Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_11

    .line 6649
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->clearRelaunching()V

    .line 6651
    .end local v1    # "appWindow":Lcom/android/server/wm/AppWindowToken;
    :cond_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6652
    return-void

    .line 6651
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public notifyAppRelaunching(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 6628
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6629
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .line 6630
    .local v1, "appWindow":Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_11

    .line 6631
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->startRelaunching()V

    .line 6633
    .end local v1    # "appWindow":Lcom/android/server/wm/AppWindowToken;
    :cond_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6634
    return-void

    .line 6633
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public notifyAppRelaunchingFinished(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 6637
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6638
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .line 6639
    .local v1, "appWindow":Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_11

    .line 6640
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->finishRelaunching()V

    .line 6642
    .end local v1    # "appWindow":Lcom/android/server/wm/AppWindowToken;
    :cond_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6643
    return-void

    .line 6642
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public notifyAppResumedFinished(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;

    .line 6655
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6657
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mSaveSurfaceByKeyguardToken:Lcom/android/server/wm/AppWindowToken;

    .line 6658
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .line 6659
    .local v1, "appWindow":Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_16

    .line 6660
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/UnknownAppVisibilityController;->notifyAppResumedFinished(Lcom/android/server/wm/AppWindowToken;)V

    .line 6662
    .end local v1    # "appWindow":Lcom/android/server/wm/AppWindowToken;
    :cond_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6663
    return-void

    .line 6662
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method notifyHardKeyboardStatusChange()V
    .registers 4

    .line 4810
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4811
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardStatusChangeListener:Lcom/android/server/wm/WindowManagerInternal$OnHardKeyboardStatusChangeListener;

    .line 4812
    .local v1, "listener":Lcom/android/server/wm/WindowManagerInternal$OnHardKeyboardStatusChangeListener;
    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardAvailable:Z

    .line 4813
    .local v2, "available":Z
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4814
    if-eqz v1, :cond_13

    .line 4815
    invoke-interface {v1, v2}, Lcom/android/server/wm/WindowManagerInternal$OnHardKeyboardStatusChangeListener;->onHardKeyboardStatusChange(Z)V

    .line 4817
    :cond_13
    return-void

    .line 4813
    .end local v1    # "listener":Lcom/android/server/wm/WindowManagerInternal$OnHardKeyboardStatusChangeListener;
    .end local v2    # "available":Z
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method notifyHasSurfaceView(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)V
    .registers 7
    .param p1, "session"    # Lcom/android/server/wm/Session;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "hasSurfaceView"    # Z

    .line 7564
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7565
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 7566
    .local v1, "window":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_16

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mMiuiGestureController:Lcom/android/server/wm/MiuiGestureController;

    if-eqz v2, :cond_16

    .line 7567
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mMiuiGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v2, v1, p3}, Lcom/android/server/wm/MiuiGestureController;->notifyHasSurfaceView(Lcom/android/server/wm/WindowState;Z)V

    .line 7569
    .end local v1    # "window":Lcom/android/server/wm/WindowState;
    :cond_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7570
    return-void

    .line 7569
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method notifyKeyguardFlagsChanged(Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 3201
    if-eqz p1, :cond_8

    .line 3202
    new-instance v0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$5dMkMeana3BB2vTfpghrIR2jQMg;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/-$$Lambda$WindowManagerService$5dMkMeana3BB2vTfpghrIR2jQMg;-><init>(Lcom/android/server/wm/WindowManagerService;Ljava/lang/Runnable;)V

    goto :goto_9

    .line 3203
    :cond_8
    const/4 v0, 0x0

    .line 3204
    .local v0, "wrappedCallback":Ljava/lang/Runnable;
    :goto_9
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x38

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 3205
    return-void
.end method

.method public notifyKeyguardTrustedChanged()V
    .registers 3

    .line 3135
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x39

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 3136
    return-void
.end method

.method public notifyShowingDreamChanged()V
    .registers 2

    .line 3125
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->notifyKeyguardFlagsChanged(Ljava/lang/Runnable;)V

    .line 3126
    return-void
.end method

.method public notifyTaskRemovedFromRecents(II)V
    .registers 5
    .param p1, "taskId"    # I
    .param p2, "userId"    # I

    .line 6672
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6673
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/TaskSnapshotController;->notifyTaskRemovedFromRecents(II)V

    .line 6674
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6675
    return-void

    .line 6674
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onDisplayAdded(I)V
    .registers 5
    .param p1, "displayId"    # I

    .line 7208
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7209
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    .line 7210
    .local v1, "display":Landroid/view/Display;
    if-eqz v1, :cond_11

    .line 7211
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->displayReady(I)V

    .line 7213
    :cond_11
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 7214
    .end local v1    # "display":Landroid/view/Display;
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7215
    return-void

    .line 7214
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onDisplayChanged(I)V
    .registers 5
    .param p1, "displayId"    # I

    .line 7242
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7243
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 7244
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_11

    .line 7245
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->updateDisplayInfo()V

    .line 7247
    :cond_11
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 7248
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7249
    return-void

    .line 7248
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onDisplayRemoved(I)V
    .registers 5
    .param p1, "displayId"    # I

    .line 7218
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7219
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowAnimator;->removeDisplayLocked(I)V

    .line 7221
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v1, :cond_2c

    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mFrozenDisplayId:I

    if-ne v1, p1, :cond_2c

    .line 7222
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/WindowManagerService;->mFrozenDisplayId:I

    .line 7223
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    .line 7224
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v1}, Lcom/android/server/wm/InputMonitor;->thawInputDispatchingLw()V

    .line 7225
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 7226
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 7229
    :cond_2c
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 7230
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_36

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7231
    return-void

    .line 7230
    :catchall_36
    move-exception v1

    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onInitReady()V
    .registers 3

    .line 1220
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->initPolicy()V

    .line 1223
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 1225
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 1227
    :try_start_d
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->createWatermarkInTransaction()V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_26

    .line 1229
    const-string v0, "createWatermarkInTransaction"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 1230
    nop

    .line 1233
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    check-cast v0, Lcom/android/server/policy/MiuiPhoneWindowManager;

    .line 1234
    .local v0, "miuPhoneWindowManager":Lcom/android/server/policy/MiuiPhoneWindowManager;
    new-instance v1, Lcom/android/server/wm/WindowManagerService$8;

    invoke-direct {v1, p0}, Lcom/android/server/wm/WindowManagerService$8;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/policy/MiuiPhoneWindowManager;->registerMIUIWatermarkCallback(Lcom/android/server/policy/MiuiPhoneWindowManager$MIUIWatermarkCallback;)V

    .line 1258
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->showEmulatorDisplayOverlayIfNeeded()V

    .line 1259
    return-void

    .line 1229
    .end local v0    # "miuPhoneWindowManager":Lcom/android/server/policy/MiuiPhoneWindowManager;
    :catchall_26
    move-exception v0

    const-string v1, "createWatermarkInTransaction"

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    throw v0
.end method

.method public onKeyguardOccludedChanged(Z)V
    .registers 4
    .param p1, "occluded"    # Z

    .line 3389
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3390
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, p1}, Lcom/android/server/policy/WindowManagerPolicy;->onKeyguardOccludedChangedLw(Z)V

    .line 3391
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3392
    return-void

    .line 3391
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onKeyguardShowingAndNotOccludedChanged()V
    .registers 3

    .line 3150
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 3151
    return-void
.end method

.method public onLockTaskStateChanged(I)V
    .registers 4
    .param p1, "lockTaskState"    # I

    .line 8111
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8112
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, p1}, Lcom/android/server/policy/WindowManagerPolicy;->onLockTaskStateChangedLw(I)V

    .line 8113
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 8114
    return-void

    .line 8113
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onOverlayChanged()V
    .registers 3

    .line 7234
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7235
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy;->onOverlayChangedLw()V

    .line 7236
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->updateDisplayInfo()V

    .line 7237
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 7238
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7239
    return-void

    .line 7238
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "rectangle"    # Landroid/graphics/Rect;

    .line 2030
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2031
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v1, :cond_1f

    .line 2032
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 2034
    .local v1, "window":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v2

    if-nez v2, :cond_1f

    .line 2035
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v2, p2}, Lcom/android/server/wm/AccessibilityController;->onRectangleOnScreenRequestedLocked(Landroid/graphics/Rect;)V

    .line 2038
    .end local v1    # "window":Lcom/android/server/wm/WindowState;
    :cond_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2039
    return-void

    .line 2038
    :catchall_24
    move-exception v1

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "result"    # Landroid/os/ResultReceiver;

    .line 1060
    new-instance v0, Lcom/android/server/wm/WindowManagerShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowManagerShellCommand;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/WindowManagerShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 1061
    return-void
.end method

.method public onSystemUiStarted()V
    .registers 2

    .line 3740
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->onSystemUiStarted()V

    .line 3741
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1271
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowManagerServiceInjector;->onTransact(Lcom/android/server/wm/WindowManagerService;ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 1272
    return v1

    .line 1273
    :cond_8
    const v0, 0xfffffe

    if-ne p1, v0, :cond_11

    .line 1274
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/wm/WindowManagerService;->setSlideCoverState(Landroid/os/Parcel;Landroid/os/Parcel;I)V

    .line 1275
    return v1

    .line 1278
    :cond_11
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/IWindowManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_15} :catch_16

    return v0

    .line 1279
    :catch_16
    move-exception v0

    .line 1282
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_22

    .line 1283
    const-string v1, "WindowManager"

    const-string v2, "Window Manager Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1285
    :cond_22
    throw v0
.end method

.method public openSession(Landroid/view/IWindowSessionCallback;Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)Landroid/view/IWindowSession;
    .registers 6
    .param p1, "callback"    # Landroid/view/IWindowSessionCallback;
    .param p2, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p3, "inputContext"    # Lcom/android/internal/view/IInputContext;

    .line 5521
    if-eqz p2, :cond_13

    .line 5522
    if-eqz p3, :cond_a

    .line 5523
    new-instance v0, Lcom/android/server/wm/Session;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/wm/Session;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IWindowSessionCallback;Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)V

    .line 5524
    .local v0, "session":Lcom/android/server/wm/Session;
    return-object v0

    .line 5522
    .end local v0    # "session":Lcom/android/server/wm/Session;
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "null inputContext"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5521
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "null client"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method openSurfaceTransaction()V
    .registers 5

    .line 949
    const-wide/16 v0, 0x20

    :try_start_2
    const-string/jumbo v2, "openSurfaceTransaction"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 950
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_20

    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 951
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 952
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_1a

    :try_start_12
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_20

    .line 954
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 955
    nop

    .line 956
    return-void

    .line 952
    :catchall_1a
    move-exception v3

    :try_start_1b
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    :try_start_1c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_20

    .line 954
    :catchall_20
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method public outOfMemoryWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)Z
    .registers 11
    .param p1, "session"    # Lcom/android/server/wm/Session;
    .param p2, "client"    # Landroid/view/IWindow;

    .line 2531
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2534
    .local v0, "origId":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_31

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2535
    const/4 v3, 0x0

    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 2536
    .local v4, "win":Lcom/android/server/wm/WindowState;
    if-nez v4, :cond_19

    .line 2537
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_2b

    .line 2542
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2537
    return v3

    .line 2539
    :cond_19
    :try_start_19
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string v7, "from-client"

    invoke-virtual {v5, v6, v7, v3}, Lcom/android/server/wm/RootWindowContainer;->reclaimSomeSurfaceMemory(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    move-result v3

    monitor-exit v2
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_2b

    .line 2542
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2539
    return v3

    .line 2540
    .end local v4    # "win":Lcom/android/server/wm/WindowState;
    :catchall_2b
    move-exception v3

    :try_start_2c
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    :try_start_2d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_31

    .line 2542
    :catchall_31
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public overrideMiuiAnimSupportWinInset(Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "inset"    # Landroid/graphics/Rect;

    .line 2905
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2906
    invoke-static {p1}, Lcom/android/server/wm/AppTransitionInjector;->setMiuiAnimSupportInset(Landroid/graphics/Rect;)V

    .line 2907
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2908
    return-void

    .line 2907
    :catchall_e
    move-exception v1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public overrideMiuiAnimationInfo(Landroid/graphics/GraphicBuffer;Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "icon"    # Landroid/graphics/GraphicBuffer;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .line 8137
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8138
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/AppTransition;->overrideMiuiAnimationInfo(Landroid/graphics/GraphicBuffer;Landroid/graphics/Rect;)V

    .line 8139
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 8140
    return-void

    .line 8139
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enterAnim"    # I
    .param p3, "exitAnim"    # I
    .param p4, "startedCallback"    # Landroid/os/IRemoteCallback;

    .line 2869
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2870
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V

    .line 2872
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2873
    return-void

    .line 2872
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public overridePendingAppTransitionAspectScaledThumb(Landroid/graphics/GraphicBuffer;IIIILandroid/os/IRemoteCallback;Z)V
    .registers 19
    .param p1, "srcThumb"    # Landroid/graphics/GraphicBuffer;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "targetWidth"    # I
    .param p5, "targetHeight"    # I
    .param p6, "startedCallback"    # Landroid/os/IRemoteCallback;
    .param p7, "scaleUp"    # Z

    move-object v1, p0

    .line 2932
    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2933
    iget-object v3, v1, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionAspectScaledThumb(Landroid/graphics/GraphicBuffer;IIIILandroid/os/IRemoteCallback;Z)V

    .line 2935
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2936
    return-void

    .line 2935
    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public overridePendingAppTransitionClipReveal(IIII)V
    .registers 7
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "startWidth"    # I
    .param p4, "startHeight"    # I

    .line 2887
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2888
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionClipReveal(IIII)V

    .line 2890
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2891
    return-void

    .line 2890
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public overridePendingAppTransitionInPlace(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "anim"    # I

    .line 2957
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2958
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/AppTransition;->overrideInPlaceAppTransition(Ljava/lang/String;I)V

    .line 2959
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2960
    return-void

    .line 2959
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public overridePendingAppTransitionLaunchFromHome(IIII)V
    .registers 7
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "startWidth"    # I
    .param p4, "startHeight"    # I

    .line 2897
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2898
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionLaunchFromHome(IIII)V

    .line 2900
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2901
    return-void

    .line 2900
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public overridePendingAppTransitionMultiThumb([Landroid/view/AppTransitionAnimationSpec;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V
    .registers 7
    .param p1, "specs"    # [Landroid/view/AppTransitionAnimationSpec;
    .param p2, "onAnimationStartedCallback"    # Landroid/os/IRemoteCallback;
    .param p3, "onAnimationFinishedCallback"    # Landroid/os/IRemoteCallback;
    .param p4, "scaleUp"    # Z

    .line 2942
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2943
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionMultiThumb([Landroid/view/AppTransitionAnimationSpec;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V

    .line 2946
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2947
    return-void

    .line 2946
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;Z)V
    .registers 6
    .param p1, "specsFuture"    # Landroid/view/IAppTransitionAnimationSpecsFuture;
    .param p2, "callback"    # Landroid/os/IRemoteCallback;
    .param p3, "scaleUp"    # Z

    .line 2966
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2967
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;Z)V

    .line 2969
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2970
    return-void

    .line 2969
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;)V
    .registers 4
    .param p1, "remoteAnimationAdapter"    # Landroid/view/RemoteAnimationAdapter;

    .line 2974
    const-string v0, "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS"

    const-string/jumbo v1, "overridePendingAppTransitionRemote()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2979
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2980
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;)V

    .line 2981
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2982
    return-void

    .line 2981
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 2976
    :cond_21
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public overridePendingAppTransitionScaleUp(IIII)V
    .registers 7
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "startWidth"    # I
    .param p4, "startHeight"    # I

    .line 2878
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2879
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionScaleUp(IIII)V

    .line 2881
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2882
    return-void

    .line 2881
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public overridePendingAppTransitionStartCrossProfileApps()V
    .registers 3

    .line 2950
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2951
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionStartCrossProfileApps()V

    .line 2952
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2953
    return-void

    .line 2952
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public overridePendingAppTransitionThumb(Landroid/graphics/GraphicBuffer;IILandroid/os/IRemoteCallback;Z)V
    .registers 13
    .param p1, "srcThumb"    # Landroid/graphics/GraphicBuffer;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "startedCallback"    # Landroid/os/IRemoteCallback;
    .param p5, "scaleUp"    # Z

    .line 2922
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2923
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionThumb(Landroid/graphics/GraphicBuffer;IILandroid/os/IRemoteCallback;Z)V

    .line 2925
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2926
    return-void

    .line 2925
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method pauseRotationLocked()V
    .registers 2

    .line 4219
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    .line 4220
    return-void
.end method

.method public performBootTimeout()V
    .registers 4

    .line 3726
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3727
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v1, :cond_f

    .line 3728
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3730
    :cond_f
    :try_start_f
    const-string v1, "WindowManager"

    const-string v2, "***** BOOT TIMEOUT: forcing display enabled"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3731
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mForceDisplayEnabled:Z

    .line 3732
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3733
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    .line 3734
    return-void

    .line 3732
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public pokeDrawLock(Lcom/android/server/wm/Session;Landroid/os/IBinder;)V
    .registers 7
    .param p1, "session"    # Lcom/android/server/wm/Session;
    .param p2, "token"    # Landroid/os/IBinder;

    .line 2049
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2050
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 2051
    .local v1, "window":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_12

    .line 2052
    iget-wide v2, p0, Lcom/android/server/wm/WindowManagerService;->mDrawLockTimeoutMillis:J

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowState;->pokeDrawLockLw(J)V

    .line 2054
    .end local v1    # "window":Lcom/android/server/wm/WindowState;
    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2055
    return-void

    .line 2054
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method postWindowRemoveCleanupLocked(Lcom/android/server/wm/WindowState;)V
    .registers 8
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 1860
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1862
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowManagerService;->markForSeamlessRotation(Lcom/android/server/wm/WindowState;Z)V

    .line 1864
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->resetAppOpsState()V

    .line 1866
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-nez v1, :cond_1b

    .line 1867
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWinRemovedSinceNullFocus:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1869
    :cond_1b
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1870
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1871
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowManagerService;->updateNonSystemOverlayWindowsVisibilityIfNeeded(Lcom/android/server/wm/WindowState;Z)V

    .line 1872
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 1875
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-ne v2, p1, :cond_33

    .line 1876
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowManagerService;->setInputMethodWindowLocked(Lcom/android/server/wm/WindowState;)V

    .line 1879
    :cond_33
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 1880
    .local v2, "token":Lcom/android/server/wm/WindowToken;
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1883
    .local v3, "atoken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowToken;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_57

    .line 1884
    iget-boolean v4, v2, Lcom/android/server/wm/WindowToken;->mPersistOnEmpty:Z

    if-nez v4, :cond_45

    .line 1885
    invoke-virtual {v2}, Lcom/android/server/wm/WindowToken;->removeImmediately()V

    goto :goto_57

    .line 1886
    :cond_45
    if-eqz v3, :cond_57

    .line 1889
    iput-boolean v0, v3, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    .line 1890
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->clearAllDrawn()V

    .line 1891
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 1892
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v0, :cond_57

    .line 1893
    iget-object v4, v0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/AppTokenList;->remove(Ljava/lang/Object;)Z

    .line 1898
    .end local v0    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_57
    :goto_57
    if-eqz v3, :cond_5c

    .line 1899
    invoke-virtual {v3, p1}, Lcom/android/server/wm/AppWindowToken;->postWindowRemoveStartingWindowCleanup(Lcom/android/server/wm/WindowState;)V

    .line 1902
    :cond_5c
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1903
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7dd

    if-ne v4, v5, :cond_74

    .line 1904
    iget-object v4, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v4}, Lcom/android/server/wm/WallpaperController;->clearLastWallpaperTimeoutTime()V

    .line 1905
    iget v4, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    goto :goto_83

    .line 1906
    :cond_74
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x100000

    and-int/2addr v4, v5

    if-eqz v4, :cond_83

    .line 1907
    iget v4, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 1910
    :cond_83
    :goto_83
    if-eqz v0, :cond_9e

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowSurfacePlacer;->isInLayout()Z

    move-result v4

    if-nez v4, :cond_9e

    .line 1911
    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 1912
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 1913
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_9e

    .line 1914
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 1918
    :cond_9e
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 1919
    return-void
.end method

.method public prepareAppTransition(IZ)V
    .registers 4
    .param p1, "transit"    # I
    .param p2, "alwaysKeepCurrent"    # Z

    .line 2833
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZIZ)V

    .line 2834
    return-void
.end method

.method public prepareAppTransition(IZIZ)V
    .registers 10
    .param p1, "transit"    # I
    .param p2, "alwaysKeepCurrent"    # Z
    .param p3, "flags"    # I
    .param p4, "forceOverride"    # Z

    .line 2847
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string/jumbo v1, "prepareAppTransition()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 2850
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2851
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/wm/AppTransition;->prepareAppTransitionLocked(IZIZ)Z

    move-result v1

    .line 2854
    .local v1, "prepared":Z
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 2855
    .local v2, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_2a

    if-eqz v2, :cond_2a

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->okToAnimate()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 2856
    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    .line 2858
    .end local v1    # "prepared":Z
    .end local v2    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_e .. :try_end_2b} :catchall_2f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2859
    return-void

    .line 2858
    :catchall_2f
    move-exception v1

    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 2848
    :cond_35
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reboot(Z)V
    .registers 4
    .param p1, "confirm"    # Z

    .line 3614
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    const-string/jumbo v1, "userrequested"

    invoke-static {v0, v1, p1}, Lcom/android/server/power/ShutdownThread;->reboot(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 3616
    return-void
.end method

.method public rebootSafeMode(Z)V
    .registers 3
    .param p1, "confirm"    # Z

    .line 3622
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/power/ShutdownThread;->rebootSafeMode(Landroid/content/Context;Z)V

    .line 3624
    return-void
.end method

.method reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V
    .registers 8
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 5845
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->isReady()Z

    move-result v0

    if-nez v0, :cond_7

    .line 5846
    return-void

    .line 5848
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->configureDisplayPolicy()V

    .line 5849
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 5851
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    .line 5852
    .local v0, "displayId":I
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(I)Z

    move-result v1

    .line 5853
    .local v1, "configChanged":Z
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 5854
    .local v2, "currentDisplayConfig":Landroid/content/res/Configuration;
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v3, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 5855
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v3}, Lcom/android/server/wm/DisplayContent;->computeScreenConfiguration(Landroid/content/res/Configuration;)V

    .line 5856
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2f

    move v3, v4

    goto :goto_30

    :cond_2f
    move v3, v5

    :goto_30
    or-int/2addr v1, v3

    .line 5858
    if-eqz v1, :cond_47

    .line 5859
    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    .line 5860
    invoke-virtual {p0, v5, v5, p1}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(IILcom/android/server/wm/DisplayContent;)V

    .line 5862
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v4, 0x12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 5865
    :cond_47
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 5866
    return-void
.end method

.method public reenableKeyguard(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;

    .line 3307
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_22

    .line 3312
    if-eqz p1, :cond_19

    .line 3316
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardDisableHandler:Lcom/android/server/wm/KeyguardDisableHandler;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardDisableHandler:Lcom/android/server/wm/KeyguardDisableHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Lcom/android/server/wm/KeyguardDisableHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/KeyguardDisableHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3318
    return-void

    .line 3313
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "token == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3309
    :cond_22
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reevaluateStatusBarVisibility()V
    .registers 4

    .line 6500
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6501
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mLastStatusBarVisibility:I

    invoke-interface {v1, v2}, Lcom/android/server/policy/WindowManagerPolicy;->adjustSystemUiVisibilityLw(I)I

    move-result v1

    .line 6502
    .local v1, "visibility":I
    invoke-direct {p0, v1}, Lcom/android/server/wm/WindowManagerService;->updateStatusBarVisibilityLocked(I)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 6503
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 6505
    .end local v1    # "visibility":I
    :cond_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6506
    return-void

    .line 6505
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public refreshScreenCaptureDisabled(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 1819
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1820
    .local v0, "callingUid":I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_36

    .line 1824
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1828
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v3, "disallow_screencapture"

    invoke-static {v2, v3, p1}, Lcom/miui/enterprise/RestrictionsHelper;->hasRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    .line 1830
    .local v2, "entDisallowCapture":Z
    if-nez v2, :cond_25

    .line 1831
    invoke-static {}, Landroid/app/admin/DevicePolicyCache;->getInstance()Landroid/app/admin/DevicePolicyCache;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/app/admin/DevicePolicyCache;->getScreenCaptureDisabled(I)Z

    move-result v3

    if-eqz v3, :cond_23

    goto :goto_25

    :cond_23
    const/4 v3, 0x0

    goto :goto_26

    :cond_25
    :goto_25
    const/4 v3, 0x1

    .line 1833
    .local v3, "disableCapture":Z
    :goto_26
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4, p1, v3}, Lcom/android/server/wm/RootWindowContainer;->setSecureSurfaceState(IZ)V

    .line 1838
    .end local v2    # "entDisallowCapture":Z
    .end local v3    # "disableCapture":Z
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_b .. :try_end_2c} :catchall_30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1839
    return-void

    .line 1838
    :catchall_30
    move-exception v2

    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 1821
    :cond_36
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only system can call refreshScreenCaptureDisabled."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method registerAppFreezeListener(Lcom/android/server/wm/WindowManagerService$AppFreezeListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/wm/WindowManagerService$AppFreezeListener;

    .line 7976
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppFreezeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 7977
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppFreezeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7979
    :cond_d
    return-void
.end method

.method public registerDockedStackListener(Landroid/view/IDockedStackListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/view/IDockedStackListener;

    .line 7399
    const-string v0, "android.permission.REGISTER_WINDOW_MANAGER_LISTENERS"

    const-string/jumbo v1, "registerDockedStackListener()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 7401
    return-void

    .line 7403
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7405
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DockedStackDividerController;->registerDockedStackListener(Landroid/view/IDockedStackListener;)V

    .line 7407
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_20

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7408
    return-void

    .line 7407
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public registerMiuiGestureControlHelper(Lcom/miui/internal/transition/IMiuiGestureControlHelper;)V
    .registers 4
    .param p1, "helper"    # Lcom/miui/internal/transition/IMiuiGestureControlHelper;

    .line 8191
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8192
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mMiuiGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/MiuiGestureController;->registerMiuiGestureControlHelper(Lcom/miui/internal/transition/IMiuiGestureControlHelper;)V

    .line 8193
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 8194
    return-void

    .line 8193
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public registerPinnedStackListener(ILandroid/view/IPinnedStackListener;)V
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "listener"    # Landroid/view/IPinnedStackListener;

    .line 7412
    const-string v0, "android.permission.REGISTER_WINDOW_MANAGER_LISTENERS"

    const-string/jumbo v1, "registerPinnedStackListener()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 7414
    return-void

    .line 7416
    :cond_c
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mSupportsPictureInPicture:Z

    if-nez v0, :cond_11

    .line 7417
    return-void

    .line 7419
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_14
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7420
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 7421
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/server/wm/PinnedStackController;->registerPinnedStackListener(Landroid/view/IPinnedStackListener;)V

    .line 7422
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_14 .. :try_end_25} :catchall_29

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7423
    return-void

    .line 7422
    :catchall_29
    move-exception v1

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    .line 3533
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/PointerEventDispatcher;->registerInputEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 3534
    return-void
.end method

.method public registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V
    .registers 6
    .param p1, "shortcutCode"    # J
    .param p3, "shortcutKeyReceiver"    # Lcom/android/internal/policy/IShortcutService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7594
    const-string v0, "android.permission.REGISTER_WINDOW_MANAGER_LISTENERS"

    const-string/jumbo v1, "registerShortcutKey"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 7598
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/policy/WindowManagerPolicy;->registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V

    .line 7599
    return-void

    .line 7595
    :cond_11
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires REGISTER_WINDOW_MANAGER_LISTENERS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)Z
    .registers 8
    .param p1, "listener"    # Landroid/view/IWallpaperVisibilityListener;
    .param p2, "displayId"    # I

    .line 4345
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4346
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 4347
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_1e

    .line 4351
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperVisibilityListeners:Lcom/android/server/wm/WallpaperVisibilityListeners;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WallpaperVisibilityListeners;->registerWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)V

    .line 4352
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible()Z

    move-result v2

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 4348
    :cond_1e
    :try_start_1e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to register visibility event for invalid display: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4353
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_1e .. :try_end_37} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public relayoutWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIIJLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;Landroid/util/MergedConfiguration;Landroid/view/Surface;)I
    .registers 56
    .param p1, "session"    # Lcom/android/server/wm/Session;
    .param p2, "client"    # Landroid/view/IWindow;
    .param p3, "seq"    # I
    .param p4, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p5, "requestedWidth"    # I
    .param p6, "requestedHeight"    # I
    .param p7, "viewVisibility"    # I
    .param p8, "flags"    # I
    .param p9, "frameNumber"    # J
    .param p11, "outFrame"    # Landroid/graphics/Rect;
    .param p12, "outOverscanInsets"    # Landroid/graphics/Rect;
    .param p13, "outContentInsets"    # Landroid/graphics/Rect;
    .param p14, "outVisibleInsets"    # Landroid/graphics/Rect;
    .param p15, "outStableInsets"    # Landroid/graphics/Rect;
    .param p16, "outOutsets"    # Landroid/graphics/Rect;
    .param p17, "outBackdropFrame"    # Landroid/graphics/Rect;
    .param p18, "outCutout"    # Landroid/view/DisplayCutout$ParcelableWrapper;
    .param p19, "mergedConfiguration"    # Landroid/util/MergedConfiguration;
    .param p20, "outSurface"    # Landroid/view/Surface;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p7

    move-object/from16 v6, p19

    .line 2063
    move-object/from16 v7, p20

    const/4 v8, 0x0

    .line 2065
    .local v8, "result":I
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.STATUS_BAR"

    .line 2066
    invoke-virtual {v0, v9}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v10, 0x0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    move v0, v10

    :goto_1b
    move v11, v0

    .line 2068
    .local v11, "hasStatusBarPermission":Z
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v12, "android.permission.STATUS_BAR_SERVICE"

    .line 2069
    invoke-virtual {v0, v12}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_28

    const/4 v0, 0x1

    goto :goto_29

    :cond_28
    move v0, v10

    :goto_29
    move v12, v0

    .line 2072
    .local v12, "hasStatusBarServicePermission":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 2074
    .local v13, "origId":J
    iget-object v15, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v15

    :try_start_31
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2075
    move-object/from16 v9, p1

    invoke-virtual {v1, v9, v2, v10}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v0
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_537

    move-object/from16 v16, v0

    .line 2076
    .local v16, "win":Lcom/android/server/wm/WindowState;
    move-object/from16 v10, v16

    if-nez v10, :cond_53

    .line 2077
    .end local v16    # "win":Lcom/android/server/wm/WindowState;
    .local v10, "win":Lcom/android/server/wm/WindowState;
    :try_start_40
    monitor-exit v15
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_46

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 v15, 0x0

    return v15

    .line 2422
    .end local v10    # "win":Lcom/android/server/wm/WindowState;
    :catchall_46
    move-exception v0

    move-object/from16 v9, p11

    move-object v7, v6

    move/from16 v22, v11

    move/from16 v23, v12

    move-wide v3, v13

    .line 2422
    .end local v11    # "hasStatusBarPermission":Z
    .end local v12    # "hasStatusBarServicePermission":Z
    .end local v13    # "origId":J
    .local v3, "origId":J
    .local v22, "hasStatusBarPermission":Z
    .local v23, "hasStatusBarServicePermission":Z
    :goto_4f
    move-object/from16 v12, p12

    goto/16 :goto_542

    .line 2079
    .end local v3    # "origId":J
    .end local v22    # "hasStatusBarPermission":Z
    .end local v23    # "hasStatusBarServicePermission":Z
    .restart local v10    # "win":Lcom/android/server/wm/WindowState;
    .restart local v11    # "hasStatusBarPermission":Z
    .restart local v12    # "hasStatusBarServicePermission":Z
    .restart local v13    # "origId":J
    :cond_53
    :try_start_53
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v0

    move/from16 v17, v0

    .line 2081
    .local v17, "displayId":I
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object v9, v1, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;
    :try_end_5d
    .catchall {:try_start_53 .. :try_end_5d} :catchall_537

    .line 2082
    :try_start_5d
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v6
    :try_end_61
    .catchall {:try_start_5d .. :try_end_61} :catchall_52c

    move-wide/from16 v18, v13

    :try_start_63
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v13

    .line 2081
    .end local v13    # "origId":J
    .local v18, "origId":J
    invoke-static {v0, v9, v3, v6, v13}, Lcom/android/server/wm/WindowManagerServiceInjector;->adjustWindowParams(Landroid/content/Context;Landroid/app/AppOpsManager;Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;I)V

    .line 2084
    iget-object v0, v10, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :try_end_6c
    .catchall {:try_start_63 .. :try_end_6c} :catchall_51e

    move-object v6, v0

    .line 2085
    .local v6, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    const/16 v0, 0x8

    if-eq v4, v0, :cond_85

    .line 2086
    move/from16 v9, p5

    move/from16 v13, p6

    :try_start_75
    invoke-virtual {v10, v9, v13}, Lcom/android/server/wm/WindowState;->setRequestedSize(II)V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_79

    goto :goto_89

    .line 2422
    .end local v6    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .end local v10    # "win":Lcom/android/server/wm/WindowState;
    .end local v17    # "displayId":I
    :catchall_79
    move-exception v0

    move-object/from16 v9, p11

    move/from16 v22, v11

    .line 2422
    .end local v11    # "hasStatusBarPermission":Z
    .end local v12    # "hasStatusBarServicePermission":Z
    .end local v18    # "origId":J
    .restart local v3    # "origId":J
    .restart local v22    # "hasStatusBarPermission":Z
    .restart local v23    # "hasStatusBarServicePermission":Z
    :goto_7e
    move/from16 v23, v12

    move-wide/from16 v3, v18

    move-object/from16 v7, p19

    goto :goto_4f

    .line 2089
    .end local v3    # "origId":J
    .end local v22    # "hasStatusBarPermission":Z
    .end local v23    # "hasStatusBarServicePermission":Z
    .restart local v6    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .restart local v10    # "win":Lcom/android/server/wm/WindowState;
    .restart local v11    # "hasStatusBarPermission":Z
    .restart local v12    # "hasStatusBarServicePermission":Z
    .restart local v17    # "displayId":I
    .restart local v18    # "origId":J
    :cond_85
    move/from16 v9, p5

    move/from16 v13, p6

    :goto_89
    move-wide/from16 v13, p9

    :try_start_8b
    invoke-virtual {v10, v13, v14}, Lcom/android/server/wm/WindowState;->setFrameNumber(J)V
    :try_end_8e
    .catchall {:try_start_8b .. :try_end_8e} :catchall_51e

    .line 2090
    const/16 v16, 0x0

    .line 2091
    .local v16, "attrChanges":I
    const/16 v20, 0x0

    .line 2092
    .local v20, "flagChanges":I
    if-eqz v3, :cond_158

    .line 2093
    :try_start_94
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, v10, v3, v12}, Lcom/android/server/policy/WindowManagerPolicy;->adjustWindowParamsLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Z)V

    .line 2095
    iget v0, v10, Lcom/android/server/wm/WindowState;->mSeq:I
    :try_end_9b
    .catchall {:try_start_94 .. :try_end_9b} :catchall_149

    move/from16 v9, p3

    if-ne v9, v0, :cond_b1

    .line 2096
    :try_start_9f
    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v9, v3, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/2addr v0, v9

    .line 2098
    .local v0, "systemUiVisibility":I
    const/high16 v9, 0x3ff0000

    and-int/2addr v9, v0

    if-eqz v9, :cond_af

    .line 2099
    if-nez v11, :cond_af

    .line 2100
    const v9, -0x3ff0001

    and-int/2addr v0, v9

    .line 2103
    :cond_af
    iput v0, v10, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I
    :try_end_b1
    .catchall {:try_start_9f .. :try_end_b1} :catchall_79

    .line 2105
    .end local v0    # "systemUiVisibility":I
    :cond_b1
    :try_start_b1
    iget-object v0, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v9, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v0, v9, :cond_13a

    .line 2111
    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I
    :try_end_bb
    .catchall {:try_start_b1 .. :try_end_bb} :catchall_149

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_d7

    .line 2113
    :try_start_bf
    iget-object v0, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2114
    iget-object v0, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2115
    iget-object v0, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2116
    iget-object v0, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->height:I
    :try_end_d7
    .catchall {:try_start_bf .. :try_end_d7} :catchall_79

    .line 2119
    :cond_d7
    :try_start_d7
    iget-object v0, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v0, Landroid/view/WindowManager$LayoutParams;->flags:I
    :try_end_db
    .catchall {:try_start_d7 .. :try_end_db} :catchall_149

    move/from16 v22, v11

    :try_start_dd
    iget v11, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2119
    .end local v11    # "hasStatusBarPermission":Z
    .restart local v22    # "hasStatusBarPermission":Z
    xor-int/2addr v9, v11

    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v20, v9

    .line 2120
    iget-object v0, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v3}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    .line 2122
    .end local v16    # "attrChanges":I
    .local v0, "attrChanges":I
    and-int/lit8 v9, v20, 0x4

    if-eqz v9, :cond_f2

    .line 2123
    const/4 v9, 0x1

    iput-boolean v9, v10, Lcom/android/server/wm/WindowState;->mBlurFlagChanged:Z

    goto :goto_f3

    .line 2125
    :cond_f2
    const/4 v9, 0x1

    :goto_f3
    const/high16 v11, 0x20000000

    and-int/2addr v11, v0

    if-eqz v11, :cond_fa

    .line 2126
    iput-boolean v9, v10, Lcom/android/server/wm/WindowState;->mBlurBlackChanged:Z

    .line 2129
    :cond_fa
    and-int/lit16 v11, v0, 0x4001

    if-eqz v11, :cond_100

    .line 2131
    iput-boolean v9, v10, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 2133
    :cond_100
    iget-object v9, v10, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    const/high16 v11, 0x80000

    if-eqz v9, :cond_115

    and-int v9, v20, v11

    if-nez v9, :cond_110

    const/high16 v9, 0x400000

    and-int v9, v20, v9

    if-eqz v9, :cond_115

    .line 2135
    :cond_110
    iget-object v9, v10, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v9}, Lcom/android/server/wm/AppWindowToken;->checkKeyguardFlagsChanged()V

    .line 2137
    :cond_115
    const/high16 v9, 0x2000000

    and-int/2addr v9, v0

    if-eqz v9, :cond_129

    iget-object v9, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v9, :cond_129

    .line 2139
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v9

    if-nez v9, :cond_129

    .line 2141
    iget-object v9, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v9}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMovedLocked()V

    .line 2144
    :cond_129
    and-int v9, v20, v11

    if-eqz v9, :cond_136

    .line 2145
    iget-object v9, v10, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 2146
    invoke-virtual {v9}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v9

    .line 2145
    invoke-virtual {v1, v10, v9}, Lcom/android/server/wm/WindowManagerService;->updateNonSystemOverlayWindowsVisibilityIfNeeded(Lcom/android/server/wm/WindowState;Z)V

    .line 2152
    :cond_136
    move v9, v0

    move/from16 v11, v20

    goto :goto_15e

    .line 2106
    .end local v0    # "attrChanges":I
    .end local v22    # "hasStatusBarPermission":Z
    .restart local v11    # "hasStatusBarPermission":Z
    .restart local v16    # "attrChanges":I
    :cond_13a
    move/from16 v22, v11

    .line 2106
    .end local v11    # "hasStatusBarPermission":Z
    .restart local v22    # "hasStatusBarPermission":Z
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v9, "Window type can not be changed after the window is added."

    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_144
    .catchall {:try_start_dd .. :try_end_144} :catchall_144

    .line 2422
    .end local v6    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .end local v10    # "win":Lcom/android/server/wm/WindowState;
    .end local v16    # "attrChanges":I
    .end local v17    # "displayId":I
    .end local v20    # "flagChanges":I
    :catchall_144
    move-exception v0

    move-object/from16 v9, p11

    goto/16 :goto_7e

    .line 2422
    .end local v22    # "hasStatusBarPermission":Z
    .restart local v11    # "hasStatusBarPermission":Z
    :catchall_149
    move-exception v0

    move/from16 v22, v11

    move-object/from16 v9, p11

    move/from16 v23, v12

    move-wide/from16 v3, v18

    move-object/from16 v7, p19

    move-object/from16 v12, p12

    .line 2422
    .end local v11    # "hasStatusBarPermission":Z
    .restart local v22    # "hasStatusBarPermission":Z
    goto/16 :goto_542

    .line 2152
    .end local v22    # "hasStatusBarPermission":Z
    .restart local v6    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .restart local v10    # "win":Lcom/android/server/wm/WindowState;
    .restart local v11    # "hasStatusBarPermission":Z
    .restart local v16    # "attrChanges":I
    .restart local v17    # "displayId":I
    .restart local v20    # "flagChanges":I
    :cond_158
    move/from16 v22, v11

    move/from16 v9, v16

    move/from16 v11, v20

    .line 2152
    .end local v16    # "attrChanges":I
    .end local v20    # "flagChanges":I
    .local v9, "attrChanges":I
    .local v11, "flagChanges":I
    .restart local v22    # "hasStatusBarPermission":Z
    :goto_15e
    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_164

    const/4 v0, 0x1

    goto :goto_165

    :cond_164
    const/4 v0, 0x0

    :goto_165
    :try_start_165
    iput-boolean v0, v6, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    .line 2153
    iget-object v0, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_171

    const/4 v0, 0x1

    goto :goto_172

    :cond_171
    const/4 v0, 0x0

    :goto_172
    iput-boolean v0, v10, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z
    :try_end_174
    .catchall {:try_start_165 .. :try_end_174} :catchall_512

    .line 2155
    and-int/lit16 v0, v9, 0x80

    if-eqz v0, :cond_17c

    .line 2156
    :try_start_178
    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iput v0, v6, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F
    :try_end_17c
    .catchall {:try_start_178 .. :try_end_17c} :catchall_144

    .line 2160
    :cond_17c
    :try_start_17c
    iget v0, v10, Lcom/android/server/wm/WindowState;->mRequestedWidth:I
    :try_end_17e
    .catchall {:try_start_17c .. :try_end_17e} :catchall_512

    move/from16 v23, v12

    :try_start_180
    iget v12, v10, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    .line 2160
    .end local v12    # "hasStatusBarServicePermission":Z
    .restart local v23    # "hasStatusBarServicePermission":Z
    invoke-static {v10, v0, v12, v3}, Lcom/android/server/wm/WindowStateInjector;->adjustFlagsForOnePixelWindow(Lcom/android/server/wm/WindowState;IILandroid/view/WindowManager$LayoutParams;)V

    .line 2163
    iget v0, v10, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    iget v12, v10, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    invoke-virtual {v10, v0, v12}, Lcom/android/server/wm/WindowState;->setWindowScale(II)V

    .line 2166
    sget-object v0, Lcom/android/server/wm/WindowManagerServiceInjector;->QQ:Ljava/lang/String;

    iget-object v12, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v12, v12, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_196
    .catchall {:try_start_180 .. :try_end_196} :catchall_508

    if-eqz v0, :cond_1b5

    :try_start_198
    iget-object v0, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2167
    invoke-static {v0}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    move-result v0

    if-eqz v0, :cond_1b5

    .line 2168
    iget-object v0, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    sget-object v12, Lcom/android/server/wm/WindowManagerServiceInjector;->QQ_FLOATING:Ljava/lang/String;

    invoke-virtual {v0, v12}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_1a9
    .catchall {:try_start_198 .. :try_end_1a9} :catchall_1aa

    goto :goto_1b5

    .line 2422
    .end local v6    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .end local v9    # "attrChanges":I
    .end local v10    # "win":Lcom/android/server/wm/WindowState;
    .end local v11    # "flagChanges":I
    .end local v17    # "displayId":I
    :catchall_1aa
    move-exception v0

    move-object/from16 v9, p11

    move-object/from16 v12, p12

    move-wide/from16 v3, v18

    .line 2422
    .end local v18    # "origId":J
    .restart local v3    # "origId":J
    :goto_1b1
    move-object/from16 v7, p19

    goto/16 :goto_542

    .line 2170
    .end local v3    # "origId":J
    .restart local v6    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .restart local v9    # "attrChanges":I
    .restart local v10    # "win":Lcom/android/server/wm/WindowState;
    .restart local v11    # "flagChanges":I
    .restart local v17    # "displayId":I
    .restart local v18    # "origId":J
    :cond_1b5
    :goto_1b5
    :try_start_1b5
    sget-object v0, Lcom/android/server/wm/WindowManagerServiceInjector;->MM:Ljava/lang/String;

    iget-object v12, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v12, v12, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1bf
    .catchall {:try_start_1b5 .. :try_end_1bf} :catchall_508

    if-eqz v0, :cond_1d2

    :try_start_1c1
    iget-object v0, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2171
    invoke-static {v0}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    move-result v0

    if-eqz v0, :cond_1d2

    .line 2172
    iget-object v0, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    sget-object v12, Lcom/android/server/wm/WindowManagerServiceInjector;->MM_FLOATING:Ljava/lang/String;

    invoke-virtual {v0, v12}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_1d2
    .catchall {:try_start_1c1 .. :try_end_1d2} :catchall_1aa

    .line 2176
    :cond_1d2
    :try_start_1d2
    iget-object v0, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I
    :try_end_1d8
    .catchall {:try_start_1d2 .. :try_end_1d8} :catchall_508

    if-nez v0, :cond_1f2

    :try_start_1da
    iget-object v0, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_1f2

    iget-object v0, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-nez v0, :cond_1f2

    iget-object v0, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I
    :try_end_1f0
    .catchall {:try_start_1da .. :try_end_1f0} :catchall_1aa

    if-eqz v0, :cond_1f6

    .line 2180
    :cond_1f2
    const/4 v12, 0x0

    :try_start_1f3
    invoke-virtual {v6, v12}, Lcom/android/server/wm/WindowStateAnimator;->setOpaqueLocked(Z)V

    .line 2183
    :cond_1f6
    iget v0, v10, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    move v12, v0

    .line 2187
    .local v12, "oldVisibility":I
    const/4 v0, 0x4

    if-eq v12, v0, :cond_200

    const/16 v0, 0x8

    if-ne v12, v0, :cond_204

    :cond_200
    if-nez v4, :cond_204

    const/4 v0, 0x1

    goto :goto_205

    :cond_204
    const/4 v0, 0x0

    :goto_205
    move/from16 v16, v0

    .line 2190
    .local v16, "becameVisible":Z
    const v0, 0x20008

    and-int/2addr v0, v11

    if-nez v0, :cond_212

    if-eqz v16, :cond_210

    goto :goto_212

    :cond_210
    const/4 v0, 0x0

    goto :goto_213

    :cond_212
    :goto_212
    const/4 v0, 0x1

    :goto_213
    move/from16 v20, v0

    .line 2192
    .local v20, "imMayMove":Z
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->isDefaultDisplay()Z

    move-result v0
    :try_end_219
    .catchall {:try_start_1f3 .. :try_end_219} :catchall_508

    move/from16 v24, v0

    .line 2193
    .local v24, "isDefaultDisplay":Z
    move/from16 v3, v24

    if-eqz v3, :cond_22d

    .line 2193
    .end local v24    # "isDefaultDisplay":Z
    .local v3, "isDefaultDisplay":Z
    :try_start_21f
    iget v0, v10, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-ne v0, v4, :cond_22b

    and-int/lit8 v0, v11, 0x8

    if-nez v0, :cond_22b

    iget-boolean v0, v10, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z
    :try_end_229
    .catchall {:try_start_21f .. :try_end_229} :catchall_1aa

    if-nez v0, :cond_22d

    :cond_22b
    const/4 v0, 0x1

    goto :goto_22e

    :cond_22d
    const/4 v0, 0x0

    .line 2197
    .local v0, "focusMayChange":Z
    :goto_22e
    :try_start_22e
    iget v13, v10, Lcom/android/server/wm/WindowState;->mViewVisibility:I
    :try_end_230
    .catchall {:try_start_22e .. :try_end_230} :catchall_508

    const/high16 v14, 0x100000

    if-eq v13, v4, :cond_23d

    :try_start_234
    iget-object v13, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v13, v14

    if-eqz v13, :cond_23d

    const/4 v13, 0x1

    goto :goto_23e

    :cond_23d
    const/4 v13, 0x0

    .line 2199
    .local v13, "wallpaperMayMove":Z
    :goto_23e
    and-int/2addr v14, v11

    if-eqz v14, :cond_243

    const/4 v14, 0x1

    goto :goto_244

    :cond_243
    const/4 v14, 0x0

    :goto_244
    or-int/2addr v13, v14

    .line 2200
    and-int/lit16 v14, v11, 0x2000

    if-eqz v14, :cond_259

    iget-object v14, v6, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v14, :cond_259

    .line 2201
    iget-object v14, v6, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    move/from16 v25, v11

    invoke-virtual {v1, v10}, Lcom/android/server/wm/WindowManagerService;->isSecureLocked(Lcom/android/server/wm/WindowState;)Z

    move-result v11

    .line 2201
    .end local v11    # "flagChanges":I
    .local v25, "flagChanges":I
    invoke-virtual {v14, v11}, Lcom/android/server/wm/WindowSurfaceController;->setSecure(Z)V
    :try_end_258
    .catchall {:try_start_234 .. :try_end_258} :catchall_1aa

    goto :goto_25b

    .line 2204
    .end local v25    # "flagChanges":I
    .restart local v11    # "flagChanges":I
    :cond_259
    move/from16 v25, v11

    .line 2204
    .end local v11    # "flagChanges":I
    .restart local v25    # "flagChanges":I
    :goto_25b
    const/4 v11, 0x1

    :try_start_25c
    iput-boolean v11, v10, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    .line 2205
    iput-boolean v11, v10, Lcom/android/server/wm/WindowState;->mInRelayout:Z

    .line 2207
    iput v4, v10, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    .line 2217
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 2218
    and-int/lit8 v11, p8, 0x1

    if-eqz v11, :cond_26b

    const/4 v11, 0x1

    goto :goto_26c

    :cond_26b
    const/4 v11, 0x0

    :goto_26c
    iput-boolean v11, v10, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z
    :try_end_26e
    .catchall {:try_start_25c .. :try_end_26e} :catchall_508

    .line 2222
    const/4 v11, 0x3

    if-nez v4, :cond_285

    :try_start_271
    iget-object v14, v10, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v14, :cond_283

    iget-object v14, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v14, v14, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v14, v11, :cond_283

    iget-object v14, v10, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 2224
    invoke-virtual {v14}, Lcom/android/server/wm/AppWindowToken;->isClientHidden()Z

    move-result v14

    if-nez v14, :cond_285

    :cond_283
    const/4 v14, 0x1

    goto :goto_286

    :cond_285
    const/4 v14, 0x0

    .line 2235
    .local v14, "shouldRelayout":Z
    :goto_286
    if-nez v14, :cond_29e

    invoke-virtual {v6}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v21

    if-eqz v21, :cond_29e

    iget-boolean v11, v10, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v11, :cond_29e

    .line 2240
    or-int/lit8 v8, v8, 0x4

    .line 2241
    iget-boolean v11, v10, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-nez v11, :cond_29e

    .line 2242
    invoke-direct {v1, v10, v6, v3, v0}, Lcom/android/server/wm/WindowManagerService;->tryStartExitingAnimation(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowStateAnimator;ZZ)Z

    move-result v11
    :try_end_29c
    .catchall {:try_start_271 .. :try_end_29c} :catchall_1aa

    move v0, v11

    goto :goto_29f

    .line 2252
    :cond_29e
    move v11, v0

    .line 2252
    .end local v0    # "focusMayChange":Z
    .local v11, "focusMayChange":Z
    :goto_29f
    const-wide/16 v4, 0x20

    if-eqz v14, :cond_323

    .line 2253
    :try_start_2a3
    const-string/jumbo v0, "relayoutWindow: viewVisibility_1"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2255
    invoke-virtual {v10, v8, v9, v12}, Lcom/android/server/wm/WindowState;->relayoutVisibleWindow(III)I

    move-result v0
    :try_end_2ad
    .catchall {:try_start_2a3 .. :try_end_2ad} :catchall_31a

    move v8, v0

    .line 2258
    :try_start_2ae
    invoke-direct {v1, v7, v8, v10, v6}, Lcom/android/server/wm/WindowManagerService;->createSurfaceControl(Landroid/view/Surface;ILcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowStateAnimator;)I

    move-result v0
    :try_end_2b2
    .catch Ljava/lang/Exception; {:try_start_2ae .. :try_end_2b2} :catch_2dc
    .catchall {:try_start_2ae .. :try_end_2b2} :catchall_1aa

    move v8, v0

    .line 2267
    nop

    .line 2268
    and-int/lit8 v0, v8, 0x2

    if-eqz v0, :cond_2b9

    .line 2269
    move v11, v3

    .line 2271
    :cond_2b9
    :try_start_2b9
    iget-object v0, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7db

    if-ne v0, v4, :cond_2ca

    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_2ca

    .line 2272
    invoke-virtual {v1, v10}, Lcom/android/server/wm/WindowManagerService;->setInputMethodWindowLocked(Lcom/android/server/wm/WindowState;)V

    .line 2273
    const/16 v20, 0x1

    .line 2275
    :cond_2ca
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->adjustStartingWindowFlags()V

    .line 2276
    const-wide/16 v4, 0x20

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_2d2
    .catchall {:try_start_2b9 .. :try_end_2d2} :catchall_1aa

    .line 2306
    move/from16 v26, v3

    move/from16 v27, v9

    move-wide/from16 v3, v18

    move/from16 v5, p7

    goto/16 :goto_383

    .line 2259
    :catch_2dc
    move-exception v0

    move-object v4, v0

    .line 2260
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2de
    iget-object v4, v1, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 2262
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v26, v3

    const-string v3, "Exception thrown when creating surface for client "

    .line 2262
    .end local v3    # "isDefaultDisplay":Z
    .local v26, "isDefaultDisplay":Z
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 2263
    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2262
    invoke-static {v4, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_30f
    .catchall {:try_start_2de .. :try_end_30f} :catchall_31a

    .line 2265
    move-wide/from16 v3, v18

    :try_start_311
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2266
    .end local v18    # "origId":J
    .local v3, "origId":J
    monitor-exit v15
    :try_end_315
    .catchall {:try_start_311 .. :try_end_315} :catchall_396

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 v5, 0x0

    return v5

    .line 2422
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "origId":J
    .end local v6    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .end local v9    # "attrChanges":I
    .end local v10    # "win":Lcom/android/server/wm/WindowState;
    .end local v11    # "focusMayChange":Z
    .end local v12    # "oldVisibility":I
    .end local v13    # "wallpaperMayMove":Z
    .end local v14    # "shouldRelayout":Z
    .end local v16    # "becameVisible":Z
    .end local v17    # "displayId":I
    .end local v20    # "imMayMove":Z
    .end local v25    # "flagChanges":I
    .end local v26    # "isDefaultDisplay":Z
    .restart local v18    # "origId":J
    :catchall_31a
    move-exception v0

    move-wide/from16 v3, v18

    move-object/from16 v9, p11

    move-object/from16 v12, p12

    goto/16 :goto_50f

    .line 2278
    .local v3, "isDefaultDisplay":Z
    .restart local v6    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .restart local v9    # "attrChanges":I
    .restart local v10    # "win":Lcom/android/server/wm/WindowState;
    .restart local v11    # "focusMayChange":Z
    .restart local v12    # "oldVisibility":I
    .restart local v13    # "wallpaperMayMove":Z
    .restart local v14    # "shouldRelayout":Z
    .restart local v16    # "becameVisible":Z
    .restart local v17    # "displayId":I
    .restart local v20    # "imMayMove":Z
    .restart local v25    # "flagChanges":I
    :cond_323
    move/from16 v26, v3

    move-wide/from16 v3, v18

    .line 2278
    .end local v18    # "origId":J
    .local v3, "origId":J
    .restart local v26    # "isDefaultDisplay":Z
    :try_start_327
    const-string/jumbo v0, "relayoutWindow: viewVisibility_2"
    :try_end_32a
    .catchall {:try_start_327 .. :try_end_32a} :catchall_4fe

    move/from16 v28, v8

    move/from16 v27, v9

    const-wide/16 v8, 0x20

    :try_start_330
    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2280
    .end local v8    # "result":I
    .end local v9    # "attrChanges":I
    .local v27, "attrChanges":I
    .local v28, "result":I
    const/4 v5, 0x0

    iput-boolean v5, v6, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    .line 2281
    iput-boolean v5, v6, Lcom/android/server/wm/WindowStateAnimator;->mEnteringAnimation:Z
    :try_end_338
    .catchall {:try_start_330 .. :try_end_338} :catchall_4f4

    .line 2283
    move/from16 v5, p7

    if-nez v5, :cond_35a

    :try_start_33c
    invoke-virtual {v6}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v0

    if-eqz v0, :cond_35a

    .line 2287
    const-string/jumbo v0, "relayoutWindow: getSurface"

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2288
    iget-object v0, v6, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, v7}, Lcom/android/server/wm/WindowSurfaceController;->getSurface(Landroid/view/Surface;)V

    .line 2289
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_350
    .catchall {:try_start_33c .. :try_end_350} :catchall_351

    goto :goto_37e

    .line 2422
    .end local v6    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .end local v10    # "win":Lcom/android/server/wm/WindowState;
    .end local v11    # "focusMayChange":Z
    .end local v12    # "oldVisibility":I
    .end local v13    # "wallpaperMayMove":Z
    .end local v14    # "shouldRelayout":Z
    .end local v16    # "becameVisible":Z
    .end local v17    # "displayId":I
    .end local v20    # "imMayMove":Z
    .end local v25    # "flagChanges":I
    .end local v26    # "isDefaultDisplay":Z
    .end local v27    # "attrChanges":I
    :catchall_351
    move-exception v0

    move-object/from16 v9, p11

    move-object/from16 v12, p12

    move/from16 v8, v28

    goto/16 :goto_1b1

    .line 2294
    .restart local v6    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .restart local v10    # "win":Lcom/android/server/wm/WindowState;
    .restart local v11    # "focusMayChange":Z
    .restart local v12    # "oldVisibility":I
    .restart local v13    # "wallpaperMayMove":Z
    .restart local v14    # "shouldRelayout":Z
    .restart local v16    # "becameVisible":Z
    .restart local v17    # "displayId":I
    .restart local v20    # "imMayMove":Z
    .restart local v25    # "flagChanges":I
    .restart local v26    # "isDefaultDisplay":Z
    .restart local v27    # "attrChanges":I
    :cond_35a
    :try_start_35a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "wmReleaseOutSurface_"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 2295
    invoke-virtual {v8}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2294
    const-wide/16 v8, 0x20

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2296
    invoke-virtual/range {p20 .. p20}, Landroid/view/Surface;->release()V
    :try_end_37a
    .catchall {:try_start_35a .. :try_end_37a} :catchall_4df

    .line 2298
    :try_start_37a
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 2299
    nop

    .line 2302
    :goto_37e
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_381
    .catchall {:try_start_37a .. :try_end_381} :catchall_4d7

    .line 2306
    move/from16 v8, v28

    .line 2306
    .end local v28    # "result":I
    .restart local v8    # "result":I
    :goto_383
    :try_start_383
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement(Z)V
    :try_end_389
    .catchall {:try_start_383 .. :try_end_389} :catchall_4ce

    .line 2308
    if-eqz v11, :cond_39d

    .line 2310
    const/4 v0, 0x3

    const/4 v9, 0x0

    :try_start_38d
    invoke-virtual {v1, v0, v9}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v0
    :try_end_391
    .catchall {:try_start_38d .. :try_end_391} :catchall_396

    if-eqz v0, :cond_39d

    .line 2312
    const/16 v20, 0x0

    goto :goto_39d

    .line 2422
    .end local v6    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .end local v10    # "win":Lcom/android/server/wm/WindowState;
    .end local v11    # "focusMayChange":Z
    .end local v12    # "oldVisibility":I
    .end local v13    # "wallpaperMayMove":Z
    .end local v14    # "shouldRelayout":Z
    .end local v16    # "becameVisible":Z
    .end local v17    # "displayId":I
    .end local v20    # "imMayMove":Z
    .end local v25    # "flagChanges":I
    .end local v26    # "isDefaultDisplay":Z
    .end local v27    # "attrChanges":I
    :catchall_396
    move-exception v0

    move-object/from16 v9, p11

    move-object/from16 v12, p12

    goto/16 :goto_1b1

    .line 2319
    .restart local v6    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .restart local v10    # "win":Lcom/android/server/wm/WindowState;
    .restart local v11    # "focusMayChange":Z
    .restart local v12    # "oldVisibility":I
    .restart local v13    # "wallpaperMayMove":Z
    .restart local v14    # "shouldRelayout":Z
    .restart local v16    # "becameVisible":Z
    .restart local v17    # "displayId":I
    .restart local v20    # "imMayMove":Z
    .restart local v25    # "flagChanges":I
    .restart local v26    # "isDefaultDisplay":Z
    .restart local v27    # "attrChanges":I
    :cond_39d
    :goto_39d
    and-int/lit8 v0, v8, 0x2

    if-eqz v0, :cond_3a3

    const/4 v0, 0x1

    goto :goto_3a4

    :cond_3a3
    const/4 v0, 0x0

    .line 2320
    .local v0, "toBeDisplayed":Z
    :goto_3a4
    :try_start_3a4
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v9
    :try_end_3a8
    .catchall {:try_start_3a4 .. :try_end_3a8} :catchall_4ce

    .line 2321
    .local v9, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v20, :cond_3b4

    .line 2322
    const/4 v2, 0x1

    :try_start_3ab
    invoke-virtual {v9, v2}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    .line 2323
    if-eqz v0, :cond_3b4

    .line 2328
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 2332
    :cond_3b4
    if-eqz v13, :cond_3c2

    .line 2333
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget v5, v2, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const/16 v18, 0x4

    or-int/lit8 v5, v5, 0x4

    iput v5, v2, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I
    :try_end_3c2
    .catchall {:try_start_3ab .. :try_end_3c2} :catchall_396

    .line 2337
    :cond_3c2
    :try_start_3c2
    iget-object v2, v10, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;
    :try_end_3c4
    .catchall {:try_start_3c2 .. :try_end_3c4} :catchall_4ce

    if-eqz v2, :cond_3cd

    .line 2338
    :try_start_3c6
    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    iget-object v5, v10, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2, v5}, Lcom/android/server/wm/UnknownAppVisibilityController;->notifyRelayouted(Lcom/android/server/wm/AppWindowToken;)V
    :try_end_3cd
    .catchall {:try_start_3c6 .. :try_end_3cd} :catchall_396

    .line 2341
    :cond_3cd
    :try_start_3cd
    const-string/jumbo v2, "relayoutWindow: updateOrientationFromAppTokens"

    move/from16 v30, v11

    move/from16 v29, v12

    const-wide/16 v11, 0x20

    invoke-static {v11, v12, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2345
    .end local v11    # "focusMayChange":Z
    .end local v12    # "oldVisibility":I
    .local v29, "oldVisibility":I
    .local v30, "focusMayChange":Z
    iget-object v2, v10, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;
    :try_end_3db
    .catchall {:try_start_3cd .. :try_end_3db} :catchall_4ce

    if-eqz v2, :cond_3e8

    :try_start_3dd
    iget-object v2, v10, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;
    :try_end_3e1
    .catchall {:try_start_3dd .. :try_end_3e1} :catchall_396

    if-eq v2, v10, :cond_3e4

    goto :goto_3e8

    .line 2348
    :cond_3e4
    move/from16 v2, v17

    const/4 v5, 0x0

    goto :goto_3ee

    .line 2346
    :cond_3e8
    :goto_3e8
    move/from16 v2, v17

    :try_start_3ea
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(I)Z

    move-result v5

    .line 2348
    .end local v17    # "displayId":I
    .local v2, "displayId":I
    .local v5, "configChanged":Z
    :goto_3ee
    nop

    .line 2351
    const-wide/16 v11, 0x20

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_3f4
    .catchall {:try_start_3ea .. :try_end_3f4} :catchall_4ce

    .line 2353
    if-eqz v0, :cond_411

    :try_start_3f6
    iget-boolean v11, v10, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v11, :cond_411

    .line 2354
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v11

    .line 2355
    .local v11, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v12, v9, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    move/from16 v31, v0

    iget v0, v11, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 2355
    .end local v0    # "toBeDisplayed":Z
    .local v31, "toBeDisplayed":Z
    iget v7, v11, Landroid/view/DisplayInfo;->logicalHeight:I

    move-object/from16 v32, v9

    const/4 v9, 0x0

    invoke-virtual {v12, v10, v0, v7, v9}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffset(Lcom/android/server/wm/WindowState;IIZ)Z
    :try_end_410
    .catchall {:try_start_3f6 .. :try_end_410} :catchall_396

    .line 2355
    .end local v9    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v11    # "displayInfo":Landroid/view/DisplayInfo;
    .local v32, "dc":Lcom/android/server/wm/DisplayContent;
    goto :goto_415

    .line 2358
    .end local v31    # "toBeDisplayed":Z
    .end local v32    # "dc":Lcom/android/server/wm/DisplayContent;
    .restart local v0    # "toBeDisplayed":Z
    .restart local v9    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_411
    move/from16 v31, v0

    move-object/from16 v32, v9

    .line 2358
    .end local v0    # "toBeDisplayed":Z
    .end local v9    # "dc":Lcom/android/server/wm/DisplayContent;
    .restart local v31    # "toBeDisplayed":Z
    .restart local v32    # "dc":Lcom/android/server/wm/DisplayContent;
    :goto_415
    :try_start_415
    iget-object v0, v10, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;
    :try_end_417
    .catchall {:try_start_415 .. :try_end_417} :catchall_4ce

    if-eqz v0, :cond_41e

    .line 2359
    :try_start_419
    iget-object v0, v10, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V
    :try_end_41e
    .catchall {:try_start_419 .. :try_end_41e} :catchall_396

    .line 2361
    :cond_41e
    :try_start_41e
    iget-boolean v0, v6, Lcom/android/server/wm/WindowStateAnimator;->mReportSurfaceResized:Z
    :try_end_420
    .catchall {:try_start_41e .. :try_end_420} :catchall_4ce

    if-eqz v0, :cond_428

    .line 2362
    const/4 v7, 0x0

    :try_start_423
    iput-boolean v7, v6, Lcom/android/server/wm/WindowStateAnimator;->mReportSurfaceResized:Z
    :try_end_425
    .catchall {:try_start_423 .. :try_end_425} :catchall_396

    .line 2363
    or-int/lit8 v0, v8, 0x20

    .line 2365
    .end local v8    # "result":I
    .local v0, "result":I
    move v8, v0

    .line 2365
    .end local v0    # "result":I
    .restart local v8    # "result":I
    :cond_428
    :try_start_428
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, v10}, Lcom/android/server/policy/WindowManagerPolicy;->isNavBarForcedShownLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-eqz v0, :cond_433

    .line 2366
    or-int/lit8 v0, v8, 0x40

    .line 2368
    .end local v8    # "result":I
    .restart local v0    # "result":I
    move v8, v0

    .line 2368
    .end local v0    # "result":I
    .restart local v8    # "result":I
    :cond_433
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v0
    :try_end_437
    .catchall {:try_start_428 .. :try_end_437} :catchall_4ce

    if-nez v0, :cond_43c

    .line 2369
    const/4 v7, 0x0

    :try_start_43a
    iput-boolean v7, v10, Lcom/android/server/wm/WindowState;->mResizedWhileGone:Z
    :try_end_43c
    .catchall {:try_start_43a .. :try_end_43c} :catchall_396

    .line 2382
    :cond_43c
    if-eqz v14, :cond_449

    .line 2383
    move-object/from16 v7, p19

    :try_start_440
    invoke-virtual {v10, v7}, Lcom/android/server/wm/WindowState;->getMergedConfiguration(Landroid/util/MergedConfiguration;)V
    :try_end_443
    .catchall {:try_start_440 .. :try_end_443} :catchall_444

    goto :goto_44e

    .line 2422
    .end local v2    # "displayId":I
    .end local v5    # "configChanged":Z
    .end local v6    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .end local v10    # "win":Lcom/android/server/wm/WindowState;
    .end local v13    # "wallpaperMayMove":Z
    .end local v14    # "shouldRelayout":Z
    .end local v16    # "becameVisible":Z
    .end local v20    # "imMayMove":Z
    .end local v25    # "flagChanges":I
    .end local v26    # "isDefaultDisplay":Z
    .end local v27    # "attrChanges":I
    .end local v29    # "oldVisibility":I
    .end local v30    # "focusMayChange":Z
    .end local v31    # "toBeDisplayed":Z
    .end local v32    # "dc":Lcom/android/server/wm/DisplayContent;
    :catchall_444
    move-exception v0

    move-object/from16 v9, p11

    goto/16 :goto_4f

    .line 2385
    .restart local v2    # "displayId":I
    .restart local v5    # "configChanged":Z
    .restart local v6    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .restart local v10    # "win":Lcom/android/server/wm/WindowState;
    .restart local v13    # "wallpaperMayMove":Z
    .restart local v14    # "shouldRelayout":Z
    .restart local v16    # "becameVisible":Z
    .restart local v20    # "imMayMove":Z
    .restart local v25    # "flagChanges":I
    .restart local v26    # "isDefaultDisplay":Z
    .restart local v27    # "attrChanges":I
    .restart local v29    # "oldVisibility":I
    .restart local v30    # "focusMayChange":Z
    .restart local v31    # "toBeDisplayed":Z
    .restart local v32    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_449
    move-object/from16 v7, p19

    :try_start_44b
    invoke-virtual {v10, v7}, Lcom/android/server/wm/WindowState;->getLastReportedMergedConfiguration(Landroid/util/MergedConfiguration;)V

    .line 2388
    :goto_44e
    invoke-virtual {v10, v7}, Lcom/android/server/wm/WindowState;->setLastReportedMergedConfiguration(Landroid/util/MergedConfiguration;)V

    .line 2392
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->updateLastInsetValues()V

    .line 2394
    iget-object v0, v10, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;
    :try_end_456
    .catchall {:try_start_44b .. :try_end_456} :catchall_4c5

    move-object/from16 v9, p11

    :try_start_458
    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2395
    iget-object v0, v10, Lcom/android/server/wm/WindowState;->mOverscanInsets:Landroid/graphics/Rect;
    :try_end_45d
    .catchall {:try_start_458 .. :try_end_45d} :catchall_4c3

    move-object/from16 v12, p12

    :try_start_45f
    invoke-virtual {v12, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2396
    iget-object v0, v10, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;
    :try_end_464
    .catchall {:try_start_45f .. :try_end_464} :catchall_4c1

    move-object/from16 v11, p13

    :try_start_466
    invoke-virtual {v11, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2397
    iget-object v0, v10, Lcom/android/server/wm/WindowState;->mLastRelayoutContentInsets:Landroid/graphics/Rect;

    move-object/from16 v33, v6

    iget-object v6, v10, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    .line 2397
    .end local v6    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .local v33, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    invoke-virtual {v0, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2398
    iget-object v0, v10, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v6, p14

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2399
    iget-object v0, v10, Lcom/android/server/wm/WindowState;->mStableInsets:Landroid/graphics/Rect;

    move-object/from16 v6, p15

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2400
    iget-object v0, v10, Lcom/android/server/wm/WindowState;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    invoke-virtual {v0}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    move-object/from16 v6, p18

    invoke-virtual {v6, v0}, Landroid/view/DisplayCutout$ParcelableWrapper;->set(Landroid/view/DisplayCutout;)V

    .line 2401
    iget-object v0, v10, Lcom/android/server/wm/WindowState;->mOutsets:Landroid/graphics/Rect;

    move-object/from16 v6, p16

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2402
    iget-object v0, v10, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Lcom/android/server/wm/WindowState;->getBackdropFrame(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    move-object/from16 v6, p17

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2414
    iget-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    or-int/2addr v8, v0

    .line 2416
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 2421
    const/4 v6, 0x0

    iput-boolean v6, v10, Lcom/android/server/wm/WindowState;->mInRelayout:Z

    .line 2422
    .end local v10    # "win":Lcom/android/server/wm/WindowState;
    .end local v13    # "wallpaperMayMove":Z
    .end local v14    # "shouldRelayout":Z
    .end local v16    # "becameVisible":Z
    .end local v20    # "imMayMove":Z
    .end local v25    # "flagChanges":I
    .end local v26    # "isDefaultDisplay":Z
    .end local v27    # "attrChanges":I
    .end local v29    # "oldVisibility":I
    .end local v30    # "focusMayChange":Z
    .end local v31    # "toBeDisplayed":Z
    .end local v32    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v33    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    monitor-exit v15
    :try_end_4aa
    .catchall {:try_start_466 .. :try_end_4aa} :catchall_547

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2424
    if-eqz v5, :cond_4bd

    .line 2425
    const-string/jumbo v0, "relayoutWindow: sendNewConfiguration"

    const-wide/16 v13, 0x20

    invoke-static {v13, v14, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2426
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration(I)V

    .line 2427
    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    .line 2429
    :cond_4bd
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2430
    return v8

    .line 2422
    .end local v2    # "displayId":I
    .end local v5    # "configChanged":Z
    :catchall_4c1
    move-exception v0

    goto :goto_4ca

    :catchall_4c3
    move-exception v0

    goto :goto_4c8

    :catchall_4c5
    move-exception v0

    move-object/from16 v9, p11

    :goto_4c8
    move-object/from16 v12, p12

    :goto_4ca
    move-object/from16 v11, p13

    goto/16 :goto_542

    :catchall_4ce
    move-exception v0

    move-object/from16 v9, p11

    move-object/from16 v12, p12

    move-object/from16 v11, p13

    goto/16 :goto_1b1

    .end local v8    # "result":I
    .restart local v28    # "result":I
    :catchall_4d7
    move-exception v0

    move-object/from16 v9, p11

    move-object/from16 v12, p12

    move-object/from16 v11, p13

    goto :goto_4f9

    .line 2298
    .restart local v6    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .restart local v10    # "win":Lcom/android/server/wm/WindowState;
    .local v11, "focusMayChange":Z
    .restart local v12    # "oldVisibility":I
    .restart local v13    # "wallpaperMayMove":Z
    .restart local v14    # "shouldRelayout":Z
    .restart local v16    # "becameVisible":Z
    .restart local v17    # "displayId":I
    .restart local v20    # "imMayMove":Z
    .restart local v25    # "flagChanges":I
    .restart local v26    # "isDefaultDisplay":Z
    .restart local v27    # "attrChanges":I
    :catchall_4df
    move-exception v0

    move-object/from16 v9, p11

    move-object/from16 v33, v6

    move/from16 v29, v12

    move/from16 v2, v17

    move-object/from16 v7, p19

    move-object/from16 v12, p12

    .line 2298
    .end local v6    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .end local v12    # "oldVisibility":I
    .end local v17    # "displayId":I
    .restart local v2    # "displayId":I
    .restart local v29    # "oldVisibility":I
    .restart local v33    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    const-wide/16 v5, 0x20

    :try_start_4ee
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
    :try_end_4f2
    .catchall {:try_start_4ee .. :try_end_4f2} :catchall_4f2

    .line 2422
    .end local v2    # "displayId":I
    .end local v10    # "win":Lcom/android/server/wm/WindowState;
    .end local v11    # "focusMayChange":Z
    .end local v13    # "wallpaperMayMove":Z
    .end local v14    # "shouldRelayout":Z
    .end local v16    # "becameVisible":Z
    .end local v20    # "imMayMove":Z
    .end local v25    # "flagChanges":I
    .end local v26    # "isDefaultDisplay":Z
    .end local v27    # "attrChanges":I
    .end local v29    # "oldVisibility":I
    .end local v33    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :catchall_4f2
    move-exception v0

    goto :goto_4fb

    :catchall_4f4
    move-exception v0

    move-object/from16 v9, p11

    move-object/from16 v12, p12

    .line 2422
    .end local v28    # "result":I
    .restart local v8    # "result":I
    :goto_4f9
    move-object/from16 v7, p19

    :goto_4fb
    move/from16 v8, v28

    goto :goto_542

    :catchall_4fe
    move-exception v0

    move-object/from16 v9, p11

    move-object/from16 v12, p12

    move/from16 v28, v8

    move-object/from16 v7, p19

    .line 2422
    .end local v8    # "result":I
    .restart local v28    # "result":I
    goto :goto_542

    .line 2422
    .end local v3    # "origId":J
    .end local v28    # "result":I
    .restart local v8    # "result":I
    .restart local v18    # "origId":J
    :catchall_508
    move-exception v0

    move-object/from16 v9, p11

    move-object/from16 v12, p12

    move-wide/from16 v3, v18

    :goto_50f
    move-object/from16 v7, p19

    .line 2422
    .end local v18    # "origId":J
    .restart local v3    # "origId":J
    goto :goto_542

    .line 2422
    .end local v3    # "origId":J
    .end local v23    # "hasStatusBarServicePermission":Z
    .local v12, "hasStatusBarServicePermission":Z
    .restart local v18    # "origId":J
    :catchall_512
    move-exception v0

    move-object/from16 v9, p11

    move/from16 v23, v12

    move-wide/from16 v3, v18

    move-object/from16 v7, p19

    move-object/from16 v12, p12

    .line 2422
    .end local v12    # "hasStatusBarServicePermission":Z
    .end local v18    # "origId":J
    .restart local v3    # "origId":J
    .restart local v23    # "hasStatusBarServicePermission":Z
    goto :goto_542

    .line 2422
    .end local v3    # "origId":J
    .end local v22    # "hasStatusBarPermission":Z
    .end local v23    # "hasStatusBarServicePermission":Z
    .local v11, "hasStatusBarPermission":Z
    .restart local v12    # "hasStatusBarServicePermission":Z
    .restart local v18    # "origId":J
    :catchall_51e
    move-exception v0

    move-object/from16 v9, p11

    move/from16 v22, v11

    move/from16 v23, v12

    move-wide/from16 v3, v18

    move-object/from16 v7, p19

    move-object/from16 v12, p12

    .line 2422
    .end local v11    # "hasStatusBarPermission":Z
    .end local v12    # "hasStatusBarServicePermission":Z
    .end local v18    # "origId":J
    .restart local v3    # "origId":J
    .restart local v22    # "hasStatusBarPermission":Z
    .restart local v23    # "hasStatusBarServicePermission":Z
    goto :goto_542

    .line 2422
    .end local v3    # "origId":J
    .end local v22    # "hasStatusBarPermission":Z
    .end local v23    # "hasStatusBarServicePermission":Z
    .restart local v11    # "hasStatusBarPermission":Z
    .restart local v12    # "hasStatusBarServicePermission":Z
    .local v13, "origId":J
    :catchall_52c
    move-exception v0

    move-object/from16 v9, p11

    move/from16 v22, v11

    move/from16 v23, v12

    move-wide v3, v13

    move-object/from16 v7, p19

    goto :goto_540

    :catchall_537
    move-exception v0

    move-object/from16 v9, p11

    move-object v7, v6

    move/from16 v22, v11

    move/from16 v23, v12

    move-wide v3, v13

    :goto_540
    move-object/from16 v12, p12

    .end local v11    # "hasStatusBarPermission":Z
    .end local v12    # "hasStatusBarServicePermission":Z
    .end local v13    # "origId":J
    .restart local v3    # "origId":J
    .restart local v22    # "hasStatusBarPermission":Z
    .restart local v23    # "hasStatusBarServicePermission":Z
    :goto_542
    :try_start_542
    monitor-exit v15
    :try_end_543
    .catchall {:try_start_542 .. :try_end_543} :catchall_547

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_547
    move-exception v0

    goto :goto_542
.end method

.method public removeObsoleteTaskFiles(Landroid/util/ArraySet;[I)V
    .registers 5
    .param p2, "runningUserIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;[I)V"
        }
    .end annotation

    .line 4134
    .local p1, "persistentTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4135
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/TaskSnapshotController;->removeObsoleteTaskFiles(Landroid/util/ArraySet;[I)V

    .line 4136
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4137
    return-void

    .line 4136
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public removeRotationWatcher(Landroid/view/IRotationWatcher;)V
    .registers 10
    .param p1, "watcher"    # Landroid/view/IRotationWatcher;

    .line 4326
    invoke-interface {p1}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 4327
    .local v0, "watcherBinder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4328
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_c
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3e

    .line 4329
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowManagerService$RotationWatcher;

    .line 4330
    .local v4, "rotationWatcher":Lcom/android/server/wm/WindowManagerService$RotationWatcher;
    iget-object v5, v4, Lcom/android/server/wm/WindowManagerService$RotationWatcher;->mWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v5}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v0, v5, :cond_3b

    .line 4331
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowManagerService$RotationWatcher;

    .line 4332
    .local v5, "removed":Lcom/android/server/wm/WindowManagerService$RotationWatcher;
    iget-object v6, v5, Lcom/android/server/wm/WindowManagerService$RotationWatcher;->mWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v6}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 4333
    .local v6, "binder":Landroid/os/IBinder;
    if-eqz v6, :cond_39

    .line 4334
    iget-object v7, v5, Lcom/android/server/wm/WindowManagerService$RotationWatcher;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v6, v7, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 4336
    :cond_39
    add-int/lit8 v3, v3, -0x1

    .line 4328
    .end local v4    # "rotationWatcher":Lcom/android/server/wm/WindowManagerService$RotationWatcher;
    .end local v5    # "removed":Lcom/android/server/wm/WindowManagerService$RotationWatcher;
    .end local v6    # "binder":Landroid/os/IBinder;
    :cond_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 4339
    .end local v3    # "i":I
    :cond_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_7 .. :try_end_3f} :catchall_43

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4340
    return-void

    .line 4339
    :catchall_43
    move-exception v2

    :try_start_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method removeWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)V
    .registers 5
    .param p1, "session"    # Lcom/android/server/wm/Session;
    .param p2, "client"    # Landroid/view/IWindow;

    .line 1842
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1843
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 1844
    .local v1, "win":Lcom/android/server/wm/WindowState;
    if-nez v1, :cond_12

    .line 1845
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1847
    :cond_12
    :try_start_12
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->removeIfPossible()V

    .line 1848
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1849
    return-void

    .line 1848
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public removeWindowChangeListener(Lcom/android/server/wm/WindowManagerService$WindowChangeListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/android/server/wm/WindowManagerService$WindowChangeListener;

    .line 4715
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4716
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4717
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4718
    return-void

    .line 4717
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public removeWindowToken(Landroid/os/IBinder;I)V
    .registers 11
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "displayId"    # I

    .line 2609
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string/jumbo v1, "removeWindowToken()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 2613
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2615
    .local v0, "origId":J
    :try_start_f
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_7e

    :try_start_12
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2616
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 2617
    .local v3, "dc":Lcom/android/server/wm/DisplayContent;
    if-nez v3, :cond_44

    .line 2618
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeWindowToken: Attempted to remove token: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " for non-exiting displayId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2620
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_12 .. :try_end_3d} :catchall_78

    .line 2633
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2620
    return-void

    .line 2623
    :cond_44
    :try_start_44
    invoke-virtual {v3, p1}, Lcom/android/server/wm/DisplayContent;->removeWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v4

    .line 2624
    .local v4, "token":Lcom/android/server/wm/WindowToken;
    if-nez v4, :cond_69

    .line 2625
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeWindowToken: Attempted to remove non-existing token: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2627
    monitor-exit v2
    :try_end_62
    .catchall {:try_start_44 .. :try_end_62} :catchall_78

    .line 2633
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2627
    return-void

    .line 2630
    :cond_69
    :try_start_69
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 2631
    .end local v3    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v4    # "token":Lcom/android/server/wm/WindowToken;
    monitor-exit v2
    :try_end_70
    .catchall {:try_start_69 .. :try_end_70} :catchall_78

    :try_start_70
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_7e

    .line 2633
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2634
    nop

    .line 2635
    return-void

    .line 2631
    :catchall_78
    move-exception v3

    :try_start_79
    monitor-exit v2
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    :try_start_7a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_7e
    .catchall {:try_start_7a .. :try_end_7e} :catchall_7e

    .line 2633
    :catchall_7e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 2610
    .end local v0    # "origId":J
    :cond_83
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V
    .registers 5
    .param p1, "receiver"    # Lcom/android/internal/os/IResultReceiver;
    .param p2, "deviceId"    # I

    .line 7428
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 7429
    .local v0, "focusedWindow":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_13

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    if-eqz v1, :cond_13

    .line 7430
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1, p1, p2}, Landroid/view/IWindow;->requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    .line 7433
    .end local v0    # "focusedWindow":Lcom/android/server/wm/WindowState;
    :cond_13
    goto :goto_15

    .line 7432
    :catch_14
    move-exception v0

    .line 7434
    :goto_15
    return-void
.end method

.method public requestAssistScreenshot(Landroid/app/IAssistDataReceiver;)Z
    .registers 5
    .param p1, "receiver"    # Landroid/app/IAssistDataReceiver;

    .line 4092
    const-string v0, "android.permission.READ_FRAME_BUFFER"

    const-string/jumbo v1, "requestAssistScreenshot()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 4097
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4098
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 4099
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v1, :cond_1c

    .line 4104
    const/4 v2, 0x0

    .line 4104
    .local v2, "bm":Landroid/graphics/Bitmap;
    goto :goto_22

    .line 4106
    .end local v2    # "bm":Landroid/graphics/Bitmap;
    :cond_1c
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->screenshotDisplayLocked(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 4106
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v2    # "bm":Landroid/graphics/Bitmap;
    :goto_22
    move-object v1, v2

    .line 4108
    .end local v2    # "bm":Landroid/graphics/Bitmap;
    .local v1, "bm":Landroid/graphics/Bitmap;
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_e .. :try_end_24} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4110
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/android/server/wm/-$$Lambda$WindowManagerService$CbEzJbdxOpfZ-AMUAcOVQZxepOo;

    invoke-direct {v2, p1, v1}, Lcom/android/server/wm/-$$Lambda$WindowManagerService$CbEzJbdxOpfZ-AMUAcOVQZxepOo;-><init>(Landroid/app/IAssistDataReceiver;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4117
    const/4 v0, 0x1

    return v0

    .line 4108
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    :catchall_35
    move-exception v1

    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 4093
    :cond_3b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_FRAME_BUFFER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method requestTraversal()V
    .registers 3

    .line 6081
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6082
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 6083
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6084
    return-void

    .line 6083
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public requestUserActivityNotification()V
    .registers 3

    .line 7603
    const-string v0, "android.permission.USER_ACTIVITY"

    const-string/jumbo v1, "requestUserActivityNotification()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 7607
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->requestUserActivityNotification()V

    .line 7608
    return-void

    .line 7605
    :cond_11
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires USER_ACTIVITY permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method restorePointerIconLocked(Lcom/android/server/wm/DisplayContent;FF)V
    .registers 8
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "latestX"    # F
    .param p3, "latestY"    # F

    .line 7528
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mMousePositionTracker:Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->updatePosition(FF)V

    .line 7530
    nop

    .line 7531
    invoke-virtual {p1, p2, p3}, Lcom/android/server/wm/DisplayContent;->getTouchableWinAtPointLocked(FF)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 7532
    .local v0, "windowUnderPointer":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_24

    .line 7534
    :try_start_c
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 7535
    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowState;->translateToWindowX(F)F

    move-result v2

    .line 7536
    invoke-virtual {v0, p3}, Lcom/android/server/wm/WindowState;->translateToWindowY(F)F

    move-result v3

    .line 7534
    invoke-interface {v1, v2, v3}, Landroid/view/IWindow;->updatePointerIcon(FF)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_19} :catch_1a

    goto :goto_23

    .line 7537
    :catch_1a
    move-exception v1

    .line 7538
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string/jumbo v3, "unable to restore pointer icon"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7539
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_23
    goto :goto_2d

    .line 7541
    :cond_24
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    .line 7543
    :goto_2d
    return-void
.end method

.method resumeRotationLocked()V
    .registers 6

    .line 4226
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    if-lez v0, :cond_2b

    .line 4227
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    .line 4228
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    if-nez v0, :cond_2b

    .line 4230
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 4231
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->updateRotationUnchecked()Z

    move-result v1

    .line 4232
    .local v1, "changed":Z
    if-eqz v1, :cond_2b

    .line 4233
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0x12

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 4234
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 4238
    .end local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v1    # "changed":Z
    :cond_2b
    return-void
.end method

.method rotationNeedsUpdateLocked()Z
    .registers 8

    .line 2749
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 2750
    .local v0, "defaultDisplayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getLastOrientation()I

    move-result v1

    .line 2751
    .local v1, "lastOrientation":I
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v2

    .line 2752
    .local v2, "oldRotation":I
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getAltOrientation()Z

    move-result v3

    .line 2754
    .local v3, "oldAltOrientation":Z
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/4 v5, 0x1

    invoke-interface {v4, v1, v2, v5}, Lcom/android/server/policy/WindowManagerPolicy;->rotationForOrientationLw(IIZ)I

    move-result v4

    .line 2756
    .local v4, "rotation":I
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v6, v1, v4}, Lcom/android/server/policy/WindowManagerPolicy;->rotationHasCompatibleMetricsLw(II)Z

    move-result v6

    xor-int/2addr v6, v5

    .line 2758
    .local v6, "altOrientation":Z
    if-ne v2, v4, :cond_24

    if-ne v3, v6, :cond_24

    .line 2759
    const/4 v5, 0x0

    return v5

    .line 2761
    :cond_24
    return v5
.end method

.method saveANRStateLocked(Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/WindowState;Ljava/lang/String;)V
    .registers 10
    .param p1, "appWindowToken"    # Lcom/android/server/wm/AppWindowToken;
    .param p2, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p3, "reason"    # Ljava/lang/String;

    .line 6994
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 6995
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    const/4 v2, 0x0

    const/16 v3, 0x400

    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 6996
    .local v1, "pw":Ljava/io/PrintWriter;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  ANR time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6997
    if-eqz p1, :cond_46

    .line 6998
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Application at fault: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/wm/AppWindowToken;->stringName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7000
    :cond_46
    if-eqz p2, :cond_62

    .line 7001
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Window at fault: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7003
    :cond_62
    if-eqz p3, :cond_78

    .line 7004
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7006
    :cond_78
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWinAddedSinceNullFocus:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_96

    .line 7007
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Windows added since null focus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWinAddedSinceNullFocus:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7009
    :cond_96
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWinRemovedSinceNullFocus:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b4

    .line 7010
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Windows removed since null focus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWinRemovedSinceNullFocus:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7012
    :cond_b4
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 7013
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->dumpWindowsNoHeaderLocked(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V

    .line 7014
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 7015
    const-string v2, "Last ANR continued"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7016
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/RootWindowContainer;->dumpDisplayContents(Ljava/io/PrintWriter;)V

    .line 7017
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 7018
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mLastANRState:Ljava/lang/String;

    .line 7020
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0x26

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 7021
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/32 v4, 0x6ddd00

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 7022
    return-void
.end method

.method scheduleAnimationLocked()V
    .registers 2

    .line 6088
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    if-eqz v0, :cond_9

    .line 6089
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowAnimator;->scheduleAnimation()V

    .line 6091
    :cond_9
    return-void
.end method

.method public scheduleClearWillReplaceWindows(Landroid/os/IBinder;Z)V
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "replacing"    # Z

    .line 7324
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7325
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .line 7326
    .local v1, "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    if-nez v1, :cond_29

    .line 7327
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to reset replacing window on non-existing app token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7329
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_37

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 7331
    :cond_29
    if-eqz p2, :cond_2f

    .line 7332
    :try_start_2b
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->scheduleWindowReplacementTimeouts(Lcom/android/server/wm/AppWindowToken;)V

    goto :goto_32

    .line 7334
    :cond_2f
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->clearWillReplaceWindows()V

    .line 7336
    .end local v1    # "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    :goto_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_37

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7337
    return-void

    .line 7336
    :catchall_37
    move-exception v1

    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method scheduleWindowReplacementTimeouts(Lcom/android/server/wm/AppWindowToken;)V
    .registers 6
    .param p1, "appWindowToken"    # Lcom/android/server/wm/AppWindowToken;

    .line 7340
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowReplacementTimeouts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 7341
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowReplacementTimeouts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7343
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 7344
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 7346
    return-void
.end method

.method public screenTurningOff(Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;

    .line 3140
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotController;->screenTurningOff(Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V

    .line 3141
    return-void
.end method

.method public screenshotWallpaper()Landroid/graphics/Bitmap;
    .registers 5

    .line 4072
    const-string v0, "android.permission.READ_FRAME_BUFFER"

    const-string/jumbo v1, "screenshotWallpaper()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 4076
    const-wide/16 v0, 0x20

    :try_start_d
    const-string/jumbo v2, "screenshotWallpaper"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4077
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_2f

    :try_start_16
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4078
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v3, v3, Lcom/android/server/wm/RootWindowContainer;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v3}, Lcom/android/server/wm/WallpaperController;->screenshotWallpaperLocked()Landroid/graphics/Bitmap;

    move-result-object v3

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_16 .. :try_end_22} :catchall_29

    .line 4081
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4078
    return-object v3

    .line 4079
    :catchall_29
    move-exception v3

    :try_start_2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    :try_start_2b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_2f

    .line 4081
    :catchall_2f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2

    .line 4073
    :cond_34
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_FRAME_BUFFER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method sendNewConfiguration(I)V
    .registers 6
    .param p1, "displayId"    # I

    .line 4768
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/app/IActivityManager;->updateDisplayOverrideConfiguration(Landroid/content/res/Configuration;I)Z

    move-result v0

    .line 4770
    .local v0, "configUpdated":Z
    if-nez v0, :cond_35

    .line 4775
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_36

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4776
    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    if-eqz v2, :cond_2a

    .line 4777
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    .line 4778
    const-string v2, "config-unchanged"

    iput-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    .line 4779
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 4780
    .local v2, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v2, :cond_25

    .line 4781
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 4783
    :cond_25
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 4785
    .end local v2    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_2f

    :try_start_2b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2e} :catch_36

    goto :goto_35

    :catchall_2f
    move-exception v2

    :try_start_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    :try_start_31
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_35} :catch_36

    .line 4788
    .end local v0    # "configUpdated":Z
    :cond_35
    :goto_35
    goto :goto_37

    .line 4787
    :catch_36
    move-exception v0

    .line 4789
    :goto_37
    return-void
.end method

.method sendSetRunningRemoteAnimation(IZ)V
    .registers 5
    .param p1, "pid"    # I
    .param p2, "runningRemoteAnimation"    # Z

    .line 8085
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 8086
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 8087
    return-void
.end method

.method public setAnimationScale(IF)V
    .registers 5
    .param p1, "which"    # I
    .param p2, "scale"    # F

    .line 3425
    const-string v0, "android.permission.SET_ANIMATION_SCALE"

    const-string/jumbo v1, "setAnimationScale()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 3430
    invoke-static {p2}, Lcom/android/server/wm/WindowManagerService;->fixScale(F)F

    move-result p2

    .line 3431
    packed-switch p1, :pswitch_data_2c

    goto :goto_1b

    .line 3434
    :pswitch_13
    iput p2, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    goto :goto_1b

    .line 3433
    :pswitch_16
    iput p2, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    goto :goto_1b

    .line 3432
    :pswitch_19
    iput p2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    .line 3438
    :goto_1b
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 3439
    return-void

    .line 3427
    :cond_23
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_ANIMATION_SCALE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_19
        :pswitch_16
        :pswitch_13
    .end packed-switch
.end method

.method public setAnimationScales([F)V
    .registers 5
    .param p1, "scales"    # [F

    .line 3443
    const-string v0, "android.permission.SET_ANIMATION_SCALE"

    const-string/jumbo v1, "setAnimationScale()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 3448
    if-eqz p1, :cond_36

    .line 3449
    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1a

    .line 3450
    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    .line 3452
    :cond_1a
    array-length v0, p1

    const/4 v2, 0x2

    if-lt v0, v2, :cond_26

    .line 3453
    aget v0, p1, v1

    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    .line 3455
    :cond_26
    array-length v0, p1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_36

    .line 3456
    aget v0, p1, v2

    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    .line 3457
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->dispatchNewAnimatorScaleLocked(Lcom/android/server/wm/Session;)V

    .line 3462
    :cond_36
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 3463
    return-void

    .line 3445
    :cond_3e
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_ANIMATION_SCALE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAodShowing(Z)V
    .registers 4
    .param p1, "aodShowing"    # Z

    .line 8122
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8123
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, p1}, Lcom/android/server/policy/WindowManagerPolicy;->setAodShowing(Z)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 8124
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 8126
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_18

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 8127
    return-void

    .line 8126
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setAppFullscreen(Landroid/os/IBinder;Z)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "toOpaque"    # Z

    .line 3061
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3062
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .line 3063
    .local v1, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_19

    .line 3064
    invoke-virtual {v1, p2}, Lcom/android/server/wm/AppWindowToken;->setFillsParent(Z)V

    .line 3065
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->setWindowOpaqueLocked(Landroid/os/IBinder;Z)V

    .line 3066
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 3068
    .end local v1    # "atoken":Lcom/android/server/wm/AppWindowToken;
    :cond_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3069
    return-void

    .line 3068
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setCastMode(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 8373
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mIsCastMode:Z

    .line 8374
    return-void
.end method

.method public setCastStackId(I)V
    .registers 2
    .param p1, "stackId"    # I

    .line 8369
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mCastStackId:I

    .line 8370
    return-void
.end method

.method public setCastWindow(Lcom/android/server/wm/WindowState;)V
    .registers 2
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 8401
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mCastWindow:Lcom/android/server/wm/WindowState;

    .line 8402
    return-void
.end method

.method public setCurrentProfileIds([I)V
    .registers 4
    .param p1, "currentProfileIds"    # [I

    .line 3627
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3628
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentProfileIds:[I

    .line 3629
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3630
    return-void

    .line 3629
    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setCurrentUser(I[I)V
    .registers 9
    .param p1, "newUserId"    # I
    .param p2, "currentProfileIds"    # [I

    .line 3633
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3634
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    .line 3635
    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentProfileIds:[I

    .line 3636
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/AppTransition;->setCurrentUser(I)V

    .line 3637
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, p1}, Lcom/android/server/policy/WindowManagerPolicy;->setCurrentUserLw(I)V

    .line 3642
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/server/policy/WindowManagerPolicy;->enableKeyguard(Z)V

    .line 3645
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->switchUser()V

    .line 3646
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 3649
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 3650
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    nop

    .line 3651
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v3

    .line 3652
    .local v3, "stack":Lcom/android/server/wm/TaskStack;
    iget-object v4, v1, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    if-eqz v3, :cond_38

    .line 3653
    invoke-virtual {v3, p1}, Lcom/android/server/wm/TaskStack;->hasTaskForUser(I)Z

    move-result v5

    if-eqz v5, :cond_38

    goto :goto_39

    :cond_38
    const/4 v2, 0x0

    .line 3652
    :goto_39
    invoke-virtual {v4, v2}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackExistsChanged(Z)V

    .line 3657
    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-eqz v2, :cond_4d

    .line 3658
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->getForcedDisplayDensityForUserLocked(I)I

    move-result v2

    .line 3659
    .local v2, "forcedDensity":I
    if-eqz v2, :cond_48

    .line 3660
    move v4, v2

    goto :goto_4a

    :cond_48
    iget v4, v1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    .line 3661
    .local v4, "targetDensity":I
    :goto_4a
    invoke-direct {p0, v1, v4}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplayDensityLocked(Lcom/android/server/wm/DisplayContent;I)V

    .line 3663
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "forcedDensity":I
    .end local v3    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v4    # "targetDensity":I
    :cond_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_52

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3664
    return-void

    .line 3663
    :catchall_52
    move-exception v1

    :try_start_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setDockedStackCreateState(ILandroid/graphics/Rect;)V
    .registers 5
    .param p1, "mode"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 3088
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3089
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->setDockedStackCreateStateLocked(ILandroid/graphics/Rect;)V

    .line 3090
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3091
    return-void

    .line 3090
    :catchall_e
    move-exception v1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method setDockedStackCreateStateLocked(ILandroid/graphics/Rect;)V
    .registers 3
    .param p1, "mode"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 3094
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mDockedStackCreateMode:I

    .line 3095
    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService;->mDockedStackCreateBounds:Landroid/graphics/Rect;

    .line 3096
    return-void
.end method

.method public setDockedStackDividerTouchRegion(Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "touchRegion"    # Landroid/graphics/Rect;

    .line 7366
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7367
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v1

    .line 7368
    invoke-virtual {v1, p1}, Lcom/android/server/wm/DockedStackDividerController;->setTouchRegion(Landroid/graphics/Rect;)V

    .line 7369
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->setFocusTaskRegionLocked(Lcom/android/server/wm/AppWindowToken;)V

    .line 7370
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7371
    return-void

    .line 7370
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setDockedStackResizing(Z)V
    .registers 4
    .param p1, "resizing"    # Z

    .line 7358
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7359
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DockedStackDividerController;->setResizing(Z)V

    .line 7360
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 7361
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7362
    return-void

    .line 7361
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setEventDispatching(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 4828
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string/jumbo v1, "setEventDispatching()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 4832
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4833
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mEventDispatchingEnabled:Z

    .line 4834
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v1, :cond_1c

    .line 4835
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/InputMonitor;->setEventDispatchingLw(Z)V

    .line 4837
    :cond_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4838
    return-void

    .line 4837
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 4829
    :cond_27
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setFocusTaskRegionLocked(Lcom/android/server/wm/AppWindowToken;)V
    .registers 7
    .param p1, "previousFocus"    # Lcom/android/server/wm/AppWindowToken;

    .line 2781
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_d

    :cond_c
    move-object v0, v1

    .line 2782
    .local v0, "focusedTask":Lcom/android/server/wm/Task;
    :goto_d
    if-eqz p1, :cond_14

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    goto :goto_15

    :cond_14
    move-object v2, v1

    .line 2784
    .local v2, "previousTask":Lcom/android/server/wm/Task;
    :goto_15
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    goto :goto_1d

    :cond_1c
    move-object v3, v1

    .line 2786
    .local v3, "focusedDisplayContent":Lcom/android/server/wm/DisplayContent;
    :goto_1d
    if-eqz v2, :cond_24

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    goto :goto_25

    :cond_24
    move-object v4, v1

    .line 2787
    .local v4, "previousDisplayContent":Lcom/android/server/wm/DisplayContent;
    :goto_25
    if-eqz v4, :cond_2c

    if-eq v4, v3, :cond_2c

    .line 2788
    invoke-virtual {v4, v1}, Lcom/android/server/wm/DisplayContent;->setTouchExcludeRegion(Lcom/android/server/wm/Task;)V

    .line 2790
    :cond_2c
    if-eqz v3, :cond_31

    .line 2791
    invoke-virtual {v3, v0}, Lcom/android/server/wm/DisplayContent;->setTouchExcludeRegion(Lcom/android/server/wm/Task;)V

    .line 2793
    :cond_31
    return-void
.end method

.method public setFocusedApp(Landroid/os/IBinder;Z)V
    .registers 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "moveFocusNow"    # Z

    .line 2797
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string/jumbo v1, "setFocusedApp()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 2801
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2803
    if-nez p1, :cond_15

    .line 2805
    const/4 v1, 0x0

    .line 2805
    .local v1, "newFocus":Lcom/android/server/wm/AppWindowToken;
    goto :goto_33

    .line 2807
    .end local v1    # "newFocus":Lcom/android/server/wm/AppWindowToken;
    :cond_15
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .line 2808
    .restart local v1    # "newFocus":Lcom/android/server/wm/AppWindowToken;
    if-nez v1, :cond_33

    .line 2809
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set focus to non-existing app token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2815
    :cond_33
    :goto_33
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v1, :cond_3b

    move v2, v4

    goto :goto_3c

    :cond_3b
    move v2, v3

    .line 2816
    .local v2, "changed":Z
    :goto_3c
    if-eqz v2, :cond_4a

    .line 2817
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    .line 2818
    .local v5, "prev":Lcom/android/server/wm/AppWindowToken;
    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    .line 2819
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v6, v1}, Lcom/android/server/wm/InputMonitor;->setFocusedAppLw(Lcom/android/server/wm/AppWindowToken;)V

    .line 2820
    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowManagerService;->setFocusTaskRegionLocked(Lcom/android/server/wm/AppWindowToken;)V

    .line 2823
    .end local v5    # "prev":Lcom/android/server/wm/AppWindowToken;
    :cond_4a
    if-eqz p2, :cond_58

    if-eqz v2, :cond_58

    .line 2824
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 2825
    .local v5, "origId":J
    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 2826
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2828
    .end local v1    # "newFocus":Lcom/android/server/wm/AppWindowToken;
    .end local v2    # "changed":Z
    .end local v5    # "origId":J
    :cond_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_e .. :try_end_59} :catchall_5d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2829
    return-void

    .line 2828
    :catchall_5d
    move-exception v1

    :try_start_5e
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 2798
    :cond_63
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setForceResizableTasks(Z)V
    .registers 4
    .param p1, "forceResizableTasks"    # Z

    .line 7382
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7383
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mForceResizableTasks:Z

    .line 7384
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7385
    return-void

    .line 7384
    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setForcedDisplayDensityForUser(III)V
    .registers 12
    .param p1, "displayId"    # I
    .param p2, "density"    # I
    .param p3, "userId"    # I

    .line 5748
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_63

    .line 5754
    if-nez p1, :cond_5b

    .line 5758
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 5759
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string/jumbo v6, "setForcedDisplayDensityForUser"

    const/4 v7, 0x0

    .line 5758
    move v3, p3

    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 5761
    .local v0, "targetUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5763
    .local v1, "ident":J
    :try_start_23
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v3
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_56

    :try_start_26
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5764
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    .line 5765
    .local v4, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v4, :cond_38

    iget v5, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    if-ne v5, v0, :cond_38

    .line 5766
    invoke-direct {p0, v4, p2}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplayDensityLocked(Lcom/android/server/wm/DisplayContent;I)V

    .line 5768
    :cond_38
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "display_density_forced"

    .line 5770
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 5768
    invoke-static {v5, v6, v7, v0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 5771
    .end local v4    # "displayContent":Lcom/android/server/wm/DisplayContent;
    monitor-exit v3
    :try_end_48
    .catchall {:try_start_26 .. :try_end_48} :catchall_50

    :try_start_48
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_56

    .line 5773
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5774
    nop

    .line 5775
    return-void

    .line 5771
    :catchall_50
    move-exception v4

    :try_start_51
    monitor-exit v3
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    :try_start_52
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v4
    :try_end_56
    .catchall {:try_start_52 .. :try_end_56} :catchall_56

    .line 5773
    :catchall_56
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 5755
    .end local v0    # "targetUserId":I
    .end local v1    # "ident":J
    :cond_5b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only set the default display"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5751
    :cond_63
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must hold permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setForcedDisplayScalingMode(II)V
    .registers 9
    .param p1, "displayId"    # I
    .param p2, "mode"    # I

    .line 5610
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4e

    .line 5616
    if-nez p1, :cond_46

    .line 5619
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5621
    .local v0, "ident":J
    :try_start_10
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_41

    :try_start_13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5622
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 5623
    .local v3, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v3, :cond_32

    .line 5624
    if-ltz p2, :cond_23

    const/4 v4, 0x1

    if-le p2, v4, :cond_24

    .line 5625
    :cond_23
    const/4 p2, 0x0

    .line 5627
    :cond_24
    invoke-direct {p0, v3, p2}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplayScalingModeLocked(Lcom/android/server/wm/DisplayContent;I)V

    .line 5628
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "display_scaling_force"

    invoke-static {v4, v5, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5631
    .end local v3    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_32
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_13 .. :try_end_33} :catchall_3b

    :try_start_33
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_41

    .line 5633
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5634
    nop

    .line 5635
    return-void

    .line 5631
    :catchall_3b
    move-exception v3

    :try_start_3c
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    :try_start_3d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_41

    .line 5633
    :catchall_41
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 5617
    .end local v0    # "ident":J
    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only set the default display"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5613
    :cond_4e
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must hold permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setForcedDisplaySize(III)V
    .registers 15
    .param p1, "displayId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 5575
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7d

    .line 5581
    if-nez p1, :cond_75

    .line 5584
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5586
    .local v0, "ident":J
    :try_start_10
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_70

    :try_start_13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5589
    const/16 v3, 0xc8

    .line 5590
    .local v3, "MIN_WIDTH":I
    const/16 v4, 0xc8

    .line 5591
    .local v4, "MIN_HEIGHT":I
    const/4 v5, 0x2

    .line 5592
    .local v5, "MAX_SCALE":I
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v6, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    .line 5593
    .local v6, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v6, :cond_61

    .line 5594
    const/16 v7, 0xc8

    invoke-static {p2, v7}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget v9, v6, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    mul-int/lit8 v9, v9, 0x2

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    move p2, v8

    .line 5596
    invoke-static {p3, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget v8, v6, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    mul-int/lit8 v8, v8, 0x2

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    move p3, v7

    .line 5598
    invoke-direct {p0, v6, p2, p3}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplaySizeLocked(Lcom/android/server/wm/DisplayContent;II)V

    .line 5599
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "display_size_forced"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5602
    .end local v3    # "MIN_WIDTH":I
    .end local v4    # "MIN_HEIGHT":I
    .end local v5    # "MAX_SCALE":I
    .end local v6    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_61
    monitor-exit v2
    :try_end_62
    .catchall {:try_start_13 .. :try_end_62} :catchall_6a

    :try_start_62
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_70

    .line 5604
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5605
    nop

    .line 5606
    return-void

    .line 5602
    :catchall_6a
    move-exception v3

    :try_start_6b
    monitor-exit v2
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    :try_start_6c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_70
    .catchall {:try_start_6c .. :try_end_70} :catchall_70

    .line 5604
    :catchall_70
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 5582
    .end local v0    # "ident":J
    :cond_75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only set the default display"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5578
    :cond_7d
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must hold permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setHoldScreenLocked(Lcom/android/server/wm/Session;)V
    .registers 6
    .param p1, "newHoldScreen"    # Lcom/android/server/wm/Session;

    .line 6049
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 6051
    .local v0, "hold":Z
    :goto_5
    if-eqz v0, :cond_17

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenOn:Lcom/android/server/wm/Session;

    if-eq v1, p1, :cond_17

    .line 6052
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v2, Landroid/os/WorkSource;

    iget v3, p1, Lcom/android/server/wm/Session;->mUid:I

    invoke-direct {v2, v3}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 6054
    :cond_17
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenOn:Lcom/android/server/wm/Session;

    .line 6056
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    .line 6057
    .local v1, "state":Z
    if-eq v0, v1, :cond_49

    .line 6058
    const/4 v2, 0x0

    if-eqz v0, :cond_37

    .line 6063
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v3, v3, Lcom/android/server/wm/RootWindowContainer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockHoldingWindow:Lcom/android/server/wm/WindowState;

    .line 6064
    iput-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockObscuringWindow:Lcom/android/server/wm/WindowState;

    .line 6065
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 6066
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy;->keepScreenOnStartedLw()V

    goto :goto_49

    .line 6072
    :cond_37
    iput-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockHoldingWindow:Lcom/android/server/wm/WindowState;

    .line 6073
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    iput-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockObscuringWindow:Lcom/android/server/wm/WindowState;

    .line 6074
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy;->keepScreenOnStoppedLw()V

    .line 6075
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mHoldingScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6078
    :cond_49
    :goto_49
    return-void
.end method

.method public setInTouchMode(Z)V
    .registers 4
    .param p1, "mode"    # Z

    .line 3891
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3892
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    .line 3893
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3894
    return-void

    .line 3893
    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method setInputMethodWindowLocked(Lcom/android/server/wm/WindowState;)V
    .registers 4
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 1922
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 1923
    if-eqz p1, :cond_9

    .line 1924
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    goto :goto_d

    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1925
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    :goto_d
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    .line 1926
    return-void
.end method

.method setInsetsWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V
    .registers 13
    .param p1, "session"    # Lcom/android/server/wm/Session;
    .param p2, "client"    # Landroid/view/IWindow;
    .param p3, "touchableInsets"    # I
    .param p4, "contentInsets"    # Landroid/graphics/Rect;
    .param p5, "visibleInsets"    # Landroid/graphics/Rect;
    .param p6, "touchableRegion"    # Landroid/graphics/Region;

    .line 1982
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1984
    .local v0, "origId":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_6b

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1985
    const/4 v3, 0x0

    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 1991
    .local v4, "w":Lcom/android/server/wm/WindowState;
    if-eqz v4, :cond_5c

    .line 1992
    iput-boolean v3, v4, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    .line 1993
    iget-object v3, v4, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1994
    iget-object v3, v4, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1995
    iget-object v3, v4, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v3, p6}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 1996
    iput p3, v4, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    .line 1997
    iget v3, v4, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_41

    .line 1998
    iget-object v3, v4, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    iget v5, v4, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->scale(F)V

    .line 1999
    iget-object v3, v4, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    iget v5, v4, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->scale(F)V

    .line 2000
    iget-object v3, v4, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    iget v5, v4, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {v3, v5}, Landroid/graphics/Region;->scale(F)V

    .line 2002
    :cond_41
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 2003
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 2006
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v3, :cond_5c

    .line 2007
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    if-nez v3, :cond_5c

    .line 2008
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v3}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMovedLocked()V

    .line 2011
    .end local v4    # "w":Lcom/android/server/wm/WindowState;
    :cond_5c
    monitor-exit v2
    :try_end_5d
    .catchall {:try_start_7 .. :try_end_5d} :catchall_65

    :try_start_5d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_6b

    .line 2013
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2014
    nop

    .line 2015
    return-void

    .line 2011
    :catchall_65
    move-exception v3

    :try_start_66
    monitor-exit v2
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    :try_start_67
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_6b
    .catchall {:try_start_67 .. :try_end_6b} :catchall_6b

    .line 2013
    :catchall_6b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setIsInMultiWindowMode(Z)V
    .registers 4
    .param p1, "isInMultiWindowMode"    # Z

    .line 8161
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8162
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mIsInMultiWindowMode:Z

    .line 8163
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 8164
    return-void

    .line 8163
    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setKeyguardGoingAway(Z)V
    .registers 4
    .param p1, "keyguardGoingAway"    # Z

    .line 3214
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3215
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardGoingAway:Z

    .line 3216
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3217
    return-void

    .line 3216
    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setKeyguardOrAodShowingOnDefaultDisplay(Z)V
    .registers 4
    .param p1, "showing"    # Z

    .line 3220
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3221
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardOrAodShowingOnDefaultDisplay:Z

    .line 3222
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3223
    return-void

    .line 3222
    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setLastFrame(Z)V
    .registers 7
    .param p1, "isLastFrame"    # Z

    .line 8413
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 8414
    .local v0, "t":Landroid/view/SurfaceControl$Transaction;
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$WindowManagerService$e_H9dDcEjBNTCoyGPBFceuB3etM;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$WindowManagerService$e_H9dDcEjBNTCoyGPBFceuB3etM;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 8420
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setLastFrame isLastFrame = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mIsLastFrameWin = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mIsLastFrameWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8421
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mIsInScreenProjection:Z

    if-eqz v1, :cond_48

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mIsLastFrameWin:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_48

    .line 8422
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mIsLastFrameWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v1, v1, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setLastFrame(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 8423
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_5d

    .line 8424
    :cond_48
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mIsLastFrameWin:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_5d

    .line 8425
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mIsLastFrameWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v1, v1, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setLastFrame(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 8426
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 8427
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mIsLastFrameWin:Lcom/android/server/wm/WindowState;

    .line 8429
    :cond_5d
    :goto_5d
    return-void
.end method

.method public setLoadBackHomeAnimation(Z)V
    .registers 4
    .param p1, "loadBackHomeAnimation"    # Z

    .line 8131
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8132
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/AppTransition;->setLoadBackHomeAnimation(Z)V

    .line 8133
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 8134
    return-void

    .line 8133
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setMiuiAppTransitionAnimationHelper(Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;)V
    .registers 5
    .param p1, "helper"    # Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    .line 8143
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8144
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mMiuiAppTransitionAnimationHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    .line 8146
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mMiuiGestureController:Lcom/android/server/wm/MiuiGestureController;

    if-eqz v1, :cond_11

    .line 8147
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mMiuiGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/MiuiGestureController;->setMiuiAppTransitionAnimationHelper(Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;)V

    .line 8150
    :cond_11
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mMiuiAppTransitionAnimationHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    if-nez v1, :cond_25

    .line 8153
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/android/server/wm/AppTransition;->overrideMiuiAnimationInfo(Landroid/graphics/GraphicBuffer;Landroid/graphics/Rect;)V

    .line 8154
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->clearNextAppTransitionBackHomeType()V

    .line 8155
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->cancelMiuiThumbnailAnimationLocked()V

    .line 8157
    :cond_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_2a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 8158
    return-void

    .line 8157
    :catchall_2a
    move-exception v1

    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setNavBarVirtualKeyHapticFeedbackEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 6469
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_20

    .line 6475
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6476
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, p1}, Lcom/android/server/policy/WindowManagerPolicy;->setNavBarVirtualKeyHapticFeedbackEnabledLw(Z)V

    .line 6477
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6478
    return-void

    .line 6477
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 6471
    :cond_20
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller does not hold permission android.permission.STATUS_BAR"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNewDisplayOverrideConfiguration(Landroid/content/res/Configuration;I)[I
    .registers 5
    .param p1, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p2, "displayId"    # I

    .line 2766
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string/jumbo v1, "setNewDisplayOverrideConfiguration()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2770
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2771
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    if-eqz v1, :cond_1d

    .line 2772
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    .line 2773
    const-string/jumbo v1, "new-config"

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    .line 2776
    :cond_1d
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->setDisplayOverrideConfigurationIfNeeded(Landroid/content/res/Configuration;I)[I

    move-result-object v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_e .. :try_end_24} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 2777
    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 2767
    :cond_2e
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOverscan(IIIII)V
    .registers 16
    .param p1, "displayId"    # I
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 5881
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_39

    .line 5887
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5889
    .local v0, "ident":J
    :try_start_e
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_34

    :try_start_11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5890
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 5891
    .local v3, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v3, :cond_25

    .line 5892
    move-object v4, p0

    move-object v5, v3

    move v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-direct/range {v4 .. v9}, Lcom/android/server/wm/WindowManagerService;->setOverscanLocked(Lcom/android/server/wm/DisplayContent;IIII)V

    .line 5894
    .end local v3    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_25
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_11 .. :try_end_26} :catchall_2e

    :try_start_26
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_34

    .line 5896
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5897
    nop

    .line 5898
    return-void

    .line 5894
    :catchall_2e
    move-exception v3

    :try_start_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    :try_start_30
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_34
    .catchall {:try_start_30 .. :try_end_34} :catchall_34

    .line 5896
    :catchall_34
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 5884
    .end local v0    # "ident":J
    :cond_39
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must hold permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPipVisibility(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 6432
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_20

    .line 6438
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6439
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, p1}, Lcom/android/server/policy/WindowManagerPolicy;->setPipVisibilityLw(Z)V

    .line 6440
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6441
    return-void

    .line 6440
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 6434
    :cond_20
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller does not hold permission android.permission.STATUS_BAR"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setRecentsAppWindowToken(Lcom/android/server/wm/AppWindowToken;)V
    .registers 3
    .param p1, "token"    # Lcom/android/server/wm/AppWindowToken;

    .line 8218
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mMiuiGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/MiuiGestureController;->setRecentsAppWindowToken(Lcom/android/server/wm/AppWindowToken;)V

    .line 8219
    return-void
.end method

.method public setRecentsItemCoordinates(IIII)V
    .registers 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "targetWidth"    # I
    .param p4, "targetHeight"    # I

    .line 8206
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mMiuiGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v0, p1, p2, p4, p3}, Lcom/android/server/wm/MiuiGestureController;->setRecentsItemCoordinates(IIII)V

    .line 8207
    return-void
.end method

.method public setRecentsVisibility(Z)V
    .registers 5
    .param p1, "visible"    # Z

    .line 6423
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.STATUS_BAR"

    const-string/jumbo v2, "setRecentsVisibility()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6425
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6426
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, p1}, Lcom/android/server/policy/WindowManagerPolicy;->setRecentsVisibilityLw(Z)V

    .line 6427
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6428
    return-void

    .line 6427
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method setRecentsWindowState(Lcom/android/server/wm/WindowState;)V
    .registers 3
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 8214
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mMiuiGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/MiuiGestureController;->setRecentsWindowState(Lcom/android/server/wm/WindowState;)V

    .line 8215
    return-void
.end method

.method public setResizeDimLayer(ZIF)V
    .registers 6
    .param p1, "visible"    # Z
    .param p2, "targetWindowingMode"    # I
    .param p3, "alpha"    # F

    .line 7375
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7376
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wm/DockedStackDividerController;->setResizeDimLayer(ZIF)V

    .line 7378
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7379
    return-void

    .line 7378
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setRotationChangeForCastMode(II)V
    .registers 5
    .param p1, "oldRotation"    # I
    .param p2, "newRotation"    # I

    .line 8378
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mCastWindow:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_5

    return-void

    .line 8380
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mIsCastMode:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mCastRotation:I

    if-ne v0, v1, :cond_14

    .line 8381
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mIsCastModeRotationChanged:Z

    .line 8382
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mCastRotation:I

    goto :goto_1d

    .line 8383
    :cond_14
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mIsCastMode:Z

    if-nez v0, :cond_1d

    .line 8384
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mIsCastModeRotationChanged:Z

    .line 8385
    iput v1, p0, Lcom/android/server/wm/WindowManagerService;->mCastRotation:I

    .line 8388
    :cond_1d
    :goto_1d
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mCastWindow:Lcom/android/server/wm/WindowState;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mIsCastModeRotationChanged:Z

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->reportRotationChanged(Z)V

    .line 8391
    :try_start_24
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mIsCastModeRotationChanged:Z

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->castRotationChanged(Z)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2b} :catch_2c

    .line 8393
    goto :goto_2d

    .line 8392
    :catch_2c
    move-exception v0

    .line 8395
    :goto_2d
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mIsCastMode:Z

    if-nez v0, :cond_34

    .line 8396
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mCastWindow:Lcom/android/server/wm/WindowState;

    .line 8398
    :cond_34
    return-void
.end method

.method public setScreenProjectionList(II)V
    .registers 10
    .param p1, "isScreenProjectionOnOrOff"    # I
    .param p2, "isScreenProjectionPrivace"    # I

    .line 8433
    const/4 v0, 0x0

    if-lez p1, :cond_9

    if-lez p2, :cond_9

    .line 8434
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mIsInScreenProjection:Z

    goto :goto_b

    .line 8436
    :cond_9
    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mIsInScreenProjection:Z

    .line 8438
    :goto_b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8439
    .local v1, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8440
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v4, Lcom/android/server/wm/-$$Lambda$WindowManagerService$_KZbo1hbhuQzekosbby_XFsywEQ;

    invoke-direct {v4, v1}, Lcom/android/server/wm/-$$Lambda$WindowManagerService$_KZbo1hbhuQzekosbby_XFsywEQ;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4, v0}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 8443
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_72

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 8444
    .local v3, "win":Lcom/android/server/wm/WindowState;
    if-eqz v3, :cond_71

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v4, :cond_71

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v4, :cond_71

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v4, v4, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_71

    .line 8446
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v4, v4, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    if-eqz v5, :cond_6d

    const-string v5, ""

    .line 8447
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6d

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_6e

    :cond_6d
    const/4 v5, 0x0

    .line 8446
    :goto_6e
    invoke-virtual {p0, v4, v5}, Lcom/android/server/wm/WindowManagerService;->setSurfaceProjectionFlags(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 8450
    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    :cond_71
    goto :goto_24

    .line 8451
    :cond_72
    monitor-exit v2
    :try_end_73
    .catchall {:try_start_13 .. :try_end_73} :catchall_77

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 8452
    return-void

    .line 8451
    :catchall_77
    move-exception v0

    :try_start_78
    monitor-exit v2
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_77

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public setShelfHeight(ZI)V
    .registers 6
    .param p1, "visible"    # Z
    .param p2, "shelfHeight"    # I

    .line 6445
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.STATUS_BAR"

    const-string/jumbo v2, "setShelfHeight()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6447
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6448
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/PinnedStackController;->setAdjustedForShelf(ZI)V

    .line 6450
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_20

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6451
    return-void

    .line 6450
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 4067
    const-string/jumbo v0, "persist.sys.strictmode.visual"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4068
    return-void
.end method

.method public setSupportsPictureInPicture(Z)V
    .registers 4
    .param p1, "supportsPictureInPicture"    # Z

    .line 7388
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7389
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mSupportsPictureInPicture:Z

    .line 7390
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7391
    return-void

    .line 7390
    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setSurfaceProjectionFlags(Landroid/view/SurfaceControl;Ljava/lang/String;)V
    .registers 8
    .param p1, "surfaceControl"    # Landroid/view/SurfaceControl;
    .param p2, "name"    # Ljava/lang/String;

    .line 8456
    if-nez p2, :cond_3

    return-void

    .line 8457
    :cond_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerServiceInjector;->getProjectionBlackList()Ljava/util/ArrayList;

    move-result-object v0

    .line 8458
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 8459
    .local v1, "t":Landroid/view/SurfaceControl$Transaction;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 8460
    .local v3, "blackTitle":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService;->mIsInScreenProjection:Z

    if-eqz v4, :cond_3b

    .line 8461
    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 8463
    invoke-static {p2}, Lcom/android/server/wm/WindowManagerServiceInjector;->getLastFrame(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 8464
    const/16 v2, 0x4000

    invoke-virtual {v1, p1, v2}, Landroid/view/SurfaceControl$Transaction;->setScreenProjection(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_37

    .line 8466
    :cond_32
    const/high16 v2, 0x1000000

    invoke-virtual {v1, p1, v2}, Landroid/view/SurfaceControl$Transaction;->setScreenProjection(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 8468
    :goto_37
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 8469
    goto :goto_50

    .line 8472
    :cond_3b
    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 8473
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/view/SurfaceControl$Transaction;->setScreenProjection(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 8474
    invoke-virtual {v1, p1, v2}, Landroid/view/SurfaceControl$Transaction;->setLastFrame(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 8475
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 8476
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mIsLastFrameWin:Lcom/android/server/wm/WindowState;

    .line 8477
    goto :goto_50

    .line 8480
    .end local v3    # "blackTitle":Ljava/lang/String;
    :cond_4f
    goto :goto_10

    .line 8481
    :cond_50
    :goto_50
    return-void
.end method

.method public setSwitchingUser(Z)V
    .registers 4
    .param p1, "switching"    # Z

    .line 3396
    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string/jumbo v1, "setSwitchingUser()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 3400
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicy;->setSwitchingUser(Z)V

    .line 3401
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3402
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mSwitchingUser:Z

    .line 3403
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3404
    return-void

    .line 3403
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 3398
    :cond_23
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires INTERACT_ACROSS_USERS_FULL permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setTransparentRegionWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/graphics/Region;)V
    .registers 9
    .param p1, "session"    # Lcom/android/server/wm/Session;
    .param p2, "client"    # Landroid/view/IWindow;
    .param p3, "region"    # Landroid/graphics/Region;

    .line 1964
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1966
    .local v0, "origId":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_29

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1967
    const/4 v3, 0x0

    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 1971
    .local v3, "w":Lcom/android/server/wm/WindowState;
    if-eqz v3, :cond_1a

    iget-boolean v4, v3, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v4, :cond_1a

    .line 1972
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v4, p3}, Lcom/android/server/wm/WindowStateAnimator;->setTransparentRegionHintLocked(Landroid/graphics/Region;)V

    .line 1974
    .end local v3    # "w":Lcom/android/server/wm/WindowState;
    :cond_1a
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_23

    :try_start_1b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_29

    .line 1976
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1977
    nop

    .line 1978
    return-void

    .line 1974
    :catchall_23
    move-exception v3

    :try_start_24
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    :try_start_25
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_29

    .line 1976
    :catchall_29
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setWillReplaceWindow(Landroid/os/IBinder;Z)V
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "animate"    # Z

    .line 7262
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7263
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .line 7264
    .local v1, "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    if-nez v1, :cond_29

    .line 7265
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set replacing window on non-existing app token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7267
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_52

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 7269
    :cond_29
    :try_start_29
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->hasContentToDisplay()Z

    move-result v2

    if-nez v2, :cond_4a

    .line 7270
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set replacing window on app token with no content"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7272
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_29 .. :try_end_46} :catchall_52

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 7274
    :cond_4a
    :try_start_4a
    invoke-virtual {v1, p2}, Lcom/android/server/wm/AppWindowToken;->setWillReplaceWindows(Z)V

    .line 7275
    .end local v1    # "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_52

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7276
    return-void

    .line 7275
    :catchall_52
    move-exception v1

    :try_start_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method setWillReplaceWindows(Landroid/os/IBinder;Z)V
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "childrenOnly"    # Z

    .line 7291
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7292
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .line 7293
    .local v1, "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    if-nez v1, :cond_29

    .line 7294
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set replacing window on non-existing app token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7296
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_5d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 7298
    :cond_29
    :try_start_29
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->hasContentToDisplay()Z

    move-result v2

    if-nez v2, :cond_4a

    .line 7299
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set replacing window on app token with no content"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7301
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_29 .. :try_end_46} :catchall_5d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 7304
    :cond_4a
    if-eqz p2, :cond_50

    .line 7305
    :try_start_4c
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->setWillReplaceChildWindows()V

    goto :goto_54

    .line 7307
    :cond_50
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/AppWindowToken;->setWillReplaceWindows(Z)V

    .line 7310
    :goto_54
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/WindowManagerService;->scheduleClearWillReplaceWindows(Landroid/os/IBinder;Z)V

    .line 7311
    .end local v1    # "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_4c .. :try_end_59} :catchall_5d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7312
    return-void

    .line 7311
    :catchall_5d
    move-exception v1

    :try_start_5e
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setWindowOpaque(Landroid/os/IBinder;Z)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "isOpaque"    # Z

    .line 3072
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3073
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->setWindowOpaqueLocked(Landroid/os/IBinder;Z)V

    .line 3074
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3075
    return-void

    .line 3074
    :catchall_e
    move-exception v1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public showBootMessage(Ljava/lang/CharSequence;Z)V
    .registers 6
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "always"    # Z

    .line 3844
    const/4 v0, 0x0

    .line 3845
    .local v0, "first":Z
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3854
    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mAllowBootMessages:Z

    if-nez v2, :cond_10

    .line 3855
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_37

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3857
    :cond_10
    :try_start_10
    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    if-nez v2, :cond_1c

    .line 3858
    if-nez p2, :cond_1b

    .line 3859
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_37

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3861
    :cond_1b
    const/4 v0, 0x1

    .line 3863
    :cond_1c
    :try_start_1c
    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-eqz v2, :cond_25

    .line 3864
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_37

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3866
    :cond_25
    const/4 v2, 0x1

    :try_start_26
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    .line 3867
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v2, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->showBootMessage(Ljava/lang/CharSequence;Z)V

    .line 3868
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_37

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3869
    if-eqz v0, :cond_36

    .line 3870
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    .line 3872
    :cond_36
    return-void

    .line 3868
    :catchall_37
    move-exception v2

    :try_start_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public showCircularMask(Z)V
    .registers 9
    .param p1, "visible"    # Z

    .line 3963
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3967
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_69

    .line 3969
    if-eqz p1, :cond_49

    .line 3971
    :try_start_b
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;

    if-nez v1, :cond_40

    .line 3972
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00d7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 3974
    .local v1, "screenOffset":I
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105003d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 3977
    .local v2, "maskThickness":I
    new-instance v3, Lcom/android/server/wm/CircularDisplayMask;

    .line 3978
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/16 v6, 0x7e2

    .line 3979
    invoke-interface {v5, v6}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result v5

    mul-int/lit16 v5, v5, 0x2710

    add-int/lit8 v5, v5, 0xa

    invoke-direct {v3, v4, v5, v1, v2}, Lcom/android/server/wm/CircularDisplayMask;-><init>(Lcom/android/server/wm/DisplayContent;III)V

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;

    .line 3983
    .end local v1    # "screenOffset":I
    .end local v2    # "maskThickness":I
    :cond_40
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/CircularDisplayMask;->setVisibility(Z)V

    goto :goto_56

    .line 3989
    :catchall_47
    move-exception v1

    goto :goto_62

    .line 3984
    :cond_49
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;

    if-eqz v1, :cond_56

    .line 3985
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/CircularDisplayMask;->setVisibility(Z)V

    .line 3986
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;
    :try_end_56
    .catchall {:try_start_b .. :try_end_56} :catchall_47

    .line 3989
    :cond_56
    :goto_56
    :try_start_56
    const-string/jumbo v1, "showCircularMask"

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 3992
    nop

    .line 3993
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_56 .. :try_end_5e} :catchall_69

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3994
    return-void

    .line 3989
    :goto_62
    :try_start_62
    const-string/jumbo v2, "showCircularMask"

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    throw v1

    .line 3993
    :catchall_69
    move-exception v1

    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_62 .. :try_end_6b} :catchall_69

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public showEmulatorDisplayOverlay()V
    .registers 7

    .line 3997
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4001
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_40

    .line 4003
    :try_start_9
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mEmulatorDisplayOverlay:Lcom/android/server/wm/EmulatorDisplayOverlay;

    if-nez v1, :cond_26

    .line 4004
    new-instance v1, Lcom/android/server/wm/EmulatorDisplayOverlay;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 4006
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/16 v5, 0x7e2

    .line 4007
    invoke-interface {v4, v5}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result v4

    mul-int/lit16 v4, v4, 0x2710

    add-int/lit8 v4, v4, 0xa

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/wm/EmulatorDisplayOverlay;-><init>(Landroid/content/Context;Lcom/android/server/wm/DisplayContent;I)V

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mEmulatorDisplayOverlay:Lcom/android/server/wm/EmulatorDisplayOverlay;

    .line 4011
    :cond_26
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mEmulatorDisplayOverlay:Lcom/android/server/wm/EmulatorDisplayOverlay;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/EmulatorDisplayOverlay;->setVisibility(Z)V
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_38

    .line 4013
    :try_start_2c
    const-string/jumbo v1, "showEmulatorDisplayOverlay"

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 4016
    nop

    .line 4017
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_40

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4018
    return-void

    .line 4013
    :catchall_38
    move-exception v1

    :try_start_39
    const-string/jumbo v2, "showEmulatorDisplayOverlay"

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    throw v1

    .line 4017
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_39 .. :try_end_42} :catchall_40

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public showEmulatorDisplayOverlayIfNeeded()V
    .registers 4

    .line 3954
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string/jumbo v0, "ro.emulator.circular"

    const/4 v1, 0x0

    .line 3956
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2a

    sget-boolean v0, Landroid/os/Build;->IS_EMULATOR:Z

    if-eqz v0, :cond_2a

    .line 3958
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x24

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 3960
    :cond_2a
    return-void
.end method

.method showGlobalActions()V
    .registers 2

    .line 3407
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->showGlobalActions()V

    .line 3408
    return-void
.end method

.method public showRecentApps()V
    .registers 2

    .line 6574
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->showRecentApps()V

    .line 6575
    return-void
.end method

.method public showStrictModeViolation(Z)V
    .registers 8
    .param p1, "on"    # Z

    .line 4024
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 4025
    .local v0, "pid":I
    const/4 v1, 0x0

    const/16 v2, 0x19

    if-eqz p1, :cond_23

    .line 4028
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5, v0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 4029
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v4, v2, v1, v0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2e

    .line 4032
    :cond_23
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v4, v2, v1, v0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 4034
    :goto_2e
    return-void
.end method

.method public shutdown(Z)V
    .registers 4
    .param p1, "confirm"    # Z

    .line 3606
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    const-string/jumbo v1, "userrequested"

    invoke-static {v0, v1, p1}, Lcom/android/server/power/ShutdownThread;->shutdown(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 3608
    return-void
.end method

.method public startFetchingAppTransitionSpecs()V
    .registers 6

    .line 8167
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8168
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsPending:Z

    .line 8169
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 8170
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    sget v3, Lcom/android/server/wm/AppTransitionInjector;->APP_TRANSITION_SPECS_PENDING_TIMEOUT:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 8172
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 8173
    return-void

    .line 8172
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method startFreezingDisplayLocked(II)V
    .registers 4
    .param p1, "exitAnim"    # I
    .param p2, "enterAnim"    # I

    .line 6180
    nop

    .line 6181
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 6180
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(IILcom/android/server/wm/DisplayContent;)V

    .line 6182
    return-void
.end method

.method startFreezingDisplayLocked(IILcom/android/server/wm/DisplayContent;)V
    .registers 13
    .param p1, "exitAnim"    # I
    .param p2, "enterAnim"    # I
    .param p3, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 6186
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v0, :cond_a1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mRotatingSeamlessly:Z

    if-eqz v0, :cond_a

    goto/16 :goto_a1

    .line 6190
    :cond_a
    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->isReady()Z

    move-result v0

    if-eqz v0, :cond_a0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_a0

    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->okToAnimate()Z

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_a0

    .line 6200
    :cond_20
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 6202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    .line 6203
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    .line 6204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    .line 6208
    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/WindowManagerService;->mFrozenDisplayId:I

    .line 6210
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v1}, Lcom/android/server/wm/InputMonitor;->freezeInputDispatchingLw()V

    .line 6215
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, v0, v0}, Lcom/android/server/policy/WindowManagerPolicy;->setLastInputMethodWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 6217
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 6218
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->freeze()V

    .line 6226
    :cond_4e
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 6227
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPerf:Landroid/util/BoostFramework;

    if-nez v1, :cond_5f

    .line 6228
    new-instance v1, Landroid/util/BoostFramework;

    invoke-direct {v1}, Landroid/util/BoostFramework;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPerf:Landroid/util/BoostFramework;

    .line 6230
    :cond_5f
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPerf:Landroid/util/BoostFramework;

    if-eqz v1, :cond_6a

    .line 6231
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPerf:Landroid/util/BoostFramework;

    const/16 v2, 0x1089

    invoke-virtual {v1, v2, v0}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;)I

    .line 6234
    :cond_6a
    iget-boolean v0, p3, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_9f

    .line 6235
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mExitAnimId:I

    .line 6236
    iput p2, p0, Lcom/android/server/wm/WindowManagerService;->mEnterAnimId:I

    .line 6237
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v1, p0, Lcom/android/server/wm/WindowManagerService;->mFrozenDisplayId:I

    .line 6238
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v0

    .line 6239
    .local v0, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v0, :cond_7f

    .line 6240
    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 6244
    :cond_7f
    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->hasSecureWindowOnScreen()Z

    move-result v7

    .line 6246
    .local v7, "isSecure":Z
    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->updateDisplayInfo()V

    .line 6247
    new-instance v8, Lcom/android/server/wm/ScreenRotationAnimation;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 6248
    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy;->isDefaultOrientationForced()Z

    move-result v4

    move-object v1, v8

    move-object v3, p3

    move v5, v7

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/ScreenRotationAnimation;-><init>(Landroid/content/Context;Lcom/android/server/wm/DisplayContent;ZZLcom/android/server/wm/WindowManagerService;)V

    move-object v0, v8

    .line 6250
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v2, p0, Lcom/android/server/wm/WindowManagerService;->mFrozenDisplayId:I

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/WindowAnimator;->setScreenRotationAnimationLocked(ILcom/android/server/wm/ScreenRotationAnimation;)V

    .line 6253
    .end local v0    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    .end local v7    # "isSecure":Z
    :cond_9f
    return-void

    .line 6193
    :cond_a0
    :goto_a0
    return-void

    .line 6187
    :cond_a1
    :goto_a1
    return-void
.end method

.method public startFreezingScreen(II)V
    .registers 10
    .param p1, "exitAnim"    # I
    .param p2, "enterAnim"    # I

    .line 3231
    const-string v0, "android.permission.FREEZE_SCREEN"

    const-string/jumbo v1, "startFreezingScreen()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 3236
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3237
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    if-nez v1, :cond_36

    .line 3238
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    .line 3239
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_3b

    .line 3241
    .local v1, "origId":J
    :try_start_1c
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(II)V

    .line 3242
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v4, 0x1e

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 3243
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z
    :try_end_2d
    .catchall {:try_start_1c .. :try_end_2d} :catchall_31

    .line 3245
    :try_start_2d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3246
    goto :goto_36

    .line 3245
    :catchall_31
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 3248
    .end local v1    # "origId":J
    :cond_36
    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_3b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3249
    return-void

    .line 3248
    :catchall_3b
    move-exception v1

    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 3233
    :cond_41
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FREEZE_SCREEN permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method startSeamlessRotation()V
    .registers 2

    .line 8092
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mSeamlessRotationCount:I

    .line 8094
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mRotatingSeamlessly:Z

    .line 8095
    return-void
.end method

.method public startViewServer(I)Z
    .registers 6
    .param p1, "port"    # I

    .line 4430
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 4431
    return v1

    .line 4434
    :cond_8
    const-string v0, "android.permission.DUMP"

    const-string/jumbo v2, "startViewServer"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 4435
    return v1

    .line 4438
    :cond_14
    const/16 v0, 0x400

    if-ge p1, v0, :cond_19

    .line 4439
    return v1

    .line 4442
    :cond_19
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    if-eqz v0, :cond_35

    .line 4443
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    invoke-virtual {v0}, Lcom/android/server/wm/ViewServer;->isRunning()Z

    move-result v0

    if-nez v0, :cond_34

    .line 4445
    :try_start_25
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    invoke-virtual {v0}, Lcom/android/server/wm/ViewServer;->start()Z

    move-result v0
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2b} :catch_2c

    return v0

    .line 4446
    :catch_2c
    move-exception v0

    .line 4447
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "WindowManager"

    const-string v3, "View server did not start"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4450
    .end local v0    # "e":Ljava/io/IOException;
    :cond_34
    return v1

    .line 4454
    :cond_35
    :try_start_35
    new-instance v0, Lcom/android/server/wm/ViewServer;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/ViewServer;-><init>(Lcom/android/server/wm/WindowManagerService;I)V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    .line 4455
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    invoke-virtual {v0}, Lcom/android/server/wm/ViewServer;->start()Z

    move-result v0
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_42} :catch_43

    return v0

    .line 4456
    :catch_43
    move-exception v0

    .line 4457
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v2, "WindowManager"

    const-string v3, "View server did not start"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4459
    .end local v0    # "e":Ljava/io/IOException;
    return v1
.end method

.method public startWindowTrace()V
    .registers 3

    .line 5918
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowTracing:Lcom/android/server/wm/WindowTracing;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowTracing;->startTrace(Ljava/io/PrintWriter;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_8

    .line 5921
    nop

    .line 5922
    return-void

    .line 5919
    :catch_8
    move-exception v0

    .line 5920
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public statusBarVisibilityChanged(I)V
    .registers 4
    .param p1, "visibility"    # I

    .line 6455
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_27

    .line 6461
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6462
    iput p1, p0, Lcom/android/server/wm/WindowManagerService;->mLastStatusBarVisibility:I

    .line 6463
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, p1}, Lcom/android/server/policy/WindowManagerPolicy;->adjustSystemUiVisibilityLw(I)I

    move-result v1

    move p1, v1

    .line 6464
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService;->updateStatusBarVisibilityLocked(I)Z

    .line 6465
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 6466
    return-void

    .line 6465
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 6457
    :cond_27
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller does not hold permission android.permission.STATUS_BAR"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method stopFreezingDisplayLocked()V
    .registers 19

    .line 6256
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v1, :cond_7

    .line 6257
    return-void

    .line 6260
    :cond_7
    iget-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    if-nez v1, :cond_121

    iget v1, v0, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    if-gtz v1, :cond_121

    iget v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_121

    iget-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    if-nez v1, :cond_121

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    .line 6262
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_22

    goto/16 :goto_121

    .line 6275
    :cond_22
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mFrozenDisplayId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 6280
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mFrozenDisplayId:I

    .line 6281
    .local v2, "displayId":I
    const/4 v3, -0x1

    iput v3, v0, Lcom/android/server/wm/WindowManagerService;->mFrozenDisplayId:I

    .line 6282
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    .line 6283
    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v4}, Lcom/android/server/wm/InputMonitor;->thawInputDispatchingLw()V

    .line 6284
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, v0, Lcom/android/server/wm/WindowManagerService;->mLastDisplayFreezeDuration:I

    .line 6285
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6286
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v5, "Screen frozen for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6287
    iget v5, v0, Lcom/android/server/wm/WindowManagerService;->mLastDisplayFreezeDuration:I

    int-to-long v5, v5

    invoke-static {v5, v6, v4}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 6288
    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    if-eqz v5, :cond_61

    .line 6289
    const-string v5, " due to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6290
    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 6292
    :cond_61
    const-string v5, "WindowManager"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6293
    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 6294
    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v6, 0x1e

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 6299
    const/4 v5, 0x0

    .line 6301
    .local v5, "updateRotation":Z
    iget-object v6, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 6302
    invoke-virtual {v6, v2}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v6

    .line 6303
    .local v6, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    const/4 v15, 0x0

    if-eqz v6, :cond_d6

    .line 6304
    invoke-virtual {v6}, Lcom/android/server/wm/ScreenRotationAnimation;->hasScreenshot()Z

    move-result v7

    if-eqz v7, :cond_d6

    .line 6307
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v14

    .line 6309
    .local v14, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v7, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v8, v0, Lcom/android/server/wm/WindowManagerService;->mExitAnimId:I

    iget v9, v0, Lcom/android/server/wm/WindowManagerService;->mEnterAnimId:I

    invoke-interface {v7, v8, v9, v3}, Lcom/android/server/policy/WindowManagerPolicy;->validateRotationAnimationLw(IIZ)Z

    move-result v7

    if-nez v7, :cond_9c

    .line 6310
    iput v3, v0, Lcom/android/server/wm/WindowManagerService;->mEnterAnimId:I

    iput v3, v0, Lcom/android/server/wm/WindowManagerService;->mExitAnimId:I

    .line 6313
    :cond_9c
    iget-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    const-wide/16 v9, 0x2710

    .line 6314
    iget-boolean v3, v0, Lcom/android/server/wm/WindowManagerService;->mIsCastMode:Z

    if-eqz v3, :cond_a7

    const/4 v3, 0x0

    :goto_a5
    move v11, v3

    goto :goto_ac

    :cond_a7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v3

    goto :goto_a5

    :goto_ac
    iget v12, v14, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v13, v14, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v3, v0, Lcom/android/server/wm/WindowManagerService;->mExitAnimId:I

    iget v7, v0, Lcom/android/server/wm/WindowManagerService;->mEnterAnimId:I

    .line 6313
    move/from16 v16, v7

    move-object v7, v6

    move-object/from16 v17, v14

    move v14, v3

    .end local v14    # "displayInfo":Landroid/view/DisplayInfo;
    .local v17, "displayInfo":Landroid/view/DisplayInfo;
    move-object v3, v15

    move/from16 v15, v16

    invoke-virtual/range {v7 .. v15}, Lcom/android/server/wm/ScreenRotationAnimation;->dismiss(Landroid/view/SurfaceControl$Transaction;JFIIII)Z

    move-result v7

    if-eqz v7, :cond_cc

    .line 6317
    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 6318
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    goto :goto_d5

    .line 6320
    :cond_cc
    invoke-virtual {v6}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 6321
    iget-object v7, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v7, v2, v3}, Lcom/android/server/wm/WindowAnimator;->setScreenRotationAnimationLocked(ILcom/android/server/wm/ScreenRotationAnimation;)V

    .line 6322
    const/4 v5, 0x1

    .line 6324
    .end local v17    # "displayInfo":Landroid/view/DisplayInfo;
    :goto_d5
    goto :goto_e2

    .line 6325
    :cond_d6
    move-object v3, v15

    if-eqz v6, :cond_e1

    .line 6326
    invoke-virtual {v6}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 6327
    iget-object v7, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v7, v2, v3}, Lcom/android/server/wm/WindowAnimator;->setScreenRotationAnimationLocked(ILcom/android/server/wm/ScreenRotationAnimation;)V

    .line 6329
    :cond_e1
    const/4 v5, 0x1

    .line 6338
    :goto_e2
    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(I)Z

    move-result v3

    .line 6345
    .local v3, "configChanged":Z
    iget-object v7, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v8, 0xf

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 6346
    iget-object v7, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v9, 0x7d0

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 6348
    iget-object v7, v0, Lcom/android/server/wm/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6350
    if-eqz v5, :cond_100

    .line 6352
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->updateRotationUnchecked()Z

    move-result v7

    or-int/2addr v3, v7

    .line 6355
    :cond_100
    if-eqz v3, :cond_111

    .line 6356
    iget-object v7, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v8, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 6358
    :cond_111
    iget-object v7, v0, Lcom/android/server/wm/WindowManagerService;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 6359
    iget-object v7, v0, Lcom/android/server/wm/WindowManagerService;->mPerf:Landroid/util/BoostFramework;

    if-eqz v7, :cond_120

    .line 6360
    iget-object v7, v0, Lcom/android/server/wm/WindowManagerService;->mPerf:Landroid/util/BoostFramework;

    invoke-virtual {v7}, Landroid/util/BoostFramework;->perfLockRelease()I

    .line 6362
    :cond_120
    return-void

    .line 6269
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "displayId":I
    .end local v3    # "configChanged":Z
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "updateRotation":Z
    .end local v6    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    :cond_121
    :goto_121
    return-void
.end method

.method public stopFreezingScreen()V
    .registers 5

    .line 3253
    const-string v0, "android.permission.FREEZE_SCREEN"

    const-string/jumbo v1, "stopFreezingScreen()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 3258
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3259
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    if-eqz v1, :cond_2c

    .line 3260
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    .line 3261
    const-string v1, "client"

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    .line 3262
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_20
    .catchall {:try_start_e .. :try_end_20} :catchall_31

    .line 3264
    .local v1, "origId":J
    :try_start_20
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_27

    .line 3266
    :try_start_23
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3267
    goto :goto_2c

    .line 3266
    :catchall_27
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 3269
    .end local v1    # "origId":J
    :cond_2c
    :goto_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_31

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3270
    return-void

    .line 3269
    :catchall_31
    move-exception v1

    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 3255
    :cond_37
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires FREEZE_SCREEN permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopViewServer()Z
    .registers 4

    .line 4477
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 4478
    return v1

    .line 4481
    :cond_8
    const-string v0, "android.permission.DUMP"

    const-string/jumbo v2, "stopViewServer"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 4482
    return v1

    .line 4485
    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    if-eqz v0, :cond_1f

    .line 4486
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mViewServer:Lcom/android/server/wm/ViewServer;

    invoke-virtual {v0}, Lcom/android/server/wm/ViewServer;->stop()Z

    move-result v0

    return v0

    .line 4488
    :cond_1f
    return v1
.end method

.method public stopWindowTrace()V
    .registers 3

    .line 5926
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowTracing:Lcom/android/server/wm/WindowTracing;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowTracing;->stopTrace(Ljava/io/PrintWriter;)V

    .line 5927
    return-void
.end method

.method public switchInputMethod(Z)V
    .registers 3
    .param p1, "forwardDirection"    # Z

    .line 3595
    const-class v0, Landroid/view/inputmethod/InputMethodManagerInternal;

    .line 3596
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManagerInternal;

    .line 3597
    .local v0, "inputMethodManagerInternal":Landroid/view/inputmethod/InputMethodManagerInternal;
    if-eqz v0, :cond_d

    .line 3598
    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputMethodManagerInternal;->switchInputMethod(Z)V

    .line 3600
    :cond_d
    return-void
.end method

.method public switchKeyboardLayout(II)V
    .registers 4
    .param p1, "deviceId"    # I
    .param p2, "direction"    # I

    .line 3589
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/input/InputManagerService;->switchKeyboardLayout(II)V

    .line 3590
    return-void
.end method

.method public systemReady()V
    .registers 2

    .line 4953
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->systemReady()V

    .line 4954
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskSnapshotController;->systemReady()V

    .line 4955
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->queryWideColorGamutSupport()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mHasWideColorGamutSupport:Z

    .line 4958
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->initMiuiGestureController()V

    .line 4959
    return-void
.end method

.method public thawRotation()V
    .registers 6

    .line 4178
    const-string v0, "android.permission.SET_ORIENTATION"

    const-string/jumbo v1, "thawRotation()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 4186
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4188
    .local v0, "origId":J
    :try_start_f
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/16 v3, 0x309

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3}, Lcom/android/server/policy/WindowManagerPolicy;->setUserRotationMode(II)V
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_1f

    .line 4191
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4192
    nop

    .line 4194
    invoke-direct {p0, v4, v4}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(ZZ)V

    .line 4195
    return-void

    .line 4191
    :catchall_1f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 4180
    .end local v0    # "origId":J
    :cond_24
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_ORIENTATION permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method traceStateLocked(Ljava/lang/String;)V
    .registers 7
    .param p1, "where"    # Ljava/lang/String;

    .line 6742
    const-string/jumbo v0, "traceStateLocked"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6744
    :try_start_8
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowTracing:Lcom/android/server/wm/WindowTracing;

    invoke-virtual {v0, p1, p0}, Lcom/android/server/wm/WindowTracing;->traceStateLocked(Ljava/lang/String;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_13
    .catchall {:try_start_8 .. :try_end_d} :catchall_11

    .line 6748
    :goto_d
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 6749
    goto :goto_1c

    .line 6748
    :catchall_11
    move-exception v0

    goto :goto_1d

    .line 6745
    :catch_13
    move-exception v0

    .line 6746
    .local v0, "e":Ljava/lang/Exception;
    :try_start_14
    const-string v3, "WindowManager"

    const-string v4, "Exception while tracing state"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_11

    .line 6746
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_d

    .line 6750
    :goto_1c
    return-void

    .line 6748
    :goto_1d
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public triggerAnimationFailsafe()V
    .registers 3

    .line 3145
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 3146
    return-void
.end method

.method unregisterAppFreezeListener(Lcom/android/server/wm/WindowManagerService$AppFreezeListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/wm/WindowManagerService$AppFreezeListener;

    .line 7982
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppFreezeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7983
    return-void
.end method

.method public unregisterMiuiGestureControlHelper()V
    .registers 4

    .line 8198
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8199
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mMiuiGestureController:Lcom/android/server/wm/MiuiGestureController;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mMiuiGestureController:Lcom/android/server/wm/MiuiGestureController;

    iget-object v2, v2, Lcom/android/server/wm/MiuiGestureController;->mGestureHelperDeathRecipient:Lcom/android/server/wm/MiuiGestureController$GestureHelperDeathRecipient;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/MiuiGestureController;->unregisterMiuiGestureControlHelper(Lcom/android/server/wm/MiuiGestureController$GestureHelperDeathRecipient;)V

    .line 8201
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 8202
    return-void

    .line 8201
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    .line 3538
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/PointerEventDispatcher;->unregisterInputEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 3539
    return-void
.end method

.method public unregisterWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)V
    .registers 5
    .param p1, "listener"    # Landroid/view/IWallpaperVisibilityListener;
    .param p2, "displayId"    # I

    .line 4359
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4360
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mWallpaperVisibilityListeners:Lcom/android/server/wm/WallpaperVisibilityListeners;

    .line 4361
    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WallpaperVisibilityListeners;->unregisterWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)V

    .line 4362
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4363
    return-void

    .line 4362
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method updateFocusedWindowLocked(IZ)Z
    .registers 16
    .param p1, "mode"    # I
    .param p2, "updateInputWindows"    # Z

    .line 6095
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->computeFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 6096
    .local v0, "newFocus":Lcom/android/server/wm/WindowState;
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    const/4 v2, 0x0

    if-eq v1, v0, :cond_ab

    .line 6097
    const-string/jumbo v1, "wmUpdateFocus"

    const-wide/16 v3, 0x20

    invoke-static {v3, v4, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6100
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 6101
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 6103
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 6104
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    const/4 v6, 0x0

    .line 6105
    .local v6, "imWindowChanged":Z
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    const/4 v8, 0x3

    const/4 v9, 0x1

    if-eqz v7, :cond_4f

    .line 6106
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 6107
    .local v7, "prevTarget":Lcom/android/server/wm/WindowState;
    nop

    .line 6108
    invoke-virtual {v1, v9}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    move-result-object v10

    .line 6110
    .local v10, "newTarget":Lcom/android/server/wm/WindowState;
    if-eq v7, v10, :cond_34

    move v11, v9

    goto :goto_35

    :cond_34
    move v11, v2

    :goto_35
    move v6, v11

    .line 6112
    if-eq p1, v9, :cond_4f

    if-eq p1, v8, :cond_4f

    .line 6114
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-object v11, v11, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v11, v11, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 6115
    .local v11, "prevImeAnimLayer":I
    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 6116
    iget-object v12, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v12, v12, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-eq v11, v12, :cond_4d

    move v12, v9

    goto :goto_4e

    :cond_4d
    move v12, v2

    :goto_4e
    or-int/2addr v6, v12

    .line 6121
    .end local v7    # "prevTarget":Lcom/android/server/wm/WindowState;
    .end local v10    # "newTarget":Lcom/android/server/wm/WindowState;
    .end local v11    # "prevImeAnimLayer":I
    :cond_4f
    if-eqz v6, :cond_5c

    .line 6122
    iput-boolean v9, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 6123
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 6124
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v7}, Lcom/android/server/wm/RootWindowContainer;->computeFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 6129
    :cond_5c
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 6130
    .local v7, "oldFocus":Lcom/android/server/wm/WindowState;
    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 6131
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6133
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v10, :cond_73

    .line 6134
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mWinAddedSinceNullFocus:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 6135
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mWinRemovedSinceNullFocus:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 6138
    :cond_73
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v10, v7, v0}, Lcom/android/server/policy/WindowManagerPolicy;->focusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result v10

    .line 6140
    .local v10, "focusChanged":I
    if-eqz v6, :cond_8c

    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eq v7, v11, :cond_8c

    .line 6142
    if-ne p1, v5, :cond_87

    .line 6143
    invoke-virtual {v1, v9, p2}, Lcom/android/server/wm/DisplayContent;->performLayout(ZZ)V

    .line 6144
    and-int/lit8 v10, v10, -0x2

    goto :goto_8c

    .line 6145
    :cond_87
    if-ne p1, v8, :cond_8c

    .line 6148
    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 6152
    :cond_8c
    :goto_8c
    and-int/lit8 v2, v10, 0x1

    if-eqz v2, :cond_98

    .line 6154
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 6155
    if-ne p1, v5, :cond_98

    .line 6156
    invoke-virtual {v1, v9, p2}, Lcom/android/server/wm/DisplayContent;->performLayout(ZZ)V

    .line 6160
    :cond_98
    if-eq p1, v9, :cond_a1

    .line 6163
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v5, p2}, Lcom/android/server/wm/InputMonitor;->setInputFocusLw(Lcom/android/server/wm/WindowState;Z)V

    .line 6166
    :cond_a1
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->adjustForImeIfNeeded()V

    .line 6171
    invoke-virtual {v1, v7, v0}, Lcom/android/server/wm/DisplayContent;->scheduleToastWindowsTimeoutIfNeededLocked(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    .line 6173
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 6174
    return v9

    .line 6176
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v6    # "imWindowChanged":Z
    .end local v7    # "oldFocus":Lcom/android/server/wm/WindowState;
    .end local v10    # "focusChanged":I
    :cond_ab
    return v2
.end method

.method updateNonSystemOverlayWindowsVisibilityIfNeeded(Lcom/android/server/wm/WindowState;Z)V
    .registers 8
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "surfaceShown"    # Z

    .line 8052
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hideNonSystemOverlayWindowsWhenVisible()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    .line 8053
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 8054
    return-void

    .line 8056
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 8057
    .local v0, "systemAlertWindowsHidden":Z
    if-eqz p2, :cond_27

    .line 8058
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 8059
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 8062
    :cond_27
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8065
    :cond_2c
    :goto_2c
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mHidingNonSystemOverlayWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 8067
    .local v1, "hideSystemAlertWindows":Z
    if-ne v0, v1, :cond_37

    .line 8068
    return-void

    .line 8071
    :cond_37
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v3, Lcom/android/server/wm/-$$Lambda$WindowManagerService$Mfs-IxxijHiEAEKbLIL1x_17ck0;

    invoke-direct {v3, v1}, Lcom/android/server/wm/-$$Lambda$WindowManagerService$Mfs-IxxijHiEAEKbLIL1x_17ck0;-><init>(Z)V

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 8074
    return-void
.end method

.method public updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;I)Landroid/content/res/Configuration;
    .registers 5
    .param p1, "currentConfig"    # Landroid/content/res/Configuration;
    .param p2, "freezeThisOneIfNeeded"    # Landroid/os/IBinder;
    .param p3, "displayId"    # I

    .line 2640
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;IZ)Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method public updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;IZ)Landroid/content/res/Configuration;
    .registers 9
    .param p1, "currentConfig"    # Landroid/content/res/Configuration;
    .param p2, "freezeThisOneIfNeeded"    # Landroid/os/IBinder;
    .param p3, "displayId"    # I
    .param p4, "forceUpdate"    # Z

    .line 2646
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string/jumbo v1, "updateOrientationFromAppTokens()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2651
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2653
    .local v0, "ident":J
    :try_start_f
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_29

    :try_start_12
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2654
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Landroid/content/res/Configuration;Landroid/os/IBinder;IZ)Landroid/content/res/Configuration;

    move-result-object v3

    .line 2656
    .local v3, "config":Landroid/content/res/Configuration;
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_23

    :try_start_1a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_29

    .line 2658
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2659
    nop

    .line 2658
    nop

    .line 2661
    return-object v3

    .line 2656
    .end local v3    # "config":Landroid/content/res/Configuration;
    :catchall_23
    move-exception v3

    :try_start_24
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    :try_start_25
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_29

    .line 2658
    :catchall_29
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 2647
    .end local v0    # "ident":J
    :cond_2e
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method updateOrientationFromAppTokensLocked(I)Z
    .registers 3
    .param p1, "displayId"    # I

    .line 2719
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(IZ)Z

    move-result v0

    return v0
.end method

.method updateOrientationFromAppTokensLocked(IZ)Z
    .registers 8
    .param p1, "displayId"    # I
    .param p2, "forceUpdate"    # Z

    .line 2723
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2725
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 2726
    .local v2, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getOrientation()I

    move-result v3

    .line 2727
    .local v3, "req":I
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getLastOrientation()I

    move-result v4
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_30

    if-ne v3, v4, :cond_1c

    if-eqz p2, :cond_17

    goto :goto_1c

    .line 2737
    :cond_17
    const/4 v4, 0x0

    .line 2739
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2737
    return v4

    .line 2728
    :cond_1c
    :goto_1c
    :try_start_1c
    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->setLastOrientation(I)V

    .line 2732
    iget-boolean v4, v2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v4, :cond_28

    .line 2733
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v4, v3}, Lcom/android/server/policy/WindowManagerPolicy;->setCurrentOrientationLw(I)V

    .line 2735
    :cond_28
    invoke-virtual {v2, p2}, Lcom/android/server/wm/DisplayContent;->updateRotationUnchecked(Z)Z

    move-result v4
    :try_end_2c
    .catchall {:try_start_1c .. :try_end_2c} :catchall_30

    .line 2739
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2735
    return v4

    .line 2739
    .end local v2    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v3    # "req":I
    :catchall_30
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method updatePointerIcon(Landroid/view/IWindow;)V
    .registers 11
    .param p1, "client"    # Landroid/view/IWindow;

    .line 7489
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mMousePositionTracker:Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    monitor-enter v0

    .line 7490
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mMousePositionTracker:Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    # getter for: Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestEventWasMouse:Z
    invoke-static {v1}, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->access$2100(Lcom/android/server/wm/WindowManagerService$MousePositionTracker;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 7491
    monitor-exit v0

    return-void

    .line 7493
    :cond_d
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mMousePositionTracker:Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    # getter for: Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestMouseX:F
    invoke-static {v1}, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->access$2200(Lcom/android/server/wm/WindowManagerService$MousePositionTracker;)F

    move-result v1

    .line 7494
    .local v1, "mouseX":F
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mMousePositionTracker:Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    # getter for: Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestMouseY:F
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->access$2300(Lcom/android/server/wm/WindowManagerService$MousePositionTracker;)F

    move-result v2

    .line 7495
    .local v2, "mouseY":F
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_89

    .line 7497
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v3

    :try_start_1d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7498
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-virtual {v0}, Lcom/android/server/wm/DragDropController;->dragDropActiveLocked()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 7500
    monitor-exit v3
    :try_end_29
    .catchall {:try_start_1d .. :try_end_29} :catchall_83

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 7502
    :cond_2d
    const/4 v0, 0x0

    const/4 v4, 0x0

    :try_start_2f
    invoke-virtual {p0, v0, p1, v4}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 7503
    .local v0, "callingWin":Lcom/android/server/wm/WindowState;
    if-nez v0, :cond_50

    .line 7504
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad requesting window "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7505
    monitor-exit v3
    :try_end_4c
    .catchall {:try_start_2f .. :try_end_4c} :catchall_83

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 7507
    :cond_50
    :try_start_50
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    .line 7508
    .local v4, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v4, :cond_5b

    .line 7509
    monitor-exit v3
    :try_end_57
    .catchall {:try_start_50 .. :try_end_57} :catchall_83

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 7511
    :cond_5b
    nop

    .line 7512
    :try_start_5c
    invoke-virtual {v4, v1, v2}, Lcom/android/server/wm/DisplayContent;->getTouchableWinAtPointLocked(FF)Lcom/android/server/wm/WindowState;

    move-result-object v5

    .line 7513
    .local v5, "windowUnderPointer":Lcom/android/server/wm/WindowState;
    if-eq v5, v0, :cond_67

    .line 7514
    monitor-exit v3
    :try_end_63
    .catchall {:try_start_5c .. :try_end_63} :catchall_83

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 7517
    :cond_67
    :try_start_67
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 7518
    invoke-virtual {v5, v1}, Lcom/android/server/wm/WindowState;->translateToWindowX(F)F

    move-result v7

    .line 7519
    invoke-virtual {v5, v2}, Lcom/android/server/wm/WindowState;->translateToWindowY(F)F

    move-result v8

    .line 7517
    invoke-interface {v6, v7, v8}, Landroid/view/IWindow;->updatePointerIcon(FF)V
    :try_end_74
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_74} :catch_75
    .catchall {:try_start_67 .. :try_end_74} :catchall_83

    .line 7522
    goto :goto_7e

    .line 7520
    :catch_75
    move-exception v6

    .line 7521
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_76
    const-string v7, "WindowManager"

    const-string/jumbo v8, "unable to update pointer icon"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7523
    .end local v0    # "callingWin":Lcom/android/server/wm/WindowState;
    .end local v4    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v5    # "windowUnderPointer":Lcom/android/server/wm/WindowState;
    .end local v6    # "e":Landroid/os/RemoteException;
    :goto_7e
    monitor-exit v3
    :try_end_7f
    .catchall {:try_start_76 .. :try_end_7f} :catchall_83

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7524
    return-void

    .line 7523
    :catchall_83
    move-exception v0

    :try_start_84
    monitor-exit v3
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_83

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 7495
    .end local v1    # "mouseX":F
    .end local v2    # "mouseY":F
    :catchall_89
    move-exception v1

    :try_start_8a
    monitor-exit v0
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_89

    throw v1
.end method

.method public updateRotation(ZZ)V
    .registers 3
    .param p1, "alwaysSendConfiguration"    # Z
    .param p2, "forceRelayout"    # Z

    .line 4206
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(ZZ)V

    .line 4207
    return-void
.end method

.method updateTapExcludeRegion(Landroid/view/IWindow;IIIII)V
    .registers 15
    .param p1, "client"    # Landroid/view/IWindow;
    .param p2, "regionId"    # I
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I

    .line 7552
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7553
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 7554
    .local v1, "callingWin":Lcom/android/server/wm/WindowState;
    if-nez v1, :cond_29

    .line 7555
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad requesting window "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7556
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_37

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 7558
    :cond_29
    move-object v2, v1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    :try_start_2f
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/WindowState;->updateTapExcludeRegion(IIIII)V

    .line 7559
    .end local v1    # "callingWin":Lcom/android/server/wm/WindowState;
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2f .. :try_end_33} :catchall_37

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7560
    return-void

    .line 7559
    :catchall_37
    move-exception v1

    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method viewServerGetFocusedWindow(Ljava/net/Socket;)Z
    .registers 9
    .param p1, "client"    # Ljava/net/Socket;

    .line 4575
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4576
    const/4 v0, 0x0

    return v0

    .line 4579
    :cond_8
    const/4 v0, 0x1

    .line 4581
    .local v0, "result":Z
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 4583
    .local v1, "focusedWindow":Lcom/android/server/wm/WindowState;
    const/4 v2, 0x0

    .line 4587
    .local v2, "out":Ljava/io/BufferedWriter;
    :try_start_e
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 4588
    .local v3, "clientStream":Ljava/io/OutputStream;
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v6, 0x2000

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    move-object v2, v4

    .line 4590
    if-eqz v1, :cond_3a

    .line 4591
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 4592
    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Ljava/io/BufferedWriter;->write(I)V

    .line 4593
    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v4}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 4595
    :cond_3a
    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Ljava/io/BufferedWriter;->write(I)V

    .line 4596
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_42} :catch_51
    .catchall {:try_start_e .. :try_end_42} :catchall_47

    .line 4600
    .end local v3    # "clientStream":Ljava/io/OutputStream;
    nop

    .line 4602
    :try_start_43
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_59

    goto :goto_5b

    .line 4600
    :catchall_47
    move-exception v3

    if-eqz v2, :cond_50

    .line 4602
    :try_start_4a
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4e

    .line 4605
    goto :goto_50

    .line 4603
    :catch_4e
    move-exception v4

    .line 4604
    .local v4, "e":Ljava/io/IOException;
    const/4 v0, 0x0

    .line 4605
    .end local v4    # "e":Ljava/io/IOException;
    :cond_50
    :goto_50
    throw v3

    .line 4597
    :catch_51
    move-exception v3

    .line 4598
    .local v3, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 4600
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_5c

    .line 4602
    :try_start_55
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_59

    goto :goto_5b

    .line 4603
    :catch_59
    move-exception v3

    .line 4604
    .local v3, "e":Ljava/io/IOException;
    const/4 v0, 0x0

    .line 4605
    .end local v3    # "e":Ljava/io/IOException;
    :goto_5b
    nop

    .line 4609
    :cond_5c
    return v0
.end method

.method viewServerListWindows(Ljava/net/Socket;)Z
    .registers 10
    .param p1, "client"    # Ljava/net/Socket;

    .line 4520
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 4521
    return v1

    .line 4524
    :cond_8
    const/4 v0, 0x1

    .line 4526
    .local v0, "result":Z
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4527
    .local v2, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v3

    :try_start_11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4528
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v5, Lcom/android/server/wm/-$$Lambda$WindowManagerService$CIuXGvNhVwi8txA2L_PmZnPJavk;

    invoke-direct {v5, v2}, Lcom/android/server/wm/-$$Lambda$WindowManagerService$CIuXGvNhVwi8txA2L_PmZnPJavk;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v4, v5, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 4531
    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_85

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4533
    const/4 v3, 0x0

    .line 4537
    .local v3, "out":Ljava/io/BufferedWriter;
    :try_start_23
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 4538
    .local v4, "clientStream":Ljava/io/OutputStream;
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-direct {v6, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v7, 0x2000

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    move-object v3, v5

    .line 4540
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 4541
    .local v5, "count":I
    nop

    .local v1, "i":I
    :goto_39
    if-ge v1, v5, :cond_62

    .line 4542
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 4543
    .local v6, "w":Lcom/android/server/wm/WindowState;
    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 4544
    const/16 v7, 0x20

    invoke-virtual {v3, v7}, Ljava/io/BufferedWriter;->write(I)V

    .line 4545
    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v7}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 4546
    const/16 v7, 0xa

    invoke-virtual {v3, v7}, Ljava/io/BufferedWriter;->write(I)V

    .line 4541
    .end local v6    # "w":Lcom/android/server/wm/WindowState;
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    .line 4549
    .end local v1    # "i":I
    :cond_62
    const-string v1, "DONE.\n"

    invoke-virtual {v3, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 4550
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_6a} :catch_79
    .catchall {:try_start_23 .. :try_end_6a} :catchall_6f

    .line 4554
    .end local v4    # "clientStream":Ljava/io/OutputStream;
    .end local v5    # "count":I
    nop

    .line 4556
    :try_start_6b
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_81

    goto :goto_83

    .line 4554
    :catchall_6f
    move-exception v1

    if-eqz v3, :cond_78

    .line 4556
    :try_start_72
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_76

    .line 4559
    goto :goto_78

    .line 4557
    :catch_76
    move-exception v4

    .line 4558
    .local v4, "e":Ljava/io/IOException;
    const/4 v0, 0x0

    .line 4559
    .end local v4    # "e":Ljava/io/IOException;
    :cond_78
    :goto_78
    throw v1

    .line 4551
    :catch_79
    move-exception v1

    .line 4552
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 4554
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_84

    .line 4556
    :try_start_7d
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_81

    goto :goto_83

    .line 4557
    :catch_81
    move-exception v1

    .line 4558
    .local v1, "e":Ljava/io/IOException;
    const/4 v0, 0x0

    .line 4559
    .end local v1    # "e":Ljava/io/IOException;
    :goto_83
    nop

    .line 4563
    :cond_84
    return v0

    .line 4531
    .end local v3    # "out":Ljava/io/BufferedWriter;
    :catchall_85
    move-exception v1

    :try_start_86
    monitor-exit v3
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method viewServerWindowCommand(Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 16
    .param p1, "client"    # Ljava/net/Socket;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "parameters"    # Ljava/lang/String;

    .line 4633
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService;->isSystemSecure()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 4634
    return v1

    .line 4637
    :cond_8
    const/4 v0, 0x1

    .line 4638
    .local v0, "success":Z
    const/4 v2, 0x0

    .line 4639
    .local v2, "data":Landroid/os/Parcel;
    const/4 v3, 0x0

    .line 4641
    .local v3, "reply":Landroid/os/Parcel;
    const/4 v4, 0x0

    .line 4646
    .local v4, "out":Ljava/io/BufferedWriter;
    const/16 v5, 0x20

    :try_start_e
    invoke-virtual {p3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 4647
    .local v5, "index":I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_1a

    .line 4648
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    move v5, v6

    .line 4650
    :cond_1a
    invoke-virtual {p3, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 4651
    .local v6, "code":Ljava/lang/String;
    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v7

    long-to-int v7, v7

    .line 4654
    .local v7, "hashCode":I
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v5, v8, :cond_33

    .line 4655
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    move-object p3, v8

    goto :goto_36

    .line 4657
    :cond_33
    const-string v8, ""

    move-object p3, v8

    .line 4660
    :goto_36
    invoke-direct {p0, v7}, Lcom/android/server/wm/WindowManagerService;->findWindow(I)Lcom/android/server/wm/WindowState;

    move-result-object v8
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_3a} :catch_ac
    .catchall {:try_start_e .. :try_end_3a} :catchall_aa

    .line 4661
    .local v8, "window":Lcom/android/server/wm/WindowState;
    if-nez v8, :cond_4f

    .line 4662
    nop

    .line 4690
    if-eqz v2, :cond_42

    .line 4691
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4693
    :cond_42
    if-eqz v3, :cond_47

    .line 4694
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 4696
    :cond_47
    if-eqz v4, :cond_4e

    .line 4698
    :try_start_49
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4d

    .line 4701
    goto :goto_4e

    .line 4699
    :catch_4d
    move-exception v9

    .line 4662
    :cond_4e
    :goto_4e
    return v1

    .line 4665
    :cond_4f
    :try_start_4f
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    move-object v2, v9

    .line 4666
    const-string v9, "android.view.IWindow"

    invoke-virtual {v2, v9}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4667
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4668
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4669
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 4670
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->fromSocket(Ljava/net/Socket;)Landroid/os/ParcelFileDescriptor;

    move-result-object v10

    invoke-virtual {v10, v2, v1}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4672
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    move-object v3, v10

    .line 4674
    iget-object v10, v8, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v10}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 4676
    .local v10, "binder":Landroid/os/IBinder;
    invoke-interface {v10, v9, v2, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4678
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 4680
    invoke-virtual {p1}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v1

    if-nez v1, :cond_98

    .line 4681
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/OutputStreamWriter;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v4, v1

    .line 4682
    const-string v1, "DONE\n"

    invoke-virtual {v4, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 4683
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_98} :catch_ac
    .catchall {:try_start_4f .. :try_end_98} :catchall_aa

    .line 4690
    .end local v5    # "index":I
    .end local v6    # "code":Ljava/lang/String;
    .end local v7    # "hashCode":I
    .end local v8    # "window":Lcom/android/server/wm/WindowState;
    .end local v10    # "binder":Landroid/os/IBinder;
    :cond_98
    if-eqz v2, :cond_9d

    .line 4691
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4693
    :cond_9d
    if-eqz v3, :cond_a2

    .line 4694
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 4696
    :cond_a2
    if-eqz v4, :cond_dc

    .line 4698
    :try_start_a4
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a7} :catch_a8

    .line 4701
    :goto_a7
    goto :goto_dc

    .line 4699
    :catch_a8
    move-exception v1

    goto :goto_a7

    .line 4690
    :catchall_aa
    move-exception v1

    goto :goto_dd

    .line 4686
    :catch_ac
    move-exception v1

    .line 4687
    .local v1, "e":Ljava/lang/Exception;
    :try_start_ad
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not send command "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " with parameters "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_cb
    .catchall {:try_start_ad .. :try_end_cb} :catchall_aa

    .line 4688
    const/4 v0, 0x0

    .line 4690
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_d1

    .line 4691
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4693
    :cond_d1
    if-eqz v3, :cond_d6

    .line 4694
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 4696
    :cond_d6
    if-eqz v4, :cond_dc

    .line 4698
    :try_start_d8
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_db
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_db} :catch_a8

    goto :goto_a7

    .line 4705
    :cond_dc
    :goto_dc
    return v0

    .line 4690
    :goto_dd
    if-eqz v2, :cond_e2

    .line 4691
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4693
    :cond_e2
    if-eqz v3, :cond_e7

    .line 4694
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 4696
    :cond_e7
    if-eqz v4, :cond_ee

    .line 4698
    :try_start_e9
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_ec
    .catch Ljava/io/IOException; {:try_start_e9 .. :try_end_ec} :catch_ed

    .line 4701
    goto :goto_ee

    .line 4699
    :catch_ed
    move-exception v5

    .line 4701
    :cond_ee
    :goto_ee
    throw v1
.end method

.method public watchRotation(Landroid/view/IRotationWatcher;I)I
    .registers 8
    .param p1, "watcher"    # Landroid/view/IRotationWatcher;
    .param p2, "displayId"    # I

    .line 4293
    invoke-interface {p1}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 4294
    .local v0, "watcherBinder":Landroid/os/IBinder;
    new-instance v1, Lcom/android/server/wm/WindowManagerService$11;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/WindowManagerService$11;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;)V

    .line 4312
    .local v1, "dr":Landroid/os/IBinder$DeathRecipient;
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4314
    invoke-interface {p1}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 4315
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/server/wm/WindowManagerService$RotationWatcher;

    invoke-direct {v4, p0, p1, v1, p2}, Lcom/android/server/wm/WindowManagerService$RotationWatcher;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IRotationWatcher;Landroid/os/IBinder$DeathRecipient;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_21} :catch_24
    .catchall {:try_start_c .. :try_end_21} :catchall_22

    .line 4318
    goto :goto_25

    .line 4321
    :catchall_22
    move-exception v3

    goto :goto_2e

    .line 4316
    :catch_24
    move-exception v3

    .line 4320
    :goto_25
    :try_start_25
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayRotation()I

    move-result v3

    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 4321
    :goto_2e
    :try_start_2e
    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method final windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;
    .registers 10
    .param p1, "session"    # Lcom/android/server/wm/Session;
    .param p2, "client"    # Landroid/os/IBinder;
    .param p3, "throwOnError"    # Z

    .line 5943
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 5945
    .local v0, "win":Lcom/android/server/wm/WindowState;
    const/4 v1, 0x0

    const/4 v2, 0x3

    if-nez v0, :cond_45

    .line 5946
    if-nez p3, :cond_29

    .line 5950
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed looking up window callers="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5951
    return-object v1

    .line 5947
    :cond_29
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " does not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5953
    :cond_45
    if-eqz p1, :cond_91

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    if-eq v3, p1, :cond_91

    .line 5954
    if-nez p3, :cond_68

    .line 5958
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed looking up window callers="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5959
    return-object v1

    .line 5955
    :cond_68
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is in session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5962
    :cond_91
    return-object v0
.end method

.method final windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;
    .registers 5
    .param p1, "session"    # Lcom/android/server/wm/Session;
    .param p2, "client"    # Landroid/view/IWindow;
    .param p3, "throwOnError"    # Z

    .line 5939
    invoke-interface {p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    return-object v0
.end method

.method writeToProtoLocked(Landroid/util/proto/ProtoOutputStream;Z)V
    .registers 7
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "trim"    # Z

    .line 6723
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const-wide v1, 0x10b00000001L

    invoke-interface {v0, p1, v1, v2}, Lcom/android/server/policy/WindowManagerPolicy;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 6724
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const-wide v1, 0x10b00000002L

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/android/server/wm/RootWindowContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V

    .line 6725
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_22

    .line 6726
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    const-wide v1, 0x10b00000003L

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/WindowState;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 6728
    :cond_22
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_30

    .line 6729
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    const-wide v1, 0x10900000004L

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/AppWindowToken;->writeNameToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 6731
    :cond_30
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_3e

    .line 6732
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    const-wide v1, 0x10b00000005L

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/WindowState;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 6734
    :cond_3e
    const-wide v0, 0x10800000006L

    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 6735
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 6736
    .local v0, "defaultDisplayContent":Lcom/android/server/wm/DisplayContent;
    const-wide v1, 0x10500000007L

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6737
    const-wide v1, 0x10500000008L

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getLastOrientation()I

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6738
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    const-wide v2, 0x10b00000009L

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/wm/AppTransition;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 6739
    return-void
.end method
