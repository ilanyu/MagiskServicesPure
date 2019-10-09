.class public Lcom/android/server/policy/PhoneWindowManager;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Lcom/android/server/policy/WindowManagerPolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;,
        Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;,
        Lcom/android/server/policy/PhoneWindowManager$HdmiControl;,
        Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;,
        Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;,
        Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;,
        Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;,
        Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;
    }
.end annotation


# static fields
.field private static final ACTION_WIFI_DISPLAY_VIDEO:Ljava/lang/String; = "org.codeaurora.intent.action.WIFI_DISPLAY_VIDEO"

.field static final ALTERNATE_CAR_MODE_NAV_SIZE:Z = false

.field private static final BRIGHTNESS_STEPS:I = 0xa

.field private static final BUGREPORT_TV_GESTURE_TIMEOUT_MILLIS:J = 0x3e8L

.field static final DEBUG:Z = false

.field static final DEBUG_INPUT:Z = false

.field static final DEBUG_KEYGUARD:Z = false

.field static final DEBUG_LAYOUT:Z = false

.field static final DEBUG_SPLASH_SCREEN:Z = false

.field static final DEBUG_WAKEUP:Z = true

.field static final DOUBLE_TAP_HOME_NOTHING:I = 0x0

.field static final DOUBLE_TAP_HOME_RECENT_SYSTEM_UI:I = 0x1

.field static final ENABLE_DESK_DOCK_HOME_CAPTURE:Z = false

.field static final ENABLE_VR_HEADSET_HOME_CAPTURE:Z = true

.field private static final KEYGUARD_SCREENSHOT_CHORD_DELAY_MULTIPLIER:F = 2.5f

.field static final LAST_LONG_PRESS_HOME_BEHAVIOR:I = 0x2

.field static final LONG_PRESS_BACK_GO_TO_VOICE_ASSIST:I = 0x1

.field static final LONG_PRESS_BACK_NOTHING:I = 0x0

.field static final LONG_PRESS_HOME_ALL_APPS:I = 0x1

.field static final LONG_PRESS_HOME_ASSIST:I = 0x2

.field static final LONG_PRESS_HOME_NOTHING:I = 0x0

.field static final LONG_PRESS_POWER_GLOBAL_ACTIONS:I = 0x1

.field static final LONG_PRESS_POWER_GO_TO_VOICE_ASSIST:I = 0x4

.field static final LONG_PRESS_POWER_NOTHING:I = 0x0

.field static final LONG_PRESS_POWER_SHUT_OFF:I = 0x2

.field static final LONG_PRESS_POWER_SHUT_OFF_NO_CONFIRM:I = 0x3

.field private static final MSG_ACCESSIBILITY_SHORTCUT:I = 0x14

.field private static final MSG_ACCESSIBILITY_TV:I = 0x16

.field private static final MSG_BACK_LONG_PRESS:I = 0x12

.field private static final MSG_BUGREPORT_TV:I = 0x15

.field private static final MSG_DISABLE_POINTER_LOCATION:I = 0x2

.field private static final MSG_DISPATCH_BACK_KEY_TO_AUTOFILL:I = 0x17

.field private static final MSG_DISPATCH_MEDIA_KEY_REPEAT_WITH_WAKE_LOCK:I = 0x4

.field private static final MSG_DISPATCH_MEDIA_KEY_WITH_WAKE_LOCK:I = 0x3

.field private static final MSG_DISPATCH_SHOW_GLOBAL_ACTIONS:I = 0xa

.field private static final MSG_DISPATCH_SHOW_RECENTS:I = 0x9

.field private static final MSG_DISPOSE_INPUT_CONSUMER:I = 0x13

.field private static final MSG_ENABLE_POINTER_LOCATION:I = 0x1

.field private static final MSG_HANDLE_ALL_APPS:I = 0x19

.field private static final MSG_HANDLE_FUNCTION_KEY_AND_BACK_KEY:I = 0x1f

.field private static final MSG_HIDE_BOOT_MESSAGE:I = 0xb

.field private static final MSG_KEYGUARD_DRAWN_COMPLETE:I = 0x5

.field private static final MSG_KEYGUARD_DRAWN_TIMEOUT:I = 0x6

.field private static final MSG_LAUNCH_ASSIST:I = 0x1a

.field private static final MSG_LAUNCH_ASSIST_LONG_PRESS:I = 0x1b

.field private static final MSG_LAUNCH_VOICE_ASSIST_WITH_WAKE_LOCK:I = 0xc

.field private static final MSG_NOTIFY_USER_ACTIVITY:I = 0x1d

.field private static final MSG_POWER_DELAYED_PRESS:I = 0xd

.field private static final MSG_POWER_LONG_PRESS:I = 0xe

.field private static final MSG_POWER_VERY_LONG_PRESS:I = 0x1c

.field private static final MSG_REQUEST_TRANSIENT_BARS:I = 0x10

.field private static final MSG_REQUEST_TRANSIENT_BARS_ARG_NAVIGATION:I = 0x1

.field private static final MSG_REQUEST_TRANSIENT_BARS_ARG_STATUS:I = 0x0

.field private static final MSG_RINGER_TOGGLE_CHORD:I = 0x1e

.field private static final MSG_SHOW_PICTURE_IN_PICTURE_MENU:I = 0x11

.field private static final MSG_SYSTEM_KEY_PRESS:I = 0x18

.field private static final MSG_UPDATE_DREAMING_SLEEP_TOKEN:I = 0xf

.field private static final MSG_WINDOW_MANAGER_DRAWN_COMPLETE:I = 0x7

.field static final MULTI_PRESS_POWER_BRIGHTNESS_BOOST:I = 0x2

.field static final MULTI_PRESS_POWER_NOTHING:I = 0x0

.field static final MULTI_PRESS_POWER_THEATER_MODE:I = 0x1

.field static final NAV_BAR_OPAQUE_WHEN_FREEFORM_OR_DOCKED:I = 0x0

.field static final NAV_BAR_TRANSLUCENT_WHEN_FREEFORM_OPAQUE_OTHERWISE:I = 0x1

.field private static final PANIC_GESTURE_EXPIRATION:J = 0x7530L

.field static final PENDING_KEY_NULL:I = -0x1

.field static final PRINT_ANIM:Z = false

.field private static final SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0x96L

.field private static final SCROLL_BOOST_SS_ENABLE:Z

.field static final SHORT_PRESS_POWER_CLOSE_IME_OR_GO_HOME:I = 0x5

.field static final SHORT_PRESS_POWER_GO_HOME:I = 0x4

.field static final SHORT_PRESS_POWER_GO_TO_SLEEP:I = 0x1

.field static final SHORT_PRESS_POWER_NOTHING:I = 0x0

.field static final SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP:I = 0x2

.field static final SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP_AND_GO_HOME:I = 0x3

.field static final SHORT_PRESS_SLEEP_GO_TO_SLEEP:I = 0x0

.field static final SHORT_PRESS_SLEEP_GO_TO_SLEEP_AND_GO_HOME:I = 0x1

.field static final SHORT_PRESS_WINDOW_NOTHING:I = 0x0

.field static final SHORT_PRESS_WINDOW_PICTURE_IN_PICTURE:I = 0x1

.field static final SHOW_SPLASH_SCREENS:Z = true

.field private static final SUPPORT_FOD:Z

.field public static final SYSTEM_DIALOG_REASON_ASSIST:Ljava/lang/String; = "assist"

.field public static final SYSTEM_DIALOG_REASON_GLOBAL_ACTIONS:Ljava/lang/String; = "globalactions"

.field public static final SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String; = "homekey"

.field public static final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String; = "reason"

.field public static final SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String; = "recentapps"

.field public static final SYSTEM_DIALOG_REASON_SCREENSHOT:Ljava/lang/String; = "screenshot"

.field static final SYSTEM_UI_CHANGING_LAYOUT:I = -0x3fff7ff2

.field private static final SYSUI_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field private static final SYSUI_SCREENSHOT_ERROR_RECEIVER:Ljava/lang/String; = "com.android.systemui.screenshot.ScreenshotServiceErrorReceiver"

.field private static final SYSUI_SCREENSHOT_SERVICE:Ljava/lang/String; = "com.android.systemui.screenshot.TakeScreenshotService"

.field static final TAG:Ljava/lang/String; = "WindowManager"

.field public static final TOAST_WINDOW_TIMEOUT:I = 0xdac

.field private static final USER_ACTIVITY_NOTIFICATION_DELAY:I = 0xc8

.field static final VERY_LONG_PRESS_POWER_GLOBAL_ACTIONS:I = 0x1

.field static final VERY_LONG_PRESS_POWER_NOTHING:I = 0x0

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field static final WAITING_FOR_DRAWN_TIMEOUT:I = 0x3e8

.field private static final WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

.field static final localLOGV:Z = false

.field static final mTmpContentFrame:Landroid/graphics/Rect;

.field static final mTmpDecorFrame:Landroid/graphics/Rect;

.field private static final mTmpDisplayCutoutSafeExceptMaybeBarsRect:Landroid/graphics/Rect;

.field static final mTmpDisplayFrame:Landroid/graphics/Rect;

.field static final mTmpNavigationFrame:Landroid/graphics/Rect;

.field static final mTmpOutsetFrame:Landroid/graphics/Rect;

.field static final mTmpOverscanFrame:Landroid/graphics/Rect;

.field static final mTmpParentFrame:Landroid/graphics/Rect;

.field private static final mTmpRect:Landroid/graphics/Rect;

.field static final mTmpStableFrame:Landroid/graphics/Rect;

.field static final mTmpVisibleFrame:Landroid/graphics/Rect;

.field static sApplicationLaunchKeyCategories:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mA11yShortcutChordVolumeUpKeyConsumed:Z

.field private mA11yShortcutChordVolumeUpKeyTime:J

.field private mA11yShortcutChordVolumeUpKeyTriggered:Z

.field mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

.field private mAccessibilityTvKey1Pressed:Z

.field private mAccessibilityTvKey2Pressed:Z

.field private mAccessibilityTvScheduled:Z

.field private final mAcquireSleepTokenRunnable:Ljava/lang/Runnable;

.field mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field mAllowAllRotations:I

.field mAllowLockscreenWhenOn:Z

.field mAllowStartActivityForLongPressOnPowerDuringSetup:Z

.field private mAllowTheaterModeWakeFromCameraLens:Z

.field private mAllowTheaterModeWakeFromKey:Z

.field private mAllowTheaterModeWakeFromLidSwitch:Z

.field private mAllowTheaterModeWakeFromMotion:Z

.field private mAllowTheaterModeWakeFromMotionWhenNotDreaming:Z

.field private mAllowTheaterModeWakeFromPowerKey:Z

.field private mAllowTheaterModeWakeFromWakeGesture:Z

.field private mAodShowing:Z

.field mAppOpsManager:Landroid/app/AppOpsManager;

.field mAudioManagerInternal:Landroid/media/AudioManagerInternal;

.field mAutofillManagerInternal:Landroid/view/autofill/AutofillManagerInternal;

.field volatile mAwake:Z

.field volatile mBackKeyHandled:Z

.field volatile mBeganFromNonInteractive:Z

.field mBeingHangUp:Z

.field mBootMessageNeedsHiding:Z

.field mBootMsgDialog:Landroid/app/ProgressDialog;

.field mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mBugreportTvKey1Pressed:Z

.field private mBugreportTvKey2Pressed:Z

.field private mBugreportTvScheduled:Z

.field mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

.field mCalendarDateVibePattern:[J

.field volatile mCameraGestureTriggeredDuringGoingToSleep:Z

.field mCameraLensCoverState:I

.field mCarDockEnablesAccelerometer:Z

.field mCarDockIntent:Landroid/content/Intent;

.field mCarDockRotation:I

.field private final mClearHideNavigationFlag:Ljava/lang/Runnable;

.field mConsumeSearchKeyUp:Z

.field mContext:Landroid/content/Context;

.field private final mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

.field mCurrentAppOrientation:I

.field private mCurrentUserId:I

.field mDemoHdmiRotation:I

.field mDemoHdmiRotationLock:Z

.field mDemoRotation:I

.field mDemoRotationLock:Z

.field mDeskDockEnablesAccelerometer:Z

.field mDeskDockIntent:Landroid/content/Intent;

.field mDeskDockRotation:I

.field private volatile mDismissImeOnBackKeyPressed:Z

.field mDisplay:Landroid/view/Display;

.field mDockLayer:I

.field mDockMode:I

.field mDockReceiver:Landroid/content/BroadcastReceiver;

.field final mDockedStackBounds:Landroid/graphics/Rect;

.field mDoublePressOnPowerBehavior:I

.field private mDoubleTapOnHomeBehavior:I

.field mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

.field mDreamReceiver:Landroid/content/BroadcastReceiver;

.field mDreamingLockscreen:Z

.field mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

.field mDreamingSleepTokenNeeded:Z

.field private mEnableCarDockHomeCapture:Z

.field mEnableShiftMenuBugReports:Z

.field volatile mEndCallKeyHandled:Z

.field private mEndCallLongPress:Ljava/lang/Runnable;

.field mEndcallBehavior:I

.field private final mFallbackActions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/KeyCharacterMap$FallbackAction;",
            ">;"
        }
    .end annotation
.end field

.field mFocusedApp:Landroid/view/IApplicationToken;

.field mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

.field mForceClearedSystemUiFlags:I

.field private mForceDefaultOrientation:Z

.field mForceShowSystemBars:Z

.field mForceStatusBar:Z

.field mForceStatusBarFromKeyguard:Z

.field private mForceStatusBarTransparent:Z

.field mForcingShowNavBar:Z

.field mForcingShowNavBarLayer:I

.field mGlobalActions:Lcom/android/server/policy/MiuiGlobalActions;

.field private mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

.field private mGoToSleepOnButtonPressTheaterMode:Z

.field volatile mGoingToSleep:Z

.field private mHDMIObserver:Landroid/os/UEventObserver;

.field private mHandleVolumeKeysInWM:Z

.field mHandler:Landroid/os/Handler;

.field private mHasFeatureLeanback:Z

.field private mHasFeatureWatch:Z

.field mHasNavigationBar:Z

.field mHasSoftInput:Z

.field mHaveBuiltInKeyboard:Z

.field mHavePendingMediaKeyRepeatWithWakeLock:Z

.field mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

.field mHdmiPlugged:Z

.field private final mHiddenNavPanic:Ljava/lang/Runnable;

.field mHomeConsumed:Z

.field mHomeDoubleTapPending:Z

.field private final mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field mHomeIntent:Landroid/content/Intent;

.field mHomePressed:Z

.field private mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

.field mIncallBackBehavior:I

.field mIncallPowerBehavior:I

.field mInitialMetaState:I

.field mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

.field mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

.field mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

.field private mIsPerfBoostFlingAcquired:Z

.field private mKeyguardBound:Z

.field mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

.field mKeyguardDrawComplete:Z

.field final mKeyguardDrawnCallback:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

.field private mKeyguardDrawnOnce:Z

.field volatile mKeyguardOccluded:Z

.field private mKeyguardOccludedChanged:Z

.field mLandscapeRotation:I

.field mLanguageSwitchKeyPressed:Z

.field final mLastDockedStackBounds:Landroid/graphics/Rect;

.field mLastDockedStackSysUiFlags:I

.field mLastFocusNeedsMenu:Z

.field mLastFullscreenStackSysUiFlags:I

.field mLastInputMethodTargetWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

.field mLastInputMethodWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

.field final mLastNonDockedStackBounds:Landroid/graphics/Rect;

.field private mLastShowingDream:Z

.field mLastSystemUiFlags:I

.field private mLastWindowSleepTokenNeeded:Z

.field mLidControlsScreenLock:Z

.field mLidControlsSleep:Z

.field mLidKeyboardAccessibility:I

.field mLidNavigationAccessibility:I

.field mLidOpenRotation:I

.field mLidState:I

.field final mLock:Ljava/lang/Object;

.field mLockScreenTimeout:I

.field mLockScreenTimerActive:Z

.field private final mLogDecelerateInterpolator:Lcom/android/server/policy/LogDecelerateInterpolator;

.field mLogger:Lcom/android/internal/logging/MetricsLogger;

.field mLongPressOnBackBehavior:I

.field private mLongPressOnHomeBehavior:I

.field mLongPressOnPowerBehavior:I

.field mLongPressVibePattern:[J

.field mMetaState:I

.field mMultiuserReceiver:Landroid/content/BroadcastReceiver;

.field mNavBarOpacityMode:I

.field volatile mNavBarVirtualKeyHapticFeedbackEnabled:Z

.field private final mNavBarVisibilityListener:Lcom/android/server/policy/BarController$OnBarVisibilityChangedListener;

.field mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

.field mNavigationBarCanMove:Z

.field private final mNavigationBarController:Lcom/android/server/policy/BarController;

.field mNavigationBarHeightForRotationDefault:[I

.field mNavigationBarHeightForRotationInCarMode:[I

.field mNavigationBarPosition:I

.field mNavigationBarWidthForRotationDefault:[I

.field mNavigationBarWidthForRotationInCarMode:[I

.field final mNonDockedStackBounds:Landroid/graphics/Rect;

.field private mNotifyUserActivity:Z

.field mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

.field mOrientationSensorEnabled:Z

.field mPendingCapsLockToggle:Z

.field private mPendingKeyguardOccluded:Z

.field mPendingMetaAction:Z

.field private mPendingPanicGestureUptime:J

.field volatile mPendingWakeKey:I

.field mPerfBoostDrag:Landroid/util/BoostFramework;

.field mPerfBoostFling:Landroid/util/BoostFramework;

.field mPerfBoostPrefling:Landroid/util/BoostFramework;

.field private volatile mPersistentVrModeEnabled:Z

.field final mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

.field volatile mPictureInPictureVisible:Z

.field mPointerLocationMode:I

.field mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

.field mPortraitRotation:I

.field volatile mPowerKeyHandled:Z

.field volatile mPowerKeyPressCounter:I

.field mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

.field mPowerManager:Landroid/os/PowerManager;

.field mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field mPreloadedRecentApps:Z

.field mRecentAppsHeldModifiers:I

.field volatile mRecentsVisible:Z

.field private final mReleaseSleepTokenRunnable:Ljava/lang/Runnable;

.field volatile mRequestedOrGoingToSleep:Z

.field mResettingSystemUiFlags:I

.field private mRingerToggleChord:I

.field mSafeMode:Z

.field mSafeModeEnabledVibePattern:[J

.field private final mScreenDecorWindows:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/policy/WindowManagerPolicy$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

.field mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

.field public mScreenOnDelay:J

.field mScreenOnEarly:Z

.field mScreenOnFully:Z

.field mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

.field private mScreenshotChordEnabled:Z

.field private mScreenshotChordPowerKeyTime:J

.field private mScreenshotChordPowerKeyTriggered:Z

.field private mScreenshotChordVolumeDownKeyConsumed:Z

.field private mScreenshotChordVolumeDownKeyTime:J

.field private mScreenshotChordVolumeDownKeyTriggered:Z

.field private mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

.field private final mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

.field mSearchKeyShortcutPending:Z

.field mSearchManager:Landroid/app/SearchManager;

.field mSeascapeRotation:I

.field final mServiceAquireLock:Ljava/lang/Object;

.field mSettingsObserver:Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

.field mShortPressOnPowerBehavior:I

.field mShortPressOnSleepBehavior:I

.field mShortPressOnWindowBehavior:I

.field private mShortcutKeyServices:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/android/internal/policy/IShortcutService;",
            ">;"
        }
    .end annotation
.end field

.field mShortcutManager:Lcom/android/server/policy/ShortcutManager;

.field mShowRotationSuggestions:I

.field mShowingDream:Z

.field mSlideScreenListener:Lmiui/slide/SlideCoverListener;

.field mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

.field private final mStatusBarController:Lcom/android/server/policy/StatusBarController;

.field private final mStatusBarHeightForRotation:[I

.field mStatusBarLayer:I

.field mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field mSupportAutoRotation:Z

.field private mSupportLongPressPowerWhenNonInteractive:Z

.field mSystemBooted:Z

.field mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mSystemNavigationKeysEnabled:Z

.field mSystemReady:Z

.field private final mTmpBoolean:Landroid/util/MutableBoolean;

.field mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

.field mTopDockedOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

.field mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

.field mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

.field mTopIsFullscreen:Z

.field mTranslucentDecorEnabled:Z

.field mTriplePressOnPowerBehavior:I

.field mUiMode:I

.field mUiModeManager:Landroid/app/IUiModeManager;

.field mUndockedHdmiRotation:I

.field mUpsideDownRotation:I

.field mUseTvRouting:Z

.field mUserRotation:I

.field mUserRotationMode:I

.field mVeryLongPressOnPowerBehavior:I

.field mVeryLongPressTimeout:I

.field mVibrator:Landroid/os/Vibrator;

.field mVrHeadsetHomeIntent:Landroid/content/Intent;

.field volatile mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

.field mWakeGestureEnabledSetting:Z

.field mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

.field private mWifiDisplayConnected:Z

.field private mWifiDisplayCustomRotation:I

.field mWifiDisplayReceiver:Landroid/content/BroadcastReceiver;

.field mWindowManager:Landroid/view/IWindowManager;

.field final mWindowManagerDrawCallback:Ljava/lang/Runnable;

.field mWindowManagerDrawComplete:Z

.field mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

.field mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

.field private mWindowSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mHandler"
    .end annotation
.end field

.field private mWindowSleepTokenNeeded:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 404
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 405
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 406
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 407
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 445
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    .line 446
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const-string v1, "android.intent.category.APP_BROWSER"

    const/16 v2, 0x40

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 448
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const-string v1, "android.intent.category.APP_EMAIL"

    const/16 v2, 0x41

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 450
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const-string v1, "android.intent.category.APP_CONTACTS"

    const/16 v2, 0xcf

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 452
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const-string v1, "android.intent.category.APP_CALENDAR"

    const/16 v2, 0xd0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 454
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const-string v1, "android.intent.category.APP_MUSIC"

    const/16 v2, 0xd1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 456
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const-string v1, "android.intent.category.APP_CALCULATOR"

    const/16 v2, 0xd2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 477
    const-string/jumbo v0, "vendor.perf.gestureflingboost.enable"

    .line 478
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->SCROLL_BOOST_SS_ENABLE:Z

    .line 711
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 712
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 713
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    .line 714
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    .line 715
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 716
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpDecorFrame:Landroid/graphics/Rect;

    .line 717
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpStableFrame:Landroid/graphics/Rect;

    .line 718
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    .line 719
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpOutsetFrame:Landroid/graphics/Rect;

    .line 720
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpDisplayCutoutSafeExceptMaybeBarsRect:Landroid/graphics/Rect;

    .line 721
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    .line 876
    const-string/jumbo v0, "ro.hardware.fp.fod"

    .line 877
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->SUPPORT_FOD:Z

    .line 3771
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_bc

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    return-void

    :array_bc
    .array-data 4
        0x7d3
        0x7da
    .end array-data
.end method

.method public constructor <init>()V
    .registers 11

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 475
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 483
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPerfBoostDrag:Landroid/util/BoostFramework;

    .line 484
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPerfBoostFling:Landroid/util/BoostFramework;

    .line 485
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPerfBoostPrefling:Landroid/util/BoostFramework;

    .line 501
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    .line 525
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    .line 531
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenDecorWindows:Landroid/util/ArraySet;

    .line 532
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 533
    const/4 v2, 0x4

    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeightForRotation:[I

    .line 534
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 535
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    .line 536
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    .line 537
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    .line 539
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    .line 540
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    .line 541
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationInCarMode:[I

    .line 542
    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationInCarMode:[I

    .line 544
    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    .line 548
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    .line 553
    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$1;

    invoke-direct {v3, p0}, Lcom/android/server/policy/PhoneWindowManager$1;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawCallback:Ljava/lang/Runnable;

    .line 560
    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$2;

    invoke-direct {v3, p0}, Lcom/android/server/policy/PhoneWindowManager$2;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnCallback:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    .line 581
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 582
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodTargetWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 600
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavBarVirtualKeyHapticFeedbackEnabled:Z

    .line 608
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    .line 613
    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    .line 614
    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    .line 623
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    .line 639
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceDefaultOrientation:Z

    .line 641
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    .line 642
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    .line 645
    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowAllRotations:I

    .line 666
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    .line 667
    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    .line 668
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    .line 669
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTranslucentDecorEnabled:Z

    .line 677
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationMode:I

    .line 693
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    .line 695
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    .line 698
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNonDockedStackBounds:Landroid/graphics/Rect;

    .line 699
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockedStackBounds:Landroid/graphics/Rect;

    .line 700
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastNonDockedStackBounds:Landroid/graphics/Rect;

    .line 701
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastDockedStackBounds:Landroid/graphics/Rect;

    .line 705
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    .line 709
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    .line 731
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavBarOpacityMode:I

    .line 790
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    .line 791
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    .line 792
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    .line 793
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    .line 833
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    .line 860
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    .line 863
    new-instance v2, Lcom/android/server/policy/LogDecelerateInterpolator;

    const/16 v4, 0x64

    invoke-direct {v2, v4, v1}, Lcom/android/server/policy/LogDecelerateInterpolator;-><init>(II)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLogDecelerateInterpolator:Lcom/android/server/policy/LogDecelerateInterpolator;

    .line 867
    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$3;

    invoke-direct {v2, p0}, Lcom/android/server/policy/PhoneWindowManager$3;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

    .line 879
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v1}, Landroid/util/MutableBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTmpBoolean:Landroid/util/MutableBoolean;

    .line 917
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWifiDisplayConnected:Z

    .line 918
    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWifiDisplayCustomRotation:I

    .line 1035
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$4;

    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$4;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    .line 1160
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$5;

    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$5;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

    .line 1168
    new-instance v1, Lcom/android/server/policy/StatusBarController;

    invoke-direct {v1}, Lcom/android/server/policy/StatusBarController;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    .line 1170
    new-instance v1, Lcom/android/server/policy/BarController;

    const-string v3, "NavigationBar"

    const/high16 v4, 0x8000000

    const/high16 v5, 0x20000000

    const/high16 v6, -0x80000000

    const/4 v7, 0x2

    const/high16 v8, 0x8000000

    const v9, 0x8000

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/android/server/policy/BarController;-><init>(Ljava/lang/String;IIIIII)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    .line 1178
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$6;

    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$6;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavBarVisibilityListener:Lcom/android/server/policy/BarController$OnBarVisibilityChangedListener;

    .line 1186
    new-instance v1, Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$qkEs_boDTAbqA6wKqcLwnsgoklc;

    invoke-direct {v1, p0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$qkEs_boDTAbqA6wKqcLwnsgoklc;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAcquireSleepTokenRunnable:Ljava/lang/Runnable;

    .line 1194
    new-instance v1, Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$SMVPfeuVGHeByGLchxVc-pxEEMw;

    invoke-direct {v1, p0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$SMVPfeuVGHeByGLchxVc-pxEEMw;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mReleaseSleepTokenRunnable:Ljava/lang/Runnable;

    .line 1876
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$7;

    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$7;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    .line 1900
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-direct {v1, p0, v0}, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;-><init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$1;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    .line 2061
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$8;

    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$8;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 4688
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$14;

    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$14;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mClearHideNavigationFlag:Ljava/lang/Runnable;

    .line 6976
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$15;

    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$15;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    .line 6997
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$16;

    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$16;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamReceiver:Landroid/content/BroadcastReceiver;

    .line 7012
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$17;

    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$17;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    .line 7033
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$18;

    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$18;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHiddenNavPanic:Ljava/lang/Runnable;

    .line 7073
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$19;

    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$19;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWifiDisplayReceiver:Landroid/content/BroadcastReceiver;

    .line 8003
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    .line 8127
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 317
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->enablePointerLocation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 317
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->disablePointerLocation()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 317
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->powerLongPress()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 317
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->powerVeryLongPress()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/policy/PhoneWindowManager;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "x1"    # Z

    .line 317
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->updateDreamingSleepToken(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "x1"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 317
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->requestTransientBars(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 317
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->showPictureInPictureMenuInternal()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 317
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->backLongPress()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "x1"    # Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    .line 317
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->disposeInputConsumer(Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 317
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->accessibilityShortcutActivated()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 317
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->requestFullBugreport()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/internal/accessibility/AccessibilityShortcutController;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 317
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/policy/PhoneWindowManager;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "x1"    # Z

    .line 317
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->showRecentApps(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/policy/PhoneWindowManager;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "x1"    # I

    .line 317
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBar(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 317
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->launchAllAppsAction()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 317
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->handleRingerChordGesture()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/policy/PhoneWindowManager;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "x1"    # I

    .line 317
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->processFunctionKeyOnGamePad(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/policy/PhoneWindowManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 317
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldEnableWakeGestureLp()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/policy/PhoneWindowManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 317
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromWakeGesture:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/policy/PhoneWindowManager;JZLjava/lang/String;)Z
    .registers 6
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z
    .param p4, "x3"    # Ljava/lang/String;

    .line 317
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/policy/PhoneWindowManager;IZ)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 317
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->sendProposedRotationChangeToStatusBarInternal(IZ)V

    return-void
.end method

.method static synthetic access$2802(Lcom/android/server/policy/PhoneWindowManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "x1"    # Z

    .line 317
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPersistentVrModeEnabled:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/internal/util/ScreenshotHelper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 317
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 317
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishKeyguardDrawn()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 317
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->handleShortPressOnHome()V

    return-void
.end method

.method static synthetic access$3400()Z
    .registers 1

    .line 317
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->SCROLL_BOOST_SS_ENABLE:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/policy/PhoneWindowManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 317
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsPerfBoostFlingAcquired:Z

    return v0
.end method

.method static synthetic access$3502(Lcom/android/server/policy/PhoneWindowManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "x1"    # Z

    .line 317
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsPerfBoostFlingAcquired:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/android/server/policy/PhoneWindowManager;IJ)I
    .registers 5
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .line 317
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->handleStartTransitionForKeyguardLw(IJ)I

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 317
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mClearHideNavigationFlag:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/policy/PhoneWindowManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 317
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    move-result v0

    return v0
.end method

.method static synthetic access$3902(Lcom/android/server/policy/PhoneWindowManager;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "x1"    # J

    .line 317
    iput-wide p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingPanicGestureUptime:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 317
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishWindowsDrawn()V

    return-void
.end method

.method static synthetic access$4000(I)Z
    .registers 2
    .param p0, "x0"    # I

    .line 317
    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManager;->isNavBarEmpty(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/BarController;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 317
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/android/server/policy/PhoneWindowManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "x1"    # Z

    .line 317
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWifiDisplayConnected:Z

    return p1
.end method

.method static synthetic access$4302(Lcom/android/server/policy/PhoneWindowManager;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "x1"    # I

    .line 317
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWifiDisplayCustomRotation:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 317
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->handleHideBootMessage()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/policy/PhoneWindowManager;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 317
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 317
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistLongPressAction()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/policy/PhoneWindowManager;JZI)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z
    .param p4, "x3"    # I

    .line 317
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->powerPress(JZI)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 317
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishPowerKeyPress()V

    return-void
.end method

.method private accessibilityShortcutActivated()V
    .registers 2

    .line 1746
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-virtual {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->performAccessibilityShortcut()V

    .line 1747
    return-void
.end method

.method private addSplashscreenContent(Lcom/android/internal/policy/PhoneWindow;Landroid/content/Context;)V
    .registers 7
    .param p1, "win"    # Lcom/android/internal/policy/PhoneWindow;
    .param p2, "ctx"    # Landroid/content/Context;

    .line 3405
    sget-object v0, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {p2, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3406
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0x30

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 3407
    .local v1, "resId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3408
    if-nez v1, :cond_13

    .line 3409
    return-void

    .line 3411
    :cond_13
    invoke-virtual {p2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 3412
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_1a

    .line 3413
    return-void

    .line 3417
    :cond_1a
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 3418
    .local v3, "v":Landroid/view/View;
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3419
    invoke-virtual {p1, v3}, Lcom/android/internal/policy/PhoneWindow;->setContentView(Landroid/view/View;)V

    .line 3420
    return-void
.end method

.method private static allowAllRotationsToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "allowAll"    # I

    .line 9200
    packed-switch p0, :pswitch_data_14

    .line 9208
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9206
    :pswitch_8
    const-string/jumbo v0, "true"

    return-object v0

    .line 9204
    :pswitch_c
    const-string v0, "false"

    return-object v0

    .line 9202
    :pswitch_f
    const-string/jumbo v0, "unknown"

    return-object v0

    nop

    :pswitch_data_14
    .packed-switch -0x1
        :pswitch_f
        :pswitch_c
        :pswitch_8
    .end packed-switch
.end method

.method private applyKeyguardPolicyLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .registers 5
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "imeTarget"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 5972
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 5973
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->shouldBeHiddenByKeyguard(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 5974
    invoke-interface {p1, v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    goto :goto_14

    .line 5976
    :cond_11
    invoke-interface {p1, v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->showLw(Z)Z

    .line 5979
    :cond_14
    :goto_14
    return-void
.end method

.method private applyLidSwitchState()V
    .registers 5

    .line 8198
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsSleep:Z

    if-eqz v0, :cond_12

    .line 8199
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->goToSleep(JII)V

    goto :goto_1f

    .line 8201
    :cond_12
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    if-nez v0, :cond_1f

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsScreenLock:Z

    if-eqz v0, :cond_1f

    .line 8202
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->lockDeviceNow()V

    .line 8205
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8206
    :try_start_22
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    .line 8207
    monitor-exit v0

    .line 8208
    return-void

    .line 8207
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_27

    throw v1
.end method

.method private applyStableConstraints(IILandroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V
    .registers 6
    .param p1, "sysui"    # I
    .param p2, "fl"    # I
    .param p3, "r"    # Landroid/graphics/Rect;
    .param p4, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;

    .line 5304
    and-int/lit16 v0, p1, 0x100

    if-nez v0, :cond_5

    .line 5305
    return-void

    .line 5309
    :cond_5
    and-int/lit16 v0, p2, 0x400

    if-eqz v0, :cond_f

    .line 5310
    iget-object v0, p4, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    goto :goto_14

    .line 5312
    :cond_f
    iget-object v0, p4, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 5314
    :goto_14
    return-void
.end method

.method private areTranslucentBarsAllowed()Z
    .registers 2

    .line 8862
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTranslucentDecorEnabled:Z

    return v0
.end method

.method private static awakenDreams()V
    .registers 2

    .line 3739
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getDreamManager()Landroid/service/dreams/IDreamManager;

    move-result-object v0

    .line 3740
    .local v0, "dreamManager":Landroid/service/dreams/IDreamManager;
    if-eqz v0, :cond_b

    .line 3742
    :try_start_6
    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 3745
    goto :goto_b

    .line 3743
    :catch_a
    move-exception v1

    .line 3747
    :cond_b
    :goto_b
    return-void
.end method

.method private backLongPress()V
    .registers 4

    .line 1728
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    .line 1730
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    packed-switch v0, :pswitch_data_26

    goto :goto_25

    .line 1734
    :pswitch_9
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_f

    .line 1735
    const/4 v0, 0x0

    goto :goto_15

    .line 1736
    :cond_f
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    .line 1737
    .local v0, "keyguardActive":Z
    :goto_15
    if-nez v0, :cond_25

    .line 1738
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VOICE_ASSIST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1739
    .local v1, "intent":Landroid/content/Intent;
    sget-object v2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-direct {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .end local v0    # "keyguardActive":Z
    .end local v1    # "intent":Landroid/content/Intent;
    goto :goto_25

    .line 1732
    :pswitch_24
    nop

    .line 1743
    :cond_25
    :goto_25
    return-void

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_24
        :pswitch_9
    .end packed-switch
.end method

.method private bindKeyguard()V
    .registers 3

    .line 7922
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7923
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardBound:Z

    if-eqz v1, :cond_9

    .line 7924
    monitor-exit v0

    return-void

    .line 7926
    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardBound:Z

    .line 7927
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_15

    .line 7928
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->bindService(Landroid/content/Context;)V

    .line 7929
    return-void

    .line 7927
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v1
.end method

.method private calculateRelevantTaskInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .registers 10
    .param p1, "taskBounds"    # Landroid/graphics/Rect;
    .param p2, "inOutInsets"    # Landroid/graphics/Rect;
    .param p3, "displayWidth"    # I
    .param p4, "displayHeight"    # I

    .line 4888
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 4889
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 4890
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 4891
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    .line 4892
    .local v0, "leftInset":I
    sget-object v1, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    .line 4893
    .local v1, "topInset":I
    iget v2, p1, Landroid/graphics/Rect;->right:I

    sget-object v3, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    .line 4894
    .local v2, "rightInset":I
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    sget-object v4, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    .line 4895
    .local v3, "bottomInset":I
    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 4896
    return-void
.end method

.method private canHideNavigationBar()Z
    .registers 2

    .line 2603
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    return v0
.end method

.method private canReceiveInput(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .registers 7
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 5317
    nop

    .line 5318
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_f

    move v0, v2

    goto :goto_10

    :cond_f
    move v0, v1

    .line 5319
    .local v0, "notFocusable":Z
    :goto_10
    nop

    .line 5320
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x20000

    and-int/2addr v3, v4

    if-eqz v3, :cond_1e

    move v3, v2

    goto :goto_1f

    :cond_1e
    move v3, v1

    .line 5321
    .local v3, "altFocusableIm":Z
    :goto_1f
    xor-int v4, v0, v3

    .line 5322
    .local v4, "notFocusableForIm":Z
    if-nez v4, :cond_25

    move v1, v2

    nop

    :cond_25
    return v1
.end method

.method private cancelPendingAccessibilityShortcutAction()V
    .registers 3

    .line 1867
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1868
    return-void
.end method

.method private cancelPendingBackKeyAction()V
    .registers 3

    .line 1562
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    if-nez v0, :cond_e

    .line 1563
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    .line 1564
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1566
    :cond_e
    return-void
.end method

.method private cancelPendingPowerKeyAction()V
    .registers 3

    .line 1552
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v0, :cond_e

    .line 1553
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1554
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1556
    :cond_e
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasVeryLongPressOnPowerBehavior()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1557
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1559
    :cond_1b
    return-void
.end method

.method private cancelPendingRingerToggleChordAction()V
    .registers 3

    .line 1871
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1872
    return-void
.end method

.method private cancelPendingScreenshotChordAction()V
    .registers 3

    .line 1863
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1864
    return-void
.end method

.method private cancelPreloadRecentApps()V
    .registers 2

    .line 4577
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    if-eqz v0, :cond_10

    .line 4578
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 4579
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 4580
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_10

    .line 4581
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->cancelPreloadRecentApps()V

    .line 4584
    .end local v0    # "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    :cond_10
    return-void
.end method

.method static chooseNavigationColorWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;I)Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .registers 7
    .param p0, "opaque"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p1, "opaqueOrDimming"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "imeWindow"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p3, "navBarPosition"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 8594
    const/4 v0, 0x0

    if-eqz p2, :cond_17

    .line 8595
    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x4

    if-ne p3, v1, :cond_17

    .line 8597
    invoke-static {p2, v0}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v1

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_17

    const/4 v1, 0x1

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    .line 8600
    .local v1, "imeWindowCanNavColorWindow":Z
    :goto_18
    if-eqz p0, :cond_22

    if-ne p1, p0, :cond_22

    .line 8605
    if-eqz v1, :cond_20

    move-object v0, p2

    goto :goto_21

    :cond_20
    move-object v0, p0

    :goto_21
    return-object v0

    .line 8608
    :cond_22
    if-eqz p1, :cond_3a

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isDimming()Z

    move-result v2

    if-nez v2, :cond_2b

    goto :goto_3a

    .line 8613
    :cond_2b
    if-nez v1, :cond_2e

    .line 8615
    return-object p1

    .line 8620
    :cond_2e
    invoke-static {p1, v0}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    invoke-static {v0}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 8622
    return-object p2

    .line 8625
    :cond_39
    return-object p1

    .line 8610
    :cond_3a
    :goto_3a
    if-eqz v1, :cond_3e

    move-object v0, p2

    nop

    :cond_3e
    return-object v0
.end method

.method private clearClearableFlagsLw()V
    .registers 3

    .line 8832
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    or-int/lit8 v0, v0, 0x7

    .line 8833
    .local v0, "newVal":I
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    if-eq v0, v1, :cond_f

    .line 8834
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    .line 8835
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->reevaluateStatusBarVisibility()V

    .line 8837
    :cond_f
    return-void
.end method

.method private configureNavBarOpacity(IZZZ)I
    .registers 7
    .param p1, "visibility"    # I
    .param p2, "dockedStackVisible"    # Z
    .param p3, "freeformStackVisible"    # Z
    .param p4, "isDockedDividerResizing"    # Z

    .line 8802
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavBarOpacityMode:I

    if-nez v0, :cond_f

    .line 8803
    if-nez p2, :cond_a

    if-nez p3, :cond_a

    if-eqz p4, :cond_26

    .line 8804
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->setNavBarOpaqueFlag(I)I

    move-result p1

    goto :goto_26

    .line 8806
    :cond_f
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavBarOpacityMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    .line 8807
    if-eqz p4, :cond_1b

    .line 8808
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->setNavBarOpaqueFlag(I)I

    move-result p1

    goto :goto_26

    .line 8809
    :cond_1b
    if-eqz p3, :cond_22

    .line 8810
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->setNavBarTranslucentFlag(I)I

    move-result p1

    goto :goto_26

    .line 8812
    :cond_22
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->setNavBarOpaqueFlag(I)I

    move-result p1

    .line 8816
    :cond_26
    :goto_26
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->areTranslucentBarsAllowed()Z

    move-result v0

    if-nez v0, :cond_30

    .line 8817
    const v0, 0x7fffffff

    and-int/2addr p1, v0

    .line 8819
    :cond_30
    return p1
.end method

.method private disablePointerLocation()V
    .registers 3

    .line 2747
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-eqz v0, :cond_1e

    .line 2748
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 2749
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 2750
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 2751
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 2753
    .end local v0    # "wm":Landroid/view/WindowManager;
    :cond_1e
    return-void
.end method

.method private dismissKeyboardShortcutsMenu()V
    .registers 2

    .line 4616
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 4617
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_9

    .line 4618
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->dismissKeyboardShortcutsMenu()V

    .line 4620
    :cond_9
    return-void
.end method

.method private dispatchDirectAudioEvent(Landroid/view/KeyEvent;)V
    .registers 11
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 6867
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_7

    .line 6868
    return-void

    .line 6870
    :cond_7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 6871
    .local v0, "keyCode":I
    const/16 v7, 0x1005

    .line 6873
    .local v7, "flags":I
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    .line 6874
    .local v8, "pkgName":Ljava/lang/String;
    const/16 v1, 0xa4

    if-eq v0, v1, :cond_4b

    packed-switch v0, :pswitch_data_6a

    goto :goto_69

    .line 6885
    :pswitch_1b
    :try_start_1b
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v1

    const/4 v2, -0x1

    const/high16 v3, -0x80000000

    const-string v6, "WindowManager"

    move v4, v7

    move-object v5, v8

    invoke-interface/range {v1 .. v6}, Landroid/media/IAudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_29} :catch_2a

    .line 6889
    goto :goto_69

    .line 6887
    :catch_2a
    move-exception v1

    .line 6888
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "WindowManager"

    const-string v3, "Error dispatching volume down in dispatchTvAudioEvent."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6890
    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_69

    .line 6877
    :pswitch_33
    :try_start_33
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v1

    const/4 v2, 0x1

    const/high16 v3, -0x80000000

    const-string v6, "WindowManager"

    move v4, v7

    move-object v5, v8

    invoke-interface/range {v1 .. v6}, Landroid/media/IAudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_41} :catch_42

    .line 6881
    goto :goto_69

    .line 6879
    :catch_42
    move-exception v1

    .line 6880
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v2, "WindowManager"

    const-string v3, "Error dispatching volume up in dispatchTvAudioEvent."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6882
    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_69

    .line 6893
    :cond_4b
    :try_start_4b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_60

    .line 6894
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v1

    const/16 v2, 0x65

    const/high16 v3, -0x80000000

    const-string v6, "WindowManager"

    move v4, v7

    move-object v5, v8

    invoke-interface/range {v1 .. v6}, Landroid/media/IAudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_60} :catch_61

    .line 6900
    :cond_60
    goto :goto_69

    .line 6898
    :catch_61
    move-exception v1

    .line 6899
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v2, "WindowManager"

    const-string v3, "Error dispatching mute in dispatchTvAudioEvent."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6903
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_69
    return-void

    :pswitch_data_6a
    .packed-switch 0x18
        :pswitch_33
        :pswitch_1b
    .end packed-switch
.end method

.method private disposeInputConsumer(Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;)V
    .registers 2
    .param p1, "inputConsumer"    # Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    .line 1750
    if-eqz p1, :cond_5

    .line 1751
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;->dismiss()V

    .line 1753
    :cond_5
    return-void
.end method

.method private static doubleTapOnHomeBehaviorToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "behavior"    # I

    .line 9271
    packed-switch p0, :pswitch_data_e

    .line 9277
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9275
    :pswitch_8
    const-string v0, "DOUBLE_TAP_HOME_RECENT_SYSTEM_UI"

    return-object v0

    .line 9273
    :pswitch_b
    const-string v0, "DOUBLE_TAP_HOME_NOTHING"

    return-object v0

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private drawsStatusBarBackground(ILcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .registers 8
    .param p1, "vis"    # I
    .param p2, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 8781
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v0, p2}, Lcom/android/server/policy/StatusBarController;->isTransparentAllowed(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 8782
    return v1

    .line 8784
    :cond_a
    const/4 v0, 0x1

    if-nez p2, :cond_e

    .line 8785
    return v0

    .line 8788
    :cond_e
    nop

    .line 8789
    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1c

    move v2, v0

    goto :goto_1d

    :cond_1c
    move v2, v1

    .line 8790
    .local v2, "drawsSystemBars":Z
    :goto_1d
    nop

    .line 8791
    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v4, 0x20000

    and-int/2addr v3, v4

    if-eqz v3, :cond_2b

    move v3, v0

    goto :goto_2c

    :cond_2b
    move v3, v1

    .line 8793
    .local v3, "forceDrawsSystemBars":Z
    :goto_2c
    if-nez v3, :cond_38

    if-eqz v2, :cond_36

    const/high16 v4, 0x40000000    # 2.0f

    and-int/2addr v4, p1

    if-nez v4, :cond_36

    goto :goto_38

    :cond_36
    move v0, v1

    nop

    :cond_38
    :goto_38
    return v0
.end method

.method private enablePointerLocation()V
    .registers 5

    .line 2720
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-nez v0, :cond_5c

    .line 2721
    new-instance v0, Lcom/android/internal/widget/PointerLocationView;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/PointerLocationView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 2722
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PointerLocationView;->setPrintCoords(Z)V

    .line 2723
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 2726
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x7df

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2727
    const/16 v1, 0x518

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2731
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 2732
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 2733
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2734
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2737
    :cond_37
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 2738
    const-string v1, "PointerLocation"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 2739
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 2740
    .local v1, "wm":Landroid/view/WindowManager;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 2741
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2742
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v2, v3}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 2744
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "wm":Landroid/view/WindowManager;
    :cond_5c
    return-void
.end method

.method private static endcallBehaviorToString(I)Ljava/lang/String;
    .registers 5
    .param p0, "behavior"    # I

    .line 9213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9214
    .local v0, "sb":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_e

    .line 9215
    const-string v1, "home|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9217
    :cond_e
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_18

    .line 9218
    const-string/jumbo v1, "sleep|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9221
    :cond_18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 9222
    .local v1, "N":I
    if-nez v1, :cond_21

    .line 9223
    const-string v2, "<nothing>"

    return-object v2

    .line 9226
    :cond_21
    const/4 v2, 0x0

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private finishKeyguardDrawn()V
    .registers 5

    .line 7190
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7191
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v1, :cond_27

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    if-eqz v1, :cond_c

    goto :goto_27

    .line 7195
    :cond_c
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    .line 7196
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_19

    .line 7197
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 7199
    :cond_19
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    .line 7200
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_29

    .line 7204
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawCallback:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerInternal;->waitForAllWindowsDrawn(Ljava/lang/Runnable;J)V

    .line 7206
    return-void

    .line 7192
    :cond_27
    :goto_27
    :try_start_27
    monitor-exit v0

    return-void

    .line 7200
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method private finishPowerKeyPress()V
    .registers 2

    .line 1544
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    .line 1545
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    .line 1546
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1547
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1549
    :cond_12
    return-void
.end method

.method private finishScreenTurningOn()V
    .registers 6

    .line 7303
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7306
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 7307
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_9d

    .line 7310
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7311
    :try_start_a
    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishScreenTurningOn: mAwake="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mScreenOnEarly="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mScreenOnFully="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mKeyguardDrawComplete="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mWindowManagerDrawComplete="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7318
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    if-nez v0, :cond_98

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v0, :cond_98

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    if-eqz v0, :cond_98

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    if-eqz v0, :cond_5f

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    if-nez v0, :cond_5f

    goto :goto_98

    .line 7323
    :cond_5f
    const-string v0, "WindowManager"

    const-string v2, "Finished screen turning on..."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7324
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    .line 7327
    .local v0, "listener":Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    .line 7331
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    const/4 v4, 0x0

    if-nez v3, :cond_81

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    if-eqz v3, :cond_81

    .line 7332
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    .line 7333
    const/4 v2, 0x1

    .line 7334
    .local v2, "enableScreen":Z
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMessageNeedsHiding:Z

    if-eqz v3, :cond_82

    .line 7335
    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMessageNeedsHiding:Z

    .line 7336
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->hideBootMessages()V

    goto :goto_82

    .line 7339
    .end local v2    # "enableScreen":Z
    :cond_81
    move v2, v4

    .line 7341
    .restart local v2    # "enableScreen":Z
    :cond_82
    :goto_82
    monitor-exit v1
    :try_end_83
    .catchall {:try_start_a .. :try_end_83} :catchall_9a

    .line 7343
    if-eqz v0, :cond_8e

    .line 7346
    iget-wide v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnDelay:J

    invoke-interface {v0, v3, v4}, Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;->onScreenOn(J)V

    .line 7347
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnDelay:J

    .line 7351
    :cond_8e
    if-eqz v2, :cond_97

    .line 7353
    :try_start_90
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->enableScreenIfNeeded()V
    :try_end_95
    .catch Landroid/os/RemoteException; {:try_start_90 .. :try_end_95} :catch_96

    .line 7355
    goto :goto_97

    .line 7354
    :catch_96
    move-exception v1

    .line 7357
    :cond_97
    :goto_97
    return-void

    .line 7320
    .end local v0    # "listener":Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;
    .end local v2    # "enableScreen":Z
    :cond_98
    :goto_98
    :try_start_98
    monitor-exit v1

    return-void

    .line 7341
    :catchall_9a
    move-exception v0

    monitor-exit v1
    :try_end_9c
    .catchall {:try_start_98 .. :try_end_9c} :catchall_9a

    throw v0

    .line 7307
    :catchall_9d
    move-exception v1

    :try_start_9e
    monitor-exit v0
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_9d

    throw v1
.end method

.method private finishWindowsDrawn()V
    .registers 3

    .line 7291
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7292
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v1, :cond_14

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    if-eqz v1, :cond_c

    goto :goto_14

    .line 7296
    :cond_c
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    .line 7297
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_16

    .line 7299
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishScreenTurningOn()V

    .line 7300
    return-void

    .line 7293
    :cond_14
    :goto_14
    :try_start_14
    monitor-exit v0

    return-void

    .line 7297
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_16

    throw v1
.end method

.method private getAccessibilityShortcutTimeout()J
    .registers 6

    .line 1841
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 1843
    .local v0, "config":Landroid/view/ViewConfiguration;
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1842
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_shortcut_dialog_shown"

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_1c

    .line 1844
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getAccessibilityShortcutKeyTimeout()J

    move-result-wide v1

    goto :goto_20

    .line 1845
    :cond_1c
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getAccessibilityShortcutKeyTimeoutAfterConfirmation()J

    move-result-wide v1

    .line 1842
    :goto_20
    return-wide v1
.end method

.method static getAudioService()Landroid/media/IAudioService;
    .registers 3

    .line 3759
    const-string v0, "audio"

    .line 3760
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3759
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 3761
    .local v0, "audioService":Landroid/media/IAudioService;
    if-nez v0, :cond_13

    .line 3762
    const-string v1, "WindowManager"

    const-string v2, "Unable to find IAudioService interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3764
    :cond_13
    return-object v0
.end method

.method private getDisplayContext(Landroid/content/Context;I)Landroid/content/Context;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "displayId"    # I

    .line 3424
    if-nez p2, :cond_3

    .line 3426
    return-object p1

    .line 3429
    :cond_3
    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 3430
    .local v0, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v0, p2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    .line 3431
    .local v1, "targetDisplay":Landroid/view/Display;
    if-nez v1, :cond_13

    .line 3434
    const/4 v2, 0x0

    return-object v2

    .line 3437
    :cond_13
    invoke-virtual {p1, v1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v2

    return-object v2
.end method

.method static getDreamManager()Landroid/service/dreams/IDreamManager;
    .registers 1

    .line 3750
    const-string v0, "dreams"

    .line 3751
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3750
    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    return-object v0
.end method

.method private getHdmiControl()Lcom/android/server/policy/PhoneWindowManager$HdmiControl;
    .registers 5

    .line 1967
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    if-nez v0, :cond_2c

    .line 1968
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.hdmi.cec"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    .line 1969
    return-object v1

    .line 1971
    :cond_14
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "hdmi_control"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiControlManager;

    .line 1973
    .local v0, "manager":Landroid/hardware/hdmi/HdmiControlManager;
    const/4 v2, 0x0

    .line 1974
    .local v2, "client":Landroid/hardware/hdmi/HdmiPlaybackClient;
    if-eqz v0, :cond_25

    .line 1975
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlManager;->getPlaybackClient()Landroid/hardware/hdmi/HdmiPlaybackClient;

    move-result-object v2

    .line 1977
    :cond_25
    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    invoke-direct {v3, v2, v1}, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;-><init>(Landroid/hardware/hdmi/HdmiPlaybackClient;Lcom/android/server/policy/PhoneWindowManager$1;)V

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    .line 1979
    .end local v0    # "manager":Landroid/hardware/hdmi/HdmiControlManager;
    .end local v2    # "client":Landroid/hardware/hdmi/HdmiPlaybackClient;
    :cond_2c
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    return-object v0
.end method

.method private getImpliedSysUiFlagsForLayout(Landroid/view/WindowManager$LayoutParams;)I
    .registers 6
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 2995
    const/4 v0, 0x0

    .line 2996
    .local v0, "impliedFlags":I
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_a

    .line 2997
    or-int/lit16 v0, v0, 0x200

    .line 2999
    :cond_a
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v3, 0x20000

    and-int/2addr v1, v3

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    .line 3001
    .local v1, "forceWindowDrawsStatusBarBackground":Z
    :goto_14
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v2, v3

    if-nez v2, :cond_24

    if-eqz v1, :cond_26

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_26

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v2, v3, :cond_26

    .line 3004
    :cond_24
    or-int/lit16 v0, v0, 0x400

    .line 3006
    :cond_26
    return v0
.end method

.method private getKeyguardDrawnTimeout()J
    .registers 4

    .line 7230
    const-class v0, Lcom/android/server/SystemServiceManager;

    .line 7231
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0}, Lcom/android/server/SystemServiceManager;->isBootCompleted()Z

    move-result v0

    .line 7233
    .local v0, "bootCompleted":Z
    if-eqz v0, :cond_11

    const-wide/16 v1, 0x3e8

    goto :goto_13

    :cond_11
    const-wide/16 v1, 0x1388

    :goto_13
    return-wide v1
.end method

.method static getLongIntArray(Landroid/content/res/Resources;I)[J
    .registers 3
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "resid"    # I

    .line 7918
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->convertToLongArray([I)[J

    move-result-object v0

    return-object v0
.end method

.method private getMaxMultiPressPowerCount()I
    .registers 2

    .line 1671
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    if-eqz v0, :cond_6

    .line 1672
    const/4 v0, 0x3

    return v0

    .line 1674
    :cond_6
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    if-eqz v0, :cond_c

    .line 1675
    const/4 v0, 0x2

    return v0

    .line 1677
    :cond_c
    const/4 v0, 0x1

    return v0
.end method

.method private getNavigationBarHeight(II)I
    .registers 4
    .param p1, "rotation"    # I
    .param p2, "uiMode"    # I

    .line 3146
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    aget v0, v0, p1

    return v0
.end method

.method private getNavigationBarWidth(II)I
    .registers 4
    .param p1, "rotation"    # I
    .param p2, "uiMode"    # I

    .line 3120
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    aget v0, v0, p1

    return v0
.end method

.method private getResolvedLongPressOnPowerBehavior()I
    .registers 2

    .line 1772
    invoke-static {}, Landroid/os/FactoryTest;->isLongPressOnPowerOffEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1773
    const/4 v0, 0x3

    return v0

    .line 1775
    :cond_8
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    return v0
.end method

.method private getRingerToggleChordDelay()J
    .registers 3

    .line 1859
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method private getScreenshotChordLongPressDelay()J
    .registers 4

    const-wide/16 v1, 0x0

    move-wide v0, v1

    return-wide v0
.end method

.method private getSearchManager()Landroid/app/SearchManager;
    .registers 3

    .line 4562
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    if-nez v0, :cond_11

    .line 4563
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    .line 4565
    :cond_11
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    return-object v0
.end method

.method private getVibrationEffect(I)Landroid/os/VibrationEffect;
    .registers 7
    .param p1, "effectId"    # I

    .line 8432
    const/16 v0, 0x2711

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq p1, v0, :cond_2c

    packed-switch p1, :pswitch_data_44

    const/4 v0, 0x2

    packed-switch p1, :pswitch_data_4c

    .line 8463
    return-object v2

    .line 8453
    :pswitch_f
    invoke-static {v1}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    .line 8442
    :pswitch_14
    invoke-static {v0, v3}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    .line 8456
    :pswitch_19
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCalendarDateVibePattern:[J

    .line 8457
    .local v0, "pattern":[J
    goto :goto_2f

    .line 8435
    .end local v0    # "pattern":[J
    :pswitch_1c
    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    .line 8448
    :pswitch_21
    invoke-static {v3}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    .line 8451
    :pswitch_26
    const/4 v0, 0x5

    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    .line 8459
    :cond_2c
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    .line 8460
    .restart local v0    # "pattern":[J
    nop

    .line 8463
    :goto_2f
    nop

    .line 8465
    array-length v4, v0

    if-nez v4, :cond_34

    .line 8467
    return-object v2

    .line 8468
    :cond_34
    array-length v2, v0

    const/4 v4, -0x1

    if-ne v2, v1, :cond_3f

    .line 8470
    aget-wide v1, v0, v3

    invoke-static {v1, v2, v4}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v1

    return-object v1

    .line 8473
    :cond_3f
    invoke-static {v0, v4}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v1

    return-object v1

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_26
        :pswitch_21
    .end packed-switch

    :pswitch_data_4c
    .packed-switch 0x3
        :pswitch_21
        :pswitch_1c
        :pswitch_19
        :pswitch_1c
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_21
        :pswitch_14
        :pswitch_26
        :pswitch_21
        :pswitch_21
        :pswitch_f
    .end packed-switch
.end method

.method private goToSleep(JII)V
    .registers 6
    .param p1, "eventTime"    # J
    .param p3, "reason"    # I
    .param p4, "flags"    # I

    .line 1620
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRequestedOrGoingToSleep:Z

    .line 1621
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 1622
    return-void
.end method

.method private handleDoubleTapOnHome()V
    .registers 3

    .line 2040
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 2041
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeConsumed:Z

    .line 2042
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps()V

    .line 2044
    :cond_a
    return-void
.end method

.method private handleFunctionKeyOnGamePad(Landroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 4364
    const/4 v0, 0x0

    .line 4365
    .local v0, "ret":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InputDevice;->getVendorId()I

    move-result v1

    const v2, 0xffe0

    if-ne v1, v2, :cond_34

    .line 4366
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x6b

    if-ne v1, v2, :cond_34

    .line 4367
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_33

    .line 4368
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x1f

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4369
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4370
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 4371
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4373
    .end local v1    # "msg":Landroid/os/Message;
    :cond_33
    const/4 v0, 0x1

    .line 4377
    :cond_34
    return v0
.end method

.method private handleHideBootMessage()V
    .registers 3

    .line 7360
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7361
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    if-nez v1, :cond_c

    .line 7362
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMessageNeedsHiding:Z

    .line 7363
    monitor-exit v0

    return-void

    .line 7365
    :cond_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_21

    .line 7367
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_20

    .line 7368
    const-string v0, "WindowManager"

    const-string v1, "handleHideBootMessage: dismissing"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7369
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 7370
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    .line 7372
    :cond_20
    return-void

    .line 7365
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1
.end method

.method private handleLongPressOnHome(I)V
    .registers 5
    .param p1, "deviceId"    # I

    .line 2005
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-nez v0, :cond_5

    .line 2006
    return-void

    .line 2008
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeConsumed:Z

    .line 2009
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v0}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z

    .line 2010
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    packed-switch v0, :pswitch_data_34

    .line 2018
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Undefined home long press behavior: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 2015
    :pswitch_2b
    invoke-direct {p0, v1, p1}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;I)V

    .line 2016
    goto :goto_33

    .line 2012
    :pswitch_2f
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->launchAllAppsAction()V

    .line 2013
    nop

    .line 2021
    :goto_33
    return-void

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_2b
    .end packed-switch
.end method

.method private handleRingerChordGesture()V
    .registers 4

    .line 1208
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    if-nez v0, :cond_5

    .line 1209
    return-void

    .line 1211
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getAudioManagerInternal()Landroid/media/AudioManagerInternal;

    .line 1212
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    const-string/jumbo v1, "volume_hush"

    invoke-virtual {v0, v1}, Landroid/media/AudioManagerInternal;->silenceRingerModeInternal(Ljava/lang/String;)V

    .line 1213
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hush_gesture_used"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1214
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0x5a0

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    .line 1215
    return-void
.end method

.method private handleShortPressOnHome()V
    .registers 4

    .line 1944
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getHdmiControl()Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    move-result-object v0

    .line 1945
    .local v0, "hdmiControl":Lcom/android/server/policy/PhoneWindowManager$HdmiControl;
    if-eqz v0, :cond_9

    .line 1946
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;->turnOnTv()V

    .line 1951
    :cond_9
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v1}, Landroid/service/dreams/DreamManagerInternal;->isDreaming()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1952
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/service/dreams/DreamManagerInternal;->stopDream(Z)V

    .line 1953
    return-void

    .line 1957
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey()V

    .line 1958
    return-void
.end method

.method private handleStartTransitionForKeyguardLw(IJ)I
    .registers 8
    .param p1, "transit"    # I
    .param p2, "duration"    # J

    .line 4486
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 4489
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    .line 4492
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->setKeyguardVisibilityState(ZZ)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4493
    const/4 v0, 0x5

    return v0

    .line 4496
    :cond_11
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 4498
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->startKeyguardExitAnimation(JJ)V

    .line 4500
    :cond_1e
    return v1
.end method

.method private hasLongPressOnBackBehavior()Z
    .registers 2

    .line 1787
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private hasLongPressOnPowerBehavior()Z
    .registers 2

    .line 1779
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getResolvedLongPressOnPowerBehavior()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private hasVeryLongPressOnPowerBehavior()Z
    .registers 2

    .line 1783
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private hideRecentApps(ZZ)V
    .registers 4
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHome"    # Z

    .line 4623
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 4624
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 4625
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_c

    .line 4626
    invoke-interface {v0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->hideRecentApps(ZZ)V

    .line 4628
    :cond_c
    return-void
.end method

.method private static incallBackBehaviorToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "behavior"    # I

    .line 9239
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_7

    .line 9240
    const-string v0, "hangup"

    return-object v0

    .line 9242
    :cond_7
    const-string v0, "<nothing>"

    return-object v0
.end method

.method private static incallPowerBehaviorToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "behavior"    # I

    .line 9231
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_7

    .line 9232
    const-string v0, "hangup"

    return-object v0

    .line 9234
    :cond_7
    const-string/jumbo v0, "sleep"

    return-object v0
.end method

.method private interceptAccessibilityGestureTv(IZ)Z
    .registers 7
    .param p1, "keyCode"    # I
    .param p2, "down"    # Z

    .line 4314
    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    .line 4315
    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvKey1Pressed:Z

    goto :goto_c

    .line 4316
    :cond_6
    const/16 v0, 0x14

    if-ne p1, v0, :cond_c

    .line 4317
    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvKey2Pressed:Z

    .line 4320
    :cond_c
    :goto_c
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvKey1Pressed:Z

    const/16 v1, 0x16

    if-eqz v0, :cond_30

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvKey2Pressed:Z

    if-eqz v0, :cond_30

    .line 4321
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvScheduled:Z

    if-nez v0, :cond_3c

    .line 4322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvScheduled:Z

    .line 4323
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 4324
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4325
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getAccessibilityShortcutTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4326
    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_3c

    .line 4327
    :cond_30
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvScheduled:Z

    if-eqz v0, :cond_3c

    .line 4328
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4329
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvScheduled:Z

    .line 4332
    :cond_3c
    :goto_3c
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvScheduled:Z

    return v0
.end method

.method private interceptAccessibilityShortcutChord()V
    .registers 7

    .line 1809
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->isAccessibilityShortcutAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_42

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    if-eqz v0, :cond_42

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    if-eqz v0, :cond_42

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    if-nez v0, :cond_42

    .line 1812
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1813
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTime:J

    const-wide/16 v4, 0x96

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_42

    iget-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_42

    .line 1816
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    .line 1817
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyConsumed:Z

    .line 1818
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1819
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getAccessibilityShortcutTimeout()J

    move-result-wide v4

    .line 1818
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1822
    .end local v0    # "now":J
    :cond_42
    return-void
.end method

.method private interceptBackKeyDown()V
    .registers 5

    .line 1341
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "key_back_down"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1343
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    .line 1345
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnBackBehavior()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1346
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1347
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1348
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1349
    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v2

    .line 1348
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1351
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2c
    return-void
.end method

.method private interceptBackKeyUp(Landroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 1356
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    .line 1359
    .local v0, "handled":Z
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingBackKeyAction()V

    .line 1361
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    if-eqz v1, :cond_2b

    .line 1362
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v1

    .line 1364
    .local v1, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v1, :cond_2b

    .line 1365
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1368
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->silenceRinger()V

    .line 1371
    const/4 v2, 0x0

    return v2

    .line 1372
    :cond_1a
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallBackBehavior:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2b

    .line 1374
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1377
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result v2

    return v2

    .line 1382
    .end local v1    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_2b
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAutofillManagerInternal:Landroid/view/autofill/AutofillManagerInternal;

    if-eqz v1, :cond_43

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_43

    .line 1383
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x17

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1386
    :cond_43
    return v0
.end method

.method private interceptBugreportGestureTv(IZ)Z
    .registers 7
    .param p1, "keyCode"    # I
    .param p2, "down"    # Z

    .line 4288
    const/16 v0, 0x17

    if-ne p1, v0, :cond_7

    .line 4289
    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvKey1Pressed:Z

    goto :goto_c

    .line 4290
    :cond_7
    const/4 v0, 0x4

    if-ne p1, v0, :cond_c

    .line 4291
    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvKey2Pressed:Z

    .line 4294
    :cond_c
    :goto_c
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvKey1Pressed:Z

    const/16 v1, 0x15

    if-eqz v0, :cond_2e

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvKey2Pressed:Z

    if-eqz v0, :cond_2e

    .line 4295
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvScheduled:Z

    if-nez v0, :cond_3a

    .line 4296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvScheduled:Z

    .line 4297
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 4298
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4299
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4300
    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_3a

    .line 4301
    :cond_2e
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvScheduled:Z

    if-eqz v0, :cond_3a

    .line 4302
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4303
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvScheduled:Z

    .line 4306
    :cond_3a
    :goto_3a
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvScheduled:Z

    return v0
.end method

.method private interceptFallback(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Z
    .registers 9
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "fallbackEvent"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .line 4449
    invoke-virtual {p0, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v0

    .line 4450
    .local v0, "actions":I
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_14

    .line 4451
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeDispatching(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v1

    .line 4453
    .local v1, "delayMillis":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_14

    .line 4454
    const/4 v3, 0x1

    return v3

    .line 4457
    .end local v1    # "delayMillis":J
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method private interceptPowerKeyDown(Landroid/view/KeyEvent;Z)V
    .registers 14
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "interactive"    # Z

    .line 1391
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1392
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1396
    :cond_d
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    if-eqz v0, :cond_18

    .line 1397
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1402
    :cond_18
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    .line 1403
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->isImmersiveMode(I)Z

    move-result v6

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    .line 1404
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->isNavBarEmpty(I)Z

    move-result v7

    .line 1402
    move v3, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/policy/ImmersiveModeConfirmation;->onPowerKeyDown(ZJZZ)Z

    move-result v0

    .line 1405
    .local v0, "panic":Z
    if-eqz v0, :cond_38

    .line 1406
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHiddenNavPanic:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1410
    :cond_38
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/policy/-$$Lambda$oXa0y3A-00RiQs6-KTPBgpkGtgw;

    invoke-direct {v3, v2}, Lcom/android/server/policy/-$$Lambda$oXa0y3A-00RiQs6-KTPBgpkGtgw;-><init>(Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1413
    const/4 v1, 0x1

    if-eqz p2, :cond_64

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    if-nez v2, :cond_64

    .line 1414
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x400

    if-nez v2, :cond_64

    .line 1415
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    .line 1416
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTime:J

    .line 1417
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptScreenshotChord()V

    .line 1418
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptRingerToggleChord()V

    .line 1422
    :cond_64
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v2

    .line 1423
    .local v2, "telecomManager":Landroid/telecom/TelecomManager;
    const/4 v3, 0x0

    .line 1424
    .local v3, "hungUp":Z
    if-eqz v2, :cond_87

    .line 1425
    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_75

    .line 1428
    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->silenceRinger()V

    goto :goto_87

    .line 1429
    :cond_75
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_87

    .line 1431
    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v4

    if-eqz v4, :cond_87

    if-eqz p2, :cond_87

    .line 1434
    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result v3

    .line 1438
    :cond_87
    :goto_87
    const-class v4, Lcom/android/server/GestureLauncherService;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/GestureLauncherService;

    .line 1440
    .local v4, "gestureService":Lcom/android/server/GestureLauncherService;
    const/4 v5, 0x0

    .line 1441
    .local v5, "gesturedServiceIntercepted":Z
    if-eqz v4, :cond_a4

    .line 1442
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mTmpBoolean:Landroid/util/MutableBoolean;

    invoke-virtual {v4, p1, p2, v6}, Lcom/android/server/GestureLauncherService;->interceptPowerKeyDown(Landroid/view/KeyEvent;ZLandroid/util/MutableBoolean;)Z

    move-result v5

    .line 1444
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mTmpBoolean:Landroid/util/MutableBoolean;

    iget-boolean v6, v6, Landroid/util/MutableBoolean;->value:Z

    if-eqz v6, :cond_a4

    iget-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mRequestedOrGoingToSleep:Z

    if-eqz v6, :cond_a4

    .line 1445
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraGestureTriggeredDuringGoingToSleep:Z

    .line 1450
    :cond_a4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(I)V

    .line 1454
    if-nez v3, :cond_ba

    iget-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    if-nez v6, :cond_ba

    iget-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    if-nez v6, :cond_ba

    if-eqz v5, :cond_b8

    goto :goto_ba

    :cond_b8
    const/4 v6, 0x0

    goto :goto_bb

    :cond_ba
    :goto_ba
    move v6, v1

    :goto_bb
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1456
    iget-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v6, :cond_158

    .line 1457
    const/16 v6, 0x1c

    const/16 v7, 0xe

    if-eqz p2, :cond_104

    .line 1460
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnPowerBehavior()Z

    move-result v8

    if-eqz v8, :cond_158

    .line 1461
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v8

    and-int/lit16 v8, v8, 0x80

    if-eqz v8, :cond_da

    .line 1462
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->powerLongPress()V

    goto/16 :goto_158

    .line 1464
    :cond_da
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 1465
    .local v7, "msg":Landroid/os/Message;
    invoke-virtual {v7, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1466
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 1469
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getPowerLongPressTimeOut()J

    move-result-wide v9

    .line 1466
    invoke-virtual {v8, v7, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1471
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasVeryLongPressOnPowerBehavior()Z

    move-result v8

    if-eqz v8, :cond_103

    .line 1472
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 1473
    .local v6, "longMsg":Landroid/os/Message;
    invoke-virtual {v6, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1474
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressTimeout:I

    int-to-long v8, v8

    invoke-virtual {v1, v6, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1476
    .end local v6    # "longMsg":Landroid/os/Message;
    .end local v7    # "msg":Landroid/os/Message;
    :cond_103
    goto :goto_158

    .line 1479
    :cond_104
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromPowerKey(J)V

    .line 1481
    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportLongPressPowerWhenNonInteractive:Z

    if-eqz v8, :cond_14d

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnPowerBehavior()Z

    move-result v8

    if-eqz v8, :cond_14d

    .line 1482
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v8

    and-int/lit16 v8, v8, 0x80

    if-eqz v8, :cond_121

    .line 1483
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->powerLongPress()V

    goto :goto_14a

    .line 1485
    :cond_121
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 1486
    .restart local v7    # "msg":Landroid/os/Message;
    invoke-virtual {v7, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1487
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 1490
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getPowerLongPressTimeOut()J

    move-result-wide v9

    .line 1487
    invoke-virtual {v8, v7, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1492
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasVeryLongPressOnPowerBehavior()Z

    move-result v8

    if-eqz v8, :cond_14a

    .line 1493
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 1494
    .restart local v6    # "longMsg":Landroid/os/Message;
    invoke-virtual {v6, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1495
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressTimeout:I

    int-to-long v9, v9

    invoke-virtual {v8, v6, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1499
    .end local v6    # "longMsg":Landroid/os/Message;
    .end local v7    # "msg":Landroid/os/Message;
    :cond_14a
    :goto_14a
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    goto :goto_158

    .line 1501
    :cond_14d
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getMaxMultiPressPowerCount()I

    move-result v6

    .line 1503
    .local v6, "maxCount":I
    if-gt v6, v1, :cond_156

    .line 1504
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    goto :goto_158

    .line 1506
    :cond_156
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    .line 1511
    .end local v6    # "maxCount":I
    :cond_158
    :goto_158
    return-void
.end method

.method private interceptPowerKeyUp(Landroid/view/KeyEvent;ZZ)V
    .registers 13
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "interactive"    # Z
    .param p3, "canceled"    # Z

    .line 1514
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p3, :cond_b

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    if-eqz v2, :cond_9

    goto :goto_b

    :cond_9
    move v2, v0

    goto :goto_c

    :cond_b
    :goto_b
    move v2, v1

    .line 1515
    .local v2, "handled":Z
    :goto_c
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    .line 1516
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1517
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 1519
    if-nez v2, :cond_48

    .line 1521
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    .line 1523
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getMaxMultiPressPowerCount()I

    move-result v0

    .line 1524
    .local v0, "maxCount":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    .line 1525
    .local v3, "eventTime":J
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    if-ge v5, v0, :cond_43

    .line 1528
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xd

    .line 1529
    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 1528
    invoke-virtual {v5, v6, p2, v7, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1530
    .local v5, "msg":Landroid/os/Message;
    invoke-virtual {v5, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1531
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getMultiPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1532
    return-void

    .line 1536
    .end local v5    # "msg":Landroid/os/Message;
    :cond_43
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    invoke-direct {p0, v3, v4, p2, v1}, Lcom/android/server/policy/PhoneWindowManager;->powerPress(JZI)V

    .line 1540
    .end local v0    # "maxCount":I
    .end local v3    # "eventTime":J
    :cond_48
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishPowerKeyPress()V

    .line 1541
    return-void
.end method

.method private interceptRingerToggleChord()V
    .registers 7

    .line 1825
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    if-eqz v0, :cond_37

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    if-eqz v0, :cond_37

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    if-eqz v0, :cond_37

    .line 1827
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1828
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTime:J

    const-wide/16 v4, 0x96

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_37

    iget-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_37

    .line 1831
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyConsumed:Z

    .line 1832
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 1834
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x1e

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1835
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getRingerToggleChordDelay()J

    move-result-wide v4

    .line 1834
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1838
    .end local v0    # "now":J
    :cond_37
    return-void
.end method

.method private interceptScreenshotChord()V
    .registers 7

    .line 1791
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordEnabled:Z

    if-eqz v0, :cond_36

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    if-eqz v0, :cond_36

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    if-eqz v0, :cond_36

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    if-nez v0, :cond_36

    .line 1794
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1795
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTime:J

    const-wide/16 v4, 0x96

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_36

    iget-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_36

    .line 1798
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    .line 1799
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 1800
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {v3, v2}, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->setScreenshotType(I)V

    .line 1803
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1806
    .end local v0    # "now":J
    :cond_36
    return-void
.end method

.method private interceptSystemNavigationKey(Landroid/view/KeyEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 6705
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    .line 6706
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 6707
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendFingerprintGesture(I)Z

    move-result v0

    if-nez v0, :cond_26

    .line 6708
    :cond_1b
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemNavigationKeysEnabled:Z

    if-eqz v0, :cond_26

    .line 6709
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(I)V

    .line 6713
    :cond_26
    return-void
.end method

.method private isAnyPortrait(I)Z
    .registers 3
    .param p1, "rotation"    # I

    .line 7875
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    if-eq p1, v0, :cond_b

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    if-ne p1, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method static isDockSideAllowed(IIIZ)Z
    .registers 7
    .param p0, "dockSide"    # I
    .param p1, "originalDockSide"    # I
    .param p2, "navBarPosition"    # I
    .param p3, "navigationBarCanMove"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 7541
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p0, v0, :cond_5

    .line 7542
    return v1

    .line 7545
    :cond_5
    const/4 v2, 0x0

    if-eqz p3, :cond_14

    .line 7547
    if-ne p0, v1, :cond_c

    if-eq p2, v0, :cond_11

    :cond_c
    const/4 v0, 0x3

    if-ne p0, v0, :cond_12

    if-ne p2, v1, :cond_12

    :cond_11
    goto :goto_13

    :cond_12
    move v1, v2

    :goto_13
    return v1

    .line 7552
    :cond_14
    if-ne p0, p1, :cond_17

    .line 7553
    return v1

    .line 7557
    :cond_17
    if-ne p0, v1, :cond_1c

    if-ne p1, v0, :cond_1c

    .line 7558
    return v1

    .line 7560
    :cond_1c
    return v2
.end method

.method private isHidden(I)Z
    .registers 5
    .param p1, "accessibilityMode"    # I

    .line 3018
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_14

    .line 3024
    return v1

    .line 3022
    :pswitch_6
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    if-ne v2, v0, :cond_b

    goto :goto_c

    :cond_b
    move v0, v1

    :goto_c
    return v0

    .line 3020
    :pswitch_d
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    if-nez v2, :cond_12

    goto :goto_13

    :cond_12
    move v0, v1

    :goto_13
    return v0

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_d
        :pswitch_6
    .end packed-switch
.end method

.method private isImmersiveMode(I)Z
    .registers 4
    .param p1, "vis"    # I

    .line 8840
    const/16 v0, 0x1800

    .line 8841
    .local v0, "flags":I
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_16

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_16

    and-int/lit16 v1, p1, 0x1800

    if-eqz v1, :cond_16

    .line 8844
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    .line 8841
    :goto_17
    return v1
.end method

.method private isLandscapeOrSeascape(I)Z
    .registers 3
    .param p1, "rotation"    # I

    .line 7871
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    if-eq p1, v0, :cond_b

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    if-ne p1, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method private isMiuiRom()Z
    .registers 3

    .line 6288
    const-string/jumbo v0, "ro.miui.ui.version.name"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string/jumbo v0, "ro.miui.ui.version.code"

    const-string v1, ""

    .line 6289
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v0, 0x1

    .line 6288
    :goto_22
    return v0
.end method

.method private static isNavBarEmpty(I)Z
    .registers 4
    .param p0, "systemUiFlags"    # I

    .line 8848
    const/high16 v0, 0x1600000

    .line 8852
    .local v0, "disableNavigationBar":I
    const/high16 v1, 0x1600000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method private isRoundWindow()Z
    .registers 2

    .line 2072
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v0

    return v0
.end method

.method private isTheaterModeEnabled()Z
    .registers 4

    .line 8397
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "theater_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    goto :goto_13

    :cond_12
    move v1, v2

    :goto_13
    return v1
.end method

.method private isTvUserSetupComplete()Z
    .registers 5

    .line 1938
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tv_user_setup_complete"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_13

    const/4 v2, 0x1

    nop

    :cond_13
    return v2
.end method

.method private static isValidGlobalKey(I)Z
    .registers 2
    .param p0, "keyCode"    # I

    .line 6754
    const/16 v0, 0x1a

    if-eq p0, v0, :cond_9

    packed-switch p0, :pswitch_data_c

    .line 6760
    const/4 v0, 0x1

    return v0

    .line 6758
    :cond_9
    :pswitch_9
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_c
    .packed-switch 0xdf
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method private isWakeKeyWhenScreenOff(I)Z
    .registers 5
    .param p1, "keyCode"    # I

    .line 6772
    const/16 v0, 0x1b

    const/4 v1, 0x0

    if-eq p1, v0, :cond_27

    const/16 v0, 0x4f

    if-eq p1, v0, :cond_27

    const/16 v0, 0x82

    if-eq p1, v0, :cond_27

    const/16 v0, 0xa4

    const/4 v2, 0x1

    if-eq p1, v0, :cond_20

    const/16 v0, 0xde

    if-eq p1, v0, :cond_27

    packed-switch p1, :pswitch_data_28

    packed-switch p1, :pswitch_data_30

    packed-switch p1, :pswitch_data_42

    .line 6795
    return v2

    .line 6777
    :cond_20
    :pswitch_20
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    if-eqz v0, :cond_26

    move v1, v2

    nop

    :cond_26
    return v1

    .line 6793
    :cond_27
    :pswitch_27
    return v1

    :pswitch_data_28
    .packed-switch 0x18
        :pswitch_20
        :pswitch_20
    .end packed-switch

    :pswitch_data_30
    .packed-switch 0x55
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
    .end packed-switch

    :pswitch_data_42
    .packed-switch 0x7e
        :pswitch_27
        :pswitch_27
    .end packed-switch
.end method

.method public static synthetic lambda$beginLayoutLw$2(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/InputChannel;Landroid/os/Looper;)Landroid/view/InputEventReceiver;
    .registers 4
    .param p1, "channel"    # Landroid/view/InputChannel;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 4955
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/InputChannel;Landroid/os/Looper;)V

    return-object v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 4

    .line 1187
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    if-eqz v0, :cond_5

    .line 1188
    return-void

    .line 1190
    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "WindowSleepToken"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->acquireSleepToken(Ljava/lang/String;I)Landroid/app/ActivityManagerInternal$SleepToken;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    .line 1192
    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 2

    .line 1195
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    if-nez v0, :cond_5

    .line 1196
    return-void

    .line 1198
    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal$SleepToken;->release()V

    .line 1199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    .line 1200
    return-void
.end method

.method private launchAllAppsAction()V
    .registers 6

    .line 2024
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ALL_APPS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2025
    .local v0, "intent":Landroid/content/Intent;
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz v1, :cond_2e

    .line 2026
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2027
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2028
    .local v2, "intentLauncher":Landroid/content/Intent;
    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2029
    const/high16 v3, 0x100000

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 2032
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_2e

    .line 2033
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2036
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "intentLauncher":Landroid/content/Intent;
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2e
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2037
    return-void
.end method

.method private launchAssistAction(Ljava/lang/String;I)V
    .registers 6
    .param p1, "hint"    # Ljava/lang/String;
    .param p2, "deviceId"    # I

    .line 4524
    const-string v0, "assist"

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 4525
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_c

    .line 4527
    return-void

    .line 4529
    :cond_c
    const/4 v0, 0x0

    .line 4530
    .local v0, "args":Landroid/os/Bundle;
    const/high16 v1, -0x80000000

    if-le p2, v1, :cond_1c

    .line 4531
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    .line 4532
    const-string v1, "android.intent.extra.ASSIST_INPUT_DEVICE_ID"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4534
    :cond_1c
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x4

    if-ne v1, v2, :cond_40

    .line 4537
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "search"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 4538
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, p1, v2, v0}, Landroid/app/SearchManager;->launchLegacyAssist(Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_57

    .line 4540
    :cond_40
    if-eqz p1, :cond_4e

    .line 4541
    if-nez v0, :cond_4a

    .line 4542
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    .line 4544
    :cond_4a
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4546
    :cond_4e
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v1

    .line 4547
    .local v1, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v1, :cond_57

    .line 4548
    invoke-interface {v1, v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->startAssist(Landroid/os/Bundle;)V

    .line 4551
    .end local v1    # "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    :cond_57
    :goto_57
    return-void
.end method

.method private launchAssistLongPressAction()V
    .registers 5

    .line 4504
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v0}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z

    .line 4505
    const-string v0, "assist"

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 4508
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEARCH_LONG_PRESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4509
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4513
    :try_start_16
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getSearchManager()Landroid/app/SearchManager;

    move-result-object v1

    .line 4514
    .local v1, "searchManager":Landroid/app/SearchManager;
    if-eqz v1, :cond_1f

    .line 4515
    invoke-virtual {v1}, Landroid/app/SearchManager;->stopSearch()V

    .line 4517
    :cond_1f
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_24
    .catch Landroid/content/ActivityNotFoundException; {:try_start_16 .. :try_end_24} :catch_25

    .line 4520
    .end local v1    # "searchManager":Landroid/app/SearchManager;
    goto :goto_2d

    .line 4518
    :catch_25
    move-exception v1

    .line 4519
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "WindowManager"

    const-string v3, "No activity to handle assist long press action."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4521
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :goto_2d
    return-void
.end method

.method private layoutNavigationBar(Lcom/android/server/wm/DisplayFrames;ILandroid/graphics/Rect;ZZZZ)Z
    .registers 34
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "uiMode"    # I
    .param p3, "dcf"    # Landroid/graphics/Rect;
    .param p4, "navVisible"    # Z
    .param p5, "navTranslucent"    # Z
    .param p6, "navAllowedHidden"    # Z
    .param p7, "statusBarExpandedNotKeyguard"    # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 5118
    move/from16 v3, p7

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v5, 0x0

    if-nez v4, :cond_1a

    .line 5120
    iget v4, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    iget v6, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    iget v7, v1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    invoke-direct {v0, v4, v6, v7}, Lcom/android/server/policy/PhoneWindowManager;->navigationBarPosition(III)I

    move-result v4

    iput v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    .line 5123
    return v5

    .line 5125
    :cond_1a
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v4}, Lcom/android/server/policy/BarController;->isTransientShowing()Z

    move-result v4

    .line 5129
    .local v4, "transientNavBarShowing":Z
    iget v6, v1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 5130
    .local v6, "rotation":I
    iget v7, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    .line 5131
    .local v7, "displayHeight":I
    iget v8, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    .line 5132
    .local v8, "displayWidth":I
    iget-object v9, v1, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    .line 5133
    .local v9, "dockFrame":Landroid/graphics/Rect;
    invoke-direct {v0, v8, v7, v6}, Lcom/android/server/policy/PhoneWindowManager;->navigationBarPosition(III)I

    move-result v10

    iput v10, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    .line 5135
    sget-object v10, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    .line 5136
    .local v10, "cutoutSafeUnrestricted":Landroid/graphics/Rect;
    iget-object v11, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v10, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5137
    iget-object v11, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {v10, v11}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 5139
    iget v11, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    const/4 v12, 0x4

    if-ne v11, v12, :cond_99

    .line 5141
    iget v11, v10, Landroid/graphics/Rect;->bottom:I

    .line 5142
    invoke-direct {v0, v6, v2}, Lcom/android/server/policy/PhoneWindowManager;->getNavigationBarHeight(II)I

    move-result v12

    sub-int/2addr v11, v12

    .line 5143
    .local v11, "top":I
    sget-object v12, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    move v13, v7

    const/4 v7, 0x0

    invoke-virtual {v12, v7, v11, v8, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 5144
    .end local v7    # "displayHeight":I
    .local v13, "displayHeight":I
    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    iput v11, v7, Landroid/graphics/Rect;->bottom:I

    iput v11, v5, Landroid/graphics/Rect;->bottom:I

    .line 5145
    if-eqz v4, :cond_62

    .line 5146
    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    goto :goto_7a

    .line 5147
    :cond_62
    const/4 v7, 0x1

    if-eqz p4, :cond_75

    .line 5148
    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v5, v7}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    .line 5149
    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    iput v11, v7, Landroid/graphics/Rect;->bottom:I

    iput v11, v5, Landroid/graphics/Rect;->bottom:I

    iput v11, v9, Landroid/graphics/Rect;->bottom:I

    goto :goto_7a

    .line 5153
    :cond_75
    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v5, v3}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    .line 5155
    :goto_7a
    if-eqz p4, :cond_94

    if-nez p5, :cond_94

    if-nez p6, :cond_94

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 5156
    invoke-interface {v5}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v5

    if-nez v5, :cond_94

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    .line 5157
    invoke-virtual {v5}, Lcom/android/server/policy/BarController;->wasRecentlyTranslucent()Z

    move-result v5

    if-nez v5, :cond_94

    .line 5160
    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    iput v11, v5, Landroid/graphics/Rect;->bottom:I

    .line 5162
    .end local v11    # "top":I
    :cond_94
    nop

    .line 5212
    move v14, v8

    move v12, v13

    goto/16 :goto_151

    .line 5162
    .end local v13    # "displayHeight":I
    .restart local v7    # "displayHeight":I
    :cond_99
    move v13, v7

    .end local v7    # "displayHeight":I
    .restart local v13    # "displayHeight":I
    iget v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    const/4 v7, 0x2

    if-ne v5, v7, :cond_f6

    .line 5164
    iget v5, v10, Landroid/graphics/Rect;->right:I

    .line 5165
    invoke-direct {v0, v6, v2}, Lcom/android/server/policy/PhoneWindowManager;->getNavigationBarWidth(II)I

    move-result v7

    sub-int/2addr v5, v7

    .line 5166
    .local v5, "left":I
    sget-object v7, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget-object v11, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    move v14, v8

    move v12, v13

    const/4 v8, 0x0

    invoke-virtual {v7, v5, v8, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 5167
    .end local v8    # "displayWidth":I
    .end local v13    # "displayHeight":I
    .local v12, "displayHeight":I
    .local v14, "displayWidth":I
    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v8, v1, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    iput v5, v8, Landroid/graphics/Rect;->right:I

    iput v5, v7, Landroid/graphics/Rect;->right:I

    .line 5168
    if-eqz v4, :cond_c3

    .line 5169
    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    goto :goto_db

    .line 5170
    :cond_c3
    const/4 v8, 0x1

    if-eqz p4, :cond_d6

    .line 5171
    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v7, v8}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    .line 5172
    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget-object v8, v1, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    iput v5, v8, Landroid/graphics/Rect;->right:I

    iput v5, v7, Landroid/graphics/Rect;->right:I

    iput v5, v9, Landroid/graphics/Rect;->right:I

    goto :goto_db

    .line 5176
    :cond_d6
    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v7, v3}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    .line 5178
    :goto_db
    if-eqz p4, :cond_f5

    if-nez p5, :cond_f5

    if-nez p6, :cond_f5

    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 5179
    invoke-interface {v7}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v7

    if-nez v7, :cond_f5

    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    .line 5180
    invoke-virtual {v7}, Lcom/android/server/policy/BarController;->wasRecentlyTranslucent()Z

    move-result v7

    if-nez v7, :cond_f5

    .line 5183
    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    iput v5, v7, Landroid/graphics/Rect;->right:I

    .line 5185
    .end local v5    # "left":I
    :cond_f5
    goto :goto_151

    .end local v12    # "displayHeight":I
    .end local v14    # "displayWidth":I
    .restart local v8    # "displayWidth":I
    .restart local v13    # "displayHeight":I
    :cond_f6
    move v14, v8

    move v12, v13

    .end local v8    # "displayWidth":I
    .end local v13    # "displayHeight":I
    .restart local v12    # "displayHeight":I
    .restart local v14    # "displayWidth":I
    iget v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    const/4 v7, 0x1

    if-ne v5, v7, :cond_151

    .line 5187
    iget v5, v10, Landroid/graphics/Rect;->left:I

    .line 5188
    invoke-direct {v0, v6, v2}, Lcom/android/server/policy/PhoneWindowManager;->getNavigationBarWidth(II)I

    move-result v7

    add-int/2addr v5, v7

    .line 5189
    .local v5, "right":I
    sget-object v7, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget-object v8, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v11, v5, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 5190
    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v8, v1, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    iput v5, v8, Landroid/graphics/Rect;->left:I

    iput v5, v7, Landroid/graphics/Rect;->left:I

    .line 5191
    if-eqz v4, :cond_11f

    .line 5192
    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    goto :goto_137

    .line 5193
    :cond_11f
    const/4 v8, 0x1

    if-eqz p4, :cond_132

    .line 5194
    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v7, v8}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    .line 5195
    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget-object v8, v1, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    iput v5, v8, Landroid/graphics/Rect;->left:I

    iput v5, v7, Landroid/graphics/Rect;->left:I

    iput v5, v9, Landroid/graphics/Rect;->left:I

    goto :goto_137

    .line 5199
    :cond_132
    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v7, v3}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    .line 5201
    :goto_137
    if-eqz p4, :cond_151

    if-nez p5, :cond_151

    if-nez p6, :cond_151

    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 5202
    invoke-interface {v7}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v7

    if-nez v7, :cond_151

    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    .line 5203
    invoke-virtual {v7}, Lcom/android/server/policy/BarController;->wasRecentlyTranslucent()Z

    move-result v7

    if-nez v7, :cond_151

    .line 5206
    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    iput v5, v7, Landroid/graphics/Rect;->left:I

    .line 5212
    .end local v5    # "right":I
    :cond_151
    :goto_151
    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    invoke-virtual {v5, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5213
    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {v5, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5214
    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v5, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5215
    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v5

    iput v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarLayer:I

    .line 5217
    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    sget-object v16, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v17, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v18, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    sget-object v20, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v22, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget-object v8, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget-object v11, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    const/16 v25, 0x0

    move-object v15, v5

    move-object/from16 v19, v7

    move-object/from16 v21, p3

    move-object/from16 v23, v8

    move-object/from16 v24, v11

    invoke-interface/range {v15 .. v25}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/utils/WmDisplayCutout;Z)V

    .line 5221
    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v7}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/server/policy/BarController;->setContentFrame(Landroid/graphics/Rect;)V

    .line 5224
    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v5}, Lcom/android/server/policy/BarController;->checkHiddenLw()Z

    move-result v5

    return v5
.end method

.method private layoutScreenDecorWindows(Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 24
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "pf"    # Landroid/graphics/Rect;
    .param p3, "df"    # Landroid/graphics/Rect;
    .param p4, "dcf"    # Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 4986
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 4987
    return-void

    .line 4990
    :cond_d
    iget v2, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayId:I

    .line 4991
    .local v2, "displayId":I
    iget-object v3, v1, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    .line 4992
    .local v3, "dockFrame":Landroid/graphics/Rect;
    iget v4, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    .line 4993
    .local v4, "displayHeight":I
    iget v5, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    .line 4995
    .local v5, "displayWidth":I
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .line 4995
    .local v6, "i":I
    :goto_1d
    if-ltz v6, :cond_135

    .line 4996
    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 4997
    .local v7, "w":Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    invoke-interface {v7}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getDisplayId()I

    move-result v8

    if-ne v8, v2, :cond_131

    invoke-interface {v7}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v8

    if-nez v8, :cond_35

    .line 4999
    goto/16 :goto_131

    .line 5002
    :cond_35
    iget-object v15, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    const/16 v18, 0x0

    move-object v8, v7

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p3

    move-object/from16 v12, p3

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v17, v15

    move-object/from16 v15, p3

    move-object/from16 v16, p3

    invoke-interface/range {v8 .. v18}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/utils/WmDisplayCutout;Z)V

    .line 5006
    invoke-interface {v7}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v8

    .line 5008
    .local v8, "frame":Landroid/graphics/Rect;
    iget v9, v8, Landroid/graphics/Rect;->left:I

    if-gtz v9, :cond_ac

    iget v9, v8, Landroid/graphics/Rect;->top:I

    if-gtz v9, :cond_ac

    .line 5010
    iget v9, v8, Landroid/graphics/Rect;->bottom:I

    if-lt v9, v4, :cond_6b

    .line 5012
    iget v9, v8, Landroid/graphics/Rect;->right:I

    iget v10, v3, Landroid/graphics/Rect;->left:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v3, Landroid/graphics/Rect;->left:I

    goto/16 :goto_131

    .line 5013
    :cond_6b
    iget v9, v8, Landroid/graphics/Rect;->right:I

    if-lt v9, v5, :cond_7b

    .line 5015
    iget v9, v8, Landroid/graphics/Rect;->bottom:I

    iget v10, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v3, Landroid/graphics/Rect;->top:I

    goto/16 :goto_131

    .line 5017
    :cond_7b
    const-string v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "layoutScreenDecorWindows: Ignoring decor win="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " not docked on left or top of display. frame="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " displayWidth="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " displayHeight="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_131

    .line 5021
    :cond_ac
    iget v9, v8, Landroid/graphics/Rect;->right:I

    if-lt v9, v5, :cond_102

    iget v9, v8, Landroid/graphics/Rect;->bottom:I

    if-lt v9, v4, :cond_102

    .line 5023
    iget v9, v8, Landroid/graphics/Rect;->top:I

    if-gtz v9, :cond_c3

    .line 5025
    iget v9, v8, Landroid/graphics/Rect;->left:I

    iget v10, v3, Landroid/graphics/Rect;->right:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, v3, Landroid/graphics/Rect;->right:I

    goto :goto_131

    .line 5026
    :cond_c3
    iget v9, v8, Landroid/graphics/Rect;->left:I

    if-gtz v9, :cond_d2

    .line 5028
    iget v9, v8, Landroid/graphics/Rect;->top:I

    iget v10, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, v3, Landroid/graphics/Rect;->bottom:I

    goto :goto_131

    .line 5030
    :cond_d2
    const-string v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "layoutScreenDecorWindows: Ignoring decor win="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " not docked on right or bottom of display. frame="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " displayWidth="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " displayHeight="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_131

    .line 5036
    :cond_102
    const-string v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "layoutScreenDecorWindows: Ignoring decor win="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " not docked on one of the sides of the display. frame="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " displayWidth="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " displayHeight="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4995
    .end local v7    # "w":Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .end local v8    # "frame":Landroid/graphics/Rect;
    :cond_131
    :goto_131
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_1d

    .line 5042
    .end local v6    # "i":I
    :cond_135
    iget-object v6, v1, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v6, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5043
    iget-object v6, v1, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    invoke-virtual {v6, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5044
    iget-object v6, v1, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {v6, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5045
    iget-object v6, v1, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    invoke-virtual {v6, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5046
    iget-object v6, v1, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v6, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5047
    iget-object v6, v1, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    invoke-virtual {v6, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5048
    return-void
.end method

.method private layoutStatusBar(Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)Z
    .registers 25
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "pf"    # Landroid/graphics/Rect;
    .param p3, "df"    # Landroid/graphics/Rect;
    .param p4, "of"    # Landroid/graphics/Rect;
    .param p5, "vf"    # Landroid/graphics/Rect;
    .param p6, "dcf"    # Landroid/graphics/Rect;
    .param p7, "sysui"    # I
    .param p8, "isKeyguardShowing"    # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 5053
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v3, 0x0

    if-nez v2, :cond_a

    .line 5054
    return v3

    .line 5057
    :cond_a
    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    move-object/from16 v4, p4

    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5058
    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    move-object/from16 v14, p3

    invoke-virtual {v14, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5059
    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    move-object/from16 v13, p2

    invoke-virtual {v13, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5060
    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    move-object/from16 v12, p5

    invoke-virtual {v12, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5062
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v2

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarLayer:I

    .line 5065
    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    const/4 v15, 0x0

    move-object v6, v13

    move-object v7, v14

    move-object v8, v12

    move-object v9, v12

    move-object v10, v12

    move-object/from16 v11, p6

    move-object/from16 v13, p5

    move-object v14, v2

    invoke-interface/range {v5 .. v15}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/utils/WmDisplayCutout;Z)V

    .line 5071
    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeightForRotation:[I

    iget v7, v1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    aget v6, v6, v7

    add-int/2addr v5, v6

    iput v5, v2, Landroid/graphics/Rect;->top:I

    .line 5074
    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v2, Landroid/graphics/Rect;->top:I

    .line 5078
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5079
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 5080
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iput v5, v2, Landroid/graphics/Rect;->top:I

    .line 5081
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iput v5, v2, Landroid/graphics/Rect;->bottom:I

    .line 5082
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    sget-object v5, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Lcom/android/server/policy/StatusBarController;->setContentFrame(Landroid/graphics/Rect;)V

    .line 5084
    const/high16 v2, 0x4000000

    and-int v2, p7, v2

    const/4 v5, 0x1

    if-eqz v2, :cond_95

    move v2, v5

    goto :goto_96

    :cond_95
    move v2, v3

    .line 5085
    .local v2, "statusBarTransient":Z
    :goto_96
    const v6, 0x40000008    # 2.000002f

    and-int v6, p7, v6

    if-eqz v6, :cond_9e

    goto :goto_9f

    :cond_9e
    move v5, v3

    :goto_9f
    move v3, v5

    .line 5087
    .local v3, "statusBarTranslucent":Z
    if-nez p8, :cond_a7

    .line 5088
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->areTranslucentBarsAllowed()Z

    move-result v6

    and-int/2addr v3, v6

    .line 5092
    :cond_a7
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v6

    if-eqz v6, :cond_e2

    if-nez v2, :cond_e2

    .line 5095
    iget-object v6, v1, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    .line 5096
    .local v6, "dockFrame":Landroid/graphics/Rect;
    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 5097
    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v7, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5098
    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {v7, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5099
    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    invoke-virtual {v7, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5105
    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v7}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v7

    if-nez v7, :cond_e2

    if-nez v3, :cond_e2

    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    .line 5106
    invoke-virtual {v7}, Lcom/android/server/policy/StatusBarController;->wasRecentlyTranslucent()Z

    move-result v7

    if-nez v7, :cond_e2

    .line 5109
    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    iget-object v8, v1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iput v8, v7, Landroid/graphics/Rect;->top:I

    .line 5112
    .end local v6    # "dockFrame":Landroid/graphics/Rect;
    :cond_e2
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v6}, Lcom/android/server/policy/StatusBarController;->checkHiddenLw()Z

    move-result v6

    return v6
.end method

.method private layoutWallpaper(Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "pf"    # Landroid/graphics/Rect;
    .param p3, "df"    # Landroid/graphics/Rect;
    .param p4, "of"    # Landroid/graphics/Rect;
    .param p5, "cf"    # Landroid/graphics/Rect;

    .line 5813
    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5814
    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5815
    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {p5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5816
    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {p4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5817
    return-void
.end method

.method private static longPressOnBackBehaviorToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "behavior"    # I

    .line 9247
    packed-switch p0, :pswitch_data_e

    .line 9253
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9251
    :pswitch_8
    const-string v0, "LONG_PRESS_BACK_GO_TO_VOICE_ASSIST"

    return-object v0

    .line 9249
    :pswitch_b
    const-string v0, "LONG_PRESS_BACK_NOTHING"

    return-object v0

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private static longPressOnHomeBehaviorToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "behavior"    # I

    .line 9258
    packed-switch p0, :pswitch_data_12

    .line 9266
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9264
    :pswitch_8
    const-string v0, "LONG_PRESS_HOME_ASSIST"

    return-object v0

    .line 9262
    :pswitch_b
    const-string v0, "LONG_PRESS_HOME_ALL_APPS"

    return-object v0

    .line 9260
    :pswitch_e
    const-string v0, "LONG_PRESS_HOME_NOTHING"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private static longPressOnPowerBehaviorToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "behavior"    # I

    .line 9301
    packed-switch p0, :pswitch_data_14

    .line 9311
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9309
    :pswitch_8
    const-string v0, "LONG_PRESS_POWER_SHUT_OFF_NO_CONFIRM"

    return-object v0

    .line 9307
    :pswitch_b
    const-string v0, "LONG_PRESS_POWER_SHUT_OFF"

    return-object v0

    .line 9305
    :pswitch_e
    const-string v0, "LONG_PRESS_POWER_GLOBAL_ACTIONS"

    return-object v0

    .line 9303
    :pswitch_11
    const-string v0, "LONG_PRESS_POWER_NOTHING"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private static multiPressOnPowerBehaviorToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "behavior"    # I

    .line 9327
    packed-switch p0, :pswitch_data_12

    .line 9335
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9333
    :pswitch_8
    const-string v0, "MULTI_PRESS_POWER_BRIGHTNESS_BOOST"

    return-object v0

    .line 9331
    :pswitch_b
    const-string v0, "MULTI_PRESS_POWER_THEATER_MODE"

    return-object v0

    .line 9329
    :pswitch_e
    const-string v0, "MULTI_PRESS_POWER_NOTHING"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private navigationBarPosition(III)I
    .registers 5
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I
    .param p3, "displayRotation"    # I

    .line 5229
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-eqz v0, :cond_d

    if-le p1, p2, :cond_d

    .line 5230
    const/4 v0, 0x3

    if-ne p3, v0, :cond_b

    .line 5231
    const/4 v0, 0x1

    return v0

    .line 5233
    :cond_b
    const/4 v0, 0x2

    return v0

    .line 5236
    :cond_d
    const/4 v0, 0x4

    return v0
.end method

.method private offsetInputMethodWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/wm/DisplayFrames;)V
    .registers 6
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;

    .line 5820
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5821
    .local v0, "top":I
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 5822
    iget-object v1, p2, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget-object v2, p2, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 5823
    iget-object v1, p2, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    iget-object v2, p2, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 5824
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 5825
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getGivenVisibleInsetsLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 5826
    iget-object v1, p2, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    iget-object v2, p2, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 5830
    return-void
.end method

.method private offsetVoiceInputWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/wm/DisplayFrames;)V
    .registers 6
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;

    .line 5833
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5834
    .local v0, "top":I
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 5835
    iget-object v1, p2, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    iget-object v2, p2, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 5836
    return-void
.end method

.method private powerLongPress()V
    .registers 6

    .line 1681
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getResolvedLongPressOnPowerBehavior()I

    move-result v0

    .line 1682
    .local v0, "behavior":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_58

    goto :goto_56

    .line 1698
    :pswitch_b
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1699
    invoke-virtual {p0, v1, v3, v3}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z

    .line 1700
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v1, :cond_15

    .line 1701
    goto :goto_1b

    .line 1702
    :cond_15
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v3

    :goto_1b
    move v1, v3

    .line 1703
    .local v1, "keyguardActive":Z
    if-nez v1, :cond_56

    .line 1704
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VOICE_ASSIST"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1705
    .local v2, "intent":Landroid/content/Intent;
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowStartActivityForLongPressOnPowerDuringSetup:Z

    if-eqz v3, :cond_31

    .line 1706
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_56

    .line 1708
    :cond_31
    sget-object v3, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-direct {p0, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .end local v1    # "keyguardActive":Z
    .end local v2    # "intent":Landroid/content/Intent;
    goto :goto_56

    .line 1692
    :pswitch_37
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1693
    invoke-virtual {p0, v1, v3, v3}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z

    .line 1694
    const-string v1, "globalactions"

    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 1695
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    const/4 v4, 0x2

    if-ne v0, v4, :cond_47

    goto :goto_48

    :cond_47
    move v2, v3

    :goto_48
    invoke-interface {v1, v2}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    .line 1696
    goto :goto_56

    .line 1686
    :pswitch_4c
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1687
    invoke-virtual {p0, v1, v3, v3}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z

    .line 1688
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActionsInternal()V

    .line 1689
    goto :goto_56

    .line 1684
    :pswitch_55
    nop

    .line 1713
    :cond_56
    :goto_56
    return-void

    nop

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_55
        :pswitch_4c
        :pswitch_37
        :pswitch_37
        :pswitch_b
    .end packed-switch
.end method

.method private powerMultiPressAction(JZI)V
    .registers 9
    .param p1, "eventTime"    # J
    .param p3, "interactive"    # Z
    .param p4, "behavior"    # I

    .line 1634
    packed-switch p4, :pswitch_data_66

    goto :goto_64

    .line 1661
    :pswitch_4
    const-string v0, "WindowManager"

    const-string v1, "Starting brightness boost."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    if-nez p3, :cond_10

    .line 1663
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromPowerKey(J)V

    .line 1665
    :cond_10
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager;->boostScreenBrightness(J)V

    goto :goto_64

    .line 1638
    :pswitch_16
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_24

    .line 1639
    const-string v0, "WindowManager"

    const-string v1, "Ignoring toggling theater mode - device not setup."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    goto :goto_64

    .line 1643
    :cond_24
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTheaterModeEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_44

    .line 1644
    const-string v0, "WindowManager"

    const-string v2, "Toggling theater mode off."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "theater_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1647
    if-nez p3, :cond_64

    .line 1648
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromPowerKey(J)V

    goto :goto_64

    .line 1651
    :cond_44
    const-string v0, "WindowManager"

    const-string v2, "Toggling theater mode on."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "theater_mode_on"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1655
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGoToSleepOnButtonPressTheaterMode:Z

    if-eqz v0, :cond_64

    if-eqz p3, :cond_64

    .line 1656
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->goToSleep(JII)V

    goto :goto_64

    .line 1636
    :pswitch_63
    nop

    .line 1668
    :cond_64
    :goto_64
    return-void

    nop

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_63
        :pswitch_16
        :pswitch_4
    .end packed-switch
.end method

.method private powerPress(JZI)V
    .registers 8
    .param p1, "eventTime"    # J
    .param p3, "interactive"    # Z
    .param p4, "count"    # I

    .line 1569
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    if-nez v0, :cond_10

    .line 1570
    const-string v0, "WindowManager"

    const-string v1, "Suppressed redundant power key press while already in the process of turning the screen on."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    return-void

    .line 1574
    :cond_10
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "powerPress: eventTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " interactive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " beganFromNonInteractive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mShortPressOnPowerBehavior="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    const/4 v0, 0x2

    if-ne p4, v0, :cond_54

    .line 1579
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/policy/PhoneWindowManager;->powerMultiPressAction(JZI)V

    goto :goto_a0

    .line 1580
    :cond_54
    const/4 v0, 0x3

    if-ne p4, v0, :cond_5d

    .line 1581
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/policy/PhoneWindowManager;->powerMultiPressAction(JZI)V

    goto :goto_a0

    .line 1582
    :cond_5d
    if-eqz p3, :cond_a0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    if-nez v0, :cond_a0

    .line 1583
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    const/4 v1, 0x1

    const/4 v2, 0x4

    packed-switch v0, :pswitch_data_a2

    goto :goto_a0

    .line 1602
    :pswitch_6b
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissImeOnBackKeyPressed:Z

    if-eqz v0, :cond_87

    .line 1603
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

    if-nez v0, :cond_7d

    .line 1604
    const-class v0, Landroid/view/inputmethod/InputMethodManagerInternal;

    .line 1605
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManagerInternal;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

    .line 1607
    :cond_7d
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

    if-eqz v0, :cond_a0

    .line 1608
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

    invoke-interface {v0}, Landroid/view/inputmethod/InputMethodManagerInternal;->hideCurrentInputMethod()V

    goto :goto_a0

    .line 1611
    :cond_87
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->shortPressPowerGoHome()V

    goto :goto_a0

    .line 1599
    :pswitch_8b
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->shortPressPowerGoHome()V

    .line 1600
    goto :goto_a0

    .line 1594
    :pswitch_8f
    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/server/policy/PhoneWindowManager;->goToSleep(JII)V

    .line 1596
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey()V

    .line 1597
    goto :goto_a0

    .line 1590
    :pswitch_96
    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/server/policy/PhoneWindowManager;->goToSleep(JII)V

    .line 1592
    goto :goto_a0

    .line 1587
    :pswitch_9a
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->goToSleep(JII)V

    .line 1588
    goto :goto_a0

    .line 1585
    :pswitch_9f
    nop

    .line 1617
    :cond_a0
    :goto_a0
    return-void

    nop

    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_9f
        :pswitch_9a
        :pswitch_96
        :pswitch_8f
        :pswitch_8b
        :pswitch_6b
    .end packed-switch
.end method

.method private powerVeryLongPress()V
    .registers 3

    .line 1716
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    packed-switch v0, :pswitch_data_14

    goto :goto_13

    .line 1720
    :pswitch_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1721
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z

    .line 1722
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActionsInternal()V

    goto :goto_13

    .line 1718
    :pswitch_12
    nop

    .line 1725
    :goto_13
    return-void

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_12
        :pswitch_6
    .end packed-switch
.end method

.method private preloadRecentApps()V
    .registers 2

    .line 4569
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 4570
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 4571
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_c

    .line 4572
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->preloadRecentApps()V

    .line 4574
    :cond_c
    return-void
.end method

.method private processFunctionKeyOnGamePad(I)V
    .registers 5
    .param p1, "keycode"    # I

    .line 4353
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.blackshark.gamecontroller.KEY_MAP_VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4354
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.blackshark.gamecontroller"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4355
    const-string/jumbo v1, "keycode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4356
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4357
    return-void
.end method

.method private readCameraLensCoverState()V
    .registers 2

    .line 3014
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getCameraLensCoverState()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    .line 3015
    return-void
.end method

.method private readConfigurationDependentBehaviors()V
    .registers 5

    .line 2476
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2478
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x10e0051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 2480
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    const/4 v2, 0x0

    if-ltz v1, :cond_19

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    const/4 v3, 0x2

    if-le v1, v3, :cond_1b

    .line 2482
    :cond_19
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 2485
    :cond_1b
    const v1, 0x10e003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 2487
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    const/4 v3, 0x1

    if-ltz v1, :cond_2d

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-le v1, v3, :cond_2f

    .line 2489
    :cond_2d
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 2492
    :cond_2f
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnWindowBehavior:I

    .line 2493
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.software.picture_in_picture"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 2494
    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnWindowBehavior:I

    .line 2497
    :cond_41
    const v1, 0x10e006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavBarOpacityMode:I

    .line 2499
    return-void
.end method

.method private readRotation(I)I
    .registers 4
    .param p1, "resID"    # I

    .line 2757
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_a} :catch_21

    .line 2758
    .local v0, "rotation":I
    if-eqz v0, :cond_1f

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_1d

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_1b

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_19

    .line 2770
    .end local v0    # "rotation":I
    goto :goto_22

    .line 2766
    .restart local v0    # "rotation":I
    :cond_19
    const/4 v1, 0x3

    return v1

    .line 2764
    :cond_1b
    const/4 v1, 0x2

    return v1

    .line 2762
    :cond_1d
    const/4 v1, 0x1

    return v1

    .line 2760
    :cond_1f
    const/4 v1, 0x0

    return v1

    .line 2768
    .end local v0    # "rotation":I
    :catch_21
    move-exception v0

    .line 2771
    :goto_22
    const/4 v0, -0x1

    return v0
.end method

.method private reportScreenStateToVrManager(Z)V
    .registers 3
    .param p1, "isScreenOn"    # Z

    .line 7284
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

    if-nez v0, :cond_5

    .line 7285
    return-void

    .line 7287
    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/vr/VrManagerInternal;->onScreenStateChanged(Z)V

    .line 7288
    return-void
.end method

.method private requestFullBugreport()V
    .registers 4

    .line 4336
    const-string v0, "1"

    const-string/jumbo v1, "ro.debuggable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 4337
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "development_settings_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2f

    .line 4340
    :cond_1f
    :try_start_1f
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 4341
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->requestBugReport(I)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_26} :catch_27

    .line 4344
    goto :goto_2f

    .line 4342
    :catch_27
    move-exception v0

    .line 4343
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WindowManager"

    const-string v2, "Error taking bugreport"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4346
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2f
    :goto_2f
    return-void
.end method

.method private requestTransientBars(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .registers 6
    .param p1, "swipeTarget"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 7050
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 7051
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v1

    if-nez v1, :cond_f

    .line 7053
    monitor-exit v0

    return-void

    .line 7055
    :cond_f
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v1}, Lcom/android/server/policy/StatusBarController;->checkShowTransientBarLw()Z

    move-result v1

    .line 7056
    .local v1, "sb":Z
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v2}, Lcom/android/server/policy/BarController;->checkShowTransientBarLw()Z

    move-result v2

    if-eqz v2, :cond_27

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    .line 7057
    invoke-static {v2}, Lcom/android/server/policy/PhoneWindowManager;->isNavBarEmpty(I)Z

    move-result v2

    if-nez v2, :cond_27

    const/4 v2, 0x1

    goto :goto_28

    :cond_27
    const/4 v2, 0x0

    .line 7058
    .local v2, "nb":Z
    :goto_28
    if-nez v1, :cond_2c

    if-eqz v2, :cond_4a

    .line 7060
    :cond_2c
    if-nez v2, :cond_34

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-ne p1, v3, :cond_34

    .line 7062
    monitor-exit v0

    return-void

    .line 7064
    :cond_34
    if-eqz v1, :cond_3b

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v3}, Lcom/android/server/policy/StatusBarController;->showTransient()V

    .line 7065
    :cond_3b
    if-eqz v2, :cond_42

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v3}, Lcom/android/server/policy/BarController;->showTransient()V

    .line 7066
    :cond_42
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    invoke-virtual {v3}, Lcom/android/server/policy/ImmersiveModeConfirmation;->confirmCurrentPrompt()V

    .line 7067
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    .line 7069
    .end local v1    # "sb":Z
    .end local v2    # "nb":Z
    :cond_4a
    monitor-exit v0

    .line 7070
    return-void

    .line 7069
    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_7 .. :try_end_4e} :catchall_4c

    throw v1
.end method

.method private selectDockedDividerAnimationLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;I)I
    .registers 13
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "transit"    # I

    .line 3598
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getDockedDividerInsetsLw()I

    move-result v0

    .line 3601
    .local v0, "insets":I
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    .line 3602
    .local v1, "frame":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_47

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    const/4 v6, 0x4

    if-ne v2, v6, :cond_23

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 3604
    invoke-interface {v6}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    if-ge v2, v6, :cond_45

    :cond_23
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    if-ne v2, v3, :cond_34

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 3606
    invoke-interface {v6}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    if-ge v2, v6, :cond_45

    :cond_34
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    if-ne v2, v5, :cond_47

    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v0

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 3608
    invoke-interface {v6}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    if-gt v2, v6, :cond_47

    :cond_45
    move v2, v5

    goto :goto_48

    :cond_47
    move v2, v4

    .line 3609
    .local v2, "behindNavBar":Z
    :goto_48
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-le v6, v7, :cond_54

    move v6, v5

    goto :goto_55

    :cond_54
    move v6, v4

    .line 3610
    .local v6, "landscape":Z
    :goto_55
    if-eqz v6, :cond_69

    iget v7, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v0

    if-lez v7, :cond_67

    iget v7, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v0

    .line 3611
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->right:I

    if-lt v7, v8, :cond_69

    :cond_67
    move v7, v5

    goto :goto_6a

    :cond_69
    move v7, v4

    .line 3612
    .local v7, "offscreenLandscape":Z
    :goto_6a
    if-nez v6, :cond_7e

    iget v8, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v0

    if-lez v8, :cond_7c

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v0

    .line 3613
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    if-lt v8, v9, :cond_7e

    :cond_7c
    move v8, v5

    goto :goto_7f

    :cond_7e
    move v8, v4

    .line 3614
    .local v8, "offscreenPortrait":Z
    :goto_7f
    if-nez v7, :cond_86

    if-eqz v8, :cond_84

    goto :goto_86

    :cond_84
    move v9, v4

    goto :goto_87

    :cond_86
    :goto_86
    move v9, v5

    .line 3615
    .local v9, "offscreen":Z
    :goto_87
    if-nez v2, :cond_9c

    if-eqz v9, :cond_8c

    goto :goto_9c

    .line 3618
    :cond_8c
    if-eq p2, v5, :cond_99

    const/4 v5, 0x3

    if-ne p2, v5, :cond_92

    goto :goto_99

    .line 3620
    :cond_92
    if-ne p2, v3, :cond_98

    .line 3621
    const v3, 0x10a0001

    return v3

    .line 3623
    :cond_98
    return v4

    .line 3619
    :cond_99
    :goto_99
    const/high16 v3, 0x10a0000

    return v3

    .line 3616
    :cond_9c
    :goto_9c
    return v4
.end method

.method private sendProposedRotationChangeToStatusBarInternal(IZ)V
    .registers 4
    .param p1, "rotation"    # I
    .param p2, "isValid"    # Z

    .line 6742
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 6743
    .local v0, "statusBar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_9

    .line 6744
    invoke-interface {v0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onProposedRotationChanged(IZ)V

    .line 6746
    :cond_9
    return-void
.end method

.method private sendSystemKeyToStatusBar(I)V
    .registers 4
    .param p1, "keyCode"    # I

    .line 6719
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 6720
    .local v0, "statusBar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_b

    .line 6722
    :try_start_6
    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->handleSystemKey(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 6725
    goto :goto_b

    .line 6723
    :catch_a
    move-exception v1

    .line 6727
    :cond_b
    :goto_b
    return-void
.end method

.method private sendSystemKeyToStatusBarAsync(I)V
    .registers 5
    .param p1, "keyCode"    # I

    .line 6733
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 6734
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 6735
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 6736
    return-void
.end method

.method private setAttachedWindowFrames(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IILcom/android/server/policy/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V
    .registers 13
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "fl"    # I
    .param p3, "adjust"    # I
    .param p4, "attached"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p5, "insetDecors"    # Z
    .param p6, "pf"    # Landroid/graphics/Rect;
    .param p7, "df"    # Landroid/graphics/Rect;
    .param p8, "of"    # Landroid/graphics/Rect;
    .param p9, "cf"    # Landroid/graphics/Rect;
    .param p10, "vf"    # Landroid/graphics/Rect;
    .param p11, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;

    .line 5256
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isInputMethodTarget()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-interface {p4}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isInputMethodTarget()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 5264
    iget-object v0, p11, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {p10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5265
    iget-object v0, p11, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {p9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5266
    iget-object v0, p11, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {p8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5267
    iget-object v0, p11, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {p7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_78

    .line 5274
    :cond_21
    const/16 v0, 0x10

    if-eq p3, v0, :cond_37

    .line 5279
    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p2

    if-eqz v0, :cond_2f

    .line 5280
    invoke-interface {p4}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_33

    :cond_2f
    invoke-interface {p4}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOverscanFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    .line 5279
    :goto_33
    invoke-virtual {p9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_5b

    .line 5287
    :cond_37
    invoke-interface {p4}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5288
    invoke-interface {p4}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVoiceInteraction()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 5289
    iget-object v0, p11, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {p9, v0}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    goto :goto_5b

    .line 5290
    :cond_4a
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isInputMethodTarget()Z

    move-result v0

    if-nez v0, :cond_56

    invoke-interface {p4}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isInputMethodTarget()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 5291
    :cond_56
    iget-object v0, p11, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {p9, v0}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 5294
    :cond_5b
    :goto_5b
    if-eqz p5, :cond_62

    invoke-interface {p4}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_63

    :cond_62
    move-object v0, p9

    :goto_63
    invoke-virtual {p7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5295
    if-eqz p5, :cond_6d

    invoke-interface {p4}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOverscanFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_6e

    :cond_6d
    move-object v0, p9

    :goto_6e
    invoke-virtual {p8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5296
    invoke-interface {p4}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5300
    :goto_78
    and-int/lit16 v0, p2, 0x100

    if-nez v0, :cond_81

    invoke-interface {p4}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_82

    :cond_81
    move-object v0, p7

    :goto_82
    invoke-virtual {p6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5301
    return-void
.end method

.method private setKeyguardOccludedLw(ZZ)Z
    .registers 10
    .param p1, "isOccluded"    # Z
    .param p2, "force"    # Z

    .line 6136
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    .line 6137
    .local v0, "wasOccluded":Z
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v1

    .line 6138
    .local v1, "showing":Z
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, p1, :cond_11

    if-eqz p2, :cond_f

    goto :goto_11

    :cond_f
    move v4, v3

    goto :goto_12

    :cond_11
    :goto_11
    move v4, v2

    .line 6139
    .local v4, "changed":Z
    :goto_12
    if-nez p1, :cond_45

    if-eqz v4, :cond_45

    if-eqz v1, :cond_45

    .line 6140
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    .line 6141
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v5, v3, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(ZZ)V

    .line 6142
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_44

    .line 6143
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v5, v5, 0x400

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 6144
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->hasLockscreenWallpaper()Z

    move-result v3

    if-nez v3, :cond_44

    .line 6145
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x100000

    or-int/2addr v5, v6

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 6148
    :cond_44
    return v2

    .line 6149
    :cond_45
    if-eqz p1, :cond_71

    if-eqz v4, :cond_71

    if-eqz v1, :cond_71

    .line 6150
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    .line 6151
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v5, v2, v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(ZZ)V

    .line 6152
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_70

    .line 6153
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v5, v5, -0x401

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 6154
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v6, -0x100001

    and-int/2addr v5, v6

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 6156
    :cond_70
    return v2

    .line 6157
    :cond_71
    if-eqz v4, :cond_7b

    .line 6158
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    .line 6159
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2, p1, v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(ZZ)V

    .line 6160
    return v3

    .line 6162
    :cond_7b
    return v3
.end method

.method private setNavBarOpaqueFlag(I)I
    .registers 3
    .param p1, "visibility"    # I

    .line 8823
    const v0, 0x7fff7fff

    and-int/2addr v0, p1

    move p1, v0

    return v0
.end method

.method private setNavBarTranslucentFlag(I)I
    .registers 3
    .param p1, "visibility"    # I

    .line 8827
    const v0, -0x8001

    and-int/2addr p1, v0

    .line 8828
    const/high16 v0, -0x80000000

    or-int/2addr v0, p1

    move p1, v0

    return v0
.end method

.method private static shortPressOnPowerBehaviorToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "behavior"    # I

    .line 9282
    packed-switch p0, :pswitch_data_1a

    .line 9296
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9294
    :pswitch_8
    const-string v0, "SHORT_PRESS_POWER_CLOSE_IME_OR_GO_HOME"

    return-object v0

    .line 9292
    :pswitch_b
    const-string v0, "SHORT_PRESS_POWER_GO_HOME"

    return-object v0

    .line 9290
    :pswitch_e
    const-string v0, "SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP_AND_GO_HOME"

    return-object v0

    .line 9288
    :pswitch_11
    const-string v0, "SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP"

    return-object v0

    .line 9286
    :pswitch_14
    const-string v0, "SHORT_PRESS_POWER_GO_TO_SLEEP"

    return-object v0

    .line 9284
    :pswitch_17
    const-string v0, "SHORT_PRESS_POWER_NOTHING"

    return-object v0

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private static shortPressOnSleepBehaviorToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "behavior"    # I

    .line 9340
    packed-switch p0, :pswitch_data_e

    .line 9346
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9344
    :pswitch_8
    const-string v0, "SHORT_PRESS_SLEEP_GO_TO_SLEEP_AND_GO_HOME"

    return-object v0

    .line 9342
    :pswitch_b
    const-string v0, "SHORT_PRESS_SLEEP_GO_TO_SLEEP"

    return-object v0

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private static shortPressOnWindowBehaviorToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "behavior"    # I

    .line 9351
    packed-switch p0, :pswitch_data_e

    .line 9357
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9355
    :pswitch_8
    const-string v0, "SHORT_PRESS_WINDOW_PICTURE_IN_PICTURE"

    return-object v0

    .line 9353
    :pswitch_b
    const-string v0, "SHORT_PRESS_WINDOW_NOTHING"

    return-object v0

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private shortPressPowerGoHome()V
    .registers 3

    .line 1625
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(ZZ)V

    .line 1626
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1629
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onShortPowerPressedGoHome()V

    .line 1631
    :cond_10
    return-void
.end method

.method private shouldBeHiddenByKeyguard(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .registers 12
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "imeTarget"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 3220
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isHoldOn()Z

    move-result v0

    if-nez v0, :cond_e

    .line 3221
    return v1

    .line 3224
    :cond_e
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 3225
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    const/high16 v2, 0x80000

    const/4 v3, 0x1

    if-eqz p2, :cond_2e

    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 3226
    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v4, v2

    if-nez v4, :cond_2c

    .line 3227
    invoke-virtual {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v4

    if-nez v4, :cond_2e

    :cond_2c
    move v4, v3

    goto :goto_2f

    :cond_2e
    move v4, v1

    .line 3230
    .local v4, "showImeOverKeyguard":Z
    :goto_2f
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isInputMethodWindow()Z

    move-result v5

    if-nez v5, :cond_37

    if-ne p2, p0, :cond_3b

    :cond_37
    if-eqz v4, :cond_3b

    move v5, v3

    goto :goto_3c

    :cond_3b
    move v5, v1

    .line 3233
    .local v5, "allowWhenLocked":Z
    :goto_3c
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v6

    if-eqz v6, :cond_58

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardOccluded()Z

    move-result v6

    if-eqz v6, :cond_58

    .line 3235
    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v2, v6

    if-nez v2, :cond_56

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_54

    goto :goto_56

    :cond_54
    move v2, v1

    goto :goto_57

    :cond_56
    :goto_56
    move v2, v3

    :goto_57
    or-int/2addr v5, v2

    .line 3240
    :cond_58
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v2

    .line 3241
    .local v2, "keyguardLocked":Z
    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7f2

    if-ne v6, v7, :cond_6d

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const/4 v7, 0x3

    .line 3242
    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerInternal;->isStackVisible(I)Z

    move-result v6

    if-nez v6, :cond_6d

    move v6, v3

    goto :goto_6e

    :cond_6d
    move v6, v1

    .line 3248
    .local v6, "hideDockDivider":Z
    :goto_6e
    nop

    .line 3249
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isInputMethodWindow()Z

    move-result v7

    if-eqz v7, :cond_7f

    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mAodShowing:Z

    if-nez v7, :cond_7d

    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    if-nez v7, :cond_7f

    :cond_7d
    move v7, v3

    goto :goto_80

    :cond_7f
    move v7, v1

    .line 3250
    .local v7, "hideIme":Z
    :goto_80
    if-eqz v2, :cond_8a

    if-nez v5, :cond_8a

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getDisplayId()I

    move-result v8

    if-eqz v8, :cond_90

    :cond_8a
    if-nez v6, :cond_90

    if-eqz v7, :cond_8f

    goto :goto_90

    :cond_8f
    goto :goto_91

    :cond_90
    :goto_90
    move v1, v3

    :goto_91
    return v1
.end method

.method private shouldDispatchInputWhenNonInteractive(Landroid/view/KeyEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 6825
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    if-ne v0, v2, :cond_f

    goto :goto_11

    :cond_f
    move v0, v1

    goto :goto_12

    :cond_11
    :goto_11
    move v0, v2

    .line 6827
    .local v0, "displayOff":Z
    :goto_12
    if-eqz v0, :cond_29

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    if-nez v3, :cond_29

    .line 6830
    sget-boolean v3, Lcom/android/server/policy/PhoneWindowManager;->SUPPORT_FOD:Z

    if-eqz v3, :cond_28

    if-eqz p1, :cond_26

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x162

    if-ne v3, v4, :cond_28

    :cond_26
    move v1, v2

    nop

    :cond_28
    return v1

    .line 6836
    :cond_29
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v3

    if-eqz v3, :cond_36

    if-nez v0, :cond_36

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeingHangUp:Z

    if-nez v3, :cond_36

    .line 6837
    return v2

    .line 6842
    :cond_36
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    if-eqz v3, :cond_4c

    if-eqz p1, :cond_4c

    .line 6844
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_4b

    .line 6845
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x108

    if-ne v3, v4, :cond_4c

    .line 6846
    :cond_4b
    return v1

    .line 6851
    :cond_4c
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getDreamManager()Landroid/service/dreams/IDreamManager;

    move-result-object v3

    .line 6854
    .local v3, "dreamManager":Landroid/service/dreams/IDreamManager;
    if-eqz v3, :cond_62

    :try_start_52
    invoke-interface {v3}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v4
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_56} :catch_59

    if-eqz v4, :cond_62

    .line 6855
    return v2

    .line 6857
    :catch_59
    move-exception v2

    .line 6858
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "WindowManager"

    const-string v5, "RemoteException when checking if dreaming"

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_63

    .line 6859
    :cond_62
    nop

    .line 6863
    :goto_63
    return v1
.end method

.method private shouldEnableWakeGestureLp()Z
    .registers 2

    .line 2714
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsSleep:Z

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    if-eqz v0, :cond_1a

    :cond_10
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    .line 2716
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 2714
    :goto_1b
    return v0
.end method

.method private shouldUseOutsets(Landroid/view/WindowManager$LayoutParams;I)Z
    .registers 5
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "fl"    # I

    .line 4899
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7dd

    if-eq v0, v1, :cond_f

    const v0, 0x2000400

    and-int/2addr v0, p2

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

.method private showPictureInPictureMenu(Landroid/view/KeyEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 2048
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2049
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2050
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2051
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2052
    return-void
.end method

.method private showPictureInPictureMenuInternal()V
    .registers 2

    .line 2055
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 2056
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_9

    .line 2057
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showPictureInPictureMenu()V

    .line 2059
    :cond_9
    return-void
.end method

.method private showRecentApps(Z)V
    .registers 3
    .param p1, "triggeredFromAltTab"    # Z

    .line 4601
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 4602
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 4603
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_c

    .line 4604
    invoke-interface {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showRecentApps(Z)V

    .line 4606
    :cond_c
    return-void
.end method

.method private sleepPress()V
    .registers 3

    .line 1756
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 1757
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(ZZ)V

    .line 1759
    :cond_9
    return-void
.end method

.method private sleepRelease(J)V
    .registers 5
    .param p1, "eventTime"    # J

    .line 1762
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    packed-switch v0, :pswitch_data_16

    goto :goto_13

    .line 1765
    :pswitch_6
    const-string v0, "WindowManager"

    const-string/jumbo v1, "sleepRelease() calling goToSleep(GO_TO_SLEEP_REASON_SLEEP_BUTTON)"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->goToSleep(JII)V

    .line 1769
    :goto_13
    return-void

    nop

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "handle"    # Landroid/os/UserHandle;

    .line 4554
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4555
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_22

    .line 4557
    :cond_c
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not starting activity because user setup is in progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4559
    :goto_22
    return-void
.end method

.method private toggleKeyboardShortcutsMenu(I)V
    .registers 3
    .param p1, "deviceId"    # I

    .line 4609
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 4610
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_9

    .line 4611
    invoke-interface {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleKeyboardShortcutsMenu(I)V

    .line 4613
    :cond_9
    return-void
.end method

.method private toggleRecentApps()V
    .registers 2

    .line 4587
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 4588
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 4589
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_c

    .line 4590
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleRecentApps()V

    .line 4592
    :cond_c
    return-void
.end method

.method private topAppHidesStatusBar()Z
    .registers 4

    .line 6115
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 6116
    return v1

    .line 6118
    :cond_6
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 6119
    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 6118
    invoke-static {v0, v2}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    .line 6125
    .local v0, "fl":I
    and-int/lit16 v2, v0, 0x400

    if-nez v2, :cond_1d

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1c

    goto :goto_1d

    :cond_1c
    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v1, 0x1

    :goto_1e
    return v1
.end method

.method private updateDreamingSleepToken(Z)V
    .registers 5
    .param p1, "acquire"    # Z

    .line 8161
    if-eqz p1, :cond_12

    .line 8162
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    if-nez v0, :cond_1e

    .line 8163
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "Dream"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->acquireSleepToken(Ljava/lang/String;I)Landroid/app/ActivityManagerInternal$SleepToken;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    goto :goto_1e

    .line 8167
    :cond_12
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    if-eqz v0, :cond_1e

    .line 8168
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal$SleepToken;->release()V

    .line 8169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    .line 8172
    :cond_1e
    :goto_1e
    return-void
.end method

.method static updateLightNavigationBarLw(ILcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I
    .registers 6
    .param p0, "vis"    # I
    .param p1, "opaque"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "opaqueOrDimming"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p3, "imeWindow"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p4, "navColorWin"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 8633
    if-eqz p4, :cond_1c

    .line 8634
    if-eq p4, p3, :cond_12

    if-ne p4, p1, :cond_7

    goto :goto_12

    .line 8639
    :cond_7
    if-ne p4, p2, :cond_1c

    invoke-interface {p4}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isDimming()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 8641
    and-int/lit8 p0, p0, -0x11

    goto :goto_1c

    .line 8636
    :cond_12
    :goto_12
    and-int/lit8 p0, p0, -0x11

    .line 8637
    const/4 v0, 0x0

    invoke-static {p4, v0}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    or-int/2addr p0, v0

    .line 8644
    :cond_1c
    :goto_1c
    return p0
.end method

.method private updateLightStatusBarLw(ILcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I
    .registers 7
    .param p1, "vis"    # I
    .param p2, "opaque"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p3, "opaqueOrDimming"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 8572
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 8573
    .local v0, "onKeyguard":Z
    :goto_d
    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    goto :goto_13

    :cond_12
    move-object v1, p3

    .line 8574
    .local v1, "statusColorWin":Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    :goto_13
    if-eqz v1, :cond_24

    if-eq v1, p2, :cond_19

    if-eqz v0, :cond_24

    .line 8577
    :cond_19
    and-int/lit16 p1, p1, -0x2001

    .line 8578
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v2

    and-int/lit16 v2, v2, 0x2000

    or-int/2addr p1, v2

    goto :goto_2e

    .line 8580
    :cond_24
    if-eqz v1, :cond_2e

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isDimming()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 8582
    and-int/lit16 p1, p1, -0x2001

    .line 8584
    :cond_2e
    :goto_2e
    return p1
.end method

.method private updateLockScreenTimeout()V
    .registers 7

    .line 8142
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    monitor-enter v0

    .line 8143
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    if-eqz v1, :cond_1b

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 8144
    invoke-virtual {v1, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSecure(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    .line 8145
    .local v1, "enable":Z
    :goto_1c
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eq v2, v1, :cond_3d

    .line 8146
    if-eqz v1, :cond_34

    .line 8148
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8149
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3b

    .line 8152
    :cond_34
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8154
    :goto_3b
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    .line 8156
    .end local v1    # "enable":Z
    :cond_3d
    monitor-exit v0

    .line 8157
    return-void

    .line 8156
    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3f

    throw v1
.end method

.method private updateScreenOffSleepToken(Z)V
    .registers 5
    .param p1, "acquire"    # Z

    .line 8176
    if-eqz p1, :cond_12

    .line 8177
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    if-nez v0, :cond_1e

    .line 8178
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "ScreenOff"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->acquireSleepToken(Ljava/lang/String;I)Landroid/app/ActivityManagerInternal$SleepToken;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    goto :goto_1e

    .line 8182
    :cond_12
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    if-eqz v0, :cond_1e

    .line 8183
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal$SleepToken;->release()V

    .line 8184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    .line 8187
    :cond_1e
    :goto_1e
    return-void
.end method

.method private updateSystemBarsLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;II)I
    .registers 39
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "oldVis"    # I
    .param p3, "vis"    # I

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 8648
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 8649
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerInternal;->isStackVisible(I)Z

    move-result v2

    .line 8654
    .local v2, "dockedStackVisible":Z
    const/4 v3, 0x0

    .line 8655
    .local v3, "freeformStackVisible":Z
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerInternal;->isDockedDividerResizing()Z

    move-result v4

    .line 8660
    .local v4, "resizing":Z
    const/4 v6, 0x0

    if-nez v2, :cond_1a

    if-eqz v4, :cond_18

    goto :goto_1a

    :cond_18
    move v7, v6

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 v7, 0x1

    :goto_1b
    iput-boolean v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    .line 8661
    iget-boolean v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    if-eqz v7, :cond_27

    iget-boolean v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    if-nez v7, :cond_27

    const/4 v7, 0x1

    goto :goto_28

    :cond_27
    move v7, v6

    .line 8664
    .local v7, "forceOpaqueStatusBar":Z
    :goto_28
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v8

    if-eqz v8, :cond_35

    iget-boolean v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    if-nez v8, :cond_35

    .line 8665
    iget-object v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    goto :goto_37

    .line 8666
    :cond_35
    iget-object v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 8667
    .local v8, "fullscreenTransWin":Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    :goto_37
    iget-object v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    move/from16 v10, p3

    invoke-virtual {v9, v8, v10, v1}, Lcom/android/server/policy/StatusBarController;->applyTranslucentFlagLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;II)I

    move-result v9

    .line 8668
    .end local p3    # "vis":I
    .local v9, "vis":I
    iget-object v10, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v10, v8, v9, v1}, Lcom/android/server/policy/BarController;->applyTranslucentFlagLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;II)I

    move-result v9

    .line 8669
    iget-object v10, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    iget-object v11, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {v10, v11, v6, v6}, Lcom/android/server/policy/StatusBarController;->applyTranslucentFlagLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;II)I

    move-result v10

    .line 8672
    .local v10, "dockedVis":I
    iget-object v11, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 8673
    invoke-direct {v0, v9, v11}, Lcom/android/server/policy/PhoneWindowManager;->drawsStatusBarBackground(ILcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v11

    .line 8674
    .local v11, "fullscreenDrawsStatusBarBackground":Z
    iget-object v12, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 8675
    invoke-direct {v0, v10, v12}, Lcom/android/server/policy/PhoneWindowManager;->drawsStatusBarBackground(ILcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v12

    .line 8678
    .local v12, "dockedDrawsStatusBarBackground":Z
    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 8679
    .local v13, "type":I
    const/16 v14, 0x7d0

    if-ne v13, v14, :cond_65

    const/4 v14, 0x1

    goto :goto_66

    :cond_65
    move v14, v6

    .line 8680
    .local v14, "statusBarHasFocus":Z
    :goto_66
    if-eqz v14, :cond_7d

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v15

    if-nez v15, :cond_7d

    .line 8681
    const/16 v15, 0x3806

    .line 8686
    .local v15, "flags":I
    iget-boolean v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    if-eqz v5, :cond_77

    .line 8687
    const/high16 v5, -0x40000000    # -2.0f

    or-int/2addr v15, v5

    .line 8689
    :cond_77
    not-int v5, v15

    and-int/2addr v5, v9

    and-int v17, v1, v15

    or-int v9, v5, v17

    .line 8692
    .end local v15    # "flags":I
    :cond_7d
    if-eqz v11, :cond_88

    if-eqz v12, :cond_88

    .line 8693
    or-int/lit8 v5, v9, 0x8

    .line 8694
    .end local v9    # "vis":I
    .local v5, "vis":I
    const v9, -0x40000001    # -1.9999999f

    and-int/2addr v9, v5

    .end local v5    # "vis":I
    .restart local v9    # "vis":I
    goto :goto_98

    .line 8695
    :cond_88
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->areTranslucentBarsAllowed()Z

    move-result v5

    if-nez v5, :cond_92

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-ne v8, v5, :cond_94

    :cond_92
    if-eqz v7, :cond_98

    .line 8697
    :cond_94
    const v5, -0x40000009    # -1.9999989f

    and-int/2addr v9, v5

    .line 8700
    :cond_98
    :goto_98
    invoke-direct {v0, v9, v2, v6, v4}, Lcom/android/server/policy/PhoneWindowManager;->configureNavBarOpacity(IZZZ)I

    move-result v5

    .line 8703
    .end local v9    # "vis":I
    .restart local v5    # "vis":I
    and-int/lit16 v9, v5, 0x1000

    if-eqz v9, :cond_a2

    const/4 v9, 0x1

    goto :goto_a3

    :cond_a2
    move v9, v6

    .line 8705
    .local v9, "immersiveSticky":Z
    :goto_a3
    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v15, :cond_b4

    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v6, 0x0

    .line 8707
    invoke-static {v15, v6}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v6

    and-int/lit16 v6, v6, 0x400

    if-eqz v6, :cond_b4

    const/4 v6, 0x1

    goto :goto_b5

    :cond_b4
    const/4 v6, 0x0

    .line 8709
    .local v6, "hideStatusBarWM":Z
    :goto_b5
    and-int/lit8 v15, v5, 0x4

    if-eqz v15, :cond_bb

    const/4 v15, 0x1

    goto :goto_bc

    :cond_bb
    const/4 v15, 0x0

    .line 8711
    .local v15, "hideStatusBarSysui":Z
    :goto_bc
    and-int/lit8 v17, v5, 0x2

    if-eqz v17, :cond_c3

    const/16 v17, 0x1

    goto :goto_c5

    :cond_c3
    const/16 v17, 0x0

    .line 8714
    .local v17, "hideNavBarSysui":Z
    :goto_c5
    move/from16 v18, v2

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .end local v2    # "dockedStackVisible":Z
    .local v18, "dockedStackVisible":Z
    if-eqz v2, :cond_d9

    if-nez v14, :cond_d7

    iget-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    if-nez v2, :cond_d9

    if-nez v6, :cond_d7

    if-eqz v15, :cond_d9

    if-eqz v9, :cond_d9

    :cond_d7
    const/4 v2, 0x1

    goto :goto_da

    :cond_d9
    const/4 v2, 0x0

    .line 8718
    .local v2, "transientStatusBarAllowed":Z
    :goto_da
    move/from16 v19, v3

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .end local v3    # "freeformStackVisible":Z
    .local v19, "freeformStackVisible":Z
    if-eqz v3, :cond_ea

    iget-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    if-nez v3, :cond_ea

    if-eqz v17, :cond_ea

    if-eqz v9, :cond_ea

    const/4 v3, 0x1

    goto :goto_eb

    :cond_ea
    const/4 v3, 0x0

    .line 8721
    .local v3, "transientNavBarAllowed":Z
    :goto_eb
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    .line 8722
    .local v20, "now":J
    move/from16 v23, v6

    move/from16 v22, v7

    iget-wide v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingPanicGestureUptime:J

    .end local v6    # "hideStatusBarWM":Z
    .end local v7    # "forceOpaqueStatusBar":Z
    .local v22, "forceOpaqueStatusBar":Z
    .local v23, "hideStatusBarWM":Z
    move-object/from16 v24, v8

    move/from16 v25, v9

    const-wide/16 v8, 0x0

    .end local v8    # "fullscreenTransWin":Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .end local v9    # "immersiveSticky":Z
    .local v24, "fullscreenTransWin":Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .local v25, "immersiveSticky":Z
    cmp-long v6, v6, v8

    if-eqz v6, :cond_10b

    iget-wide v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingPanicGestureUptime:J

    sub-long v6, v20, v6

    const-wide/16 v26, 0x7530

    cmp-long v6, v6, v26

    if-gtz v6, :cond_10b

    const/4 v6, 0x1

    goto :goto_10c

    :cond_10b
    const/4 v6, 0x0

    .line 8724
    .local v6, "pendingPanic":Z
    :goto_10c
    if-eqz v6, :cond_12c

    if-eqz v17, :cond_12c

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v7

    if-nez v7, :cond_12c

    iget-boolean v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    if-eqz v7, :cond_12c

    .line 8727
    iput-wide v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingPanicGestureUptime:J

    .line 8728
    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v7}, Lcom/android/server/policy/StatusBarController;->showTransient()V

    .line 8729
    invoke-static {v5}, Lcom/android/server/policy/PhoneWindowManager;->isNavBarEmpty(I)Z

    move-result v7

    if-nez v7, :cond_12c

    .line 8730
    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v7}, Lcom/android/server/policy/BarController;->showTransient()V

    .line 8734
    :cond_12c
    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v7}, Lcom/android/server/policy/StatusBarController;->isTransientShowRequested()Z

    move-result v7

    if-eqz v7, :cond_13a

    if-nez v2, :cond_13a

    if-eqz v15, :cond_13a

    const/4 v7, 0x1

    goto :goto_13b

    :cond_13a
    const/4 v7, 0x0

    .line 8736
    .local v7, "denyTransientStatus":Z
    :goto_13b
    iget-object v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v8}, Lcom/android/server/policy/BarController;->isTransientShowRequested()Z

    move-result v8

    if-eqz v8, :cond_147

    if-nez v3, :cond_147

    const/4 v8, 0x1

    goto :goto_148

    :cond_147
    const/4 v8, 0x0

    .line 8738
    .local v8, "denyTransientNav":Z
    :goto_148
    if-nez v7, :cond_150

    if-nez v8, :cond_150

    iget-boolean v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    if-eqz v9, :cond_155

    .line 8740
    :cond_150
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->clearClearableFlagsLw()V

    .line 8741
    and-int/lit8 v5, v5, -0x8

    .line 8744
    :cond_155
    and-int/lit16 v9, v5, 0x800

    if-eqz v9, :cond_15b

    const/4 v9, 0x1

    goto :goto_15c

    :cond_15b
    const/4 v9, 0x0

    .line 8745
    .local v9, "immersive":Z
    :goto_15c
    move/from16 v28, v4

    and-int/lit16 v4, v5, 0x1000

    .end local v4    # "resizing":Z
    .local v28, "resizing":Z
    if-eqz v4, :cond_164

    const/4 v4, 0x1

    goto :goto_165

    :cond_164
    const/4 v4, 0x0

    .line 8746
    .end local v25    # "immersiveSticky":Z
    .local v4, "immersiveSticky":Z
    :goto_165
    if-nez v9, :cond_16d

    if-eqz v4, :cond_16a

    goto :goto_16d

    :cond_16a
    const/16 v16, 0x0

    goto :goto_16f

    :cond_16d
    :goto_16d
    const/16 v16, 0x1

    .line 8748
    .local v16, "navAllowedHidden":Z
    :goto_16f
    if-eqz v17, :cond_186

    if-nez v16, :cond_186

    .line 8749
    move/from16 v29, v4

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result v4

    .end local v4    # "immersiveSticky":Z
    .local v29, "immersiveSticky":Z
    move/from16 v30, v6

    const/16 v6, 0x7e6

    .end local v6    # "pendingPanic":Z
    .local v30, "pendingPanic":Z
    invoke-virtual {v0, v6}, Lcom/android/server/policy/PhoneWindowManager;->getWindowLayerFromTypeLw(I)I

    move-result v6

    if-le v4, v6, :cond_18a

    .line 8752
    and-int/lit8 v5, v5, -0x3

    goto :goto_18a

    .line 8755
    .end local v29    # "immersiveSticky":Z
    .end local v30    # "pendingPanic":Z
    .restart local v4    # "immersiveSticky":Z
    .restart local v6    # "pendingPanic":Z
    :cond_186
    move/from16 v29, v4

    move/from16 v30, v6

    .end local v4    # "immersiveSticky":Z
    .end local v6    # "pendingPanic":Z
    .restart local v29    # "immersiveSticky":Z
    .restart local v30    # "pendingPanic":Z
    :cond_18a
    :goto_18a
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v4, v2, v1, v5}, Lcom/android/server/policy/StatusBarController;->updateVisibilityLw(ZII)I

    move-result v4

    .line 8758
    .end local v5    # "vis":I
    .local v4, "vis":I
    invoke-direct {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->isImmersiveMode(I)Z

    move-result v5

    .line 8759
    .local v5, "oldImmersiveMode":Z
    invoke-direct {v0, v4}, Lcom/android/server/policy/PhoneWindowManager;->isImmersiveMode(I)Z

    move-result v6

    .line 8760
    .local v6, "newImmersiveMode":Z
    if-eqz p1, :cond_1ba

    if-eq v5, v6, :cond_1ba

    .line 8761
    move/from16 v31, v2

    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v2

    .line 8762
    .local v2, "pkg":Ljava/lang/String;
    .local v31, "transientStatusBarAllowed":Z
    move/from16 v32, v5

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    .line 8763
    .end local v5    # "oldImmersiveMode":Z
    .local v32, "oldImmersiveMode":Z
    move/from16 v33, v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v7

    .end local v7    # "denyTransientStatus":Z
    .local v33, "denyTransientStatus":Z
    move/from16 v34, v8

    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getSystemUiVisibility()I

    move-result v8

    .end local v8    # "denyTransientNav":Z
    .local v34, "denyTransientNav":Z
    invoke-static {v8}, Lcom/android/server/policy/PhoneWindowManager;->isNavBarEmpty(I)Z

    move-result v8

    .line 8762
    invoke-virtual {v5, v2, v6, v7, v8}, Lcom/android/server/policy/ImmersiveModeConfirmation;->immersiveModeChangedLw(Ljava/lang/String;ZZZ)V

    .end local v2    # "pkg":Ljava/lang/String;
    goto :goto_1c2

    .line 8766
    .end local v31    # "transientStatusBarAllowed":Z
    .end local v32    # "oldImmersiveMode":Z
    .end local v33    # "denyTransientStatus":Z
    .end local v34    # "denyTransientNav":Z
    .local v2, "transientStatusBarAllowed":Z
    .restart local v5    # "oldImmersiveMode":Z
    .restart local v7    # "denyTransientStatus":Z
    .restart local v8    # "denyTransientNav":Z
    :cond_1ba
    move/from16 v31, v2

    move/from16 v32, v5

    move/from16 v33, v7

    move/from16 v34, v8

    .end local v2    # "transientStatusBarAllowed":Z
    .end local v5    # "oldImmersiveMode":Z
    .end local v7    # "denyTransientStatus":Z
    .end local v8    # "denyTransientNav":Z
    .restart local v31    # "transientStatusBarAllowed":Z
    .restart local v32    # "oldImmersiveMode":Z
    .restart local v33    # "denyTransientStatus":Z
    .restart local v34    # "denyTransientNav":Z
    :goto_1c2
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/server/policy/BarController;->updateVisibilityLw(ZII)I

    move-result v2

    .line 8768
    .end local v4    # "vis":I
    .local v2, "vis":I
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 8770
    invoke-interface {v7}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getInputMethodWindowLw()Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    move-result-object v7

    iget v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    .line 8768
    invoke-static {v4, v5, v7, v8}, Lcom/android/server/policy/PhoneWindowManager;->chooseNavigationColorWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;I)Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    move-result-object v4

    .line 8771
    .local v4, "navColorWin":Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 8773
    invoke-interface {v8}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getInputMethodWindowLw()Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    move-result-object v8

    .line 8771
    invoke-static {v2, v5, v7, v8, v4}, Lcom/android/server/policy/PhoneWindowManager;->updateLightNavigationBarLw(ILcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result v2

    .line 8776
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->getExtraSystemUiVisibility(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result v5

    or-int/2addr v2, v5

    .line 8777
    return v2
.end method

.method private updateSystemUiVisibilityLw()I
    .registers 22

    .line 8491
    move-object/from16 v9, p0

    iget-object v0, v9, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_9

    iget-object v0, v9, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    goto :goto_b

    .line 8492
    :cond_9
    iget-object v0, v9, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 8493
    .local v0, "winCandidate":Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    :goto_b
    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 8494
    return v1

    .line 8496
    :cond_f
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v3, v9, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    invoke-virtual {v3}, Lcom/android/server/policy/ImmersiveModeConfirmation;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-ne v2, v3, :cond_2c

    .line 8499
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v2

    if-eqz v2, :cond_26

    iget-object v2, v9, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    goto :goto_28

    :cond_26
    iget-object v2, v9, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    :goto_28
    move-object v0, v2

    .line 8500
    if-nez v0, :cond_2c

    .line 8501
    return v1

    .line 8504
    :cond_2c
    move-object v10, v0

    .end local v0    # "winCandidate":Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .local v10, "winCandidate":Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    move-object v11, v10

    .line 8505
    .local v11, "win":Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    invoke-interface {v11}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_3d

    iget-boolean v0, v9, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    if-eqz v0, :cond_3d

    .line 8512
    return v1

    .line 8515
    :cond_3d
    const/4 v0, 0x0

    invoke-static {v11, v0}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    iget v2, v9, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    not-int v2, v2

    and-int/2addr v0, v2

    iget v2, v9, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    not-int v2, v2

    and-int/2addr v0, v2

    .line 8524
    .local v0, "tmpVisibility":I
    iget-boolean v2, v9, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    if-eqz v2, :cond_6b

    invoke-interface {v11}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v2

    iget v3, v9, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBarLayer:I

    if-ge v2, v3, :cond_6b

    iget-object v2, v9, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_64

    iget v2, v9, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBarLayer:I

    iget-object v3, v9, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 8525
    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v3

    if-gt v2, v3, :cond_6b

    .line 8527
    :cond_64
    const/4 v2, 0x7

    invoke-static {v11, v2}, Lcom/android/server/policy/PolicyControl;->adjustClearableFlags(Lcom/android/server/policy/WindowManagerPolicy$WindowState;I)I

    move-result v2

    not-int v2, v2

    and-int/2addr v0, v2

    .line 8530
    .end local v0    # "tmpVisibility":I
    .local v12, "tmpVisibility":I
    :cond_6b
    move v12, v0

    iget-object v0, v9, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v2, v9, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-direct {v9, v1, v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->updateLightStatusBarLw(ILcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result v13

    .line 8532
    .local v13, "fullscreenVisibility":I
    iget-object v0, v9, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v2, v9, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-direct {v9, v1, v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->updateLightStatusBarLw(ILcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result v14

    .line 8534
    .local v14, "dockedVisibility":I
    iget-object v0, v9, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    const/4 v2, 0x2

    iget-object v3, v9, Lcom/android/server/policy/PhoneWindowManager;->mNonDockedStackBounds:Landroid/graphics/Rect;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getStackBounds(IILandroid/graphics/Rect;)V

    .line 8536
    iget-object v0, v9, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    const/4 v2, 0x3

    const/4 v3, 0x1

    iget-object v4, v9, Lcom/android/server/policy/PhoneWindowManager;->mDockedStackBounds:Landroid/graphics/Rect;

    invoke-interface {v0, v2, v3, v4}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getStackBounds(IILandroid/graphics/Rect;)V

    .line 8538
    iget v0, v9, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-direct {v9, v11, v0, v12}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemBarsLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;II)I

    move-result v15

    .line 8539
    .local v15, "visibility":I
    iget v0, v9, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    xor-int v16, v15, v0

    .line 8540
    .local v16, "diff":I
    iget v0, v9, Lcom/android/server/policy/PhoneWindowManager;->mLastFullscreenStackSysUiFlags:I

    xor-int v17, v13, v0

    .line 8541
    .local v17, "fullscreenDiff":I
    iget v0, v9, Lcom/android/server/policy/PhoneWindowManager;->mLastDockedStackSysUiFlags:I

    xor-int v18, v14, v0

    .line 8542
    .local v18, "dockedDiff":I
    iget-object v0, v9, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v11, v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getNeedsMenuLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v8

    .line 8543
    .local v8, "needsMenu":Z
    if-nez v16, :cond_cc

    if-nez v17, :cond_cc

    if-nez v18, :cond_cc

    iget-boolean v0, v9, Lcom/android/server/policy/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    if-ne v0, v8, :cond_cc

    iget-object v0, v9, Lcom/android/server/policy/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    .line 8544
    invoke-interface {v11}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v2

    if-ne v0, v2, :cond_cc

    iget-object v0, v9, Lcom/android/server/policy/PhoneWindowManager;->mLastNonDockedStackBounds:Landroid/graphics/Rect;

    iget-object v2, v9, Lcom/android/server/policy/PhoneWindowManager;->mNonDockedStackBounds:Landroid/graphics/Rect;

    .line 8545
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cc

    iget-object v0, v9, Lcom/android/server/policy/PhoneWindowManager;->mLastDockedStackBounds:Landroid/graphics/Rect;

    iget-object v2, v9, Lcom/android/server/policy/PhoneWindowManager;->mDockedStackBounds:Landroid/graphics/Rect;

    .line 8546
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 8547
    return v1

    .line 8549
    :cond_cc
    iput v15, v9, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    .line 8550
    iput v13, v9, Lcom/android/server/policy/PhoneWindowManager;->mLastFullscreenStackSysUiFlags:I

    .line 8551
    iput v14, v9, Lcom/android/server/policy/PhoneWindowManager;->mLastDockedStackSysUiFlags:I

    .line 8552
    iput-boolean v8, v9, Lcom/android/server/policy/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    .line 8553
    invoke-interface {v11}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/policy/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    .line 8554
    new-instance v5, Landroid/graphics/Rect;

    iget-object v0, v9, Lcom/android/server/policy/PhoneWindowManager;->mNonDockedStackBounds:Landroid/graphics/Rect;

    invoke-direct {v5, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 8555
    .local v5, "fullscreenStackBounds":Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    iget-object v0, v9, Lcom/android/server/policy/PhoneWindowManager;->mDockedStackBounds:Landroid/graphics/Rect;

    invoke-direct {v6, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 8556
    .local v6, "dockedStackBounds":Landroid/graphics/Rect;
    iget-object v7, v9, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/policy/PhoneWindowManager$22;

    move-object v0, v4

    move-object v1, v9

    move v2, v15

    move v3, v13

    move-object v9, v4

    move v4, v14

    move-object/from16 v19, v10

    move-object v10, v7

    move-object v7, v11

    .end local v10    # "winCandidate":Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .local v19, "winCandidate":Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    move/from16 v20, v8

    .end local v8    # "needsMenu":Z
    .local v20, "needsMenu":Z
    invoke-direct/range {v0 .. v8}, Lcom/android/server/policy/PhoneWindowManager$22;-><init>(Lcom/android/server/policy/PhoneWindowManager;IIILandroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Z)V

    invoke-virtual {v10, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8568
    return v16
.end method

.method private updateWakeGestureListenerLp()V
    .registers 2

    .line 2706
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldEnableWakeGestureLp()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2707
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->requestWakeUpTrigger()V

    goto :goto_11

    .line 2709
    :cond_c
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->cancelWakeUpTrigger()V

    .line 2711
    :goto_11
    return-void
.end method

.method private updateWindowSleepToken()V
    .registers 3

    .line 6100
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowSleepTokenNeeded:Z

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastWindowSleepTokenNeeded:Z

    if-nez v0, :cond_17

    .line 6101
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mReleaseSleepTokenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6102
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAcquireSleepTokenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2d

    .line 6103
    :cond_17
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowSleepTokenNeeded:Z

    if-nez v0, :cond_2d

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastWindowSleepTokenNeeded:Z

    if-eqz v0, :cond_2d

    .line 6104
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAcquireSleepTokenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6105
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mReleaseSleepTokenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6107
    :cond_2d
    :goto_2d
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowSleepTokenNeeded:Z

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastWindowSleepTokenNeeded:Z

    .line 6108
    return-void
.end method

.method private static veryLongPressOnPowerBehaviorToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "behavior"    # I

    .line 9316
    packed-switch p0, :pswitch_data_e

    .line 9322
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9320
    :pswitch_8
    const-string v0, "VERY_LONG_PRESS_POWER_GLOBAL_ACTIONS"

    return-object v0

    .line 9318
    :pswitch_b
    const-string v0, "VERY_LONG_PRESS_POWER_NOTHING"

    return-object v0

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private wakeUp(JZLjava/lang/String;)Z
    .registers 9
    .param p1, "wakeTime"    # J
    .param p3, "wakeInTheaterMode"    # Z
    .param p4, "reason"    # Ljava/lang/String;

    .line 7175
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTheaterModeEnabled()Z

    move-result v0

    .line 7176
    .local v0, "theaterModeEnabled":Z
    const/4 v1, 0x0

    if-nez p3, :cond_a

    if-eqz v0, :cond_a

    .line 7177
    return v1

    .line 7180
    :cond_a
    if-eqz v0, :cond_18

    .line 7181
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "theater_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 7185
    :cond_18
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1, p1, p2, p4}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 7186
    const/4 v1, 0x1

    return v1
.end method

.method private wakeUpFromPowerKey(J)V
    .registers 5
    .param p1, "eventTime"    # J

    .line 7171
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromPowerKey:Z

    const-string v1, "android.policy:POWER"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    .line 7172
    return-void
.end method


# virtual methods
.method public addSplashScreen(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/content/res/Configuration;I)Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;
    .registers 33
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "theme"    # I
    .param p4, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p5, "nonLocalizedLabel"    # Ljava/lang/CharSequence;
    .param p6, "labelRes"    # I
    .param p7, "icon"    # I
    .param p8, "logo"    # I
    .param p9, "windowFlags"    # I
    .param p10, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p11, "displayId"    # I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p6

    move-object/from16 v6, p10

    .line 3262
    const/4 v7, 0x0

    if-nez v3, :cond_10

    .line 3263
    return-object v7

    .line 3266
    :cond_10
    const/4 v8, 0x0

    .line 3267
    .local v8, "wm":Landroid/view/WindowManager;
    move-object v9, v7

    .line 3270
    .local v9, "view":Landroid/view/View;
    :try_start_12
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;
    :try_end_14
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_12 .. :try_end_14} :catch_1c6
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_14} :catch_193
    .catchall {:try_start_12 .. :try_end_14} :catchall_189

    .line 3276
    .local v0, "context":Landroid/content/Context;
    move/from16 v10, p11

    :try_start_16
    invoke-direct {v1, v0, v10}, Lcom/android/server/policy/PhoneWindowManager;->getDisplayContext(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v11
    :try_end_1a
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_16 .. :try_end_1a} :catch_183
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_1a} :catch_17d
    .catchall {:try_start_16 .. :try_end_1a} :catchall_177

    .line 3277
    .local v11, "displayContext":Landroid/content/Context;
    if-nez v11, :cond_31

    .line 3279
    nop

    .line 3395
    if-eqz v9, :cond_30

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    if-nez v12, :cond_30

    .line 3396
    const-string v12, "WindowManager"

    const-string/jumbo v13, "view not successfully added to wm, removing view"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3397
    invoke-interface {v8, v9}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 3279
    :cond_30
    return-object v7

    .line 3281
    :cond_31
    move-object v12, v11

    .line 3283
    .end local v0    # "context":Landroid/content/Context;
    .local v12, "context":Landroid/content/Context;
    :try_start_32
    invoke-virtual {v12}, Landroid/content/Context;->getThemeResId()I

    move-result v0
    :try_end_36
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_32 .. :try_end_36} :catch_183
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_36} :catch_17d
    .catchall {:try_start_32 .. :try_end_36} :catchall_177

    if-ne v4, v0, :cond_3a

    if-eqz v5, :cond_45

    .line 3285
    :cond_3a
    const/4 v0, 0x4

    :try_start_3b
    invoke-virtual {v12, v3, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    move-object v12, v0

    .line 3286
    invoke-virtual {v12, v4}, Landroid/content/Context;->setTheme(I)V
    :try_end_43
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3b .. :try_end_43} :catch_44
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_3b .. :try_end_43} :catch_183
    .catch Ljava/lang/RuntimeException; {:try_start_3b .. :try_end_43} :catch_17d
    .catchall {:try_start_3b .. :try_end_43} :catchall_177

    .line 3289
    goto :goto_45

    .line 3287
    :catch_44
    move-exception v0

    .line 3292
    :cond_45
    :goto_45
    const/4 v0, 0x0

    const/4 v13, 0x1

    if-eqz v6, :cond_72

    :try_start_49
    sget-object v14, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {v6, v14}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v14

    if-nez v14, :cond_72

    .line 3295
    invoke-virtual {v12, v6}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v14

    .line 3296
    .local v14, "overrideContext":Landroid/content/Context;
    invoke-virtual {v14, v4}, Landroid/content/Context;->setTheme(I)V

    .line 3297
    sget-object v15, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {v14, v15}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v15

    .line 3299
    .local v15, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {v15, v13, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    move/from16 v17, v16

    .line 3300
    .local v17, "resId":I
    move/from16 v0, v17

    if-eqz v0, :cond_6f

    .line 3300
    .end local v17    # "resId":I
    .local v0, "resId":I
    invoke-virtual {v14, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    if-eqz v16, :cond_6f

    .line 3306
    move-object v12, v14

    .line 3308
    :cond_6f
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 3311
    .end local v0    # "resId":I
    .end local v14    # "overrideContext":Landroid/content/Context;
    .end local v15    # "typedArray":Landroid/content/res/TypedArray;
    :cond_72
    new-instance v0, Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {v0, v12}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    move-object v14, v0

    .line 3312
    .local v14, "win":Lcom/android/internal/policy/PhoneWindow;
    invoke-virtual {v14, v13}, Lcom/android/internal/policy/PhoneWindow;->setIsStartingWindow(Z)V

    .line 3314
    invoke-static {v14}, Lcom/android/server/policy/PhoneWindowManagerInjector;->setDefaultBackgroundDrawable(Lcom/android/internal/policy/PhoneWindow;)V

    .line 3316
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5, v7}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    move-object v15, v0

    .line 3318
    .local v15, "label":Ljava/lang/CharSequence;
    if-eqz v15, :cond_8f

    .line 3319
    invoke-virtual {v14, v15, v13}, Lcom/android/internal/policy/PhoneWindow;->setTitle(Ljava/lang/CharSequence;Z)V
    :try_end_8c
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_49 .. :try_end_8c} :catch_183
    .catch Ljava/lang/RuntimeException; {:try_start_49 .. :try_end_8c} :catch_17d
    .catchall {:try_start_49 .. :try_end_8c} :catchall_177

    .line 3324
    move-object/from16 v7, p5

    goto :goto_95

    .line 3321
    :cond_8f
    move-object/from16 v7, p5

    const/4 v0, 0x0

    :try_start_92
    invoke-virtual {v14, v7, v0}, Lcom/android/internal/policy/PhoneWindow;->setTitle(Ljava/lang/CharSequence;Z)V

    .line 3324
    :goto_95
    const/4 v0, 0x3

    invoke-virtual {v14, v0}, Lcom/android/internal/policy/PhoneWindow;->setType(I)V

    .line 3327
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v16

    monitor-enter v16
    :try_end_a0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_92 .. :try_end_a0} :catch_175
    .catch Ljava/lang/RuntimeException; {:try_start_92 .. :try_end_a0} :catch_173
    .catchall {:try_start_92 .. :try_end_a0} :catchall_171

    .line 3331
    :try_start_a0
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z
    :try_end_a2
    .catchall {:try_start_a0 .. :try_end_a2} :catchall_163

    if-eqz v0, :cond_ab

    .line 3332
    const/high16 v0, 0x80000

    or-int v0, p9, v0

    .line 3334
    .end local p9    # "windowFlags":I
    .local v0, "windowFlags":I
    move/from16 v17, v0

    goto :goto_ad

    .line 3334
    .end local v0    # "windowFlags":I
    .restart local p9    # "windowFlags":I
    :cond_ab
    move/from16 v17, p9

    .line 3334
    .end local p9    # "windowFlags":I
    .local v17, "windowFlags":I
    :goto_ad
    :try_start_ad
    monitor-exit v16
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_15f

    .line 3340
    or-int/lit8 v0, v17, 0x10

    const/16 v13, 0x8

    or-int/2addr v0, v13

    const/high16 v16, 0x20000

    or-int v0, v0, v16

    or-int/lit8 v19, v17, 0x10

    or-int/lit8 v19, v19, 0x8

    or-int v13, v19, v16

    :try_start_bd
    invoke-virtual {v14, v0, v13}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V
    :try_end_c0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_bd .. :try_end_c0} :catch_15a
    .catch Ljava/lang/RuntimeException; {:try_start_bd .. :try_end_c0} :catch_156
    .catchall {:try_start_bd .. :try_end_c0} :catchall_151

    .line 3350
    move/from16 v13, p7

    :try_start_c2
    invoke-virtual {v14, v13}, Lcom/android/internal/policy/PhoneWindow;->setDefaultIcon(I)V

    .line 3351
    move/from16 v4, p8

    invoke-virtual {v14, v4}, Lcom/android/internal/policy/PhoneWindow;->setDefaultLogo(I)V

    .line 3353
    const/4 v0, -0x1

    invoke-virtual {v14, v0, v0}, Lcom/android/internal/policy/PhoneWindow;->setLayout(II)V

    .line 3356
    invoke-virtual {v14}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 3357
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iput-object v2, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 3358
    iput-object v3, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 3359
    invoke-virtual {v14}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x8

    invoke-virtual {v4, v6, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 3361
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 v5, 0x1

    or-int/2addr v4, v5

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 3363
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 3365
    invoke-virtual/range {p4 .. p4}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v4

    if-nez v4, :cond_fb

    .line 3366
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v4, v4, 0x80

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 3369
    :cond_fb
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Splash Screen "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 3370
    invoke-direct {v1, v14, v12}, Lcom/android/server/policy/PhoneWindowManager;->addSplashscreenContent(Lcom/android/internal/policy/PhoneWindow;Landroid/content/Context;)V

    .line 3372
    const-string/jumbo v4, "window"

    invoke-virtual {v12, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    move-object v8, v4

    .line 3373
    invoke-virtual {v14}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v4

    move-object v9, v4

    .line 3375
    if-eqz v15, :cond_125

    move-object v4, v15

    goto :goto_126

    :cond_125
    move-object v4, v7

    :goto_126
    invoke-static {v12, v9, v14, v4}, Lcom/android/server/policy/PhoneWindowManagerInjector;->addStartingWindow(Landroid/content/Context;Landroid/view/View;Lcom/android/internal/policy/PhoneWindow;Ljava/lang/CharSequence;)V

    .line 3380
    invoke-interface {v8, v9, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3384
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_13a

    new-instance v4, Lcom/android/server/policy/SplashScreenSurface;

    invoke-direct {v4, v9, v2}, Lcom/android/server/policy/SplashScreenSurface;-><init>(Landroid/view/View;Landroid/os/IBinder;)V
    :try_end_137
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_c2 .. :try_end_137} :catch_16c
    .catch Ljava/lang/RuntimeException; {:try_start_c2 .. :try_end_137} :catch_16a
    .catchall {:try_start_c2 .. :try_end_137} :catchall_1f7

    .line 3395
    move-object/from16 v18, v4

    goto :goto_13d

    .line 3384
    :cond_13a
    nop

    .line 3395
    const/16 v18, 0x0

    :goto_13d
    if-eqz v9, :cond_150

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_150

    .line 3396
    const-string v4, "WindowManager"

    const-string/jumbo v5, "view not successfully added to wm, removing view"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3397
    invoke-interface {v8, v9}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 3384
    :cond_150
    return-object v18

    .line 3395
    .end local v0    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v11    # "displayContext":Landroid/content/Context;
    .end local v12    # "context":Landroid/content/Context;
    .end local v14    # "win":Lcom/android/internal/policy/PhoneWindow;
    .end local v15    # "label":Ljava/lang/CharSequence;
    :catchall_151
    move-exception v0

    move/from16 v13, p7

    goto/16 :goto_1f8

    .line 3389
    :catch_156
    move-exception v0

    move/from16 v13, p7

    goto :goto_19c

    .line 3385
    :catch_15a
    move-exception v0

    move/from16 v13, p7

    goto/16 :goto_1cf

    .line 3334
    .restart local v11    # "displayContext":Landroid/content/Context;
    .restart local v12    # "context":Landroid/content/Context;
    .restart local v14    # "win":Lcom/android/internal/policy/PhoneWindow;
    .restart local v15    # "label":Ljava/lang/CharSequence;
    :catchall_15f
    move-exception v0

    move/from16 v13, p7

    goto :goto_168

    .line 3334
    .end local v17    # "windowFlags":I
    .restart local p9    # "windowFlags":I
    :catchall_163
    move-exception v0

    move/from16 v13, p7

    move/from16 v17, p9

    .line 3334
    .end local p9    # "windowFlags":I
    .restart local v17    # "windowFlags":I
    :goto_168
    :try_start_168
    monitor-exit v16
    :try_end_169
    .catchall {:try_start_168 .. :try_end_169} :catchall_16f

    :try_start_169
    throw v0
    :try_end_16a
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_169 .. :try_end_16a} :catch_16c
    .catch Ljava/lang/RuntimeException; {:try_start_169 .. :try_end_16a} :catch_16a
    .catchall {:try_start_169 .. :try_end_16a} :catchall_1f7

    .line 3389
    .end local v11    # "displayContext":Landroid/content/Context;
    .end local v12    # "context":Landroid/content/Context;
    .end local v14    # "win":Lcom/android/internal/policy/PhoneWindow;
    .end local v15    # "label":Ljava/lang/CharSequence;
    :catch_16a
    move-exception v0

    goto :goto_19c

    .line 3385
    :catch_16c
    move-exception v0

    goto/16 :goto_1cf

    .line 3334
    .restart local v11    # "displayContext":Landroid/content/Context;
    .restart local v12    # "context":Landroid/content/Context;
    .restart local v14    # "win":Lcom/android/internal/policy/PhoneWindow;
    .restart local v15    # "label":Ljava/lang/CharSequence;
    :catchall_16f
    move-exception v0

    goto :goto_168

    .line 3395
    .end local v11    # "displayContext":Landroid/content/Context;
    .end local v12    # "context":Landroid/content/Context;
    .end local v14    # "win":Lcom/android/internal/policy/PhoneWindow;
    .end local v15    # "label":Ljava/lang/CharSequence;
    .end local v17    # "windowFlags":I
    .restart local p9    # "windowFlags":I
    :catchall_171
    move-exception v0

    goto :goto_17a

    .line 3389
    :catch_173
    move-exception v0

    goto :goto_180

    .line 3385
    :catch_175
    move-exception v0

    goto :goto_186

    .line 3395
    :catchall_177
    move-exception v0

    move-object/from16 v7, p5

    .line 3395
    .end local p9    # "windowFlags":I
    .restart local v17    # "windowFlags":I
    :goto_17a
    move/from16 v13, p7

    goto :goto_190

    .line 3389
    .end local v17    # "windowFlags":I
    .restart local p9    # "windowFlags":I
    :catch_17d
    move-exception v0

    move-object/from16 v7, p5

    .line 3389
    .end local p9    # "windowFlags":I
    .restart local v17    # "windowFlags":I
    :goto_180
    move/from16 v13, p7

    goto :goto_19a

    .line 3385
    .end local v17    # "windowFlags":I
    .restart local p9    # "windowFlags":I
    :catch_183
    move-exception v0

    move-object/from16 v7, p5

    .line 3385
    .end local p9    # "windowFlags":I
    .restart local v17    # "windowFlags":I
    :goto_186
    move/from16 v13, p7

    goto :goto_1cd

    .line 3395
    .end local v17    # "windowFlags":I
    .restart local p9    # "windowFlags":I
    :catchall_189
    move-exception v0

    move-object/from16 v7, p5

    move/from16 v13, p7

    move/from16 v10, p11

    .line 3395
    .end local p9    # "windowFlags":I
    .restart local v17    # "windowFlags":I
    :goto_190
    move/from16 v17, p9

    goto :goto_1f8

    .line 3389
    .end local v17    # "windowFlags":I
    .restart local p9    # "windowFlags":I
    :catch_193
    move-exception v0

    move-object/from16 v7, p5

    move/from16 v13, p7

    move/from16 v10, p11

    .line 3389
    .end local p9    # "windowFlags":I
    .restart local v17    # "windowFlags":I
    :goto_19a
    move/from16 v17, p9

    .line 3393
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_19c
    :try_start_19c
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " failed creating starting window"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b2
    .catchall {:try_start_19c .. :try_end_1b2} :catchall_1f7

    .line 3395
    .end local v0    # "e":Ljava/lang/RuntimeException;
    if-eqz v9, :cond_1f5

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1f5

    .line 3396
    :goto_1ba
    const-string v0, "WindowManager"

    const-string/jumbo v4, "view not successfully added to wm, removing view"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3397
    invoke-interface {v8, v9}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_1f5

    .line 3385
    .end local v17    # "windowFlags":I
    .restart local p9    # "windowFlags":I
    :catch_1c6
    move-exception v0

    move-object/from16 v7, p5

    move/from16 v13, p7

    move/from16 v10, p11

    .line 3385
    .end local p9    # "windowFlags":I
    .restart local v17    # "windowFlags":I
    :goto_1cd
    move/from16 v17, p9

    .line 3387
    .local v0, "e":Landroid/view/WindowManager$BadTokenException;
    :goto_1cf
    :try_start_1cf
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " already running, starting window not displayed. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3388
    invoke-virtual {v0}, Landroid/view/WindowManager$BadTokenException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3387
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ec
    .catchall {:try_start_1cf .. :try_end_1ec} :catchall_1f7

    .line 3395
    .end local v0    # "e":Landroid/view/WindowManager$BadTokenException;
    if-eqz v9, :cond_1f5

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1f5

    goto :goto_1ba

    .line 3401
    :cond_1f5
    :goto_1f5
    const/4 v4, 0x0

    return-object v4

    .line 3395
    :catchall_1f7
    move-exception v0

    :goto_1f8
    if-eqz v9, :cond_20b

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_20b

    .line 3396
    const-string v4, "WindowManager"

    const-string/jumbo v5, "view not successfully added to wm, removing view"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3397
    invoke-interface {v8, v9}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_20b
    throw v0
.end method

.method public adjustConfigurationLw(Landroid/content/res/Configuration;II)V
    .registers 7
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "keyboardPresence"    # I
    .param p3, "navigationPresence"    # I

    .line 3032
    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHaveBuiltInKeyboard:Z

    .line 3034
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->readConfigurationDependentBehaviors()V

    .line 3035
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->readLidState()V

    .line 3037
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x2

    if-eq v0, v1, :cond_1f

    if-ne p2, v1, :cond_27

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    .line 3039
    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->isHidden(I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 3040
    :cond_1f
    iput v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 3041
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    if-nez v0, :cond_27

    .line 3042
    iput v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 3046
    :cond_27
    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v0, v1, :cond_35

    if-ne p3, v1, :cond_37

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    .line 3048
    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->isHidden(I)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 3049
    :cond_35
    iput v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    .line 3051
    :cond_37
    return-void
.end method

.method public adjustSystemUiVisibilityLw(I)I
    .registers 4
    .param p1, "visibility"    # I

    .line 4776
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/policy/StatusBarController;->adjustSystemUiVisibilityLw(II)V

    .line 4777
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/policy/BarController;->adjustSystemUiVisibilityLw(II)V

    .line 4781
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    .line 4784
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    not-int v0, v0

    and-int/2addr v0, p1

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    not-int v1, v1

    and-int/2addr v0, v1

    return v0
.end method

.method public adjustWindowParamsLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Z)V
    .registers 10
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "hasStatusBarServicePermission"    # Z

    .line 2935
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 2936
    .local v0, "isScreenDecor":Z
    :goto_b
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 2937
    if-nez v0, :cond_24

    .line 2939
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_24

    .line 2941
    :cond_1b
    if-eqz v0, :cond_24

    if-eqz p3, :cond_24

    .line 2942
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2945
    :cond_24
    :goto_24
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d0

    if-eq v2, v3, :cond_6f

    const/16 v4, 0x7dd

    if-eq v2, v4, :cond_6c

    const/16 v4, 0x7df

    if-eq v2, v4, :cond_5d

    const/16 v4, 0x7e7

    if-eq v2, v4, :cond_6c

    const/16 v1, 0x7f4

    if-eq v2, v1, :cond_56

    packed-switch v2, :pswitch_data_8c

    goto :goto_81

    .line 2980
    :pswitch_3e
    iget-wide v1, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    const-wide/16 v4, 0xdac

    if-ltz v1, :cond_4e

    iget-wide v1, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_50

    .line 2982
    :cond_4e
    iput-wide v4, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 2984
    :cond_50
    const v1, 0x1030004

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_81

    .line 2972
    :cond_56
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2973
    goto :goto_81

    .line 2949
    :cond_5d
    :pswitch_5d
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x18

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2951
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x40001

    and-int/2addr v1, v2

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2952
    goto :goto_81

    .line 2957
    :cond_6c
    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 2958
    goto :goto_81

    .line 2965
    :cond_6f
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    if-eqz v1, :cond_81

    .line 2966
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x100001

    and-int/2addr v1, v2

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2967
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2988
    :cond_81
    :goto_81
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v1, v3, :cond_8b

    .line 2990
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2992
    :cond_8b
    return-void

    :pswitch_data_8c
    .packed-switch 0x7d5
        :pswitch_3e
        :pswitch_5d
    .end packed-switch
.end method

.method public allowAppAnimationsLw()Z
    .registers 2

    .line 6175
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public applyPostLayoutPolicyLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .registers 13
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "attached"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p4, "imeTarget"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 5869
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->canAffectSystemUiFlags()Z

    move-result v0

    .line 5871
    .local v0, "affectsSystemUi":Z
    invoke-direct {p0, p1, p4}, Lcom/android/server/policy/PhoneWindowManager;->applyKeyguardPolicyLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 5872
    invoke-static {p1, p2}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v1

    .line 5873
    .local v1, "fl":I
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v3, 0x1

    if-nez v2, :cond_20

    if-eqz v0, :cond_20

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7db

    if-ne v2, v4, :cond_20

    .line 5875
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    .line 5876
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v2

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBarLayer:I

    .line 5878
    :cond_20
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d0

    if-ne v2, v4, :cond_36

    .line 5879
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_2e

    .line 5880
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    .line 5882
    :cond_2e
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_36

    .line 5883
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarTransparent:Z

    .line 5887
    :cond_36
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v5, 0x0

    if-lt v2, v3, :cond_41

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ge v2, v4, :cond_41

    move v2, v3

    goto :goto_42

    :cond_41
    move v2, v5

    .line 5889
    .local v2, "appWindow":Z
    :goto_42
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getWindowingMode()I

    move-result v4

    .line 5890
    .local v4, "windowingMode":I
    if-eq v4, v3, :cond_4d

    const/4 v6, 0x4

    if-ne v4, v6, :cond_4c

    goto :goto_4d

    :cond_4c
    goto :goto_4e

    :cond_4d
    :goto_4d
    move v5, v3

    .line 5893
    .local v5, "inFullScreenOrSplitScreenSecondaryWindowingMode":Z
    :goto_4e
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-nez v6, :cond_8d

    if-eqz v0, :cond_8d

    .line 5894
    and-int/lit16 v6, v1, 0x800

    if-eqz v6, :cond_5a

    .line 5895
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    .line 5897
    :cond_5a
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7e7

    if-ne v6, v7, :cond_73

    .line 5900
    iget-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingLockscreen:Z

    if-eqz v6, :cond_70

    .line 5901
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v6

    if-eqz v6, :cond_73

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->hasDrawnLw()Z

    move-result v6

    if-eqz v6, :cond_73

    .line 5902
    :cond_70
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    .line 5903
    const/4 v2, 0x1

    .line 5910
    :cond_73
    if-eqz v2, :cond_8d

    if-nez p3, :cond_8d

    .line 5911
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v6

    if-eqz v6, :cond_8d

    if-eqz v5, :cond_8d

    .line 5913
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 5914
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-nez v6, :cond_87

    .line 5915
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 5917
    :cond_87
    and-int/lit8 v6, v1, 0x1

    if-eqz v6, :cond_8d

    .line 5918
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    .line 5925
    :cond_8d
    if-eqz v0, :cond_b1

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7ef

    if-ne v6, v7, :cond_b1

    .line 5926
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-nez v6, :cond_a5

    .line 5927
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 5928
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-nez v6, :cond_a5

    .line 5929
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 5932
    :cond_a5
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-nez v6, :cond_b1

    .line 5933
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 5934
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-nez v6, :cond_b1

    .line 5935
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 5941
    :cond_b1
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-nez v6, :cond_c1

    if-eqz v0, :cond_c1

    .line 5942
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isDimming()Z

    move-result v6

    if-eqz v6, :cond_c1

    if-eqz v5, :cond_c1

    .line 5943
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 5949
    :cond_c1
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v7, 0x3

    if-nez v6, :cond_dc

    if-eqz v0, :cond_dc

    if-eqz v2, :cond_dc

    if-nez p3, :cond_dc

    .line 5950
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v6

    if-eqz v6, :cond_dc

    if-ne v4, v7, :cond_dc

    .line 5951
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 5952
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-nez v6, :cond_dc

    .line 5953
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 5959
    :cond_dc
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-nez v6, :cond_ec

    if-eqz v0, :cond_ec

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isDimming()Z

    move-result v6

    if-eqz v6, :cond_ec

    if-ne v4, v7, :cond_ec

    .line 5961
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 5965
    :cond_ec
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v7, 0x200000

    and-int/2addr v6, v7

    if-eqz v6, :cond_fb

    .line 5966
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->canAcquireSleepToken()Z

    move-result v6

    if-eqz v6, :cond_fb

    .line 5967
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowSleepTokenNeeded:Z

    .line 5969
    :cond_fb
    return-void
.end method

.method public beginLayoutLw(Lcom/android/server/wm/DisplayFrames;I)V
    .registers 27
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "uiMode"    # I

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    .line 4906
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayFrames;->onBeginLayout()V

    .line 4908
    iget-object v0, v15, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    iget-object v1, v14, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenWidth:I

    .line 4909
    iget-object v0, v15, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    iget-object v1, v14, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenHeight:I

    .line 4910
    const/high16 v0, 0x10000000

    iput v0, v15, Lcom/android/server/policy/PhoneWindowManager;->mDockLayer:I

    .line 4911
    const/4 v0, -0x1

    iput v0, v15, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarLayer:I

    .line 4914
    sget-object v13, Lcom/android/server/policy/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 4915
    .local v13, "pf":Landroid/graphics/Rect;
    sget-object v12, Lcom/android/server/policy/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 4916
    .local v12, "df":Landroid/graphics/Rect;
    sget-object v11, Lcom/android/server/policy/PhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    .line 4917
    .local v11, "of":Landroid/graphics/Rect;
    sget-object v10, Lcom/android/server/policy/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 4918
    .local v10, "vf":Landroid/graphics/Rect;
    sget-object v9, Lcom/android/server/policy/PhoneWindowManager;->mTmpDecorFrame:Landroid/graphics/Rect;

    .line 4919
    .local v9, "dcf":Landroid/graphics/Rect;
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4920
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v11, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4921
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v12, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4922
    iget-object v0, v14, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v13, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4923
    invoke-virtual {v9}, Landroid/graphics/Rect;->setEmpty()V

    .line 4925
    iget v0, v14, Lcom/android/server/wm/DisplayFrames;->mDisplayId:I

    if-nez v0, :cond_126

    .line 4928
    iget v8, v15, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    .line 4929
    .local v8, "sysui":I
    and-int/lit8 v0, v8, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_51

    move v0, v2

    goto :goto_52

    :cond_51
    move v0, v1

    .line 4930
    .local v0, "navVisible":Z
    :goto_52
    const v3, -0x7fff8000

    and-int/2addr v3, v8

    if-eqz v3, :cond_5a

    move v3, v2

    goto :goto_5b

    :cond_5a
    move v3, v1

    .line 4932
    .local v3, "navTranslucent":Z
    :goto_5b
    and-int/lit16 v4, v8, 0x800

    if-eqz v4, :cond_61

    move v4, v2

    goto :goto_62

    :cond_61
    move v4, v1

    :goto_62
    move/from16 v17, v4

    .line 4933
    .local v17, "immersive":Z
    and-int/lit16 v4, v8, 0x1000

    if-eqz v4, :cond_6a

    move v4, v2

    goto :goto_6b

    :cond_6a
    move v4, v1

    :goto_6b
    move/from16 v18, v4

    .line 4934
    .local v18, "immersiveSticky":Z
    if-nez v17, :cond_74

    if-eqz v18, :cond_72

    goto :goto_74

    :cond_72
    move v4, v1

    goto :goto_75

    :cond_74
    :goto_74
    move v4, v2

    :goto_75
    move/from16 v19, v4

    .line 4935
    .local v19, "navAllowedHidden":Z
    if-nez v18, :cond_7b

    move v4, v2

    goto :goto_7c

    :cond_7b
    move v4, v1

    :goto_7c
    and-int/2addr v3, v4

    .line 4936
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v4

    if-eqz v4, :cond_89

    iget-boolean v4, v15, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    if-nez v4, :cond_89

    move v4, v2

    goto :goto_8a

    :cond_89
    move v4, v1

    :goto_8a
    move/from16 v20, v4

    .line 4937
    .local v20, "isKeyguardShowing":Z
    if-nez v20, :cond_93

    .line 4938
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->areTranslucentBarsAllowed()Z

    move-result v4

    and-int/2addr v3, v4

    .line 4940
    .end local v3    # "navTranslucent":Z
    .local v21, "navTranslucent":Z
    :cond_93
    move/from16 v21, v3

    if-nez v20, :cond_aa

    iget-object v3, v15, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_aa

    iget-object v3, v15, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 4941
    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v4, 0x800000

    and-int/2addr v3, v4

    if-eqz v3, :cond_aa

    move v7, v2

    goto :goto_ab

    :cond_aa
    move v7, v1

    .line 4946
    .local v7, "statusBarExpandedNotKeyguard":Z
    :goto_ab
    if-nez v0, :cond_dc

    if-eqz v19, :cond_b0

    goto :goto_dc

    .line 4952
    :cond_b0
    iget-object v3, v15, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    if-nez v3, :cond_f2

    iget-object v3, v15, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_f2

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v3

    if-eqz v3, :cond_f2

    .line 4953
    iget-object v3, v15, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v4, v15, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    const-string/jumbo v5, "nav_input_consumer"

    new-instance v6, Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$t7VYWSe1_o50lulMFjRyMrKODrg;

    invoke-direct {v6, v15}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$t7VYWSe1_o50lulMFjRyMrKODrg;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-interface {v3, v4, v5, v6}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->createInputConsumer(Landroid/os/Looper;Ljava/lang/String;Landroid/view/InputEventReceiver$Factory;)Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    move-result-object v3

    iput-object v3, v15, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    .line 4958
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    goto :goto_f2

    .line 4947
    :cond_dc
    :goto_dc
    iget-object v1, v15, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    if-eqz v1, :cond_f2

    .line 4948
    iget-object v1, v15, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, v15, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x13

    iget-object v5, v15, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    .line 4949
    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 4948
    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4950
    const/4 v1, 0x0

    iput-object v1, v15, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    .line 4963
    :cond_f2
    :goto_f2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v1

    xor-int/2addr v1, v2

    or-int v22, v0, v1

    .line 4965
    .end local v0    # "navVisible":Z
    .local v22, "navVisible":Z
    move-object v0, v15

    move-object v1, v14

    move/from16 v2, p2

    move-object v3, v9

    move/from16 v4, v22

    move/from16 v5, v21

    move/from16 v6, v19

    invoke-direct/range {v0 .. v7}, Lcom/android/server/policy/PhoneWindowManager;->layoutNavigationBar(Lcom/android/server/wm/DisplayFrames;ILandroid/graphics/Rect;ZZZZ)Z

    move-result v0

    .line 4968
    .local v0, "updateSysUiVisibility":Z
    move v1, v8

    move-object v8, v15

    .line 4968
    .end local v8    # "sysui":I
    .local v1, "sysui":I
    move-object v2, v9

    move-object v9, v14

    .line 4968
    .end local v9    # "dcf":Landroid/graphics/Rect;
    .local v2, "dcf":Landroid/graphics/Rect;
    move-object v3, v10

    move-object v10, v13

    .line 4968
    .end local v10    # "vf":Landroid/graphics/Rect;
    .local v3, "vf":Landroid/graphics/Rect;
    move-object v4, v11

    move-object v11, v12

    .line 4968
    .end local v11    # "of":Landroid/graphics/Rect;
    .local v4, "of":Landroid/graphics/Rect;
    move-object v5, v12

    move-object v12, v4

    .line 4968
    .end local v12    # "df":Landroid/graphics/Rect;
    .local v5, "df":Landroid/graphics/Rect;
    move-object v6, v13

    move-object v13, v3

    .line 4968
    .end local v13    # "pf":Landroid/graphics/Rect;
    .local v6, "pf":Landroid/graphics/Rect;
    move-object/from16 v23, v3

    move-object v3, v14

    move-object v14, v2

    .line 4968
    .end local v3    # "vf":Landroid/graphics/Rect;
    .local v23, "vf":Landroid/graphics/Rect;
    move v15, v1

    move/from16 v16, v20

    invoke-direct/range {v8 .. v16}, Lcom/android/server/policy/PhoneWindowManager;->layoutStatusBar(Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)Z

    move-result v8

    or-int/2addr v0, v8

    .line 4970
    if-eqz v0, :cond_12d

    .line 4971
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    .line 4971
    .end local v0    # "updateSysUiVisibility":Z
    .end local v1    # "sysui":I
    .end local v7    # "statusBarExpandedNotKeyguard":Z
    .end local v17    # "immersive":Z
    .end local v18    # "immersiveSticky":Z
    .end local v19    # "navAllowedHidden":Z
    .end local v20    # "isKeyguardShowing":Z
    .end local v21    # "navTranslucent":Z
    .end local v22    # "navVisible":Z
    goto :goto_12d

    .line 4974
    .end local v2    # "dcf":Landroid/graphics/Rect;
    .end local v4    # "of":Landroid/graphics/Rect;
    .end local v5    # "df":Landroid/graphics/Rect;
    .end local v6    # "pf":Landroid/graphics/Rect;
    .end local v23    # "vf":Landroid/graphics/Rect;
    .restart local v9    # "dcf":Landroid/graphics/Rect;
    .restart local v10    # "vf":Landroid/graphics/Rect;
    .restart local v11    # "of":Landroid/graphics/Rect;
    .restart local v12    # "df":Landroid/graphics/Rect;
    .restart local v13    # "pf":Landroid/graphics/Rect;
    :cond_126
    move-object v2, v9

    move-object/from16 v23, v10

    move-object v4, v11

    move-object v5, v12

    move-object v6, v13

    move-object v3, v14

    .line 4974
    .end local v9    # "dcf":Landroid/graphics/Rect;
    .end local v10    # "vf":Landroid/graphics/Rect;
    .end local v11    # "of":Landroid/graphics/Rect;
    .end local v12    # "df":Landroid/graphics/Rect;
    .end local v13    # "pf":Landroid/graphics/Rect;
    .restart local v2    # "dcf":Landroid/graphics/Rect;
    .restart local v4    # "of":Landroid/graphics/Rect;
    .restart local v5    # "df":Landroid/graphics/Rect;
    .restart local v6    # "pf":Landroid/graphics/Rect;
    .restart local v23    # "vf":Landroid/graphics/Rect;
    :cond_12d
    :goto_12d
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v6, v5, v2}, Lcom/android/server/policy/PhoneWindowManager;->layoutScreenDecorWindows(Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 4976
    iget-object v1, v3, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v7, v3, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-le v1, v7, :cond_14c

    .line 4980
    iget-object v1, v3, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget-object v7, v3, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, v3, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, v1, Landroid/graphics/Rect;->top:I

    .line 4983
    :cond_14c
    return-void
.end method

.method public beginPostLayoutPolicyLw(II)V
    .registers 5
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I

    .line 5850
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 5851
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 5852
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 5853
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 5854
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    .line 5855
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    .line 5856
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarTransparent:Z

    .line 5857
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    .line 5858
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBarLayer:I

    .line 5860
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    .line 5861
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    .line 5862
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowSleepTokenNeeded:Z

    .line 5863
    return-void
.end method

.method callInterceptPowerKeyUp(Z)V
    .registers 2
    .param p1, "canceled"    # Z

    .line 9393
    return-void
.end method

.method public canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .registers 6
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 3203
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x0

    const/16 v2, 0x7d0

    if-eq v0, v2, :cond_24

    const/16 v3, 0x7dd

    if-eq v0, v3, :cond_24

    const/16 v3, 0x7e3

    if-eq v0, v3, :cond_24

    const/16 v3, 0x7e7

    if-eq v0, v3, :cond_24

    .line 3211
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result v0

    invoke-virtual {p0, v2}, Lcom/android/server/policy/PhoneWindowManager;->getWindowLayerFromTypeLw(I)I

    move-result v2

    if-ge v0, v2, :cond_23

    const/4 v1, 0x1

    nop

    :cond_23
    return v1

    .line 3208
    :cond_24
    return v1
.end method

.method public canDismissBootAnimation()Z
    .registers 3

    .line 7998
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7999
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    monitor-exit v0

    return v1

    .line 8000
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public checkAddPermission(Landroid/view/WindowManager$LayoutParams;[I)I
    .registers 13
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "outAppOp"    # [I

    .line 2777
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2778
    .local v0, "type":I
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_d

    move v1, v2

    goto :goto_e

    :cond_d
    move v1, v3

    .line 2781
    .local v1, "isRoundedCornerOverlay":Z
    :goto_e
    const/4 v4, -0x8

    if-eqz v1, :cond_1c

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1c

    .line 2783
    return v4

    .line 2787
    :cond_1c
    iget v5, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v6, -0x80000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_25

    move v5, v2

    goto :goto_26

    :cond_25
    move v5, v3

    .line 2789
    .local v5, "isHbmOverlay":Z
    :goto_26
    if-eqz v5, :cond_33

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_33

    .line 2791
    return v4

    .line 2795
    :cond_33
    const/4 v6, -0x1

    aput v6, p2, v3

    .line 2797
    const/16 v6, 0xbb7

    const/16 v7, 0x7d0

    const/16 v8, 0x3e8

    if-lt v0, v2, :cond_42

    const/16 v2, 0x63

    if-le v0, v2, :cond_4e

    :cond_42
    if-lt v0, v8, :cond_48

    const/16 v2, 0x7cf

    if-le v0, v2, :cond_4e

    :cond_48
    if-lt v0, v7, :cond_e9

    if-le v0, v6, :cond_4e

    goto/16 :goto_e9

    .line 2803
    :cond_4e
    if-lt v0, v7, :cond_e8

    if-le v0, v6, :cond_54

    goto/16 :goto_e8

    .line 2808
    :cond_54
    invoke-static {v0}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    move-result v2

    if-nez v2, :cond_88

    .line 2809
    const/16 v2, 0x7d5

    if-eq v0, v2, :cond_83

    const/16 v2, 0x7db

    if-eq v0, v2, :cond_82

    const/16 v2, 0x7dd

    if-eq v0, v2, :cond_82

    const/16 v2, 0x7e7

    if-eq v0, v2, :cond_82

    const/16 v2, 0x7f3

    if-eq v0, v2, :cond_82

    const/16 v2, 0x7f5

    if-eq v0, v2, :cond_82

    packed-switch v0, :pswitch_data_ec

    .line 2829
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.INTERNAL_SYSTEM_WINDOW"

    .line 2828
    invoke-virtual {v2, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_80

    .line 2829
    goto :goto_81

    .line 2828
    :cond_80
    move v3, v4

    :goto_81
    return v3

    .line 2826
    :cond_82
    :pswitch_82
    return v3

    .line 2815
    :cond_83
    const/16 v2, 0x2d

    aput v2, p2, v3

    .line 2816
    return v3

    .line 2833
    :cond_88
    const/16 v2, 0x18

    aput v2, p2, v3

    .line 2835
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2837
    .local v2, "callingUid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    if-ne v6, v8, :cond_97

    .line 2838
    return v3

    .line 2843
    :cond_97
    :try_start_97
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 2846
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 2843
    invoke-virtual {v6, v7, v3, v8}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6
    :try_end_a7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_97 .. :try_end_a7} :catch_a8

    .line 2849
    .local v6, "appInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_aa

    .line 2847
    .end local v6    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_a8
    move-exception v6

    .line 2848
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v6, 0x0

    .line 2851
    .local v6, "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_aa
    if-eqz v6, :cond_db

    const/16 v7, 0x7f6

    if-eq v0, v7, :cond_b7

    iget v7, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v8, 0x1a

    if-lt v7, v8, :cond_b7

    goto :goto_db

    .line 2864
    :cond_b7
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    aget v8, p2, v3

    iget-object v9, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8, v2, v9}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v7

    .line 2865
    .local v7, "mode":I
    packed-switch v7, :pswitch_data_f6

    .line 2880
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {v8, v9}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_d8

    .line 2881
    goto :goto_da

    .line 2873
    :pswitch_cf
    iget v8, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v9, 0x17

    if-ge v8, v9, :cond_d6

    .line 2874
    return v3

    .line 2876
    :cond_d6
    return v4

    .line 2870
    :pswitch_d7
    return v3

    .line 2881
    :cond_d8
    nop

    .line 2880
    move v3, v4

    :goto_da
    return v3

    .line 2858
    .end local v7    # "mode":I
    :cond_db
    :goto_db
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_e6

    .line 2859
    goto :goto_e7

    .line 2858
    :cond_e6
    move v3, v4

    :goto_e7
    return v3

    .line 2805
    .end local v2    # "callingUid":I
    .end local v6    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_e8
    :goto_e8
    return v3

    .line 2800
    :cond_e9
    :goto_e9
    const/16 v2, -0xa

    return v2

    :pswitch_data_ec
    .packed-switch 0x7ee
        :pswitch_82
        :pswitch_82
        :pswitch_82
    .end packed-switch

    :pswitch_data_f6
    .packed-switch 0x0
        :pswitch_d7
        :pswitch_d7
        :pswitch_cf
    .end packed-switch
.end method

.method public checkShowToOwnerOnly(Landroid/view/WindowManager$LayoutParams;)Z
    .registers 5
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 2890
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2d

    const/16 v1, 0x7de

    if-eq v0, v1, :cond_2d

    const/16 v1, 0x7e8

    if-eq v0, v1, :cond_2d

    const/16 v1, 0x7ee

    if-eq v0, v1, :cond_2d

    const/16 v1, 0x7f2

    if-eq v0, v1, :cond_2d

    const/16 v1, 0x7f5

    if-eq v0, v1, :cond_2d

    packed-switch v0, :pswitch_data_3a

    packed-switch v0, :pswitch_data_44

    packed-switch v0, :pswitch_data_4e

    packed-switch v0, :pswitch_data_5e

    .line 2897
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_2d

    .line 2898
    return v2

    .line 2928
    :cond_2d
    :pswitch_2d
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_38

    goto :goto_39

    :cond_38
    const/4 v2, 0x0

    :goto_39
    return v2

    :pswitch_data_3a
    .packed-switch 0x7d0
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
    .end packed-switch

    :pswitch_data_44
    .packed-switch 0x7d7
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
    .end packed-switch

    :pswitch_data_4e
    .packed-switch 0x7e1
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
    .end packed-switch

    :pswitch_data_5e
    .packed-switch 0x7ea
        :pswitch_2d
        :pswitch_2d
    .end packed-switch
.end method

.method public createHiddenByKeyguardExit(ZZ)Landroid/view/animation/Animation;
    .registers 8
    .param p1, "onWallpaper"    # Z
    .param p2, "goingToNotificationShade"    # Z

    .line 3687
    if-eqz p2, :cond_c

    .line 3688
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const v1, 0x10a005a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    .line 3695
    :cond_c
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const v1, 0x10a0059

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationSet;

    .line 3700
    .local v0, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v1

    .line 3701
    .local v1, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/view/animation/Animation;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_21
    if-ltz v2, :cond_31

    .line 3702
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLogDecelerateInterpolator:Lcom/android/server/policy/LogDecelerateInterpolator;

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3701
    add-int/lit8 v2, v2, -0x1

    goto :goto_21

    .line 3705
    .end local v2    # "i":I
    :cond_31
    return-object v0
.end method

.method public createHiddenByKeyguardExitForAppWindow(ZZ)Landroid/view/animation/Animation;
    .registers 8
    .param p1, "onWallpaper"    # Z
    .param p2, "goingToNotificationShade"    # Z

    .line 3712
    if-eqz p2, :cond_c

    .line 3713
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const v1, 0x10a005a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    .line 3716
    :cond_c
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const v1, 0x10a005b

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationSet;

    .line 3720
    .local v0, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v1

    .line 3721
    .local v1, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/view/animation/Animation;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_21
    if-ltz v2, :cond_31

    .line 3722
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3721
    add-int/lit8 v2, v2, -0x1

    goto :goto_21

    .line 3725
    .end local v2    # "i":I
    :cond_31
    return-object v0
.end method

.method createHomeDockIntent()Landroid/content/Intent;
    .registers 7

    .line 8253
    const/4 v0, 0x0

    .line 8258
    .local v0, "intent":Landroid/content/Intent;
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_d

    .line 8259
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    if-eqz v1, :cond_30

    .line 8260
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    goto :goto_30

    .line 8262
    :cond_d
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_13

    goto :goto_30

    .line 8266
    :cond_13
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    const/4 v3, 0x6

    if-ne v1, v3, :cond_29

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_26

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    const/4 v3, 0x4

    if-eq v1, v3, :cond_26

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    if-ne v1, v2, :cond_29

    .line 8271
    :cond_26
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    goto :goto_30

    .line 8272
    :cond_29
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_30

    .line 8274
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrHeadsetHomeIntent:Landroid/content/Intent;

    .line 8278
    :cond_30
    :goto_30
    const/4 v1, 0x0

    if-nez v0, :cond_34

    .line 8279
    return-object v1

    .line 8282
    :cond_34
    const/4 v2, 0x0

    .line 8283
    .local v2, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const v4, 0x10080

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 8287
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_48

    .line 8288
    iget-object v2, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 8290
    :cond_48
    if-eqz v2, :cond_66

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_66

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "android.dock_home"

    .line 8292
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_66

    .line 8293
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v0, v1

    .line 8294
    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8295
    return-object v0

    .line 8298
    :cond_66
    return-object v1
.end method

.method public createKeyguardWallpaperExit(Z)Landroid/view/animation/Animation;
    .registers 4
    .param p1, "goingToNotificationShade"    # Z

    .line 3731
    if-eqz p1, :cond_4

    .line 3732
    const/4 v0, 0x0

    return-object v0

    .line 3734
    :cond_4
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const v1, 0x10a005f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public dismissKeyguardLw(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .registers 6
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardDismissCallback;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .line 7443
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 7447
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 7449
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getKeyguardWindowState()Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    move-result-object v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 7451
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 7452
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.server.cts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 7453
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getKeyguardWindowState()Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->showLw(Z)Z

    goto :goto_52

    .line 7456
    :cond_44
    if-eqz p1, :cond_52

    .line 7458
    :try_start_46
    invoke-interface {p1}, Lcom/android/internal/policy/IKeyguardDismissCallback;->onDismissError()V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_49} :catch_4a

    .line 7461
    goto :goto_52

    .line 7459
    :catch_4a
    move-exception v0

    .line 7460
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WindowManager"

    const-string v2, "Failed to call callback"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7463
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_52
    :goto_52
    return-void
.end method

.method dispatchMediaKeyRepeatWithWakeLock(Landroid/view/KeyEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 6936
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 6938
    nop

    .line 6939
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    or-int/lit16 v2, v2, 0x80

    .line 6938
    const/4 v3, 0x1

    invoke-static {p1, v0, v1, v3, v2}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;

    move-result-object v0

    .line 6944
    .local v0, "repeatEvent":Landroid/view/KeyEvent;
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    .line 6945
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6946
    return-void
.end method

.method dispatchMediaKeyWithWakeLock(Landroid/view/KeyEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 6910
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    const/4 v1, 0x4

    if-eqz v0, :cond_12

    .line 6915
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6916
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 6917
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6920
    :cond_12
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    .line 6922
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_38

    .line 6923
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_38

    .line 6924
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 6926
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 6928
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 6929
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6930
    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_3d

    .line 6931
    :cond_38
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6933
    :goto_3d
    return-void
.end method

.method dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 6949
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 6950
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 6952
    :cond_12
    return-void
.end method

.method public dispatchUnhandledKey(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .registers 27
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    move-object/from16 v0, p0

    .line 4394
    const/4 v1, 0x0

    .line 4395
    .local v1, "fallbackEvent":Landroid/view/KeyEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x400

    if-nez v2, :cond_8e

    .line 4396
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v2

    .line 4397
    .local v2, "kcm":Landroid/view/KeyCharacterMap;
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 4398
    .local v3, "keyCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v4

    .line 4399
    .local v4, "metaState":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_25

    .line 4400
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_25

    const/4 v5, 0x1

    goto :goto_26

    :cond_25
    const/4 v5, 0x0

    .line 4404
    .local v5, "initialDown":Z
    :goto_26
    if-eqz v5, :cond_2d

    .line 4405
    invoke-virtual {v2, v3, v4}, Landroid/view/KeyCharacterMap;->getFallbackAction(II)Landroid/view/KeyCharacterMap$FallbackAction;

    move-result-object v7

    .local v7, "fallbackAction":Landroid/view/KeyCharacterMap$FallbackAction;
    goto :goto_35

    .line 4407
    .end local v7    # "fallbackAction":Landroid/view/KeyCharacterMap$FallbackAction;
    :cond_2d
    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/KeyCharacterMap$FallbackAction;

    .line 4410
    .restart local v7    # "fallbackAction":Landroid/view/KeyCharacterMap$FallbackAction;
    :goto_35
    if-eqz v7, :cond_8e

    .line 4416
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v8

    or-int/lit16 v8, v8, 0x400

    .line 4417
    .local v8, "flags":I
    nop

    .line 4418
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v9

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v11

    .line 4419
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v13

    iget v14, v7, Landroid/view/KeyCharacterMap$FallbackAction;->keyCode:I

    .line 4420
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v15

    iget v6, v7, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    .line 4421
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v18

    .line 4422
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v20

    const/16 v21, 0x0

    .line 4417
    move/from16 v16, v6

    move/from16 v19, v8

    invoke-static/range {v9 .. v21}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v1

    .line 4424
    move-object/from16 v6, p1

    move/from16 v9, p3

    invoke-direct {v0, v6, v1, v9}, Lcom/android/server/policy/PhoneWindowManager;->interceptFallback(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Z

    move-result v10

    if-nez v10, :cond_76

    .line 4425
    invoke-virtual {v1}, Landroid/view/KeyEvent;->recycle()V

    .line 4426
    const/4 v1, 0x0

    .line 4429
    :cond_76
    if-eqz v5, :cond_7e

    .line 4430
    iget-object v10, v0, Lcom/android/server/policy/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    invoke-virtual {v10, v3, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_92

    .line 4431
    :cond_7e
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_92

    .line 4432
    iget-object v10, v0, Lcom/android/server/policy/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 4433
    invoke-virtual {v7}, Landroid/view/KeyCharacterMap$FallbackAction;->recycle()V

    .end local v2    # "kcm":Landroid/view/KeyCharacterMap;
    .end local v3    # "keyCode":I
    .end local v4    # "metaState":I
    .end local v5    # "initialDown":Z
    .end local v7    # "fallbackAction":Landroid/view/KeyCharacterMap$FallbackAction;
    .end local v8    # "flags":I
    goto :goto_92

    .line 4445
    :cond_8e
    move-object/from16 v6, p1

    move/from16 v9, p3

    :cond_92
    :goto_92
    return-object v1
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 8998
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSafeMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeMode:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 8999
    const-string v0, " mSystemReady="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 9000
    const-string v0, " mSystemBooted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9001
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLidState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9002
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    invoke-static {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->lidStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9003
    const-string v0, " mLidOpenRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9004
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidOpenRotation:I

    invoke-static {v0}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9005
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCameraLensCoverState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9006
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    invoke-static {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->cameraLensStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9007
    const-string v0, " mHdmiPlugged="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9008
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    if-nez v0, :cond_6a

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    if-nez v0, :cond_6a

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    if-eqz v0, :cond_98

    .line 9010
    :cond_6a
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLastSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9011
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9012
    const-string v0, " mResettingSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9013
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9014
    const-string v0, " mForceClearedSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9015
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9017
    :cond_98
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    if-eqz v0, :cond_aa

    .line 9018
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLastFocusNeedsMenu="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9019
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9021
    :cond_aa
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWakeGestureEnabledSetting="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9022
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9024
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9025
    const-string/jumbo v0, "mSupportAutoRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportAutoRotation:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 9026
    const-string v0, " mOrientationSensorEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9027
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mUiMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    invoke-static {v0}, Landroid/content/res/Configuration;->uiModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9028
    const-string v0, " mDockMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    invoke-static {v0}, Landroid/content/Intent;->dockStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9029
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mEnableCarDockHomeCapture="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9030
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 9031
    const-string v0, " mCarDockRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9032
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockRotation:I

    invoke-static {v0}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9033
    const-string v0, " mDeskDockRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9034
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockRotation:I

    invoke-static {v0}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9035
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mUserRotationMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9036
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    invoke-static {v0}, Lcom/android/server/policy/WindowManagerPolicy;->userRotationModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9037
    const-string v0, " mUserRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    invoke-static {v0}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9038
    const-string v0, " mAllowAllRotations="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9039
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowAllRotations:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->allowAllRotationsToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9040
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCurrentAppOrientation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9041
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9042
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCarDockEnablesAccelerometer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9043
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 9044
    const-string v0, " mDeskDockEnablesAccelerometer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9045
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9046
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLidKeyboardAccessibility="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9047
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9048
    const-string v0, " mLidNavigationAccessibility="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9049
    const-string v0, " mLidControlsScreenLock="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsScreenLock:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9050
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLidControlsSleep="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsSleep:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9051
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9052
    const-string/jumbo v0, "mLongPressOnBackBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9053
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->longPressOnBackBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9054
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9055
    const-string/jumbo v0, "mLongPressOnHomeBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9056
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->longPressOnHomeBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9057
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9058
    const-string/jumbo v0, "mDoubleTapOnHomeBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9059
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->doubleTapOnHomeBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9060
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9061
    const-string/jumbo v0, "mShortPressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9062
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->shortPressOnPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9063
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9064
    const-string/jumbo v0, "mLongPressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9065
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->longPressOnPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9066
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9067
    const-string/jumbo v0, "mVeryLongPressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9068
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->veryLongPressOnPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9069
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9070
    const-string/jumbo v0, "mDoublePressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9071
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->multiPressOnPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9072
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9073
    const-string/jumbo v0, "mTriplePressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9074
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->multiPressOnPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9075
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9076
    const-string/jumbo v0, "mShortPressOnSleepBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9077
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->shortPressOnSleepBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9078
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9079
    const-string/jumbo v0, "mShortPressOnWindowBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9080
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnWindowBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->shortPressOnWindowBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9081
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9082
    const-string/jumbo v0, "mAllowStartActivityForLongPressOnPowerDuringSetup="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9083
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowStartActivityForLongPressOnPowerDuringSetup:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9084
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9085
    const-string/jumbo v0, "mHasSoftInput="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 9086
    const-string v0, " mDismissImeOnBackKeyPressed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissImeOnBackKeyPressed:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9087
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9088
    const-string/jumbo v0, "mIncallPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9089
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->incallPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9090
    const-string v0, " mIncallBackBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9091
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallBackBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->incallBackBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9092
    const-string v0, " mEndcallBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9093
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->endcallBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9094
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHomePressed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomePressed:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9095
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9096
    const-string/jumbo v0, "mAwake="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 9097
    const-string/jumbo v0, "mScreenOnEarly="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 9098
    const-string v0, " mScreenOnFully="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9099
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mKeyguardDrawComplete="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 9100
    const-string v0, " mWindowManagerDrawComplete="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9101
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDockLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9102
    const-string v0, " mStatusBarLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 9103
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mShowingDream="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 9104
    const-string v0, " mDreamingLockscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingLockscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 9105
    const-string v0, " mDreamingSleepToken="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9106
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_33f

    .line 9107
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLastInputMethodWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9108
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9110
    :cond_33f
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodTargetWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_351

    .line 9111
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLastInputMethodTargetWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9112
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodTargetWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9114
    :cond_351
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_36f

    .line 9115
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mStatusBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9116
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " isStatusBarKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9117
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9119
    :cond_36f
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_381

    .line 9120
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNavigationBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9121
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9123
    :cond_381
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_393

    .line 9124
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFocusedWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9125
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9127
    :cond_393
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    if-eqz v0, :cond_3a5

    .line 9128
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFocusedApp="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9129
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9131
    :cond_3a5
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_3b7

    .line 9132
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTopFullscreenOpaqueWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9133
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9135
    :cond_3b7
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_3c9

    .line 9136
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTopFullscreenOpaqueOrDimmingWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9137
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9139
    :cond_3c9
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    if-eqz v0, :cond_3e6

    .line 9140
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mForcingShowNavBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9141
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "mForcingShowNavBarLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9142
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBarLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 9144
    :cond_3e6
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTopIsFullscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopIsFullscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 9145
    const-string v0, " mKeyguardOccluded="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9146
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9147
    const-string/jumbo v0, "mKeyguardOccludedChanged="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 9148
    const-string v0, " mPendingKeyguardOccluded="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9149
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mForceStatusBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 9150
    const-string v0, " mForceStatusBarFromKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9151
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9152
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAllowLockscreenWhenOn="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 9153
    const-string v0, " mLockScreenTimeout="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9154
    const-string v0, " mLockScreenTimerActive="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9155
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLandscapeRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9156
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    invoke-static {v0}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9157
    const-string v0, " mSeascapeRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9158
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    invoke-static {v0}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9159
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPortraitRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9160
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    invoke-static {v0}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9161
    const-string v0, " mUpsideDownRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9162
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    invoke-static {v0}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9163
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDemoHdmiRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9164
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotation:I

    invoke-static {v0}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9165
    const-string v0, " mDemoHdmiRotationLock="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotationLock:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9166
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mUndockedHdmiRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9167
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUndockedHdmiRotation:I

    invoke-static {v0}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9168
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz v0, :cond_4ec

    .line 9169
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9170
    const-string/jumbo v0, "mAccessibilityTvKey1Pressed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvKey1Pressed:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9171
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9172
    const-string/jumbo v0, "mAccessibilityTvKey2Pressed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvKey2Pressed:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9173
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9174
    const-string/jumbo v0, "mAccessibilityTvScheduled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvScheduled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9177
    :cond_4ec
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/GlobalKeyManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 9178
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/policy/StatusBarController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 9179
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/policy/BarController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 9180
    invoke-static {p1, p2}, Lcom/android/server/policy/PolicyControl;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 9182
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    if-eqz v0, :cond_507

    .line 9183
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 9185
    :cond_507
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    if-eqz v0, :cond_510

    .line 9186
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 9188
    :cond_510
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

    if-eqz v0, :cond_519

    .line 9189
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/BurnInProtectionHelper;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 9191
    :cond_519
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_522

    .line 9192
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 9195
    :cond_522
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Looper state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9196
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/util/PrintWriterPrinter;

    invoke-direct {v1, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 9197
    return-void
.end method

.method public enableKeyguard(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 7389
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_9

    .line 7390
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setKeyguardEnabled(Z)V

    .line 7392
    :cond_9
    return-void
.end method

.method public enableScreenAfterBoot()V
    .registers 2

    .line 8192
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->readLidState()V

    .line 8193
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->applyLidSwitchState()V

    .line 8194
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    .line 8195
    return-void
.end method

.method public exitKeyguardSecurely(Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;)V
    .registers 3
    .param p1, "callback"    # Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;

    .line 7397
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_9

    .line 7398
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->verifyUnlock(Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;)V

    .line 7400
    :cond_9
    return-void
.end method

.method public finishLayoutLw(Lcom/android/server/wm/DisplayFrames;)V
    .registers 2
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;

    .line 5844
    return-void
.end method

.method public finishPostLayoutPolicyLw()I
    .registers 11

    .line 5984
    const/4 v0, 0x0

    .line 5985
    .local v0, "changes":I
    const/4 v1, 0x0

    .line 5987
    .local v1, "topIsFullscreen":Z
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_d

    .line 5988
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    goto :goto_e

    .line 5989
    :cond_d
    const/4 v2, 0x0

    .line 5995
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    :goto_e
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    const/16 v4, 0xf

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v3, :cond_2c

    .line 5996
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingLockscreen:Z

    .line 5997
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepTokenNeeded:Z

    if-eqz v3, :cond_3b

    .line 5998
    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepTokenNeeded:Z

    .line 5999
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3b

    .line 6002
    :cond_2c
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepTokenNeeded:Z

    if-nez v3, :cond_3b

    .line 6003
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepTokenNeeded:Z

    .line 6004
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v6, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 6008
    :cond_3b
    :goto_3b
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_fb

    .line 6012
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarTransparent:Z

    if-eqz v3, :cond_4d

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    if-nez v3, :cond_4d

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    if-nez v3, :cond_4d

    move v3, v6

    goto :goto_4e

    :cond_4d
    move v3, v5

    .line 6015
    .local v3, "shouldBeTransparent":Z
    :goto_4e
    if-nez v3, :cond_56

    .line 6016
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v4, v5}, Lcom/android/server/policy/StatusBarController;->setShowTransparent(Z)V

    goto :goto_63

    .line 6017
    :cond_56
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v4

    if-nez v4, :cond_63

    .line 6018
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v4, v6}, Lcom/android/server/policy/StatusBarController;->setShowTransparent(Z)V

    .line 6021
    :cond_63
    :goto_63
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 6022
    invoke-interface {v4}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v7, 0x800000

    and-int/2addr v4, v7

    if-eqz v4, :cond_72

    move v4, v6

    goto :goto_73

    :cond_72
    move v4, v5

    .line 6023
    .local v4, "statusBarExpanded":Z
    :goto_73
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->topAppHidesStatusBar()Z

    move-result v7

    .line 6024
    .local v7, "topAppHidesStatusBar":Z
    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    if-nez v8, :cond_c6

    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    if-nez v8, :cond_c6

    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarTransparent:Z

    if-nez v8, :cond_c6

    if-eqz v4, :cond_86

    goto :goto_c6

    .line 6038
    :cond_86
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v8, :cond_f6

    .line 6039
    move v1, v7

    .line 6044
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v8}, Lcom/android/server/policy/StatusBarController;->isTransientShowing()Z

    move-result v8

    if-eqz v8, :cond_9e

    .line 6045
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v5, v6}, Lcom/android/server/policy/StatusBarController;->setBarShowingLw(Z)Z

    move-result v5

    if-eqz v5, :cond_f6

    .line 6046
    or-int/lit8 v0, v0, 0x1

    goto :goto_f6

    .line 6048
    :cond_9e
    if-eqz v1, :cond_ba

    .line 6053
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getForbidFullScreenFlag()Z

    move-result v8

    if-nez v8, :cond_ba

    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const/4 v9, 0x3

    .line 6054
    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerInternal;->isStackVisible(I)Z

    move-result v8

    if-nez v8, :cond_ba

    .line 6057
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v6, v5}, Lcom/android/server/policy/StatusBarController;->setBarShowingLw(Z)Z

    move-result v5

    if-eqz v5, :cond_f6

    .line 6058
    or-int/lit8 v0, v0, 0x1

    goto :goto_f6

    .line 6064
    :cond_ba
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v5, v6}, Lcom/android/server/policy/StatusBarController;->setBarShowingLw(Z)Z

    move-result v5

    if-eqz v5, :cond_c4

    .line 6065
    or-int/lit8 v0, v0, 0x1

    .line 6067
    :cond_c4
    const/4 v7, 0x0

    goto :goto_f6

    .line 6027
    :cond_c6
    :goto_c6
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v8, v6}, Lcom/android/server/policy/StatusBarController;->setBarShowingLw(Z)Z

    move-result v8

    if-eqz v8, :cond_d0

    .line 6028
    or-int/lit8 v0, v0, 0x1

    .line 6031
    :cond_d0
    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopIsFullscreen:Z

    if-eqz v8, :cond_dd

    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v8}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v8

    if-eqz v8, :cond_dd

    goto :goto_de

    :cond_dd
    move v6, v5

    :goto_de
    move v1, v6

    .line 6033
    iget-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    if-nez v6, :cond_e5

    if-eqz v4, :cond_f6

    :cond_e5
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    .line 6034
    invoke-virtual {v6}, Lcom/android/server/policy/StatusBarController;->isTransientShowing()Z

    move-result v6

    if-eqz v6, :cond_f6

    .line 6035
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-virtual {v6, v5, v8, v9}, Lcom/android/server/policy/StatusBarController;->updateVisibilityLw(ZII)I

    .line 6070
    :cond_f6
    :goto_f6
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v5, v7}, Lcom/android/server/policy/StatusBarController;->setTopAppHidesStatusBar(Z)V

    .line 6073
    .end local v3    # "shouldBeTransparent":Z
    .end local v4    # "statusBarExpanded":Z
    .end local v7    # "topAppHidesStatusBar":Z
    :cond_fb
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopIsFullscreen:Z

    if-eq v3, v1, :cond_105

    .line 6074
    if-nez v1, :cond_103

    .line 6076
    or-int/lit8 v0, v0, 0x1

    .line 6078
    :cond_103
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopIsFullscreen:Z

    .line 6081
    :cond_105
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    move-result v3

    const v4, -0x3fff7ff2

    and-int/2addr v3, v4

    if-eqz v3, :cond_111

    .line 6084
    or-int/lit8 v0, v0, 0x1

    .line 6087
    :cond_111
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastShowingDream:Z

    if-eq v3, v4, :cond_120

    .line 6088
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastShowingDream:Z

    .line 6089
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->notifyShowingDreamChanged()V

    .line 6092
    :cond_120
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWindowSleepToken()V

    .line 6095
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 6096
    return v0
.end method

.method public finishedGoingToSleep(I)V
    .registers 6
    .param p1, "why"    # I

    .line 7106
    const/4 v0, 0x0

    const v1, 0x11170

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 7107
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finished going to sleep... (why="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7108
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "screen_timeout"

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    div-int/lit16 v3, v3, 0x3e8

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 7110
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGoingToSleep:Z

    .line 7111
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRequestedOrGoingToSleep:Z

    .line 7115
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7116
    :try_start_35
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    .line 7117
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    .line 7118
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 7119
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 7120
    monitor-exit v1
    :try_end_41
    .catchall {:try_start_35 .. :try_end_41} :catchall_4f

    .line 7121
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_4c

    .line 7122
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraGestureTriggeredDuringGoingToSleep:Z

    invoke-virtual {v1, p1, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onFinishedGoingToSleep(IZ)V

    .line 7125
    :cond_4c
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraGestureTriggeredDuringGoingToSleep:Z

    .line 7126
    return-void

    .line 7120
    :catchall_4f
    move-exception v0

    :try_start_50
    monitor-exit v1
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v0
.end method

.method public finishedWakingUp()V
    .registers 3

    .line 7163
    const-string v0, "WindowManager"

    const-string v1, "Finished waking up..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7165
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_10

    .line 7166
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onFinishedWakingUp()V

    .line 7168
    :cond_10
    return-void
.end method

.method public focusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I
    .registers 5
    .param p1, "lastFocus"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "newFocus"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 6180
    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 6181
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    move-result v0

    const v1, -0x3fff7ff2

    and-int/2addr v0, v1

    if-eqz v0, :cond_e

    .line 6184
    const/4 v0, 0x1

    return v0

    .line 6186
    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method getAudioManagerInternal()Landroid/media/AudioManagerInternal;
    .registers 3

    .line 1238
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1239
    :try_start_3
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    if-nez v1, :cond_11

    .line 1240
    const-class v1, Landroid/media/AudioManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManagerInternal;

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    .line 1242
    :cond_11
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    monitor-exit v0

    return-object v1

    .line 1243
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public getConfigDisplayHeight(IIIIILandroid/view/DisplayCutout;)I
    .registers 10
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I
    .param p3, "rotation"    # I
    .param p4, "uiMode"    # I
    .param p5, "displayId"    # I
    .param p6, "displayCutout"    # Landroid/view/DisplayCutout;

    .line 3183
    if-nez p5, :cond_19

    .line 3184
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeightForRotation:[I

    aget v0, v0, p3

    .line 3185
    .local v0, "statusBarHeight":I
    if-eqz p6, :cond_13

    .line 3188
    const/4 v1, 0x0

    invoke-virtual {p6}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v2

    sub-int v2, v0, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3190
    :cond_13
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/policy/PhoneWindowManager;->getNonDecorDisplayHeight(IIIIILandroid/view/DisplayCutout;)I

    move-result v1

    sub-int/2addr v1, v0

    return v1

    .line 3193
    .end local v0    # "statusBarHeight":I
    :cond_19
    return p2
.end method

.method public getConfigDisplayWidth(IIIIILandroid/view/DisplayCutout;)I
    .registers 8
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I
    .param p3, "rotation"    # I
    .param p4, "uiMode"    # I
    .param p5, "displayId"    # I
    .param p6, "displayCutout"    # Landroid/view/DisplayCutout;

    .line 3171
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/policy/PhoneWindowManager;->getNonDecorDisplayWidth(IIIIILandroid/view/DisplayCutout;)I

    move-result v0

    return v0
.end method

.method getExtraSystemUiVisibility(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I
    .registers 3
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 9398
    const/4 v0, 0x0

    return v0
.end method

.method protected getForbidFullScreenFlag()Z
    .registers 2

    .line 9424
    const/4 v0, 0x0

    return v0
.end method

.method protected getKeyguardWindowState()Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .registers 2

    .line 9411
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLayoutHintLw(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;)Z
    .registers 36
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "taskBounds"    # Landroid/graphics/Rect;
    .param p3, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p4, "outFrame"    # Landroid/graphics/Rect;
    .param p5, "outContentInsets"    # Landroid/graphics/Rect;
    .param p6, "outStableInsets"    # Landroid/graphics/Rect;
    .param p7, "outOutsets"    # Landroid/graphics/Rect;
    .param p8, "outDisplayCutout"    # Landroid/view/DisplayCutout$ParcelableWrapper;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 4793
    move-object/from16 v8, p8

    const/4 v9, 0x0

    invoke-static {v9, v1}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v10

    .line 4794
    .local v10, "fl":I
    iget v11, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 4795
    .local v11, "pfl":I
    invoke-static {v9, v1}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v9

    .line 4796
    .local v9, "requestedSysUiVis":I
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->getImpliedSysUiFlagsForLayout(Landroid/view/WindowManager$LayoutParams;)I

    move-result v12

    or-int/2addr v12, v9

    .line 4797
    .local v12, "sysUiVis":I
    iget v13, v3, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 4798
    .local v13, "displayRotation":I
    iget v14, v3, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    .line 4799
    .local v14, "displayWidth":I
    iget v15, v3, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    .line 4801
    .local v15, "displayHeight":I
    const/16 v16, 0x0

    move/from16 v17, v9

    .end local v9    # "requestedSysUiVis":I
    .local v17, "requestedSysUiVis":I
    if-eqz v7, :cond_37

    invoke-direct {v0, v1, v10}, Lcom/android/server/policy/PhoneWindowManager;->shouldUseOutsets(Landroid/view/WindowManager$LayoutParams;I)Z

    move-result v18

    if-eqz v18, :cond_37

    const/16 v18, 0x1

    goto :goto_39

    :cond_37
    move/from16 v18, v16

    .line 4802
    .local v18, "useOutsets":Z
    :goto_39
    if-eqz v18, :cond_69

    .line 4803
    iget-object v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/util/ScreenShapeHelper;->getWindowOutsetBottomPx(Landroid/content/res/Resources;)I

    move-result v9

    .line 4804
    .local v9, "outset":I
    if-lez v9, :cond_69

    .line 4805
    if-nez v13, :cond_4f

    .line 4806
    iget v1, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v9

    iput v1, v7, Landroid/graphics/Rect;->bottom:I

    goto :goto_69

    .line 4807
    :cond_4f
    const/4 v1, 0x1

    if-ne v13, v1, :cond_58

    .line 4808
    iget v1, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v9

    iput v1, v7, Landroid/graphics/Rect;->right:I

    goto :goto_69

    .line 4809
    :cond_58
    const/4 v1, 0x2

    if-ne v13, v1, :cond_61

    .line 4810
    iget v1, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v9

    iput v1, v7, Landroid/graphics/Rect;->top:I

    goto :goto_69

    .line 4811
    :cond_61
    const/4 v1, 0x3

    if-ne v13, v1, :cond_69

    .line 4812
    iget v1, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v9

    iput v1, v7, Landroid/graphics/Rect;->left:I

    .line 4817
    .end local v9    # "outset":I
    :cond_69
    :goto_69
    and-int/lit16 v1, v10, 0x100

    if-eqz v1, :cond_6f

    const/4 v1, 0x1

    goto :goto_71

    :cond_6f
    move/from16 v1, v16

    .line 4818
    .local v1, "layoutInScreen":Z
    :goto_71
    if-eqz v1, :cond_7a

    const/high16 v9, 0x10000

    and-int/2addr v9, v10

    if-eqz v9, :cond_7a

    const/4 v9, 0x1

    goto :goto_7c

    :cond_7a
    move/from16 v9, v16

    .line 4820
    .local v9, "layoutInScreenAndInsetDecor":Z
    :goto_7c
    const/high16 v19, 0x400000

    and-int v19, v11, v19

    if-eqz v19, :cond_85

    const/16 v20, 0x1

    goto :goto_87

    :cond_85
    move/from16 v20, v16

    :goto_87
    move/from16 v16, v20

    .line 4822
    .local v16, "screenDecor":Z
    if-eqz v9, :cond_13b

    if-nez v16, :cond_13b

    .line 4824
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v19

    if-eqz v19, :cond_a7

    and-int/lit16 v7, v12, 0x200

    if-eqz v7, :cond_a7

    .line 4826
    iget-object v7, v3, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4827
    iget-object v7, v3, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    .line 4828
    .local v7, "availRight":I
    move/from16 v21, v7

    iget-object v7, v3, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    .end local v7    # "availRight":I
    .local v21, "availRight":I
    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    .local v7, "availBottom":I
    goto :goto_b8

    .line 4830
    .end local v7    # "availBottom":I
    .end local v21    # "availRight":I
    :cond_a7
    iget-object v7, v3, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4831
    iget-object v7, v3, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    .line 4832
    .local v7, "availRight":I
    move/from16 v22, v7

    iget-object v7, v3, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    .end local v7    # "availRight":I
    .local v22, "availRight":I
    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v22

    .line 4834
    .end local v22    # "availRight":I
    .local v7, "availBottom":I
    .restart local v21    # "availRight":I
    :goto_b8
    move/from16 v23, v9

    iget-object v9, v3, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    .end local v9    # "layoutInScreenAndInsetDecor":Z
    .local v23, "layoutInScreenAndInsetDecor":Z
    iget v9, v9, Landroid/graphics/Rect;->left:I

    move/from16 v24, v11

    iget-object v11, v3, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    .end local v11    # "pfl":I
    .local v24, "pfl":I
    iget v11, v11, Landroid/graphics/Rect;->top:I

    move/from16 v25, v13

    iget-object v13, v3, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    .end local v13    # "displayRotation":I
    .local v25, "displayRotation":I
    iget v13, v13, Landroid/graphics/Rect;->right:I

    sub-int v13, v21, v13

    move/from16 v26, v1

    iget-object v1, v3, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    .end local v1    # "layoutInScreen":Z
    .local v26, "layoutInScreen":Z
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v7, v1

    invoke-virtual {v6, v9, v11, v13, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 4838
    and-int/lit16 v1, v12, 0x100

    if-eqz v1, :cond_fb

    .line 4839
    and-int/lit16 v1, v10, 0x400

    if-eqz v1, :cond_f7

    .line 4840
    iget-object v1, v3, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v9, v3, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v11, v3, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    sub-int v11, v21, v11

    iget-object v13, v3, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    sub-int v13, v7, v13

    invoke-virtual {v5, v1, v9, v11, v13}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_120

    .line 4845
    :cond_f7
    invoke-virtual/range {p5 .. p6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_120

    .line 4847
    :cond_fb
    and-int/lit16 v1, v10, 0x400

    if-nez v1, :cond_11d

    const/high16 v1, 0x2000000

    and-int/2addr v1, v10

    if-eqz v1, :cond_105

    goto :goto_11d

    .line 4850
    :cond_105
    iget-object v1, v3, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v9, v3, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v11, v3, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    sub-int v11, v21, v11

    iget-object v13, v3, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    sub-int v13, v7, v13

    invoke-virtual {v5, v1, v9, v11, v13}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_120

    .line 4848
    :cond_11d
    :goto_11d
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->setEmpty()V

    .line 4855
    :goto_120
    if-eqz v2, :cond_12b

    .line 4856
    invoke-direct {v0, v2, v5, v14, v15}, Lcom/android/server/policy/PhoneWindowManager;->calculateRelevantTaskInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 4858
    invoke-direct {v0, v2, v6, v14, v15}, Lcom/android/server/policy/PhoneWindowManager;->calculateRelevantTaskInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 4860
    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 4862
    :cond_12b
    iget-object v1, v3, Lcom/android/server/wm/DisplayFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/utils/WmDisplayCutout;->calculateRelativeTo(Landroid/graphics/Rect;)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v1

    .line 4863
    invoke-virtual {v1}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    .line 4862
    invoke-virtual {v8, v1}, Landroid/view/DisplayCutout$ParcelableWrapper;->set(Landroid/view/DisplayCutout;)V

    .line 4864
    iget-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    return v1

    .line 4866
    .end local v7    # "availBottom":I
    .end local v21    # "availRight":I
    .end local v23    # "layoutInScreenAndInsetDecor":Z
    .end local v24    # "pfl":I
    .end local v25    # "displayRotation":I
    .end local v26    # "layoutInScreen":Z
    .restart local v1    # "layoutInScreen":Z
    .restart local v9    # "layoutInScreenAndInsetDecor":Z
    .restart local v11    # "pfl":I
    .restart local v13    # "displayRotation":I
    :cond_13b
    move/from16 v26, v1

    move/from16 v23, v9

    move/from16 v24, v11

    move/from16 v25, v13

    .end local v1    # "layoutInScreen":Z
    .end local v9    # "layoutInScreenAndInsetDecor":Z
    .end local v11    # "pfl":I
    .end local v13    # "displayRotation":I
    .restart local v23    # "layoutInScreenAndInsetDecor":Z
    .restart local v24    # "pfl":I
    .restart local v25    # "displayRotation":I
    .restart local v26    # "layoutInScreen":Z
    if-eqz v26, :cond_14b

    .line 4867
    iget-object v1, v3, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_150

    .line 4869
    :cond_14b
    iget-object v1, v3, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4871
    :goto_150
    if-eqz v2, :cond_155

    .line 4872
    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 4875
    :cond_155
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->setEmpty()V

    .line 4876
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->setEmpty()V

    .line 4877
    sget-object v1, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    invoke-virtual {v8, v1}, Landroid/view/DisplayCutout$ParcelableWrapper;->set(Landroid/view/DisplayCutout;)V

    .line 4878
    iget-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    return v1
.end method

.method public getMaxWallpaperLayer()I
    .registers 2

    .line 3113
    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->getWindowLayerFromTypeLw(I)I

    move-result v0

    return v0
.end method

.method public getNavBarPosition()I
    .registers 2

    .line 7528
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    return v0
.end method

.method public getNonDecorDisplayHeight(IIIIILandroid/view/DisplayCutout;)I
    .registers 10
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I
    .param p3, "rotation"    # I
    .param p4, "uiMode"    # I
    .param p5, "displayId"    # I
    .param p6, "displayCutout"    # Landroid/view/DisplayCutout;

    .line 3153
    move v0, p2

    .line 3155
    .local v0, "height":I
    if-nez p5, :cond_12

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v1, :cond_12

    .line 3158
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-eqz v1, :cond_d

    if-ge p1, p2, :cond_12

    .line 3159
    :cond_d
    invoke-direct {p0, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->getNavigationBarHeight(II)I

    move-result v1

    sub-int/2addr v0, v1

    .line 3162
    :cond_12
    if-eqz p6, :cond_1e

    .line 3163
    invoke-virtual {p6}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v1

    invoke-virtual {p6}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 3165
    :cond_1e
    return v0
.end method

.method public getNonDecorDisplayWidth(IIIIILandroid/view/DisplayCutout;)I
    .registers 10
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I
    .param p3, "rotation"    # I
    .param p4, "uiMode"    # I
    .param p5, "displayId"    # I
    .param p6, "displayCutout"    # Landroid/view/DisplayCutout;

    .line 3127
    move v0, p1

    .line 3129
    .local v0, "width":I
    if-nez p5, :cond_12

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v1, :cond_12

    .line 3132
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-eqz v1, :cond_12

    if-le p1, p2, :cond_12

    .line 3133
    invoke-direct {p0, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->getNavigationBarWidth(II)I

    move-result v1

    sub-int/2addr v0, v1

    .line 3136
    :cond_12
    if-eqz p6, :cond_1e

    .line 3137
    invoke-virtual {p6}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v1

    invoke-virtual {p6}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 3139
    :cond_1e
    return v0
.end method

.method public getNonDecorInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V
    .registers 8
    .param p1, "displayRotation"    # I
    .param p2, "displayWidth"    # I
    .param p3, "displayHeight"    # I
    .param p4, "displayCutout"    # Landroid/view/DisplayCutout;
    .param p5, "outInsets"    # Landroid/graphics/Rect;

    .line 7498
    invoke-virtual {p5}, Landroid/graphics/Rect;->setEmpty()V

    .line 7501
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v0, :cond_2e

    .line 7502
    invoke-direct {p0, p2, p3, p1}, Lcom/android/server/policy/PhoneWindowManager;->navigationBarPosition(III)I

    move-result v0

    .line 7503
    .local v0, "position":I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_17

    .line 7504
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    invoke-direct {p0, p1, v1}, Lcom/android/server/policy/PhoneWindowManager;->getNavigationBarHeight(II)I

    move-result v1

    iput v1, p5, Landroid/graphics/Rect;->bottom:I

    goto :goto_2e

    .line 7505
    :cond_17
    const/4 v1, 0x2

    if-ne v0, v1, :cond_23

    .line 7506
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    invoke-direct {p0, p1, v1}, Lcom/android/server/policy/PhoneWindowManager;->getNavigationBarWidth(II)I

    move-result v1

    iput v1, p5, Landroid/graphics/Rect;->right:I

    goto :goto_2e

    .line 7507
    :cond_23
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2e

    .line 7508
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    invoke-direct {p0, p1, v1}, Lcom/android/server/policy/PhoneWindowManager;->getNavigationBarWidth(II)I

    move-result v1

    iput v1, p5, Landroid/graphics/Rect;->left:I

    .line 7512
    .end local v0    # "position":I
    :cond_2e
    :goto_2e
    if-eqz p4, :cond_54

    .line 7513
    iget v0, p5, Landroid/graphics/Rect;->left:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p5, Landroid/graphics/Rect;->left:I

    .line 7514
    iget v0, p5, Landroid/graphics/Rect;->top:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p5, Landroid/graphics/Rect;->top:I

    .line 7515
    iget v0, p5, Landroid/graphics/Rect;->right:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p5, Landroid/graphics/Rect;->right:I

    .line 7516
    iget v0, p5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p5, Landroid/graphics/Rect;->bottom:I

    .line 7518
    :cond_54
    return-void
.end method

.method getPowerLongPress()Ljava/lang/Runnable;
    .registers 2

    .line 9383
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    return-object v0
.end method

.method protected getPowerLongPressTimeOut()J
    .registers 3

    .line 9416
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method getScreenshotChordLongPress()Ljava/lang/Runnable;
    .registers 2

    .line 9378
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    return-object v0
.end method

.method public getStableInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V
    .registers 8
    .param p1, "displayRotation"    # I
    .param p2, "displayWidth"    # I
    .param p3, "displayHeight"    # I
    .param p4, "displayCutout"    # Landroid/view/DisplayCutout;
    .param p5, "outInsets"    # Landroid/graphics/Rect;

    .line 7488
    invoke-virtual {p5}, Landroid/graphics/Rect;->setEmpty()V

    .line 7491
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/policy/PhoneWindowManager;->getNonDecorInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 7492
    iget v0, p5, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeightForRotation:[I

    aget v1, v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p5, Landroid/graphics/Rect;->top:I

    .line 7493
    return-void
.end method

.method getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;
    .registers 3

    .line 1228
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1229
    :try_start_3
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-nez v1, :cond_11

    .line 1230
    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 1231
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 1233
    :cond_11
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    monitor-exit v0

    return-object v1

    .line 1234
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .registers 3

    .line 1218
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1219
    :try_start_3
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v1, :cond_14

    .line 1220
    const-string/jumbo v1, "statusbar"

    .line 1221
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1220
    invoke-static {v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 1223
    :cond_14
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v0

    return-object v1

    .line 1224
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public getSystemDecorLayerLw()I
    .registers 2

    .line 5242
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 5243
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    return v0

    .line 5246
    :cond_13
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 5247
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    return v0

    .line 5250
    :cond_26
    const/4 v0, 0x0

    return v0
.end method

.method getSystemUiContext()Landroid/content/Context;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3108
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    return-object v0
.end method

.method getTelecommService()Landroid/telecom/TelecomManager;
    .registers 3

    .line 3755
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method public getUserRotationMode()I
    .registers 5

    .line 7881
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 7880
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_11

    .line 7882
    goto :goto_12

    .line 7883
    :cond_11
    const/4 v2, 0x1

    .line 7880
    :goto_12
    return v2
.end method

.method goHome()Z
    .registers 16

    .line 8340
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 8341
    const-string v0, "WindowManager"

    const-string v2, "Not going home because user setup is in progress."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8342
    return v1

    .line 8351
    :cond_f
    const/4 v0, 0x1

    :try_start_10
    const-string/jumbo v2, "persist.sys.uts-test-mode"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_21

    .line 8353
    const-string v2, "WindowManager"

    const-string v3, "UTS-TEST-MODE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50

    .line 8355
    :cond_21
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->stopAppSwitches()V

    .line 8356
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows()V

    .line 8357
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v2

    .line 8358
    .local v2, "dock":Landroid/content/Intent;
    if-eqz v2, :cond_50

    .line 8359
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 8361
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x2

    .line 8360
    move-object v6, v2

    invoke-interface/range {v3 .. v14}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v3

    .line 8365
    .local v3, "result":I
    if-ne v3, v0, :cond_50

    .line 8366
    return v1

    .line 8370
    .end local v2    # "dock":Landroid/content/Intent;
    .end local v3    # "result":I
    :cond_50
    :goto_50
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 8372
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x2

    .line 8371
    invoke-interface/range {v2 .. v13}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v2
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_6f} :catch_73

    .line 8376
    .local v2, "result":I
    if-ne v2, v0, :cond_72

    .line 8377
    return v1

    .line 8381
    .end local v2    # "result":I
    :cond_72
    goto :goto_74

    .line 8379
    :catch_73
    move-exception v1

    .line 8383
    :goto_74
    return v0
.end method

.method public hasNavigationBar()Z
    .registers 2

    .line 8869
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    return v0
.end method

.method public hideBootMessages()V
    .registers 3

    .line 8068
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 8069
    return-void
.end method

.method public inKeyguardRestrictedKeyInputMode()Z
    .registers 2

    .line 7437
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 7438
    :cond_6
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isInputRestricted()Z

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V
    .registers 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/IWindowManager;
    .param p3, "windowManagerFuncs"    # Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    .line 2079
    iput-object v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2080
    move-object/from16 v10, p2

    iput-object v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    .line 2081
    move-object/from16 v11, p3

    iput-object v11, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 2082
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 2083
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 2084
    const-class v0, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManagerInternal;

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    .line 2085
    const-class v0, Landroid/service/dreams/DreamManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/dreams/DreamManagerInternal;

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    .line 2086
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 2087
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "appops"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 2088
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.hardware.type.watch"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    .line 2089
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.software.leanback"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    .line 2090
    new-instance v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;

    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iget v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/accessibility/AccessibilityShortcutController;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    .line 2092
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 2094
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x112005a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    .line 2097
    .local v12, "burnInProtectionEnabled":Z
    const-string/jumbo v0, "persist.debug.force_burn_in"

    .line 2098
    const/4 v13, 0x0

    invoke-static {v0, v13}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 2099
    .local v14, "burnInProtectionDevMode":Z
    if-nez v12, :cond_96

    if-eqz v14, :cond_eb

    .line 2105
    :cond_96
    if-eqz v14, :cond_ad

    .line 2106
    const/4 v0, -0x8

    .line 2107
    .local v0, "minHorizontal":I
    const/16 v2, 0x8

    .line 2108
    .local v2, "maxHorizontal":I
    const/4 v3, -0x8

    .line 2109
    .local v3, "minVertical":I
    const/4 v4, -0x4

    .line 2110
    .local v4, "maxVertical":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isRoundWindow()Z

    move-result v5

    if-eqz v5, :cond_a5

    const/4 v5, 0x6

    goto :goto_a6

    :cond_a5
    const/4 v5, -0x1

    .line 2121
    .local v5, "maxRadius":I
    :goto_a6
    move v15, v2

    move/from16 v16, v3

    move/from16 v17, v4

    move v8, v5

    goto :goto_db

    .line 2112
    .end local v0    # "minHorizontal":I
    .end local v2    # "maxHorizontal":I
    .end local v3    # "minVertical":I
    .end local v4    # "maxVertical":I
    .end local v5    # "maxRadius":I
    :cond_ad
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2113
    .local v0, "resources":Landroid/content/res/Resources;
    const v2, 0x10e001e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 2115
    .local v2, "minHorizontal":I
    const v3, 0x10e001b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 2117
    .local v3, "maxHorizontal":I
    const v4, 0x10e001f

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 2119
    .local v4, "minVertical":I
    const v5, 0x10e001d

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 2121
    .local v5, "maxVertical":I
    const v6, 0x10e001c

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2121
    .end local v0    # "resources":Landroid/content/res/Resources;
    move v8, v0

    move v0, v2

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    .line 2124
    .end local v2    # "minHorizontal":I
    .end local v3    # "maxHorizontal":I
    .end local v4    # "minVertical":I
    .end local v5    # "maxVertical":I
    .local v0, "minHorizontal":I
    .local v8, "maxRadius":I
    .local v15, "maxHorizontal":I
    .local v16, "minVertical":I
    .local v17, "maxVertical":I
    :goto_db
    new-instance v7, Lcom/android/server/policy/BurnInProtectionHelper;

    move-object v2, v7

    move-object v3, v9

    move v4, v0

    move v5, v15

    move/from16 v6, v16

    move-object v13, v7

    move/from16 v7, v17

    invoke-direct/range {v2 .. v8}, Lcom/android/server/policy/BurnInProtectionHelper;-><init>(Landroid/content/Context;IIIII)V

    iput-object v13, v1, Lcom/android/server/policy/PhoneWindowManager;->mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

    .line 2128
    .end local v0    # "minHorizontal":I
    .end local v8    # "maxRadius":I
    .end local v15    # "maxHorizontal":I
    .end local v16    # "minVertical":I
    .end local v17    # "maxVertical":I
    :cond_eb
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;-><init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$1;)V

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 2129
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    .line 2130
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    .line 2132
    :try_start_109
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindowManager;->getDefaultDisplayRotation()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->setCurrentRotation(I)V
    :try_end_112
    .catch Landroid/os/RemoteException; {:try_start_109 .. :try_end_112} :catch_113

    .line 2133
    goto :goto_114

    :catch_113
    move-exception v0

    .line 2136
    :goto_114
    :try_start_114
    invoke-static {}, Lmiui/os/DeviceFeature;->hasMirihiSupport()Z

    move-result v0

    if-eqz v0, :cond_123

    .line 2137
    new-instance v0, Lmiui/slide/SlideCoverListener;

    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lmiui/slide/SlideCoverListener;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mSlideScreenListener:Lmiui/slide/SlideCoverListener;
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_123} :catch_124

    .line 2141
    :cond_123
    goto :goto_12e

    .line 2139
    :catch_124
    move-exception v0

    .line 2140
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "SlideCoverListener"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2143
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_12e
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v3}, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/os/Handler;)V

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

    .line 2144
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;->observe()V

    .line 2145
    new-instance v0, Lcom/android/server/policy/ShortcutManager;

    invoke-direct {v0, v9}, Lcom/android/server/policy/ShortcutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mShortcutManager:Lcom/android/server/policy/ShortcutManager;

    .line 2146
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x10e0035

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    .line 2148
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    .line 2149
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2150
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const/high16 v3, 0x10200000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2152
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x112005b

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    .line 2154
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v0, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    .line 2155
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    const-string v4, "android.intent.category.CAR_DOCK"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2156
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2158
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v0, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    .line 2159
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    const-string v4, "android.intent.category.DESK_DOCK"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2160
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2162
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v0, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mVrHeadsetHomeIntent:Landroid/content/Intent;

    .line 2163
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mVrHeadsetHomeIntent:Landroid/content/Intent;

    const-string v2, "android.intent.category.VR_HOME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2164
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mVrHeadsetHomeIntent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2167
    const-string/jumbo v0, "power"

    invoke-virtual {v9, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 2168
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v2, "PhoneWindowManager.mBroadcastWakeLock"

    const/4 v13, 0x1

    invoke-virtual {v0, v13, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2170
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v2, "PhoneWindowManager.mPowerKeyWakeLock"

    invoke-virtual {v0, v13, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2172
    const-string v0, "1"

    const-string/jumbo v2, "ro.debuggable"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    .line 2173
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x11200b1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mSupportAutoRotation:Z

    .line 2175
    const v0, 0x10e004d

    invoke-direct {v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->readRotation(I)I

    move-result v0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mLidOpenRotation:I

    .line 2177
    const v0, 0x10e0023

    invoke-direct {v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->readRotation(I)I

    move-result v0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mCarDockRotation:I

    .line 2179
    const v0, 0x10e0038

    invoke-direct {v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->readRotation(I)I

    move-result v0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockRotation:I

    .line 2181
    const v0, 0x10e00a1

    invoke-direct {v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->readRotation(I)I

    move-result v0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mUndockedHdmiRotation:I

    .line 2183
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x112002f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    .line 2185
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x112003c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    .line 2187
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10e004b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    .line 2189
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10e004c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    .line 2191
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x112007f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsScreenLock:Z

    .line 2193
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1120080

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsSleep:Z

    .line 2195
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x112006b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mTranslucentDecorEnabled:Z

    .line 2198
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1120010

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    .line 2200
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    if-nez v0, :cond_2a3

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2201
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1120014

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2a1

    goto :goto_2a3

    :cond_2a1
    const/4 v0, 0x0

    goto :goto_2a4

    :cond_2a3
    :goto_2a3
    move v0, v13

    :goto_2a4
    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromPowerKey:Z

    .line 2203
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1120012

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotion:Z

    .line 2205
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1120013

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotionWhenNotDreaming:Z

    .line 2207
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x112000d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromCameraLens:Z

    .line 2209
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1120011

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromLidSwitch:Z

    .line 2211
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x112000f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromWakeGesture:Z

    .line 2214
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1120077

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mGoToSleepOnButtonPressTheaterMode:Z

    .line 2217
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x11200b4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mSupportLongPressPowerWhenNonInteractive:Z

    .line 2220
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10e0050

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    .line 2223
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10e0094

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    .line 2225
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10e0052

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    .line 2227
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10e00a3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    .line 2229
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10e003a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    .line 2231
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10e00a0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    .line 2233
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10e0095

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    .line 2235
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10e00a4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressTimeout:I

    .line 2237
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x112000c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAllowStartActivityForLongPressOnPowerDuringSetup:Z

    .line 2240
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/AudioSystem;->getPlatformType(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3a0

    goto :goto_3a1

    :cond_3a0
    const/4 v13, 0x0

    :goto_3a1
    iput-boolean v13, v1, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    .line 2242
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x1120079

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    .line 2245
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->readConfigurationDependentBehaviors()V

    .line 2247
    const-string v0, "accessibility"

    invoke-virtual {v9, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 2251
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2252
    .local v0, "filter":Landroid/content/IntentFilter;
    sget-object v3, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2253
    sget-object v3, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2254
    sget-object v3, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2255
    sget-object v3, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2256
    const-string v3, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2257
    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    .line 2258
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_3ee

    .line 2260
    const-string v4, "android.intent.extra.DOCK_STATE"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    .line 2265
    :cond_3ee
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v4

    .line 2266
    const-string v4, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2267
    const-string v4, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2268
    iget-object v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mDreamReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2271
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.USER_SWITCHED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    .line 2272
    iget-object v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2276
    new-instance v4, Lcom/android/server/policy/SystemGesturesPointerEventListener;

    new-instance v5, Lcom/android/server/policy/PhoneWindowManager$9;

    invoke-direct {v5, v1}, Lcom/android/server/policy/PhoneWindowManager$9;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-direct {v4, v9, v5}, Lcom/android/server/policy/SystemGesturesPointerEventListener;-><init>(Landroid/content/Context;Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;)V

    iput-object v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    .line 2389
    new-instance v4, Lcom/android/server/policy/ImmersiveModeConfirmation;

    iget-object v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/server/policy/ImmersiveModeConfirmation;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    .line 2390
    iget-object v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    invoke-interface {v4, v5}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 2392
    const-string/jumbo v4, "vibrator"

    invoke-virtual {v9, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    iput-object v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    .line 2395
    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v5, "org.codeaurora.intent.action.WIFI_DISPLAY_VIDEO"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2396
    .local v4, "wifiDisplayFilter":Landroid/content/IntentFilter;
    iget-object v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mWifiDisplayReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v5

    .line 2398
    .local v5, "wifidisplayIntent":Landroid/content/Intent;
    iget-object v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1070032

    invoke-static {v6, v7}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mLongPressVibePattern:[J

    .line 2400
    iget-object v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1070018

    invoke-static {v6, v7}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mCalendarDateVibePattern:[J

    .line 2402
    iget-object v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1070043

    invoke-static {v6, v7}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    .line 2405
    iget-object v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x112006a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordEnabled:Z

    .line 2408
    new-instance v6, Lcom/android/server/policy/GlobalKeyManager;

    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/android/server/policy/GlobalKeyManager;-><init>(Landroid/content/Context;)V

    iput-object v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    .line 2411
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->initializeHdmiState()V

    .line 2414
    iget-object v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v6}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v6

    if-nez v6, :cond_49b

    .line 2415
    invoke-virtual {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->startedGoingToSleep(I)V

    .line 2416
    invoke-virtual {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->finishedGoingToSleep(I)V

    .line 2419
    :cond_49b
    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    .line 2420
    invoke-virtual {v6}, Lcom/android/server/policy/StatusBarController;->getAppTransitionListener()Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    move-result-object v6

    .line 2419
    invoke-virtual {v2, v6}, Lcom/android/server/wm/WindowManagerInternal;->registerAppTransitionListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 2421
    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    new-instance v6, Lcom/android/server/policy/PhoneWindowManager$10;

    invoke-direct {v6, v1}, Lcom/android/server/policy/PhoneWindowManager$10;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-virtual {v2, v6}, Lcom/android/server/wm/WindowManagerInternal;->registerAppTransitionListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 2434
    new-instance v2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/android/server/policy/PhoneWindowManager$11;

    invoke-direct {v7, v1}, Lcom/android/server/policy/PhoneWindowManager$11;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-direct {v2, v6, v7}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;-><init>(Landroid/content/Context;Lcom/android/server/policy/keyguard/KeyguardStateMonitor$StateCallback;)V

    iput-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 2467
    new-instance v2, Lcom/android/internal/util/ScreenshotHelper;

    iget-object v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Lcom/android/internal/util/ScreenshotHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    .line 2468
    return-void
.end method

.method initializeHdmiState()V
    .registers 3

    .line 6245
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReadsMask()I

    move-result v0

    .line 6247
    .local v0, "oldMask":I
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->initializeHdmiStateInternal()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_c

    .line 6249
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 6250
    nop

    .line 6251
    return-void

    .line 6249
    :catchall_c
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    throw v1
.end method

.method initializeHdmiStateInternal()V
    .registers 10

    .line 6254
    const/4 v0, 0x0

    .line 6256
    .local v0, "plugged":Z
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/devices/virtual/switch/hdmi/state"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_88

    .line 6257
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    const-string v4, "DEVPATH=/devices/virtual/switch/hdmi"

    invoke-virtual {v1, v4}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 6259
    const-string v1, "/sys/class/switch/hdmi/state"

    .line 6260
    .local v1, "filename":Ljava/lang/String;
    const/4 v4, 0x0

    .line 6262
    .local v4, "reader":Ljava/io/FileReader;
    :try_start_1a
    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/sys/class/switch/hdmi/state"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    .line 6263
    const/16 v5, 0xf

    new-array v5, v5, [C

    .line 6264
    .local v5, "buf":[C
    invoke-virtual {v4, v5}, Ljava/io/FileReader;->read([C)I

    move-result v6

    .line 6265
    .local v6, "n":I
    if-le v6, v3, :cond_3d

    .line 6266
    new-instance v7, Ljava/lang/String;

    add-int/lit8 v8, v6, -0x1

    invoke-direct {v7, v5, v2, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_37} :catch_63
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_37} :catch_46
    .catchall {:try_start_1a .. :try_end_37} :catchall_44

    if-eqz v7, :cond_3b

    move v7, v3

    goto :goto_3c

    :cond_3b
    move v7, v2

    :goto_3c
    move v0, v7

    .line 6273
    .end local v5    # "buf":[C
    .end local v6    # "n":I
    :cond_3d
    nop

    .line 6275
    :try_start_3e
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    .line 6277
    .end local v1    # "filename":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/FileReader;
    :goto_41
    goto :goto_88

    .line 6276
    .restart local v1    # "filename":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/FileReader;
    :catch_42
    move-exception v5

    goto :goto_41

    .line 6273
    :catchall_44
    move-exception v2

    goto :goto_80

    .line 6270
    :catch_46
    move-exception v5

    .line 6271
    .local v5, "ex":Ljava/lang/NumberFormatException;
    :try_start_47
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t read hdmi state from /sys/class/switch/hdmi/state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catchall {:try_start_47 .. :try_end_5d} :catchall_44

    .line 6273
    .end local v5    # "ex":Ljava/lang/NumberFormatException;
    if-eqz v4, :cond_88

    .line 6275
    :try_start_5f
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_42

    goto :goto_41

    .line 6268
    :catch_63
    move-exception v5

    .line 6269
    .local v5, "ex":Ljava/io/IOException;
    :try_start_64
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t read hdmi state from /sys/class/switch/hdmi/state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catchall {:try_start_64 .. :try_end_7a} :catchall_44

    .line 6273
    .end local v5    # "ex":Ljava/io/IOException;
    if-eqz v4, :cond_88

    .line 6275
    :try_start_7c
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_42

    goto :goto_41

    .line 6273
    :goto_80
    if-eqz v4, :cond_87

    .line 6275
    :try_start_82
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_86

    .line 6277
    goto :goto_87

    .line 6276
    :catch_86
    move-exception v3

    .line 6277
    :cond_87
    :goto_87
    throw v2

    .line 6283
    .end local v1    # "filename":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/FileReader;
    :cond_88
    :goto_88
    if-nez v0, :cond_8c

    move v2, v3

    nop

    :cond_8c
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    .line 6284
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    xor-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->setHdmiPlugged(Z)V

    .line 6285
    return-void
.end method

.method public interceptKeyBeforeDispatching(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .registers 36
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 3779
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v3

    .line 3780
    .local v3, "keyguardOn":Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 3781
    .local v4, "keyCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    .line 3782
    .local v5, "repeatCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v6

    .line 3783
    .local v6, "metaState":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v7

    .line 3784
    .local v7, "flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    move v10, v0

    .line 3785
    .local v10, "down":Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v11

    .line 3796
    .local v11, "canceled":Z
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordEnabled:Z

    const-wide/16 v12, 0x96

    const/16 v14, 0x19

    const-wide/16 v15, -0x1

    if-eqz v0, :cond_56

    and-int/lit16 v0, v7, 0x400

    if-nez v0, :cond_56

    .line 3797
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    if-eqz v0, :cond_4a

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    if-nez v0, :cond_4a

    .line 3798
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    .line 3799
    .local v17, "now":J
    iget-wide v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTime:J

    add-long/2addr v8, v12

    .line 3801
    .local v8, "timeoutTime":J
    cmp-long v0, v17, v8

    if-gez v0, :cond_4a

    .line 3802
    sub-long v12, v8, v17

    return-wide v12

    .line 3805
    .end local v8    # "timeoutTime":J
    .end local v17    # "now":J
    :cond_4a
    if-ne v4, v14, :cond_56

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    if-eqz v0, :cond_56

    .line 3807
    if-nez v10, :cond_55

    .line 3808
    const/4 v8, 0x0

    iput-boolean v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    .line 3810
    :cond_55
    return-wide v15

    .line 3816
    :cond_56
    const/4 v8, 0x0

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-virtual {v0, v8}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->isAccessibilityShortcutAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_99

    and-int/lit16 v0, v7, 0x400

    if-nez v0, :cond_99

    .line 3818
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    iget-boolean v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    xor-int/2addr v0, v9

    if-eqz v0, :cond_7f

    .line 3819
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    .line 3820
    .restart local v17    # "now":J
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    if-eqz v0, :cond_75

    .line 3821
    iget-wide v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTime:J

    goto :goto_77

    :cond_75
    iget-wide v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTime:J

    :goto_77
    add-long/2addr v8, v12

    .line 3823
    .restart local v8    # "timeoutTime":J
    cmp-long v0, v17, v8

    if-gez v0, :cond_7f

    .line 3824
    sub-long v12, v8, v17

    return-wide v12

    .line 3827
    .end local v8    # "timeoutTime":J
    .end local v17    # "now":J
    :cond_7f
    if-ne v4, v14, :cond_8b

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    if-eqz v0, :cond_8b

    .line 3828
    if-nez v10, :cond_8a

    .line 3829
    const/4 v8, 0x0

    iput-boolean v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    .line 3831
    :cond_8a
    return-wide v15

    .line 3833
    :cond_8b
    const/16 v0, 0x18

    if-ne v4, v0, :cond_99

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyConsumed:Z

    if-eqz v0, :cond_99

    .line 3834
    if-nez v10, :cond_98

    .line 3835
    const/4 v8, 0x0

    iput-boolean v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyConsumed:Z

    .line 3837
    :cond_98
    return-wide v15

    .line 3843
    :cond_99
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    if-eqz v0, :cond_c7

    and-int/lit16 v0, v7, 0x400

    if-nez v0, :cond_c7

    .line 3844
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    if-eqz v0, :cond_b7

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    if-nez v0, :cond_b7

    .line 3845
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 3846
    .local v8, "now":J
    iget-wide v14, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTime:J

    add-long/2addr v14, v12

    .line 3848
    .local v14, "timeoutTime":J
    cmp-long v0, v8, v14

    if-gez v0, :cond_b7

    .line 3849
    sub-long v12, v14, v8

    return-wide v12

    .line 3852
    .end local v8    # "now":J
    .end local v14    # "timeoutTime":J
    :cond_b7
    const/16 v0, 0x18

    if-ne v4, v0, :cond_c7

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyConsumed:Z

    if-eqz v0, :cond_c7

    .line 3853
    if-nez v10, :cond_c4

    .line 3854
    const/4 v8, 0x0

    iput-boolean v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyConsumed:Z

    .line 3856
    :cond_c4
    const-wide/16 v8, -0x1

    return-wide v8

    .line 3862
    :cond_c7
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    if-eqz v0, :cond_d4

    invoke-static {v4}, Landroid/view/KeyEvent;->isMetaKey(I)Z

    move-result v0

    if-nez v0, :cond_d4

    .line 3863
    const/4 v8, 0x0

    iput-boolean v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    .line 3866
    :cond_d4
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    if-eqz v0, :cond_e7

    invoke-static {v4}, Landroid/view/KeyEvent;->isMetaKey(I)Z

    move-result v0

    if-nez v0, :cond_e7

    invoke-static {v4}, Landroid/view/KeyEvent;->isAltKey(I)Z

    move-result v0

    if-nez v0, :cond_e7

    .line 3867
    const/4 v8, 0x0

    iput-boolean v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    .line 3874
    :cond_e7
    const/4 v0, 0x3

    const-wide/16 v8, 0x0

    if-ne v4, v0, :cond_18a

    .line 3878
    if-nez v10, :cond_12c

    .line 3879
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPreloadRecentApps()V

    .line 3881
    const/4 v8, 0x0

    iput-boolean v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mHomePressed:Z

    .line 3882
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHomeConsumed:Z

    if-eqz v0, :cond_fd

    .line 3883
    iput-boolean v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mHomeConsumed:Z

    .line 3884
    const-wide/16 v8, -0x1

    return-wide v8

    .line 3887
    :cond_fd
    const-wide/16 v8, -0x1

    if-eqz v11, :cond_109

    .line 3888
    const-string v0, "WindowManager"

    const-string v12, "Ignoring HOME; event canceled."

    invoke-static {v0, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3889
    return-wide v8

    .line 3893
    :cond_109
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-eqz v0, :cond_126

    .line 3894
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3895
    const/4 v8, 0x1

    iput-boolean v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapPending:Z

    .line 3896
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 3897
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v9

    int-to-long v12, v9

    .line 3896
    invoke-virtual {v0, v8, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3898
    const-wide/16 v8, -0x1

    return-wide v8

    .line 3901
    :cond_126
    const-wide/16 v8, -0x1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->handleShortPressOnHome()V

    .line 3902
    return-wide v8

    .line 3907
    :cond_12c
    if-eqz p1, :cond_133

    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    goto :goto_134

    :cond_133
    const/4 v0, 0x0

    .line 3908
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_134
    if-eqz v0, :cond_156

    .line 3909
    iget v13, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3910
    .local v13, "type":I
    const/16 v14, 0x7d9

    if-eq v13, v14, :cond_155

    iget v14, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v14, v14, 0x400

    if-eqz v14, :cond_143

    goto :goto_155

    .line 3915
    :cond_143
    sget-object v8, Lcom/android/server/policy/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    array-length v8, v8

    .line 3916
    .local v8, "typeCount":I
    const/4 v9, 0x0

    .line 3916
    .local v9, "i":I
    :goto_147
    if-ge v9, v8, :cond_156

    .line 3917
    sget-object v14, Lcom/android/server/policy/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    aget v14, v14, v9

    if-ne v13, v14, :cond_152

    .line 3919
    const-wide/16 v14, -0x1

    return-wide v14

    .line 3916
    :cond_152
    add-int/lit8 v9, v9, 0x1

    goto :goto_147

    .line 3913
    .end local v8    # "typeCount":I
    .end local v9    # "i":I
    :cond_155
    :goto_155
    return-wide v8

    .line 3925
    .end local v13    # "type":I
    :cond_156
    if-nez v5, :cond_176

    .line 3926
    const/4 v8, 0x1

    iput-boolean v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mHomePressed:Z

    .line 3927
    iget-boolean v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapPending:Z

    if-eqz v8, :cond_16d

    .line 3928
    const/4 v8, 0x0

    iput-boolean v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapPending:Z

    .line 3929
    iget-object v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3930
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->handleDoubleTapOnHome()V

    goto :goto_187

    .line 3931
    :cond_16d
    iget v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_187

    .line 3932
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->preloadRecentApps()V

    goto :goto_187

    .line 3934
    :cond_176
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v8

    and-int/lit16 v8, v8, 0x80

    if-eqz v8, :cond_187

    .line 3935
    if-nez v3, :cond_187

    .line 3936
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v8

    invoke-direct {v1, v8}, Lcom/android/server/policy/PhoneWindowManager;->handleLongPressOnHome(I)V

    .line 3939
    :cond_187
    :goto_187
    const-wide/16 v8, -0x1

    return-wide v8

    .line 3940
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_18a
    const/16 v0, 0x52

    const/16 v13, 0x3d

    if-ne v4, v0, :cond_1c1

    .line 3942
    const/4 v0, 0x1

    .line 3944
    .local v0, "chordBug":I
    if-eqz v10, :cond_1bf

    if-nez v5, :cond_1bf

    .line 3945
    iget-boolean v15, v1, Lcom/android/server/policy/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    if-eqz v15, :cond_1bf

    and-int/lit8 v15, v6, 0x1

    const/4 v14, 0x1

    if-ne v15, v14, :cond_1bf

    .line 3946
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.BUG_REPORT"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v21, v8

    .line 3947
    .local v21, "intent":Landroid/content/Intent;
    iget-object v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v22, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v20, v8

    invoke-virtual/range {v20 .. v28}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 3949
    const-wide/16 v8, -0x1

    return-wide v8

    .line 3952
    .end local v0    # "chordBug":I
    .end local v21    # "intent":Landroid/content/Intent;
    :cond_1bf
    goto/16 :goto_308

    :cond_1c1
    const/16 v0, 0x54

    if-ne v4, v0, :cond_1dd

    .line 3953
    if-eqz v10, :cond_1d0

    .line 3954
    if-nez v5, :cond_1dc

    .line 3955
    const/4 v13, 0x1

    iput-boolean v13, v1, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    .line 3956
    const/4 v13, 0x0

    iput-boolean v13, v1, Lcom/android/server/policy/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    goto :goto_1dc

    .line 3959
    :cond_1d0
    const/4 v13, 0x0

    iput-boolean v13, v1, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    .line 3960
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    if-eqz v0, :cond_1dc

    .line 3961
    iput-boolean v13, v1, Lcom/android/server/policy/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 3962
    const-wide/16 v8, -0x1

    return-wide v8

    .line 3965
    :cond_1dc
    :goto_1dc
    return-wide v8

    .line 3966
    :cond_1dd
    const/16 v0, 0xbb

    if-ne v4, v0, :cond_1f3

    .line 3967
    if-nez v3, :cond_1f0

    .line 3968
    if-eqz v10, :cond_1eb

    if-nez v5, :cond_1eb

    .line 3969
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->preloadRecentApps()V

    goto :goto_1f0

    .line 3970
    :cond_1eb
    if-nez v10, :cond_1f0

    .line 3971
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps()V

    .line 3974
    :cond_1f0
    :goto_1f0
    const-wide/16 v8, -0x1

    return-wide v8

    .line 3975
    :cond_1f3
    const/16 v0, 0x2a

    if-ne v4, v0, :cond_20c

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_20c

    .line 3976
    if-eqz v10, :cond_308

    .line 3977
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v14

    .line 3978
    .local v14, "service":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v14, :cond_20a

    .line 3980
    :try_start_205
    invoke-interface {v14}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanel()V
    :try_end_208
    .catch Landroid/os/RemoteException; {:try_start_205 .. :try_end_208} :catch_209

    .line 3983
    goto :goto_20a

    .line 3981
    :catch_209
    move-exception v0

    .line 3985
    .end local v14    # "service":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_20a
    :goto_20a
    goto/16 :goto_308

    .line 3986
    :cond_20c
    const/16 v0, 0x2f

    if-ne v4, v0, :cond_23c

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_23c

    .line 3987
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_23c

    .line 3988
    if-eqz v10, :cond_308

    if-nez v5, :cond_308

    .line 3989
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-eqz v0, :cond_229

    .line 3990
    const/16 v19, 0x2

    goto :goto_22b

    :cond_229
    const/16 v19, 0x1

    :goto_22b
    move/from16 v0, v19

    .line 3991
    .local v0, "type":I
    iget-object v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {v8, v0}, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->setScreenshotType(I)V

    .line 3992
    iget-object v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3993
    const-wide/16 v8, -0x1

    return-wide v8

    .line 3995
    .end local v0    # "type":I
    :cond_23c
    const/16 v0, 0x4c

    if-ne v4, v0, :cond_259

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_259

    .line 3996
    if-eqz v10, :cond_308

    if-nez v5, :cond_308

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_308

    .line 3997
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->toggleKeyboardShortcutsMenu(I)V

    goto/16 :goto_308

    .line 3999
    :cond_259
    const/16 v0, 0xdb

    if-ne v4, v0, :cond_267

    .line 4000
    const-string v0, "WindowManager"

    const-string v8, "KEYCODE_ASSIST should be handled in interceptKeyBeforeQueueing"

    invoke-static {v0, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4001
    const-wide/16 v14, -0x1

    return-wide v14

    .line 4002
    :cond_267
    const-wide/16 v14, -0x1

    const/16 v0, 0xe7

    if-ne v4, v0, :cond_275

    .line 4003
    const-string v0, "WindowManager"

    const-string v8, "KEYCODE_VOICE_ASSIST should be handled in interceptKeyBeforeQueueing"

    invoke-static {v0, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4004
    return-wide v14

    .line 4005
    :cond_275
    const/16 v0, 0x78

    if-ne v4, v0, :cond_28d

    .line 4006
    if-eqz v10, :cond_28a

    if-nez v5, :cond_28a

    .line 4007
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->setScreenshotType(I)V

    .line 4008
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4010
    :cond_28a
    const-wide/16 v8, -0x1

    return-wide v8

    .line 4011
    :cond_28d
    const/16 v0, 0xdd

    if-eq v4, v0, :cond_571

    const/16 v14, 0xdc

    if-ne v4, v14, :cond_299

    .line 4013
    move/from16 v29, v7

    goto/16 :goto_573

    .line 4048
    :cond_299
    const/16 v0, 0x18

    if-eq v4, v0, :cond_2e6

    const/16 v0, 0x19

    if-eq v4, v0, :cond_2e6

    const/16 v0, 0xa4

    if-ne v4, v0, :cond_2a6

    goto :goto_2e6

    .line 4067
    :cond_2a6
    if-ne v4, v13, :cond_2af

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_2af

    .line 4069
    return-wide v8

    .line 4070
    :cond_2af
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz v0, :cond_2bc

    invoke-direct {v1, v4, v10}, Lcom/android/server/policy/PhoneWindowManager;->interceptBugreportGestureTv(IZ)Z

    move-result v0

    if-eqz v0, :cond_2bc

    .line 4071
    const-wide/16 v14, -0x1

    return-wide v14

    .line 4072
    :cond_2bc
    const-wide/16 v14, -0x1

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz v0, :cond_2c9

    invoke-direct {v1, v4, v10}, Lcom/android/server/policy/PhoneWindowManager;->interceptAccessibilityGestureTv(IZ)Z

    move-result v0

    if-eqz v0, :cond_2c9

    .line 4073
    return-wide v14

    .line 4074
    :cond_2c9
    const/16 v0, 0x11c

    if-ne v4, v0, :cond_308

    .line 4075
    if-nez v10, :cond_2e3

    .line 4076
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x19

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 4077
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4078
    .local v0, "msg":Landroid/os/Message;
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 4079
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4081
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2e3
    const-wide/16 v8, -0x1

    return-wide v8

    .line 4051
    :cond_2e6
    :goto_2e6
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    if-nez v0, :cond_569

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    if-eqz v0, :cond_2f4

    .line 4054
    move/from16 v29, v7

    const-wide/16 v15, -0x1

    goto/16 :goto_56d

    .line 4061
    :cond_2f4
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPersistentVrModeEnabled:Z

    if-eqz v0, :cond_308

    .line 4062
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    .line 4063
    .local v0, "d":Landroid/view/InputDevice;
    if-eqz v0, :cond_307

    invoke-virtual {v0}, Landroid/view/InputDevice;->isExternal()Z

    move-result v14

    if-nez v14, :cond_307

    .line 4064
    const-wide/16 v8, -0x1

    return-wide v8

    .line 4066
    .end local v0    # "d":Landroid/view/InputDevice;
    :cond_307
    nop

    .line 4085
    :cond_308
    :goto_308
    const/4 v0, 0x0

    .line 4086
    .local v0, "actionTriggered":Z
    invoke-static {v4}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v14

    const/high16 v15, 0x70000

    if-eqz v14, :cond_346

    .line 4087
    iget-boolean v14, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    if-nez v14, :cond_31d

    .line 4089
    iget v14, v1, Lcom/android/server/policy/PhoneWindowManager;->mMetaState:I

    iput v14, v1, Lcom/android/server/policy/PhoneWindowManager;->mInitialMetaState:I

    .line 4090
    const/4 v14, 0x1

    iput-boolean v14, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    goto :goto_346

    .line 4091
    :cond_31d
    const/4 v14, 0x1

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    if-ne v8, v14, :cond_346

    .line 4092
    iget v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mMetaState:I

    and-int/lit8 v8, v8, 0x32

    .line 4093
    .local v8, "altOnMask":I
    iget v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mMetaState:I

    and-int/2addr v9, v15

    .line 4096
    .local v9, "metaOnMask":I
    if-eqz v9, :cond_343

    if-eqz v8, :cond_343

    .line 4098
    iget v14, v1, Lcom/android/server/policy/PhoneWindowManager;->mInitialMetaState:I

    iget v15, v1, Lcom/android/server/policy/PhoneWindowManager;->mMetaState:I

    or-int v16, v8, v9

    xor-int v15, v15, v16

    if-ne v14, v15, :cond_343

    .line 4100
    iget-object v14, v1, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/hardware/input/InputManagerInternal;->toggleCapsLock(I)V

    .line 4101
    const/4 v0, 0x1

    .line 4106
    :cond_343
    const/4 v14, 0x0

    iput-boolean v14, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    .line 4110
    .end local v0    # "actionTriggered":Z
    .end local v9    # "metaOnMask":I
    .local v8, "actionTriggered":Z
    :cond_346
    :goto_346
    move v8, v0

    iput v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mMetaState:I

    .line 4112
    if-eqz v8, :cond_34e

    .line 4113
    const-wide/16 v13, -0x1

    return-wide v13

    .line 4116
    :cond_34e
    invoke-static {v4}, Landroid/view/KeyEvent;->isMetaKey(I)Z

    move-result v0

    if-eqz v0, :cond_36a

    .line 4117
    if-eqz v10, :cond_35a

    .line 4118
    const/4 v9, 0x1

    iput-boolean v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    goto :goto_367

    .line 4119
    :cond_35a
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    if-eqz v0, :cond_367

    .line 4120
    const-string v0, "android.intent.extra.ASSIST_INPUT_HINT_KEYBOARD"

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v9

    invoke-direct {v1, v0, v9}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;I)V

    .line 4122
    :cond_367
    :goto_367
    const-wide/16 v13, -0x1

    return-wide v13

    .line 4130
    :cond_36a
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    const/high16 v9, 0x10000000

    if-eqz v0, :cond_3dd

    .line 4131
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v14

    .line 4132
    .local v14, "kcm":Landroid/view/KeyCharacterMap;
    invoke-virtual {v14, v4}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v0

    if-eqz v0, :cond_3dd

    .line 4133
    const/4 v13, 0x1

    iput-boolean v13, v1, Lcom/android/server/policy/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 4134
    const/4 v13, 0x0

    iput-boolean v13, v1, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    .line 4135
    if-eqz v10, :cond_3d8

    if-nez v5, :cond_3d8

    if-nez v3, :cond_3d8

    .line 4136
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mShortcutManager:Lcom/android/server/policy/ShortcutManager;

    invoke-virtual {v0, v14, v4, v6}, Lcom/android/server/policy/ShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    move-result-object v13

    .line 4137
    .local v13, "shortcutIntent":Landroid/content/Intent;
    if-eqz v13, :cond_3bb

    .line 4138
    invoke-virtual {v13, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4140
    :try_start_391
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-direct {v1, v13, v0}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4141
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V
    :try_end_399
    .catch Landroid/content/ActivityNotFoundException; {:try_start_391 .. :try_end_399} :catch_39d

    .line 4146
    nop

    .line 4152
    move/from16 v29, v7

    goto :goto_3da

    .line 4142
    :catch_39d
    move-exception v0

    .line 4143
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string v9, "WindowManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v29, v7

    const-string v7, "Dropping shortcut key combination because the activity to which it is registered was not found: SEARCH+"

    .line 4143
    .end local v7    # "flags":I
    .local v29, "flags":I
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4145
    invoke-static {v4}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4143
    invoke-static {v9, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4146
    .end local v0    # "ex":Landroid/content/ActivityNotFoundException;
    goto :goto_3da

    .line 4148
    .end local v29    # "flags":I
    .restart local v7    # "flags":I
    :cond_3bb
    move/from16 v29, v7

    .line 4148
    .end local v7    # "flags":I
    .restart local v29    # "flags":I
    const-string v0, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Dropping unregistered shortcut key combination: SEARCH+"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4149
    invoke-static {v4}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4148
    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4148
    .end local v13    # "shortcutIntent":Landroid/content/Intent;
    goto :goto_3da

    .line 4152
    .end local v29    # "flags":I
    .restart local v7    # "flags":I
    :cond_3d8
    move/from16 v29, v7

    .line 4152
    .end local v7    # "flags":I
    .restart local v29    # "flags":I
    :goto_3da
    const-wide/16 v15, -0x1

    return-wide v15

    .line 4157
    .end local v14    # "kcm":Landroid/view/KeyCharacterMap;
    .end local v29    # "flags":I
    .restart local v7    # "flags":I
    :cond_3dd
    move/from16 v29, v7

    .line 4157
    .end local v7    # "flags":I
    .restart local v29    # "flags":I
    if-eqz v10, :cond_42a

    if-nez v5, :cond_42a

    if-nez v3, :cond_42a

    const/high16 v0, 0x10000

    and-int/2addr v0, v6

    if-eqz v0, :cond_42a

    .line 4159
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v7

    .line 4160
    .local v7, "kcm":Landroid/view/KeyCharacterMap;
    invoke-virtual {v7, v4}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v0

    if-eqz v0, :cond_42a

    .line 4161
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mShortcutManager:Lcom/android/server/policy/ShortcutManager;

    const v14, -0x70001

    and-int/2addr v14, v6

    invoke-virtual {v0, v7, v4, v14}, Lcom/android/server/policy/ShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    move-result-object v14

    .line 4164
    .local v14, "shortcutIntent":Landroid/content/Intent;
    if-eqz v14, :cond_42a

    .line 4165
    invoke-virtual {v14, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4167
    :try_start_403
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-direct {v1, v14, v0}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4168
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V
    :try_end_40b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_403 .. :try_end_40b} :catch_40c

    .line 4173
    goto :goto_427

    .line 4169
    :catch_40c
    move-exception v0

    .line 4170
    .restart local v0    # "ex":Landroid/content/ActivityNotFoundException;
    const-string v9, "WindowManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Dropping shortcut key combination because the activity to which it is registered was not found: META+"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4172
    invoke-static {v4}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 4170
    invoke-static {v9, v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4174
    .end local v0    # "ex":Landroid/content/ActivityNotFoundException;
    :goto_427
    const-wide/16 v15, -0x1

    return-wide v15

    .line 4180
    .end local v7    # "kcm":Landroid/view/KeyCharacterMap;
    .end local v14    # "shortcutIntent":Landroid/content/Intent;
    :cond_42a
    if-eqz v10, :cond_46f

    if-nez v5, :cond_46f

    if-nez v3, :cond_46f

    .line 4181
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 4182
    .local v7, "category":Ljava/lang/String;
    if-eqz v7, :cond_46f

    .line 4183
    const-string v0, "android.intent.action.MAIN"

    invoke-static {v0, v7}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    .line 4184
    .local v13, "intent":Landroid/content/Intent;
    invoke-virtual {v13, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4186
    :try_start_444
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-direct {v1, v13, v0}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4187
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V
    :try_end_44c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_444 .. :try_end_44c} :catch_44d

    .line 4192
    goto :goto_46c

    .line 4188
    :catch_44d
    move-exception v0

    .line 4189
    .restart local v0    # "ex":Landroid/content/ActivityNotFoundException;
    const-string v9, "WindowManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Dropping application launch key because the activity to which it is registered was not found: keyCode="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", category="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4193
    .end local v0    # "ex":Landroid/content/ActivityNotFoundException;
    :goto_46c
    const-wide/16 v14, -0x1

    return-wide v14

    .line 4198
    .end local v7    # "category":Ljava/lang/String;
    .end local v13    # "intent":Landroid/content/Intent;
    :cond_46f
    if-eqz v10, :cond_498

    if-nez v5, :cond_498

    if-ne v4, v13, :cond_498

    .line 4199
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    if-nez v0, :cond_4aa

    if-nez v3, :cond_4aa

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_4aa

    .line 4200
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v0

    and-int/lit16 v0, v0, -0xc2

    .line 4201
    .local v0, "shiftlessModifiers":I
    const/4 v7, 0x2

    invoke-static {v0, v7}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v7

    if-eqz v7, :cond_497

    .line 4202
    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    .line 4203
    const/4 v7, 0x1

    invoke-direct {v1, v7}, Lcom/android/server/policy/PhoneWindowManager;->showRecentApps(Z)V

    .line 4204
    const-wide/16 v13, -0x1

    return-wide v13

    .line 4206
    .end local v0    # "shiftlessModifiers":I
    :cond_497
    goto :goto_4aa

    .line 4207
    :cond_498
    if-nez v10, :cond_4aa

    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    if-eqz v0, :cond_4aa

    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    and-int/2addr v0, v6

    if-nez v0, :cond_4aa

    .line 4209
    const/4 v7, 0x0

    iput v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    .line 4210
    const/4 v9, 0x1

    invoke-direct {v1, v9, v7}, Lcom/android/server/policy/PhoneWindowManager;->hideRecentApps(ZZ)V

    .line 4215
    :cond_4aa
    :goto_4aa
    const/16 v0, 0x3e

    if-eqz v10, :cond_4c9

    if-nez v5, :cond_4c9

    if-ne v4, v0, :cond_4c9

    and-int/lit16 v7, v6, 0x7000

    if-eqz v7, :cond_4c9

    .line 4217
    and-int/lit16 v0, v6, 0xc1

    if-eqz v0, :cond_4bc

    const/4 v0, -0x1

    goto :goto_4bd

    :cond_4bc
    const/4 v0, 0x1

    .line 4218
    .local v0, "direction":I
    :goto_4bd
    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v9

    invoke-interface {v7, v9, v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->switchKeyboardLayout(II)V

    .line 4219
    const-wide/16 v13, -0x1

    return-wide v13

    .line 4223
    .end local v0    # "direction":I
    :cond_4c9
    if-eqz v10, :cond_4eb

    if-nez v5, :cond_4eb

    const/16 v7, 0xcc

    if-eq v4, v7, :cond_4d8

    if-ne v4, v0, :cond_4eb

    const/high16 v7, 0x70000

    and-int/2addr v7, v6

    if-eqz v7, :cond_4eb

    .line 4227
    :cond_4d8
    and-int/lit16 v0, v6, 0xc1

    if-nez v0, :cond_4df

    const/16 v19, 0x1

    goto :goto_4e1

    :cond_4df
    const/16 v19, 0x0

    :goto_4e1
    move/from16 v0, v19

    .line 4228
    .local v0, "forwardDirection":Z
    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v7, v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->switchInputMethod(Z)V

    .line 4229
    const-wide/16 v13, -0x1

    return-wide v13

    .line 4231
    .end local v0    # "forwardDirection":Z
    :cond_4eb
    iget-boolean v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mLanguageSwitchKeyPressed:Z

    if-eqz v7, :cond_4fd

    if-nez v10, :cond_4fd

    const/16 v7, 0xcc

    if-eq v4, v7, :cond_4f7

    if-ne v4, v0, :cond_4fd

    .line 4234
    :cond_4f7
    const/4 v7, 0x0

    iput-boolean v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mLanguageSwitchKeyPressed:Z

    .line 4235
    const-wide/16 v13, -0x1

    return-wide v13

    .line 4238
    :cond_4fd
    invoke-static {v4}, Lcom/android/server/policy/PhoneWindowManager;->isValidGlobalKey(I)Z

    move-result v0

    if-eqz v0, :cond_510

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 4239
    invoke-virtual {v0, v7, v4, v2}, Lcom/android/server/policy/GlobalKeyManager;->handleGlobalKey(Landroid/content/Context;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_510

    .line 4240
    const-wide/16 v13, -0x1

    return-wide v13

    .line 4243
    :cond_510
    if-eqz v10, :cond_55e

    .line 4244
    int-to-long v13, v4

    .line 4245
    .local v13, "shortcutCode":J
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_51f

    .line 4246
    const-wide v15, 0x100000000000L

    or-long/2addr v13, v15

    .line 4249
    :cond_51f
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    if-eqz v0, :cond_52b

    .line 4250
    const-wide v15, 0x200000000L

    or-long/2addr v13, v15

    .line 4253
    :cond_52b
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-eqz v0, :cond_537

    .line 4254
    const-wide v15, 0x100000000L

    or-long/2addr v13, v15

    .line 4257
    :cond_537
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_540

    .line 4258
    const-wide/high16 v15, 0x1000000000000L

    or-long/2addr v13, v15

    .line 4261
    :cond_540
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v13, v14}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/internal/policy/IShortcutService;

    .line 4262
    .local v7, "shortcutService":Lcom/android/internal/policy/IShortcutService;
    if-eqz v7, :cond_55e

    .line 4264
    :try_start_54b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_554

    .line 4265
    invoke-interface {v7, v13, v14}, Lcom/android/internal/policy/IShortcutService;->notifyShortcutKeyPressed(J)V
    :try_end_554
    .catch Landroid/os/RemoteException; {:try_start_54b .. :try_end_554} :catch_555

    .line 4269
    :cond_554
    goto :goto_55b

    .line 4267
    :catch_555
    move-exception v0

    .line 4268
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    invoke-virtual {v9, v13, v14}, Landroid/util/LongSparseArray;->delete(J)V

    .line 4270
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_55b
    const-wide/16 v15, -0x1

    return-wide v15

    .line 4275
    .end local v7    # "shortcutService":Lcom/android/internal/policy/IShortcutService;
    .end local v13    # "shortcutCode":J
    :cond_55e
    const-wide/16 v15, -0x1

    const/high16 v0, 0x10000

    and-int/2addr v0, v6

    if-eqz v0, :cond_566

    .line 4276
    return-wide v15

    .line 4280
    :cond_566
    const-wide/16 v13, 0x0

    return-wide v13

    .line 4054
    .end local v8    # "actionTriggered":Z
    .end local v29    # "flags":I
    .local v7, "flags":I
    :cond_569
    move/from16 v29, v7

    const-wide/16 v15, -0x1

    .line 4054
    .end local v7    # "flags":I
    .restart local v29    # "flags":I
    :goto_56d
    invoke-direct {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->dispatchDirectAudioEvent(Landroid/view/KeyEvent;)V

    .line 4055
    return-wide v15

    .line 4013
    .end local v29    # "flags":I
    .restart local v7    # "flags":I
    :cond_571
    move/from16 v29, v7

    .line 4013
    .end local v7    # "flags":I
    .restart local v29    # "flags":I
    :goto_573
    if-eqz v10, :cond_5e4

    .line 4014
    if-ne v4, v0, :cond_579

    const/4 v8, 0x1

    goto :goto_57a

    :cond_579
    const/4 v8, -0x1

    :goto_57a
    move v0, v8

    .line 4017
    .local v0, "direction":I
    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 4018
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "screen_brightness_mode"

    .line 4017
    const/4 v9, -0x3

    const/4 v13, 0x0

    invoke-static {v7, v8, v13, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    .line 4022
    .local v7, "auto":I
    if-eqz v7, :cond_598

    .line 4023
    iget-object v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v14, "screen_brightness_mode"

    invoke-static {v8, v14, v13, v9}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 4029
    :cond_598
    iget-object v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v8}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v8

    .line 4030
    .local v8, "min":I
    iget-object v13, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v13}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v13

    .line 4031
    .local v13, "max":I
    sub-int v14, v13, v8

    add-int/lit8 v14, v14, 0xa

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    div-int/lit8 v14, v14, 0xa

    mul-int/2addr v14, v0

    .line 4032
    .local v14, "step":I
    iget-object v15, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v9, "screen_brightness"

    move/from16 v30, v0

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 4034
    .end local v0    # "direction":I
    .local v30, "direction":I
    invoke-virtual {v0}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v0

    .line 4032
    const/4 v2, -0x3

    invoke-static {v15, v9, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 4036
    .local v0, "brightness":I
    add-int/2addr v0, v14

    .line 4038
    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4039
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4041
    iget-object v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v15, "screen_brightness"

    invoke-static {v9, v15, v0, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 4044
    new-instance v2, Landroid/content/Intent;

    const-string v9, "com.android.intent.action.SHOW_BRIGHTNESS_DIALOG"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v9, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-direct {v1, v2, v9}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4047
    .end local v0    # "brightness":I
    .end local v7    # "auto":I
    .end local v8    # "min":I
    .end local v13    # "max":I
    .end local v14    # "step":I
    .end local v30    # "direction":I
    :cond_5e4
    const-wide/16 v7, -0x1

    return-wide v7
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .registers 23
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 6295
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    const/4 v4, 0x0

    if-nez v0, :cond_a

    .line 6297
    return v4

    .line 6300
    :cond_a
    const/high16 v0, 0x20000000

    and-int v0, p2, v0

    const/4 v5, 0x1

    if-eqz v0, :cond_13

    move v0, v5

    goto :goto_14

    :cond_13
    move v0, v4

    :goto_14
    move v6, v0

    .line 6301
    .local v6, "interactive":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1d

    move v0, v5

    goto :goto_1e

    :cond_1d
    move v0, v4

    :goto_1e
    move v7, v0

    .line 6302
    .local v7, "down":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v8

    .line 6303
    .local v8, "canceled":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v9

    .line 6305
    .local v9, "keyCode":I
    const/high16 v0, 0x1000000

    and-int v0, p2, v0

    if-eqz v0, :cond_2f

    move v0, v5

    goto :goto_30

    :cond_2f
    move v0, v4

    :goto_30
    move v10, v0

    .line 6311
    .local v10, "isInjected":Z
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_37

    .line 6314
    move v0, v4

    goto :goto_44

    .line 6312
    :cond_37
    if-eqz v6, :cond_3e

    .line 6313
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    goto :goto_44

    .line 6314
    :cond_3e
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    :goto_44
    move v11, v0

    .line 6322
    .local v11, "keyguardActive":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isMiuiRom()Z

    move-result v0

    if-nez v0, :cond_5b

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    if-eqz v0, :cond_5b

    const/16 v0, 0x17

    if-ne v9, v0, :cond_5b

    .line 6323
    const-string v0, "WindowManager"

    const-string v5, "ignore KEYCODE_DPAD_CENTER in native build!"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6324
    return v4

    .line 6329
    :cond_5b
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_68

    .line 6330
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isWakeKey()Z

    move-result v0

    if-eqz v0, :cond_66

    goto :goto_68

    :cond_66
    move v0, v4

    goto :goto_69

    :cond_68
    :goto_68
    move v0, v5

    .line 6331
    .local v0, "isWakeKey":Z
    :goto_69
    const/4 v12, -0x1

    if-nez v6, :cond_90

    if-eqz v10, :cond_71

    if-nez v0, :cond_71

    goto :goto_90

    .line 6346
    :cond_71
    if-nez v6, :cond_7d

    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->shouldDispatchInputWhenNonInteractive(Landroid/view/KeyEvent;)Z

    move-result v13

    if-eqz v13, :cond_7d

    .line 6351
    const/4 v13, 0x1

    .line 6353
    .local v13, "result":I
    iput v12, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    goto :goto_9d

    .line 6357
    .end local v13    # "result":I
    :cond_7d
    const/4 v13, 0x0

    .line 6358
    .restart local v13    # "result":I
    if-eqz v0, :cond_89

    if-eqz v7, :cond_88

    invoke-direct {v1, v9}, Lcom/android/server/policy/PhoneWindowManager;->isWakeKeyWhenScreenOff(I)Z

    move-result v12

    if-nez v12, :cond_89

    .line 6359
    :cond_88
    const/4 v0, 0x0

    .line 6362
    :cond_89
    if-eqz v0, :cond_9d

    if-eqz v7, :cond_9d

    .line 6363
    iput v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    goto :goto_9d

    .line 6334
    .end local v13    # "result":I
    :cond_90
    :goto_90
    const/4 v13, 0x1

    .line 6335
    .restart local v13    # "result":I
    const/4 v0, 0x0

    .line 6337
    if-eqz v6, :cond_9d

    .line 6340
    iget v14, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    if-ne v9, v14, :cond_9b

    if-nez v7, :cond_9b

    .line 6341
    const/4 v13, 0x0

    .line 6344
    :cond_9b
    iput v12, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    .line 6369
    .end local v0    # "isWakeKey":Z
    .local v12, "isWakeKey":Z
    :cond_9d
    :goto_9d
    move v12, v0

    invoke-static {v9}, Lcom/android/server/policy/PhoneWindowManager;->isValidGlobalKey(I)Z

    move-result v0

    if-eqz v0, :cond_ba

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    .line 6370
    invoke-virtual {v0, v9, v2}, Lcom/android/server/policy/GlobalKeyManager;->shouldHandleGlobalKey(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 6371
    if-eqz v12, :cond_b9

    .line 6372
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    const-string v14, "android.policy:KEY"

    invoke-direct {v1, v4, v5, v0, v14}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    .line 6374
    :cond_b9
    return v13

    .line 6379
    :cond_ba
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_c4

    move v0, v5

    goto :goto_c5

    :cond_c4
    move v0, v4

    :goto_c5
    move v14, v0

    .line 6380
    .local v14, "isNavBarVirtKey":Z
    if-eqz v7, :cond_da

    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_da

    if-eqz v14, :cond_d2

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mNavBarVirtualKeyHapticFeedbackEnabled:Z

    if-eqz v0, :cond_da

    .line 6383
    :cond_d2
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_da

    move v0, v5

    goto :goto_db

    :cond_da
    move v0, v4

    :goto_db
    move v15, v0

    .line 6386
    .local v15, "useHapticFeedback":Z
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->handleFunctionKeyOnGamePad(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_e3

    .line 6387
    return v4

    .line 6392
    :cond_e3
    packed-switch v9, :pswitch_data_380

    const/4 v4, 0x3

    packed-switch v9, :pswitch_data_38a

    packed-switch v9, :pswitch_data_394

    packed-switch v9, :pswitch_data_3a6

    packed-switch v9, :pswitch_data_3ae

    packed-switch v9, :pswitch_data_3b8

    sparse-switch v9, :sswitch_data_3c4

    goto :goto_104

    .line 6584
    :sswitch_fa
    and-int/lit8 v13, v13, -0x2

    .line 6585
    const/4 v12, 0x0

    .line 6586
    if-nez v7, :cond_104

    .line 6587
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v0}, Landroid/os/PowerManagerInternal;->setUserInactiveOverrideFromWindowManager()V

    .line 6689
    .end local v9    # "keyCode":I
    .end local v10    # "isInjected":Z
    .local v17, "isInjected":Z
    .local v19, "keyCode":I
    :cond_104
    :goto_104
    move/from16 v19, v9

    move/from16 v17, v10

    goto/16 :goto_36a

    .line 6664
    .end local v17    # "isInjected":Z
    .end local v19    # "keyCode":I
    .restart local v9    # "keyCode":I
    .restart local v10    # "isInjected":Z
    :sswitch_10a
    if-nez v7, :cond_11f

    .line 6665
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 6666
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 6667
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 6668
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 6670
    .end local v0    # "msg":Landroid/os/Message;
    :cond_11f
    and-int/lit8 v13, v13, -0x2

    .line 6671
    goto :goto_104

    .line 6648
    :sswitch_122
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_12a

    move v0, v5

    goto :goto_12b

    :cond_12a
    const/4 v0, 0x0

    .line 6649
    .local v0, "longPressed":Z
    :goto_12b
    if-eqz v7, :cond_13e

    if-eqz v0, :cond_13e

    .line 6650
    iget-object v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x1b

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 6651
    .local v4, "msg":Landroid/os/Message;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 6652
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 6654
    .end local v4    # "msg":Landroid/os/Message;
    :cond_13e
    if-nez v7, :cond_15c

    if-nez v0, :cond_15c

    .line 6655
    iget-object v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x1a

    move/from16 v16, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    .end local v0    # "longPressed":Z
    .local v16, "longPressed":Z
    move/from16 v17, v10

    const/4 v3, 0x0

    const/4 v10, 0x0

    invoke-virtual {v4, v5, v0, v3, v10}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 6657
    .end local v10    # "isInjected":Z
    .local v0, "msg":Landroid/os/Message;
    .restart local v17    # "isInjected":Z
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 6658
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_160

    .line 6660
    .end local v16    # "longPressed":Z
    .end local v17    # "isInjected":Z
    .local v0, "longPressed":Z
    .restart local v10    # "isInjected":Z
    :cond_15c
    move/from16 v16, v0

    move/from16 v17, v10

    .end local v0    # "longPressed":Z
    .end local v10    # "isInjected":Z
    .restart local v16    # "longPressed":Z
    .restart local v17    # "isInjected":Z
    :goto_160
    and-int/lit8 v13, v13, -0x2

    .line 6661
    goto :goto_18b

    .line 6674
    .end local v16    # "longPressed":Z
    .end local v17    # "isInjected":Z
    .restart local v10    # "isInjected":Z
    :sswitch_163
    move/from16 v17, v10

    .end local v10    # "isInjected":Z
    .restart local v17    # "isInjected":Z
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnWindowBehavior:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_18b

    .line 6675
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPictureInPictureVisible:Z

    if-eqz v0, :cond_18b

    .line 6679
    if-nez v7, :cond_173

    .line 6680
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->showPictureInPictureMenu(Landroid/view/KeyEvent;)V

    .line 6682
    :cond_173
    and-int/lit8 v13, v13, -0x2

    goto :goto_18b

    .line 6410
    .end local v17    # "isInjected":Z
    .restart local v10    # "isInjected":Z
    :pswitch_176
    :sswitch_176
    move/from16 v17, v10

    .end local v10    # "isInjected":Z
    .restart local v17    # "isInjected":Z
    goto/16 :goto_1e8

    .line 6610
    .end local v17    # "isInjected":Z
    .restart local v10    # "isInjected":Z
    :pswitch_17a
    :sswitch_17a
    move/from16 v17, v10

    .end local v10    # "isInjected":Z
    .restart local v17    # "isInjected":Z
    goto :goto_1ac

    .line 6564
    .end local v17    # "isInjected":Z
    .restart local v10    # "isInjected":Z
    :pswitch_17d
    move/from16 v17, v10

    .end local v10    # "isInjected":Z
    .restart local v17    # "isInjected":Z
    and-int/lit8 v13, v13, -0x2

    .line 6565
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->interceptSystemNavigationKey(Landroid/view/KeyEvent;)V

    .line 6566
    goto :goto_18b

    .line 6593
    .end local v17    # "isInjected":Z
    .restart local v10    # "isInjected":Z
    :pswitch_185
    move/from16 v17, v10

    .end local v10    # "isInjected":Z
    .restart local v17    # "isInjected":Z
    and-int/lit8 v13, v13, -0x2

    .line 6594
    const/4 v12, 0x1

    .line 6595
    nop

    .line 6689
    .end local v9    # "keyCode":I
    .restart local v19    # "keyCode":I
    :cond_18b
    :goto_18b
    move/from16 v19, v9

    goto/16 :goto_36a

    .line 6570
    .end local v17    # "isInjected":Z
    .end local v19    # "keyCode":I
    .restart local v9    # "keyCode":I
    .restart local v10    # "isInjected":Z
    :pswitch_18f
    move/from16 v17, v10

    .end local v10    # "isInjected":Z
    .restart local v17    # "isInjected":Z
    and-int/lit8 v13, v13, -0x2

    .line 6571
    const/4 v12, 0x0

    .line 6572
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_19e

    .line 6573
    const/4 v0, 0x0

    .line 6575
    .end local v15    # "useHapticFeedback":Z
    .local v0, "useHapticFeedback":Z
    move v15, v0

    .end local v0    # "useHapticFeedback":Z
    .restart local v15    # "useHapticFeedback":Z
    :cond_19e
    if-eqz v7, :cond_1a4

    .line 6576
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->sleepPress()V

    goto :goto_18b

    .line 6578
    :cond_1a4
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->sleepRelease(J)V

    .line 6580
    goto :goto_18b

    .line 6610
    :goto_1ac
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaSessionLegacyHelper;->isGlobalPriorityActive()Z

    move-result v0

    if-eqz v0, :cond_1ba

    .line 6613
    and-int/lit8 v13, v13, -0x2

    .line 6615
    :cond_1ba
    and-int/lit8 v0, v13, 0x1

    if-nez v0, :cond_18b

    .line 6621
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 6622
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Landroid/view/KeyEvent;

    invoke-direct {v3, v2}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    invoke-virtual {v0, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 6624
    .local v0, "msg":Landroid/os/Message;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 6625
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 6626
    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_18b

    .line 6546
    .end local v17    # "isInjected":Z
    .restart local v10    # "isInjected":Z
    :pswitch_1d6
    move/from16 v17, v10

    .end local v10    # "isInjected":Z
    .restart local v17    # "isInjected":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingAccessibilityShortcutAction()V

    .line 6547
    and-int/lit8 v13, v13, -0x2

    .line 6548
    const/4 v12, 0x0

    .line 6549
    if-eqz v7, :cond_1e4

    .line 6550
    invoke-direct {v1, v2, v6}, Lcom/android/server/policy/PhoneWindowManager;->interceptPowerKeyDown(Landroid/view/KeyEvent;Z)V

    goto :goto_18b

    .line 6552
    :cond_1e4
    invoke-direct {v1, v2, v6, v8}, Lcom/android/server/policy/PhoneWindowManager;->interceptPowerKeyUp(Landroid/view/KeyEvent;ZZ)V

    .line 6554
    goto :goto_18b

    .line 6410
    :goto_1e8
    const/16 v0, 0x19

    if-ne v9, v0, :cond_21f

    .line 6411
    if-eqz v7, :cond_215

    .line 6413
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingRingerToggleChordAction()V

    .line 6415
    if-eqz v6, :cond_25b

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    if-nez v0, :cond_25b

    .line 6416
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_25b

    .line 6417
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    .line 6418
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTime:J

    .line 6419
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    .line 6420
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 6421
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptScreenshotChord()V

    .line 6422
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptAccessibilityShortcutChord()V

    goto :goto_25b

    .line 6425
    :cond_215
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    .line 6426
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 6427
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingAccessibilityShortcutAction()V

    goto :goto_25b

    .line 6429
    :cond_21f
    const/16 v0, 0x18

    if-ne v9, v0, :cond_25b

    .line 6430
    if-eqz v7, :cond_24f

    .line 6431
    if-eqz v6, :cond_25b

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    if-nez v0, :cond_25b

    .line 6432
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_25b

    .line 6433
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    .line 6434
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTime:J

    .line 6435
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyConsumed:Z

    .line 6436
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 6437
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 6438
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingRingerToggleChordAction()V

    .line 6440
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptAccessibilityShortcutChord()V

    .line 6441
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptRingerToggleChord()V

    goto :goto_25b

    .line 6444
    :cond_24f
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    .line 6445
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 6446
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingAccessibilityShortcutAction()V

    .line 6447
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingRingerToggleChordAction()V

    .line 6450
    :cond_25b
    :goto_25b
    if-eqz v7, :cond_2ba

    .line 6451
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(I)V

    .line 6453
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v4

    .line 6454
    .local v4, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v4, :cond_282

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    if-nez v0, :cond_282

    .line 6457
    invoke-virtual {v4}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_282

    .line 6464
    const-string v0, "WindowManager"

    const-string v3, "interceptKeyBeforeQueueing: VOLUME key-down while ringing: Silence ringer!"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6469
    invoke-virtual {v4}, Landroid/telecom/TelecomManager;->silenceRinger()V

    .line 6473
    and-int/lit8 v13, v13, -0x2

    .line 6474
    goto/16 :goto_18b

    .line 6477
    :cond_282
    const/4 v5, 0x0

    move v10, v5

    .line 6479
    .local v10, "audioMode":I
    :try_start_284
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getMode()I

    move-result v0
    :try_end_28c
    .catch Ljava/lang/Exception; {:try_start_284 .. :try_end_28c} :catch_28e

    move v10, v0

    .line 6482
    goto :goto_296

    .line 6480
    :catch_28e
    move-exception v0

    .line 6481
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "WindowManager"

    const-string v3, "Error getting AudioService in interceptKeyBeforeQueueing."

    invoke-static {v5, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6483
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_296
    if-eqz v4, :cond_29e

    invoke-virtual {v4}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    if-nez v0, :cond_2a1

    :cond_29e
    const/4 v3, 0x3

    if-ne v10, v3, :cond_2a3

    :cond_2a1
    const/4 v0, 0x1

    goto :goto_2a4

    :cond_2a3
    const/4 v0, 0x0

    .line 6485
    .local v0, "isInCall":Z
    :goto_2a4
    if-eqz v0, :cond_2ba

    and-int/lit8 v3, v13, 0x1

    if-nez v3, :cond_2ba

    .line 6488
    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v3

    move-object/from16 v18, v4

    const/high16 v4, -0x80000000

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    .line 6490
    .end local v4    # "telecomManager":Landroid/telecom/TelecomManager;
    .local v18, "telecomManager":Landroid/telecom/TelecomManager;
    goto/16 :goto_18b

    .line 6493
    .end local v0    # "isInCall":Z
    .end local v10    # "audioMode":I
    .end local v18    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_2ba
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    if-nez v0, :cond_2d5

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    if-eqz v0, :cond_2c3

    goto :goto_2d5

    .line 6497
    :cond_2c3
    and-int/lit8 v0, v13, 0x1

    if-nez v0, :cond_18b

    .line 6501
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    const/4 v3, 0x1

    const/high16 v4, -0x80000000

    invoke-virtual {v0, v2, v4, v3}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    goto/16 :goto_18b

    .line 6496
    :cond_2d5
    :goto_2d5
    or-int/lit8 v13, v13, 0x1

    goto/16 :goto_18b

    .line 6508
    .end local v17    # "isInjected":Z
    .local v10, "isInjected":Z
    :pswitch_2d9
    move/from16 v17, v10

    .end local v10    # "isInjected":Z
    .restart local v17    # "isInjected":Z
    and-int/lit8 v13, v13, -0x2

    .line 6509
    if-eqz v7, :cond_30b

    .line 6510
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 6511
    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    const/4 v3, 0x0

    .line 6512
    .local v3, "hungUp":Z
    if-eqz v0, :cond_2ea

    .line 6513
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result v3

    .line 6515
    :cond_2ea
    if-eqz v6, :cond_305

    if-nez v3, :cond_305

    .line 6516
    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    .line 6517
    iget-object v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    iget-object v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 6518
    invoke-static {v10}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v10

    move/from16 v19, v9

    invoke-virtual {v10}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v9

    .line 6517
    .end local v9    # "keyCode":I
    .restart local v19    # "keyCode":I
    invoke-virtual {v4, v5, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_30a

    .line 6520
    .end local v19    # "keyCode":I
    .restart local v9    # "keyCode":I
    :cond_305
    move/from16 v19, v9

    .end local v9    # "keyCode":I
    .restart local v19    # "keyCode":I
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    .line 6522
    .end local v0    # "telecomManager":Landroid/telecom/TelecomManager;
    .end local v3    # "hungUp":Z
    :goto_30a
    goto :goto_36a

    .line 6523
    .end local v19    # "keyCode":I
    .restart local v9    # "keyCode":I
    :cond_30b
    move/from16 v19, v9

    .end local v9    # "keyCode":I
    .restart local v19    # "keyCode":I
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    if-nez v0, :cond_36a

    .line 6524
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6525
    if-nez v8, :cond_36a

    .line 6526
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    const/4 v3, 0x1

    and-int/2addr v0, v3

    if-eqz v0, :cond_327

    .line 6528
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->goHome()Z

    move-result v0

    if-eqz v0, :cond_327

    .line 6529
    goto :goto_36a

    .line 6532
    :cond_327
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_36a

    .line 6534
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    const/4 v0, 0x4

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v0, v5}, Lcom/android/server/policy/PhoneWindowManager;->goToSleep(JII)V

    .line 6536
    const/4 v12, 0x0

    goto :goto_36a

    .line 6631
    .end local v17    # "isInjected":Z
    .end local v19    # "keyCode":I
    .restart local v9    # "keyCode":I
    .restart local v10    # "isInjected":Z
    :pswitch_338
    move/from16 v19, v9

    move/from16 v17, v10

    .end local v9    # "keyCode":I
    .end local v10    # "isInjected":Z
    .restart local v17    # "isInjected":Z
    .restart local v19    # "keyCode":I
    if-eqz v7, :cond_36a

    .line 6632
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 6633
    .restart local v0    # "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v0, :cond_356

    .line 6634
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_356

    .line 6635
    const-string v3, "WindowManager"

    const-string v4, "interceptKeyBeforeQueueing: CALL key-down while ringing: Answer the call!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6637
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->acceptRingingCall()V

    .line 6641
    and-int/lit8 v13, v13, -0x2

    .line 6644
    .end local v0    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_356
    goto :goto_36a

    .line 6394
    .end local v17    # "isInjected":Z
    .end local v19    # "keyCode":I
    .restart local v9    # "keyCode":I
    .restart local v10    # "isInjected":Z
    :pswitch_357
    move/from16 v19, v9

    move/from16 v17, v10

    .end local v9    # "keyCode":I
    .end local v10    # "isInjected":Z
    .restart local v17    # "isInjected":Z
    .restart local v19    # "keyCode":I
    if-eqz v7, :cond_361

    .line 6395
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptBackKeyDown()V

    goto :goto_36a

    .line 6397
    :cond_361
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->interceptBackKeyUp(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 6400
    .local v0, "handled":Z
    if-eqz v0, :cond_369

    .line 6401
    and-int/lit8 v13, v13, -0x2

    .line 6404
    .end local v0    # "handled":Z
    :cond_369
    nop

    .line 6689
    :cond_36a
    :goto_36a
    if-eqz v15, :cond_372

    .line 6690
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z

    .line 6693
    :cond_372
    if-eqz v12, :cond_37f

    .line 6694
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    const-string v5, "android.policy:KEY"

    invoke-direct {v1, v3, v4, v0, v5}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    .line 6697
    :cond_37f
    return v13

    :pswitch_data_380
    .packed-switch 0x4
        :pswitch_357
        :pswitch_338
        :pswitch_2d9
    .end packed-switch

    :pswitch_data_38a
    .packed-switch 0x18
        :pswitch_176
        :pswitch_176
        :pswitch_1d6
    .end packed-switch

    :pswitch_data_394
    .packed-switch 0x55
        :pswitch_17a
        :pswitch_17a
        :pswitch_17a
        :pswitch_17a
        :pswitch_17a
        :pswitch_17a
        :pswitch_17a
    .end packed-switch

    :pswitch_data_3a6
    .packed-switch 0x7e
        :pswitch_17a
        :pswitch_17a
    .end packed-switch

    :pswitch_data_3ae
    .packed-switch 0xde
        :pswitch_17a
        :pswitch_18f
        :pswitch_185
    .end packed-switch

    :pswitch_data_3b8
    .packed-switch 0x118
        :pswitch_17d
        :pswitch_17d
        :pswitch_17d
        :pswitch_17d
    .end packed-switch

    :sswitch_data_3c4
    .sparse-switch
        0x4f -> :sswitch_17a
        0x82 -> :sswitch_17a
        0xa4 -> :sswitch_176
        0xab -> :sswitch_163
        0xdb -> :sswitch_122
        0xe7 -> :sswitch_10a
        0x114 -> :sswitch_fa
    .end sparse-switch
.end method

.method public interceptMotionBeforeQueueingNonInteractive(JI)I
    .registers 11
    .param p1, "whenNanos"    # J
    .param p3, "policyFlags"    # I

    .line 6802
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    const-wide/32 v2, 0xf4240

    if-eqz v0, :cond_15

    .line 6803
    div-long v4, p1, v2

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotion:Z

    const-string v6, "android.policy:MOTION"

    invoke-direct {p0, v4, v5, v0, v6}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 6805
    return v1

    .line 6809
    :cond_15
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->shouldDispatchInputWhenNonInteractive(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 6810
    const/4 v0, 0x1

    return v0

    .line 6816
    :cond_1e
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTheaterModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_31

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_31

    .line 6817
    div-long v2, p1, v2

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotionWhenNotDreaming:Z

    const-string v4, "android.policy:MOTION"

    invoke-direct {p0, v2, v3, v0, v4}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    .line 6821
    :cond_31
    return v1
.end method

.method public isDefaultOrientationForced()Z
    .registers 2

    .line 2608
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceDefaultOrientation:Z

    return v0
.end method

.method isDeviceProvisioned()Z
    .registers 4

    .line 1924
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1925
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    .line 1924
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_11

    const/4 v2, 0x1

    nop

    :cond_11
    return v2
.end method

.method public isDockSideAllowed(IIIII)Z
    .registers 8
    .param p1, "dockSide"    # I
    .param p2, "originalDockSide"    # I
    .param p3, "displayWidth"    # I
    .param p4, "displayHeight"    # I
    .param p5, "displayRotation"    # I

    .line 7534
    invoke-direct {p0, p3, p4, p5}, Lcom/android/server/policy/PhoneWindowManager;->navigationBarPosition(III)I

    move-result v0

    .line 7535
    .local v0, "barPosition":I
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    invoke-static {p1, p2, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->isDockSideAllowed(IIIZ)Z

    move-result v1

    return v1
.end method

.method public isKeyguardDrawnLw()Z
    .registers 3

    .line 7467
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7468
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    monitor-exit v0

    return v1

    .line 7469
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z
    .registers 4
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 3198
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isKeyguardLocked()Z
    .registers 2

    .line 7417
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    return v0
.end method

.method public isKeyguardOccluded()Z
    .registers 2

    .line 7430
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 7431
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    return v0
.end method

.method public isKeyguardSecure(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 7423
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 7424
    :cond_6
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSecure(I)Z

    move-result v0

    return v0
.end method

.method public isKeyguardShowingAndNotOccluded()Z
    .registers 3

    .line 7404
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 7405
    :cond_6
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    if-nez v0, :cond_14

    const/4 v1, 0x1

    nop

    :cond_14
    return v1
.end method

.method public isKeyguardTrustedLw()Z
    .registers 2

    .line 7410
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 7411
    :cond_6
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isTrusted()Z

    move-result v0

    return v0
.end method

.method public isNavBarForcedShownLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .registers 3
    .param p1, "windowState"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 7522
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    return v0
.end method

.method public isRotationChoicePossible(I)Z
    .registers 7
    .param p1, "orientation"    # I

    .line 7791
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_7

    return v2

    .line 7797
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceDefaultOrientation:Z

    if-eqz v0, :cond_c

    .line 7798
    return v2

    .line 7800
    :cond_c
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    if-ne v0, v1, :cond_15

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidOpenRotation:I

    if-ltz v0, :cond_15

    .line 7801
    return v2

    .line 7803
    :cond_15
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1f

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-nez v0, :cond_1f

    .line 7804
    return v2

    .line 7806
    :cond_1f
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    if-eq v0, v1, :cond_2d

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2d

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    const/4 v4, 0x4

    if-ne v0, v4, :cond_32

    :cond_2d
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-nez v0, :cond_32

    .line 7810
    return v2

    .line 7812
    :cond_32
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    if-eqz v0, :cond_3b

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotationLock:Z

    if-eqz v0, :cond_3b

    .line 7813
    return v2

    .line 7815
    :cond_3b
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    if-eqz v0, :cond_48

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    if-nez v0, :cond_48

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUndockedHdmiRotation:I

    if-ltz v0, :cond_48

    .line 7817
    return v2

    .line 7819
    :cond_48
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoRotationLock:Z

    if-eqz v0, :cond_4d

    .line 7820
    return v2

    .line 7822
    :cond_4d
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPersistentVrModeEnabled:Z

    if-eqz v0, :cond_52

    .line 7823
    return v2

    .line 7825
    :cond_52
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportAutoRotation:Z

    if-nez v0, :cond_57

    .line 7826
    return v2

    .line 7830
    :cond_57
    const/4 v0, -0x1

    if-eq p1, v0, :cond_60

    if-eq p1, v3, :cond_60

    packed-switch p1, :pswitch_data_62

    .line 7841
    return v2

    .line 7837
    :cond_60
    :pswitch_60
    return v1

    nop

    :pswitch_data_62
    .packed-switch 0xb
        :pswitch_60
        :pswitch_60
        :pswitch_60
    .end packed-switch
.end method

.method public isScreenOn()Z
    .registers 3

    .line 7376
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7377
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    monitor-exit v0

    return v1

    .line 7378
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public isShowingDreamLw()Z
    .registers 2

    .line 7474
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    return v0
.end method

.method protected isStatusBarKeyguard()Z
    .registers 2

    .line 6169
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 6170
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 6169
    :goto_13
    return v0
.end method

.method public isTopLevelWindow(I)Z
    .registers 4
    .param p1, "windowType"    # I

    .line 8906
    const/4 v0, 0x1

    const/16 v1, 0x3e8

    if-lt p1, v1, :cond_10

    const/16 v1, 0x7cf

    if-gt p1, v1, :cond_10

    .line 8908
    const/16 v1, 0x3eb

    if-ne p1, v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0

    .line 8910
    :cond_10
    return v0
.end method

.method isUserSetupComplete()Z
    .registers 5

    .line 1929
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_setup_complete"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_13

    const/4 v2, 0x1

    nop

    :cond_13
    move v0, v2

    .line 1931
    .local v0, "isSetupComplete":Z
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz v1, :cond_1d

    .line 1932
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTvUserSetupComplete()Z

    move-result v1

    and-int/2addr v0, v1

    .line 1934
    :cond_1d
    return v0
.end method

.method public isValidRotationChoice(II)Z
    .registers 6
    .param p1, "orientation"    # I
    .param p2, "preferredRotation"    # I

    .line 7846
    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1d

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1d

    packed-switch p1, :pswitch_data_26

    .line 7867
    return v2

    .line 7849
    :pswitch_c
    if-ltz p2, :cond_f

    goto :goto_10

    :cond_f
    move v1, v2

    :goto_10
    return v1

    .line 7855
    :pswitch_11
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    if-ne p2, v0, :cond_16

    goto :goto_17

    :cond_16
    move v1, v2

    :goto_17
    return v1

    .line 7859
    :pswitch_18
    invoke-direct {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v0

    return v0

    .line 7864
    :cond_1d
    if-ltz p2, :cond_24

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    if-eq p2, v0, :cond_24

    goto :goto_25

    :cond_24
    move v1, v2

    :goto_25
    return v1

    :pswitch_data_26
    .packed-switch 0xb
        :pswitch_18
        :pswitch_11
        :pswitch_c
    .end packed-switch
.end method

.method public keepScreenOnStartedLw()V
    .registers 1

    .line 8479
    return-void
.end method

.method public keepScreenOnStoppedLw()V
    .registers 5

    .line 8483
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 8484
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 8486
    :cond_10
    return-void
.end method

.method keyguardOn()Z
    .registers 2

    .line 3768
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->inKeyguardRestrictedKeyInputMode()Z

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

.method launchHomeFromHotKey()V
    .registers 2

    .line 4631
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(ZZ)V

    .line 4632
    return-void
.end method

.method launchHomeFromHotKey(ZZ)V
    .registers 6
    .param p1, "awakenFromDreams"    # Z
    .param p2, "respectKeyguard"    # Z

    .line 4640
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/policy/-$$Lambda$oXa0y3A-00RiQs6-KTPBgpkGtgw;

    invoke-direct {v2, v1}, Lcom/android/server/policy/-$$Lambda$oXa0y3A-00RiQs6-KTPBgpkGtgw;-><init>(Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4642
    if-eqz p2, :cond_47

    .line 4643
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 4645
    return-void

    .line 4646
    :cond_18
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 4647
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$12;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/PhoneWindowManager$12;-><init>(Lcom/android/server/policy/PhoneWindowManager;Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 4655
    return-void

    .line 4656
    :cond_30
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isInputRestricted()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 4659
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$13;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/PhoneWindowManager$13;-><init>(Lcom/android/server/policy/PhoneWindowManager;Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->verifyUnlock(Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;)V

    .line 4667
    return-void

    .line 4672
    :cond_47
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRecentsVisible:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_5f

    .line 4674
    :try_start_4c
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_53} :catch_54

    .line 4675
    goto :goto_55

    :catch_54
    move-exception v0

    .line 4678
    :goto_55
    if-eqz p1, :cond_5a

    .line 4679
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->awakenDreams()V

    .line 4681
    :cond_5a
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->hideRecentApps(ZZ)V

    goto :goto_62

    .line 4684
    :cond_5f
    invoke-virtual {p0, v1, p1}, Lcom/android/server/policy/PhoneWindowManager;->startDockOrHome(ZZ)V

    .line 4686
    :goto_62
    return-void
.end method

.method launchVoiceAssistWithWakeLock()V
    .registers 5

    .line 6955
    const-string v0, "assist"

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 6958
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    if-nez v0, :cond_13

    .line 6959
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.WEB_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6959
    .local v0, "voiceIntent":Landroid/content/Intent;
    goto :goto_35

    .line 6961
    .end local v0    # "voiceIntent":Landroid/content/Intent;
    :cond_13
    const-string v0, "deviceidle"

    .line 6962
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 6961
    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    .line 6963
    .local v0, "dic":Landroid/os/IDeviceIdleController;
    if-eqz v0, :cond_27

    .line 6965
    :try_start_1f
    const-string/jumbo v1, "voice-search"

    invoke-interface {v0, v1}, Landroid/os/IDeviceIdleController;->exitIdle(Ljava/lang/String;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_25} :catch_26

    .line 6967
    goto :goto_27

    .line 6966
    :catch_26
    move-exception v1

    .line 6969
    :cond_27
    :goto_27
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6970
    .local v1, "voiceIntent":Landroid/content/Intent;
    const-string v2, "android.speech.extras.EXTRA_SECURE"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6972
    .end local v0    # "dic":Landroid/os/IDeviceIdleController;
    move-object v0, v1

    .line 6972
    .end local v1    # "voiceIntent":Landroid/content/Intent;
    .local v0, "voiceIntent":Landroid/content/Intent;
    :goto_35
    sget-object v1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 6973
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6974
    return-void
.end method

.method public layoutWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/wm/DisplayFrames;)V
    .registers 69
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "attached"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p3, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    .line 5331
    move-object/from16 v15, p3

    iget-object v0, v12, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-ne v13, v0, :cond_10

    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->canReceiveInput(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-eqz v0, :cond_7e8

    :cond_10
    iget-object v0, v12, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eq v13, v0, :cond_7e8

    iget-object v0, v12, Lcom/android/server/policy/PhoneWindowManager;->mScreenDecorWindows:Landroid/util/ArraySet;

    .line 5332
    invoke-virtual {v0, v13}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto/16 :goto_7e8

    .line 5335
    :cond_1e
    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    .line 5336
    .local v11, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isDefaultDisplay()Z

    move-result v16

    .line 5337
    .local v16, "isDefaultDisplay":Z
    if-eqz v16, :cond_32

    iget-object v0, v12, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodTargetWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-ne v13, v0, :cond_32

    iget-object v0, v12, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_32

    const/4 v0, 0x1

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    :goto_33
    move/from16 v17, v0

    .line 5339
    .local v17, "needsToOffsetInputMethodTarget":Z
    if-eqz v17, :cond_3c

    .line 5341
    iget-object v0, v12, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-direct {v12, v0, v15}, Lcom/android/server/policy/PhoneWindowManager;->offsetInputMethodWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/wm/DisplayFrames;)V

    .line 5344
    :cond_3c
    iget v8, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 5345
    .local v8, "type":I
    invoke-static {v13, v11}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v7

    .line 5346
    .local v7, "fl":I
    iget v6, v11, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 5347
    .local v6, "pfl":I
    iget v5, v11, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 5348
    .local v5, "sim":I
    const/4 v4, 0x0

    invoke-static {v4, v11}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v18

    .line 5349
    .local v18, "requestedSysUiFl":I
    invoke-direct {v12, v11}, Lcom/android/server/policy/PhoneWindowManager;->getImpliedSysUiFlagsForLayout(Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    or-int v3, v18, v0

    .line 5351
    .local v3, "sysUiFl":I
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 5352
    .local v2, "pf":Landroid/graphics/Rect;
    sget-object v1, Lcom/android/server/policy/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 5353
    .local v1, "df":Landroid/graphics/Rect;
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    .line 5354
    .local v0, "of":Landroid/graphics/Rect;
    sget-object v9, Lcom/android/server/policy/PhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    .line 5355
    .local v9, "cf":Landroid/graphics/Rect;
    sget-object v10, Lcom/android/server/policy/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 5356
    .local v10, "vf":Landroid/graphics/Rect;
    sget-object v14, Lcom/android/server/policy/PhoneWindowManager;->mTmpDecorFrame:Landroid/graphics/Rect;

    .line 5357
    .local v14, "dcf":Landroid/graphics/Rect;
    move/from16 v21, v6

    sget-object v6, Lcom/android/server/policy/PhoneWindowManager;->mTmpStableFrame:Landroid/graphics/Rect;

    .line 5358
    .local v6, "sf":Landroid/graphics/Rect;
    .local v21, "pfl":I
    const/16 v22, 0x0

    .line 5359
    .local v22, "osf":Landroid/graphics/Rect;
    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    .line 5361
    if-eqz v16, :cond_7a

    iget-boolean v4, v12, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v4, :cond_7a

    iget-object v4, v12, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_7a

    iget-object v4, v12, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 5362
    invoke-interface {v4}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_7a

    const/4 v4, 0x1

    goto :goto_7b

    :cond_7a
    const/4 v4, 0x0

    :goto_7b
    move/from16 v24, v4

    .line 5364
    .local v24, "hasNavBar":Z
    and-int/lit16 v4, v5, 0xf0

    .line 5366
    .local v4, "adjust":I
    move/from16 v25, v3

    and-int/lit16 v3, v7, 0x400

    .end local v3    # "sysUiFl":I
    .local v25, "sysUiFl":I
    if-nez v3, :cond_8c

    and-int/lit8 v3, v18, 0x4

    if-eqz v3, :cond_8a

    goto :goto_8c

    :cond_8a
    const/4 v3, 0x0

    goto :goto_8d

    :cond_8c
    :goto_8c
    const/4 v3, 0x1

    :goto_8d
    move/from16 v26, v3

    .line 5369
    .local v26, "requestedFullscreen":Z
    and-int/lit16 v3, v7, 0x100

    move-object/from16 v27, v14

    const/16 v14, 0x100

    .end local v14    # "dcf":Landroid/graphics/Rect;
    .local v27, "dcf":Landroid/graphics/Rect;
    if-ne v3, v14, :cond_99

    const/4 v3, 0x1

    goto :goto_9a

    :cond_99
    const/4 v3, 0x0

    :goto_9a
    move/from16 v28, v3

    .line 5370
    .local v28, "layoutInScreen":Z
    const/high16 v3, 0x10000

    and-int/2addr v3, v7

    const/high16 v14, 0x10000

    if-ne v3, v14, :cond_a5

    const/4 v3, 0x1

    goto :goto_a6

    :cond_a5
    const/4 v3, 0x0

    :goto_a6
    move v14, v3

    .line 5372
    .local v14, "layoutInsetDecor":Z
    iget-object v3, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v6, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5374
    move-object/from16 v30, v6

    const/16 v6, 0x7db

    .end local v6    # "sf":Landroid/graphics/Rect;
    .local v30, "sf":Landroid/graphics/Rect;
    move/from16 v31, v14

    .end local v14    # "layoutInsetDecor":Z
    .local v31, "layoutInsetDecor":Z
    const/4 v14, 0x2

    if-ne v8, v6, :cond_135

    .line 5375
    iget-object v3, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v10, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5376
    iget-object v3, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v9, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5377
    iget-object v3, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5378
    iget-object v3, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5379
    iget-object v3, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5381
    iget-object v3, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 5383
    iget-object v3, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iput v3, v10, Landroid/graphics/Rect;->bottom:I

    iput v3, v9, Landroid/graphics/Rect;->bottom:I

    .line 5384
    iget-object v3, v12, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_118

    iget-object v3, v12, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v6, v12, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-ne v3, v6, :cond_118

    iget-object v3, v12, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-direct {v12, v3}, Lcom/android/server/policy/PhoneWindowManager;->canReceiveInput(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v3

    if-eqz v3, :cond_118

    .line 5387
    iget v3, v12, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    if-ne v3, v14, :cond_105

    .line 5388
    iget-object v3, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iput v3, v10, Landroid/graphics/Rect;->right:I

    iput v3, v9, Landroid/graphics/Rect;->right:I

    iput v3, v0, Landroid/graphics/Rect;->right:I

    iput v3, v1, Landroid/graphics/Rect;->right:I

    iput v3, v2, Landroid/graphics/Rect;->right:I

    goto :goto_118

    .line 5390
    :cond_105
    iget v3, v12, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_118

    .line 5391
    iget-object v3, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iput v3, v10, Landroid/graphics/Rect;->left:I

    iput v3, v9, Landroid/graphics/Rect;->left:I

    iput v3, v0, Landroid/graphics/Rect;->left:I

    iput v3, v1, Landroid/graphics/Rect;->left:I

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 5395
    :cond_118
    :goto_118
    const/16 v3, 0x50

    iput v3, v11, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 5396
    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v3

    iput v3, v12, Lcom/android/server/policy/PhoneWindowManager;->mDockLayer:I

    .line 5679
    .end local v0    # "of":Landroid/graphics/Rect;
    .end local v1    # "df":Landroid/graphics/Rect;
    .end local v2    # "pf":Landroid/graphics/Rect;
    .end local v25    # "sysUiFl":I
    .end local v27    # "dcf":Landroid/graphics/Rect;
    .restart local v3    # "sysUiFl":I
    .local v4, "type":I
    .local v5, "fl":I
    .local v7, "vf":Landroid/graphics/Rect;
    .local v8, "pf":Landroid/graphics/Rect;
    .local v9, "df":Landroid/graphics/Rect;
    .local v10, "of":Landroid/graphics/Rect;
    .local v11, "cf":Landroid/graphics/Rect;
    .local v14, "adjust":I
    .local v23, "sim":I
    .local v41, "dcf":Landroid/graphics/Rect;
    .local v50, "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_122
    move v14, v4

    move/from16 v23, v5

    move v5, v7

    move v4, v8

    move-object v7, v10

    move-object/from16 v50, v11

    move/from16 v3, v25

    move-object/from16 v41, v27

    move-object v10, v0

    move-object v8, v2

    move-object v11, v9

    const/4 v2, 0x1

    move-object v9, v1

    goto/16 :goto_649

    .line 5397
    .end local v3    # "sysUiFl":I
    .end local v14    # "adjust":I
    .end local v23    # "sim":I
    .end local v41    # "dcf":Landroid/graphics/Rect;
    .end local v50    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v0    # "of":Landroid/graphics/Rect;
    .restart local v1    # "df":Landroid/graphics/Rect;
    .restart local v2    # "pf":Landroid/graphics/Rect;
    .local v4, "adjust":I
    .local v5, "sim":I
    .local v7, "fl":I
    .local v8, "type":I
    .local v9, "cf":Landroid/graphics/Rect;
    .local v10, "vf":Landroid/graphics/Rect;
    .local v11, "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v25    # "sysUiFl":I
    .restart local v27    # "dcf":Landroid/graphics/Rect;
    :cond_135
    const/16 v3, 0x7ef

    const/16 v6, 0x30

    const/16 v14, 0x10

    if-ne v8, v3, :cond_165

    .line 5398
    iget-object v3, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5399
    iget-object v3, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5400
    iget-object v3, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5401
    if-eq v4, v14, :cond_154

    .line 5402
    iget-object v3, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v9, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_159

    .line 5404
    :cond_154
    iget-object v3, v15, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v9, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5406
    :goto_159
    if-eq v4, v6, :cond_161

    .line 5407
    iget-object v3, v15, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    invoke-virtual {v10, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_122

    .line 5409
    :cond_161
    invoke-virtual {v10, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_122

    .line 5411
    :cond_165
    const/16 v3, 0x7dd

    if-ne v8, v3, :cond_190

    .line 5412
    move-object v6, v0

    move-object v0, v12

    .end local v0    # "of":Landroid/graphics/Rect;
    .local v6, "of":Landroid/graphics/Rect;
    move-object v14, v1

    move-object v1, v15

    .end local v1    # "df":Landroid/graphics/Rect;
    .local v14, "df":Landroid/graphics/Rect;
    move-object v3, v2

    .end local v2    # "pf":Landroid/graphics/Rect;
    .local v3, "pf":Landroid/graphics/Rect;
    move/from16 v36, v7

    move/from16 v37, v25

    move-object v7, v3

    move-object v3, v14

    .end local v3    # "pf":Landroid/graphics/Rect;
    .end local v25    # "sysUiFl":I
    .local v7, "pf":Landroid/graphics/Rect;
    .local v36, "fl":I
    .local v37, "sysUiFl":I
    move-object/from16 v39, v14

    move v14, v4

    move-object v4, v6

    .end local v4    # "adjust":I
    .local v14, "adjust":I
    .local v39, "df":Landroid/graphics/Rect;
    move/from16 v23, v5

    move-object v5, v9

    .end local v5    # "sim":I
    .restart local v23    # "sim":I
    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/PhoneWindowManager;->layoutWallpaper(Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 5679
    move v4, v8

    move-object/from16 v50, v11

    move-object/from16 v41, v27

    move/from16 v5, v36

    move/from16 v3, v37

    const/4 v2, 0x1

    move-object v8, v7

    move-object v11, v9

    move-object v7, v10

    move-object/from16 v9, v39

    move-object v10, v6

    goto/16 :goto_649

    .line 5413
    .end local v6    # "of":Landroid/graphics/Rect;
    .end local v14    # "adjust":I
    .end local v23    # "sim":I
    .end local v36    # "fl":I
    .end local v37    # "sysUiFl":I
    .end local v39    # "df":Landroid/graphics/Rect;
    .restart local v0    # "of":Landroid/graphics/Rect;
    .restart local v1    # "df":Landroid/graphics/Rect;
    .restart local v2    # "pf":Landroid/graphics/Rect;
    .restart local v4    # "adjust":I
    .restart local v5    # "sim":I
    .local v7, "fl":I
    .restart local v25    # "sysUiFl":I
    :cond_190
    move/from16 v23, v5

    move/from16 v36, v7

    move/from16 v37, v25

    move-object v5, v1

    move-object v7, v2

    move/from16 v63, v4

    move-object v4, v0

    move v0, v14

    move/from16 v14, v63

    .end local v0    # "of":Landroid/graphics/Rect;
    .end local v1    # "df":Landroid/graphics/Rect;
    .end local v2    # "pf":Landroid/graphics/Rect;
    .end local v25    # "sysUiFl":I
    .local v4, "of":Landroid/graphics/Rect;
    .local v5, "df":Landroid/graphics/Rect;
    .local v7, "pf":Landroid/graphics/Rect;
    .restart local v14    # "adjust":I
    .restart local v23    # "sim":I
    .restart local v36    # "fl":I
    .restart local v37    # "sysUiFl":I
    iget-object v1, v12, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-ne v13, v1, :cond_1e4

    .line 5414
    iget-object v1, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5415
    iget-object v1, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v5, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5416
    iget-object v1, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v7, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5417
    iget-object v1, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v9, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5418
    iget-object v1, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v10, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5420
    if-ne v14, v0, :cond_1d7

    .line 5421
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    .line 5679
    .end local v27    # "dcf":Landroid/graphics/Rect;
    .end local v36    # "fl":I
    .end local v37    # "sysUiFl":I
    .local v3, "sysUiFl":I
    .local v4, "type":I
    .local v5, "fl":I
    .local v7, "vf":Landroid/graphics/Rect;
    .local v8, "pf":Landroid/graphics/Rect;
    .local v9, "df":Landroid/graphics/Rect;
    .local v10, "of":Landroid/graphics/Rect;
    .local v11, "cf":Landroid/graphics/Rect;
    .restart local v41    # "dcf":Landroid/graphics/Rect;
    .restart local v50    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_1c3
    move-object/from16 v50, v11

    move-object/from16 v41, v27

    move/from16 v3, v37

    const/4 v2, 0x1

    move-object v11, v9

    move-object v9, v5

    move/from16 v5, v36

    move-object/from16 v63, v10

    move-object v10, v4

    move v4, v8

    move-object v8, v7

    move-object/from16 v7, v63

    goto/16 :goto_649

    .line 5423
    .end local v3    # "sysUiFl":I
    .end local v41    # "dcf":Landroid/graphics/Rect;
    .end local v50    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v4, "of":Landroid/graphics/Rect;
    .local v5, "df":Landroid/graphics/Rect;
    .local v7, "pf":Landroid/graphics/Rect;
    .local v8, "type":I
    .local v9, "cf":Landroid/graphics/Rect;
    .local v10, "vf":Landroid/graphics/Rect;
    .local v11, "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v27    # "dcf":Landroid/graphics/Rect;
    .restart local v36    # "fl":I
    .restart local v37    # "sysUiFl":I
    :cond_1d7
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    .line 5424
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    goto :goto_1c3

    .line 5427
    :cond_1e4
    iget-object v1, v15, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    move-object/from16 v2, v27

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5428
    .end local v27    # "dcf":Landroid/graphics/Rect;
    .local v2, "dcf":Landroid/graphics/Rect;
    iget v1, v11, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_1f3

    const/4 v1, 0x1

    goto :goto_1f4

    :cond_1f3
    const/4 v1, 0x0

    :goto_1f4
    move/from16 v25, v1

    .line 5430
    .local v25, "inheritTranslucentDecor":Z
    const/4 v3, 0x1

    if-lt v8, v3, :cond_1ff

    const/16 v1, 0x63

    if-gt v8, v1, :cond_1ff

    move v1, v3

    goto :goto_200

    :cond_1ff
    const/4 v1, 0x0

    :goto_200
    move/from16 v19, v1

    .line 5432
    .local v19, "isAppWindow":Z
    iget-object v1, v12, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-ne v13, v1, :cond_20e

    .line 5433
    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v1

    if-nez v1, :cond_20e

    move v1, v3

    goto :goto_20f

    :cond_20e
    const/4 v1, 0x0

    :goto_20f
    move/from16 v27, v1

    .line 5434
    .local v27, "topAtRest":Z
    if-eqz v19, :cond_257

    if-nez v25, :cond_257

    if-nez v27, :cond_257

    .line 5435
    and-int/lit8 v1, v37, 0x4

    if-nez v1, :cond_239

    move/from16 v1, v36

    and-int/lit16 v3, v1, 0x400

    .end local v36    # "fl":I
    .local v1, "fl":I
    if-nez v3, :cond_23b

    const/high16 v3, 0x4000000

    and-int/2addr v3, v1

    if-nez v3, :cond_23b

    const/high16 v3, -0x80000000

    and-int v33, v1, v3

    if-nez v33, :cond_23b

    const/high16 v3, 0x20000

    and-int v3, v21, v3

    if-nez v3, :cond_23b

    .line 5441
    iget-object v3, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iput v3, v2, Landroid/graphics/Rect;->top:I

    goto :goto_23b

    .line 5443
    .end local v1    # "fl":I
    .restart local v36    # "fl":I
    :cond_239
    move/from16 v1, v36

    .end local v36    # "fl":I
    .restart local v1    # "fl":I
    :cond_23b
    :goto_23b
    const/high16 v3, 0x8000000

    and-int/2addr v3, v1

    if-nez v3, :cond_259

    and-int/lit8 v3, v37, 0x2

    if-nez v3, :cond_259

    const/high16 v3, -0x80000000

    and-int v33, v1, v3

    if-nez v33, :cond_259

    .line 5447
    iget-object v3, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 5448
    iget-object v3, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iput v3, v2, Landroid/graphics/Rect;->right:I

    goto :goto_259

    .line 5452
    .end local v1    # "fl":I
    .restart local v36    # "fl":I
    :cond_257
    move/from16 v1, v36

    .end local v36    # "fl":I
    .restart local v1    # "fl":I
    :cond_259
    :goto_259
    const/16 v3, 0x7de

    const/16 v6, 0x7cf

    if-eqz v28, :cond_3c7

    if-eqz v31, :cond_3c7

    .line 5458
    if-eqz p2, :cond_2a1

    .line 5461
    const/4 v6, 0x1

    move-object v0, v12

    move/from16 v33, v1

    move-object v1, v13

    .end local v1    # "fl":I
    .local v33, "fl":I
    move-object v3, v2

    move/from16 v2, v33

    .end local v2    # "dcf":Landroid/graphics/Rect;
    .local v3, "dcf":Landroid/graphics/Rect;
    move-object/from16 v41, v3

    const/16 v36, 0x1

    move v3, v14

    .end local v3    # "dcf":Landroid/graphics/Rect;
    .restart local v41    # "dcf":Landroid/graphics/Rect;
    move-object/from16 v42, v4

    move-object/from16 v4, p2

    .end local v4    # "of":Landroid/graphics/Rect;
    .local v42, "of":Landroid/graphics/Rect;
    move-object/from16 v43, v5

    move v5, v6

    .end local v5    # "df":Landroid/graphics/Rect;
    .local v43, "df":Landroid/graphics/Rect;
    move-object v6, v7

    move-object/from16 v46, v7

    move/from16 v44, v33

    move/from16 v45, v37

    move-object/from16 v7, v43

    .end local v7    # "pf":Landroid/graphics/Rect;
    .end local v33    # "fl":I
    .end local v37    # "sysUiFl":I
    .local v44, "fl":I
    .local v45, "sysUiFl":I
    .local v46, "pf":Landroid/graphics/Rect;
    move/from16 v47, v8

    move-object/from16 v8, v42

    .end local v8    # "type":I
    .local v47, "type":I
    move-object/from16 v48, v9

    .end local v9    # "cf":Landroid/graphics/Rect;
    .local v48, "cf":Landroid/graphics/Rect;
    move-object/from16 v49, v10

    .end local v10    # "vf":Landroid/graphics/Rect;
    .local v49, "vf":Landroid/graphics/Rect;
    move-object/from16 v50, v11

    move-object v11, v15

    .end local v11    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v50    # "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-direct/range {v0 .. v11}, Lcom/android/server/policy/PhoneWindowManager;->setAttachedWindowFrames(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IILcom/android/server/policy/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V

    .line 5679
    move-object/from16 v10, v42

    move-object/from16 v9, v43

    move/from16 v5, v44

    move/from16 v3, v45

    move-object/from16 v8, v46

    move/from16 v4, v47

    move-object/from16 v11, v48

    move-object/from16 v7, v49

    const/4 v2, 0x1

    goto/16 :goto_649

    .line 5464
    .end local v41    # "dcf":Landroid/graphics/Rect;
    .end local v42    # "of":Landroid/graphics/Rect;
    .end local v43    # "df":Landroid/graphics/Rect;
    .end local v44    # "fl":I
    .end local v45    # "sysUiFl":I
    .end local v46    # "pf":Landroid/graphics/Rect;
    .end local v47    # "type":I
    .end local v48    # "cf":Landroid/graphics/Rect;
    .end local v49    # "vf":Landroid/graphics/Rect;
    .end local v50    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v1    # "fl":I
    .restart local v2    # "dcf":Landroid/graphics/Rect;
    .restart local v4    # "of":Landroid/graphics/Rect;
    .restart local v5    # "df":Landroid/graphics/Rect;
    .restart local v7    # "pf":Landroid/graphics/Rect;
    .restart local v8    # "type":I
    .restart local v9    # "cf":Landroid/graphics/Rect;
    .restart local v10    # "vf":Landroid/graphics/Rect;
    .restart local v11    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v37    # "sysUiFl":I
    :cond_2a1
    move/from16 v44, v1

    move-object/from16 v41, v2

    move-object/from16 v42, v4

    move-object/from16 v43, v5

    move-object/from16 v46, v7

    move/from16 v47, v8

    move-object/from16 v48, v9

    move-object/from16 v49, v10

    move-object/from16 v50, v11

    move/from16 v45, v37

    .end local v1    # "fl":I
    .end local v2    # "dcf":Landroid/graphics/Rect;
    .end local v4    # "of":Landroid/graphics/Rect;
    .end local v5    # "df":Landroid/graphics/Rect;
    .end local v7    # "pf":Landroid/graphics/Rect;
    .end local v8    # "type":I
    .end local v9    # "cf":Landroid/graphics/Rect;
    .end local v10    # "vf":Landroid/graphics/Rect;
    .end local v11    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v37    # "sysUiFl":I
    .restart local v41    # "dcf":Landroid/graphics/Rect;
    .restart local v42    # "of":Landroid/graphics/Rect;
    .restart local v43    # "df":Landroid/graphics/Rect;
    .restart local v44    # "fl":I
    .restart local v45    # "sysUiFl":I
    .restart local v46    # "pf":Landroid/graphics/Rect;
    .restart local v47    # "type":I
    .restart local v48    # "cf":Landroid/graphics/Rect;
    .restart local v49    # "vf":Landroid/graphics/Rect;
    .restart local v50    # "attrs":Landroid/view/WindowManager$LayoutParams;
    move/from16 v11, v47

    if-eq v11, v3, :cond_333

    .end local v47    # "type":I
    .local v11, "type":I
    const/16 v10, 0x7e1

    if-ne v11, v10, :cond_2ca

    .line 5471
    move-object/from16 v7, v42

    move-object/from16 v5, v43

    move/from16 v9, v44

    move/from16 v2, v45

    move-object/from16 v4, v46

    const/4 v8, 0x1

    goto/16 :goto_340

    .line 5484
    :cond_2ca
    const/high16 v1, 0x2000000

    move/from16 v9, v44

    and-int/2addr v1, v9

    .end local v44    # "fl":I
    .local v9, "fl":I
    if-eqz v1, :cond_2f6

    const/4 v8, 0x1

    if-lt v11, v8, :cond_2ef

    if-gt v11, v6, :cond_2ef

    .line 5488
    iget-object v1, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    move-object/from16 v7, v42

    invoke-virtual {v7, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5489
    .end local v42    # "of":Landroid/graphics/Rect;
    .local v7, "of":Landroid/graphics/Rect;
    iget-object v1, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    move-object/from16 v5, v43

    invoke-virtual {v5, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5490
    .end local v43    # "df":Landroid/graphics/Rect;
    .restart local v5    # "df":Landroid/graphics/Rect;
    iget-object v1, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    move-object/from16 v4, v46

    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5514
    .end local v46    # "pf":Landroid/graphics/Rect;
    .local v4, "pf":Landroid/graphics/Rect;
    move/from16 v2, v45

    goto/16 :goto_37c

    .line 5491
    .end local v4    # "pf":Landroid/graphics/Rect;
    .end local v5    # "df":Landroid/graphics/Rect;
    .end local v7    # "of":Landroid/graphics/Rect;
    .restart local v42    # "of":Landroid/graphics/Rect;
    .restart local v43    # "df":Landroid/graphics/Rect;
    .restart local v46    # "pf":Landroid/graphics/Rect;
    :cond_2ef
    move-object/from16 v7, v42

    move-object/from16 v5, v43

    move-object/from16 v4, v46

    goto :goto_2fd

    :cond_2f6
    move-object/from16 v7, v42

    move-object/from16 v5, v43

    move-object/from16 v4, v46

    const/4 v8, 0x1

    .end local v42    # "of":Landroid/graphics/Rect;
    .end local v43    # "df":Landroid/graphics/Rect;
    .end local v46    # "pf":Landroid/graphics/Rect;
    .restart local v4    # "pf":Landroid/graphics/Rect;
    .restart local v5    # "df":Landroid/graphics/Rect;
    .restart local v7    # "of":Landroid/graphics/Rect;
    :goto_2fd
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_321

    move/from16 v2, v45

    and-int/lit16 v1, v2, 0x200

    .end local v45    # "sysUiFl":I
    .local v2, "sysUiFl":I
    if-eqz v1, :cond_323

    if-lt v11, v8, :cond_30d

    if-le v11, v6, :cond_311

    :cond_30d
    const/16 v1, 0x7e4

    if-ne v11, v1, :cond_323

    .line 5499
    :cond_311
    iget-object v1, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v5, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5500
    iget-object v1, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5504
    iget-object v1, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v7, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_37c

    .line 5506
    .end local v2    # "sysUiFl":I
    .restart local v45    # "sysUiFl":I
    :cond_321
    move/from16 v2, v45

    .end local v45    # "sysUiFl":I
    .restart local v2    # "sysUiFl":I
    :cond_323
    iget-object v1, v15, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    invoke-virtual {v5, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5507
    iget-object v1, v15, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5511
    iget-object v1, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v7, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_37c

    .line 5471
    .end local v2    # "sysUiFl":I
    .end local v4    # "pf":Landroid/graphics/Rect;
    .end local v5    # "df":Landroid/graphics/Rect;
    .end local v7    # "of":Landroid/graphics/Rect;
    .end local v9    # "fl":I
    .restart local v42    # "of":Landroid/graphics/Rect;
    .restart local v43    # "df":Landroid/graphics/Rect;
    .restart local v44    # "fl":I
    .restart local v45    # "sysUiFl":I
    .restart local v46    # "pf":Landroid/graphics/Rect;
    :cond_333
    move-object/from16 v7, v42

    move-object/from16 v5, v43

    move/from16 v9, v44

    move/from16 v2, v45

    move-object/from16 v4, v46

    const/4 v8, 0x1

    const/16 v10, 0x7e1

    .end local v42    # "of":Landroid/graphics/Rect;
    .end local v43    # "df":Landroid/graphics/Rect;
    .end local v44    # "fl":I
    .end local v45    # "sysUiFl":I
    .end local v46    # "pf":Landroid/graphics/Rect;
    .restart local v2    # "sysUiFl":I
    .restart local v4    # "pf":Landroid/graphics/Rect;
    .restart local v5    # "df":Landroid/graphics/Rect;
    .restart local v7    # "of":Landroid/graphics/Rect;
    .restart local v9    # "fl":I
    :goto_340
    if-eqz v24, :cond_347

    .line 5472
    iget-object v1, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    :goto_344
    iget v1, v1, Landroid/graphics/Rect;->left:I

    goto :goto_34a

    :cond_347
    iget-object v1, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    goto :goto_344

    :goto_34a
    iput v1, v7, Landroid/graphics/Rect;->left:I

    iput v1, v5, Landroid/graphics/Rect;->left:I

    iput v1, v4, Landroid/graphics/Rect;->left:I

    .line 5473
    iget-object v1, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v7, Landroid/graphics/Rect;->top:I

    iput v1, v5, Landroid/graphics/Rect;->top:I

    iput v1, v4, Landroid/graphics/Rect;->top:I

    .line 5474
    if-eqz v24, :cond_361

    .line 5475
    iget-object v1, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    goto :goto_365

    .line 5476
    :cond_361
    iget-object v1, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    :goto_365
    iput v1, v7, Landroid/graphics/Rect;->right:I

    iput v1, v5, Landroid/graphics/Rect;->right:I

    iput v1, v4, Landroid/graphics/Rect;->right:I

    .line 5477
    if-eqz v24, :cond_372

    .line 5478
    iget-object v1, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_376

    .line 5479
    :cond_372
    iget-object v1, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    :goto_376
    iput v1, v7, Landroid/graphics/Rect;->bottom:I

    iput v1, v5, Landroid/graphics/Rect;->bottom:I

    iput v1, v4, Landroid/graphics/Rect;->bottom:I

    .line 5514
    :goto_37c
    and-int/lit16 v1, v9, 0x400

    if-nez v1, :cond_39e

    .line 5515
    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVoiceInteraction()Z

    move-result v1

    if-eqz v1, :cond_38e

    .line 5516
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    move-object/from16 v1, v48

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .end local v48    # "cf":Landroid/graphics/Rect;
    .local v1, "cf":Landroid/graphics/Rect;
    goto :goto_3a5

    .line 5518
    .end local v1    # "cf":Landroid/graphics/Rect;
    .restart local v48    # "cf":Landroid/graphics/Rect;
    :cond_38e
    move-object/from16 v1, v48

    .end local v48    # "cf":Landroid/graphics/Rect;
    .restart local v1    # "cf":Landroid/graphics/Rect;
    if-eq v14, v0, :cond_398

    .line 5519
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_3a5

    .line 5521
    :cond_398
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_3a5

    .line 5528
    .end local v1    # "cf":Landroid/graphics/Rect;
    .restart local v48    # "cf":Landroid/graphics/Rect;
    :cond_39e
    move-object/from16 v1, v48

    .end local v48    # "cf":Landroid/graphics/Rect;
    .restart local v1    # "cf":Landroid/graphics/Rect;
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5530
    :goto_3a5
    invoke-direct {v12, v2, v9, v1, v15}, Lcom/android/server/policy/PhoneWindowManager;->applyStableConstraints(IILandroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V

    .line 5531
    const/16 v0, 0x30

    if-eq v14, v0, :cond_3c1

    .line 5532
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    move-object/from16 v3, v49

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5679
    .end local v1    # "cf":Landroid/graphics/Rect;
    .end local v2    # "sysUiFl":I
    .end local v19    # "isAppWindow":Z
    .end local v25    # "inheritTranslucentDecor":Z
    .end local v27    # "topAtRest":Z
    .end local v49    # "vf":Landroid/graphics/Rect;
    .local v3, "sysUiFl":I
    .local v4, "type":I
    .local v5, "fl":I
    .local v7, "vf":Landroid/graphics/Rect;
    .local v8, "pf":Landroid/graphics/Rect;
    .local v9, "df":Landroid/graphics/Rect;
    .local v10, "of":Landroid/graphics/Rect;
    .local v11, "cf":Landroid/graphics/Rect;
    :goto_3b3
    move-object v10, v7

    move-object v7, v3

    move v3, v2

    move v2, v8

    move-object v8, v4

    move v4, v11

    move-object v11, v1

    move/from16 v63, v9

    move-object v9, v5

    move/from16 v5, v63

    goto/16 :goto_649

    .line 5534
    .end local v3    # "sysUiFl":I
    .end local v8    # "pf":Landroid/graphics/Rect;
    .end local v10    # "of":Landroid/graphics/Rect;
    .restart local v1    # "cf":Landroid/graphics/Rect;
    .restart local v2    # "sysUiFl":I
    .local v4, "pf":Landroid/graphics/Rect;
    .local v5, "df":Landroid/graphics/Rect;
    .local v7, "of":Landroid/graphics/Rect;
    .local v9, "fl":I
    .local v11, "type":I
    .restart local v19    # "isAppWindow":Z
    .restart local v25    # "inheritTranslucentDecor":Z
    .restart local v27    # "topAtRest":Z
    .restart local v49    # "vf":Landroid/graphics/Rect;
    :cond_3c1
    move-object/from16 v3, v49

    .end local v49    # "vf":Landroid/graphics/Rect;
    .local v3, "vf":Landroid/graphics/Rect;
    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_3b3

    .line 5537
    .end local v3    # "vf":Landroid/graphics/Rect;
    .end local v41    # "dcf":Landroid/graphics/Rect;
    .end local v50    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v1, "fl":I
    .local v2, "dcf":Landroid/graphics/Rect;
    .local v4, "of":Landroid/graphics/Rect;
    .local v7, "pf":Landroid/graphics/Rect;
    .local v8, "type":I
    .local v9, "cf":Landroid/graphics/Rect;
    .local v10, "vf":Landroid/graphics/Rect;
    .local v11, "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v37    # "sysUiFl":I
    :cond_3c7
    move-object/from16 v41, v2

    move-object/from16 v51, v10

    move-object/from16 v50, v11

    move/from16 v2, v37

    const/16 v10, 0x7e1

    move v11, v8

    const/4 v8, 0x1

    move-object/from16 v63, v9

    move v9, v1

    move-object/from16 v1, v63

    move-object/from16 v64, v7

    move-object v7, v4

    move-object/from16 v4, v64

    .end local v8    # "type":I
    .end local v10    # "vf":Landroid/graphics/Rect;
    .end local v37    # "sysUiFl":I
    .local v1, "cf":Landroid/graphics/Rect;
    .local v2, "sysUiFl":I
    .local v4, "pf":Landroid/graphics/Rect;
    .local v7, "of":Landroid/graphics/Rect;
    .local v9, "fl":I
    .local v11, "type":I
    .restart local v41    # "dcf":Landroid/graphics/Rect;
    .restart local v50    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v51, "vf":Landroid/graphics/Rect;
    if-nez v28, :cond_4d5

    and-int/lit16 v8, v2, 0x600

    if-eqz v8, :cond_3f0

    .line 5544
    move/from16 v52, v2

    move-object v8, v4

    move-object v10, v7

    move/from16 v57, v9

    move v12, v11

    move-object/from16 v7, v51

    move-object v11, v1

    move-object v9, v5

    goto/16 :goto_4e0

    .line 5629
    :cond_3f0
    if-eqz p2, :cond_42b

    .line 5634
    const/4 v6, 0x0

    move-object v0, v12

    move-object v8, v1

    move-object v1, v13

    .end local v1    # "cf":Landroid/graphics/Rect;
    .local v8, "cf":Landroid/graphics/Rect;
    move v3, v2

    move v2, v9

    .end local v2    # "sysUiFl":I
    .local v3, "sysUiFl":I
    move/from16 v52, v3

    move v3, v14

    .end local v3    # "sysUiFl":I
    .local v52, "sysUiFl":I
    move-object/from16 v53, v4

    move-object/from16 v4, p2

    .end local v4    # "pf":Landroid/graphics/Rect;
    .local v53, "pf":Landroid/graphics/Rect;
    move-object/from16 v54, v5

    move v5, v6

    .end local v5    # "df":Landroid/graphics/Rect;
    .local v54, "df":Landroid/graphics/Rect;
    move-object/from16 v6, v53

    move-object/from16 v55, v7

    move-object/from16 v7, v54

    .end local v7    # "of":Landroid/graphics/Rect;
    .local v55, "of":Landroid/graphics/Rect;
    move-object/from16 v56, v8

    move-object/from16 v8, v55

    .end local v8    # "cf":Landroid/graphics/Rect;
    .local v56, "cf":Landroid/graphics/Rect;
    move/from16 v57, v9

    move-object/from16 v9, v56

    .end local v9    # "fl":I
    .local v57, "fl":I
    move-object/from16 v10, v51

    move v12, v11

    move-object v11, v15

    .end local v11    # "type":I
    .local v12, "type":I
    invoke-direct/range {v0 .. v11}, Lcom/android/server/policy/PhoneWindowManager;->setAttachedWindowFrames(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IILcom/android/server/policy/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V

    .line 5679
    move v4, v12

    move-object/from16 v7, v51

    move/from16 v3, v52

    move-object/from16 v8, v53

    move-object/from16 v9, v54

    move-object/from16 v10, v55

    move-object/from16 v11, v56

    .end local v12    # "type":I
    .end local v19    # "isAppWindow":Z
    .end local v25    # "inheritTranslucentDecor":Z
    .end local v27    # "topAtRest":Z
    .end local v51    # "vf":Landroid/graphics/Rect;
    .end local v52    # "sysUiFl":I
    .end local v53    # "pf":Landroid/graphics/Rect;
    .end local v54    # "df":Landroid/graphics/Rect;
    .end local v55    # "of":Landroid/graphics/Rect;
    .end local v56    # "cf":Landroid/graphics/Rect;
    .end local v57    # "fl":I
    .restart local v3    # "sysUiFl":I
    .local v4, "type":I
    .local v5, "fl":I
    .local v7, "vf":Landroid/graphics/Rect;
    .local v8, "pf":Landroid/graphics/Rect;
    .local v9, "df":Landroid/graphics/Rect;
    .local v10, "of":Landroid/graphics/Rect;
    .local v11, "cf":Landroid/graphics/Rect;
    :goto_424
    move/from16 v5, v57

    const/4 v2, 0x1

    move-object/from16 v12, p0

    goto/16 :goto_649

    .line 5641
    .end local v3    # "sysUiFl":I
    .end local v8    # "pf":Landroid/graphics/Rect;
    .end local v10    # "of":Landroid/graphics/Rect;
    .restart local v1    # "cf":Landroid/graphics/Rect;
    .restart local v2    # "sysUiFl":I
    .local v4, "pf":Landroid/graphics/Rect;
    .local v5, "df":Landroid/graphics/Rect;
    .local v7, "of":Landroid/graphics/Rect;
    .local v9, "fl":I
    .local v11, "type":I
    .restart local v19    # "isAppWindow":Z
    .restart local v25    # "inheritTranslucentDecor":Z
    .restart local v27    # "topAtRest":Z
    .restart local v51    # "vf":Landroid/graphics/Rect;
    :cond_42b
    move-object/from16 v56, v1

    move/from16 v52, v2

    move-object/from16 v53, v4

    move-object/from16 v54, v5

    move-object/from16 v55, v7

    move/from16 v57, v9

    move v12, v11

    .end local v1    # "cf":Landroid/graphics/Rect;
    .end local v2    # "sysUiFl":I
    .end local v4    # "pf":Landroid/graphics/Rect;
    .end local v5    # "df":Landroid/graphics/Rect;
    .end local v7    # "of":Landroid/graphics/Rect;
    .end local v9    # "fl":I
    .end local v11    # "type":I
    .restart local v12    # "type":I
    .restart local v52    # "sysUiFl":I
    .restart local v53    # "pf":Landroid/graphics/Rect;
    .restart local v54    # "df":Landroid/graphics/Rect;
    .restart local v55    # "of":Landroid/graphics/Rect;
    .restart local v56    # "cf":Landroid/graphics/Rect;
    .restart local v57    # "fl":I
    if-ne v12, v3, :cond_45c

    .line 5645
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    move-object/from16 v11, v56

    invoke-virtual {v11, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5646
    .end local v56    # "cf":Landroid/graphics/Rect;
    .local v11, "cf":Landroid/graphics/Rect;
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    move-object/from16 v10, v55

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5647
    .end local v55    # "of":Landroid/graphics/Rect;
    .restart local v10    # "of":Landroid/graphics/Rect;
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    move-object/from16 v9, v54

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5648
    .end local v54    # "df":Landroid/graphics/Rect;
    .local v9, "df":Landroid/graphics/Rect;
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    move-object/from16 v8, v53

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5679
    .end local v53    # "pf":Landroid/graphics/Rect;
    .restart local v8    # "pf":Landroid/graphics/Rect;
    move v4, v12

    move-object/from16 v7, v51

    .end local v12    # "type":I
    .end local v19    # "isAppWindow":Z
    .end local v25    # "inheritTranslucentDecor":Z
    .end local v27    # "topAtRest":Z
    .end local v51    # "vf":Landroid/graphics/Rect;
    .end local v52    # "sysUiFl":I
    .end local v57    # "fl":I
    .restart local v3    # "sysUiFl":I
    .local v4, "type":I
    .local v5, "fl":I
    .local v7, "vf":Landroid/graphics/Rect;
    :goto_459
    move/from16 v3, v52

    goto :goto_424

    .line 5649
    .end local v3    # "sysUiFl":I
    .end local v4    # "type":I
    .end local v5    # "fl":I
    .end local v7    # "vf":Landroid/graphics/Rect;
    .end local v8    # "pf":Landroid/graphics/Rect;
    .end local v9    # "df":Landroid/graphics/Rect;
    .end local v10    # "of":Landroid/graphics/Rect;
    .end local v11    # "cf":Landroid/graphics/Rect;
    .restart local v12    # "type":I
    .restart local v19    # "isAppWindow":Z
    .restart local v25    # "inheritTranslucentDecor":Z
    .restart local v27    # "topAtRest":Z
    .restart local v51    # "vf":Landroid/graphics/Rect;
    .restart local v52    # "sysUiFl":I
    .restart local v53    # "pf":Landroid/graphics/Rect;
    .restart local v54    # "df":Landroid/graphics/Rect;
    .restart local v55    # "of":Landroid/graphics/Rect;
    .restart local v56    # "cf":Landroid/graphics/Rect;
    .restart local v57    # "fl":I
    :cond_45c
    move-object/from16 v8, v53

    move-object/from16 v9, v54

    move-object/from16 v10, v55

    move-object/from16 v11, v56

    .end local v53    # "pf":Landroid/graphics/Rect;
    .end local v54    # "df":Landroid/graphics/Rect;
    .end local v55    # "of":Landroid/graphics/Rect;
    .end local v56    # "cf":Landroid/graphics/Rect;
    .restart local v8    # "pf":Landroid/graphics/Rect;
    .restart local v9    # "df":Landroid/graphics/Rect;
    .restart local v10    # "of":Landroid/graphics/Rect;
    .restart local v11    # "cf":Landroid/graphics/Rect;
    const/16 v1, 0x7d5

    if-eq v12, v1, :cond_4bd

    const/16 v1, 0x7d3

    if-ne v12, v1, :cond_46f

    .line 5651
    move-object/from16 v7, v51

    goto :goto_4bf

    .line 5656
    :cond_46f
    iget-object v1, v15, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v8, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5657
    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVoiceInteraction()Z

    move-result v1

    if-eqz v1, :cond_48a

    .line 5658
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {v11, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5659
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5660
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_4ab

    .line 5661
    :cond_48a
    if-eq v14, v0, :cond_49c

    .line 5662
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v11, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5663
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5664
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_4ab

    .line 5666
    :cond_49c
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v11, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5667
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5668
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5670
    :goto_4ab
    const/16 v0, 0x30

    if-eq v14, v0, :cond_4b7

    .line 5671
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    move-object/from16 v7, v51

    invoke-virtual {v7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .end local v51    # "vf":Landroid/graphics/Rect;
    .restart local v7    # "vf":Landroid/graphics/Rect;
    goto :goto_4d3

    .line 5673
    .end local v7    # "vf":Landroid/graphics/Rect;
    .restart local v51    # "vf":Landroid/graphics/Rect;
    :cond_4b7
    move-object/from16 v7, v51

    .end local v51    # "vf":Landroid/graphics/Rect;
    .restart local v7    # "vf":Landroid/graphics/Rect;
    invoke-virtual {v7, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .end local v19    # "isAppWindow":Z
    .end local v25    # "inheritTranslucentDecor":Z
    .end local v27    # "topAtRest":Z
    goto :goto_4d3

    .line 5651
    .end local v7    # "vf":Landroid/graphics/Rect;
    .restart local v19    # "isAppWindow":Z
    .restart local v25    # "inheritTranslucentDecor":Z
    .restart local v27    # "topAtRest":Z
    .restart local v51    # "vf":Landroid/graphics/Rect;
    :cond_4bd
    move-object/from16 v7, v51

    .end local v51    # "vf":Landroid/graphics/Rect;
    .restart local v7    # "vf":Landroid/graphics/Rect;
    :goto_4bf
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v11, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5652
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5653
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5654
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5679
    .end local v12    # "type":I
    .end local v19    # "isAppWindow":Z
    .end local v25    # "inheritTranslucentDecor":Z
    .end local v27    # "topAtRest":Z
    .end local v52    # "sysUiFl":I
    .end local v57    # "fl":I
    .restart local v3    # "sysUiFl":I
    .restart local v4    # "type":I
    .restart local v5    # "fl":I
    :goto_4d3
    move v4, v12

    goto :goto_459

    .line 5544
    .end local v3    # "sysUiFl":I
    .end local v8    # "pf":Landroid/graphics/Rect;
    .end local v10    # "of":Landroid/graphics/Rect;
    .restart local v1    # "cf":Landroid/graphics/Rect;
    .restart local v2    # "sysUiFl":I
    .local v4, "pf":Landroid/graphics/Rect;
    .local v5, "df":Landroid/graphics/Rect;
    .local v7, "of":Landroid/graphics/Rect;
    .local v9, "fl":I
    .local v11, "type":I
    .restart local v19    # "isAppWindow":Z
    .restart local v25    # "inheritTranslucentDecor":Z
    .restart local v27    # "topAtRest":Z
    .restart local v51    # "vf":Landroid/graphics/Rect;
    :cond_4d5
    move/from16 v52, v2

    move-object v8, v4

    move-object v10, v7

    move/from16 v57, v9

    move v12, v11

    move-object/from16 v7, v51

    move-object v11, v1

    move-object v9, v5

    .end local v1    # "cf":Landroid/graphics/Rect;
    .end local v2    # "sysUiFl":I
    .end local v4    # "pf":Landroid/graphics/Rect;
    .end local v5    # "df":Landroid/graphics/Rect;
    .end local v51    # "vf":Landroid/graphics/Rect;
    .local v7, "vf":Landroid/graphics/Rect;
    .restart local v8    # "pf":Landroid/graphics/Rect;
    .local v9, "df":Landroid/graphics/Rect;
    .restart local v10    # "of":Landroid/graphics/Rect;
    .local v11, "cf":Landroid/graphics/Rect;
    .restart local v12    # "type":I
    .restart local v52    # "sysUiFl":I
    .restart local v57    # "fl":I
    :goto_4e0
    if-eq v12, v3, :cond_5f7

    const/16 v1, 0x7e1

    if-ne v12, v1, :cond_4f0

    .line 5545
    move v4, v12

    move/from16 v3, v52

    move/from16 v5, v57

    const/4 v2, 0x1

    move-object/from16 v12, p0

    goto/16 :goto_5ff

    .line 5558
    :cond_4f0
    const/16 v2, 0x7e3

    if-eq v12, v2, :cond_5df

    const/16 v2, 0x7e8

    if-ne v12, v2, :cond_502

    .line 5560
    move v4, v12

    move/from16 v3, v52

    move/from16 v5, v57

    const/4 v2, 0x1

    move-object/from16 v12, p0

    goto/16 :goto_5e7

    .line 5566
    :cond_502
    const/16 v2, 0x7df

    if-eq v12, v2, :cond_50e

    const/16 v2, 0x7f4

    if-ne v12, v2, :cond_50b

    goto :goto_50e

    .line 5574
    :cond_50b
    move/from16 v5, v57

    goto :goto_530

    .line 5566
    :cond_50e
    :goto_50e
    move/from16 v5, v57

    and-int/lit16 v2, v5, 0x400

    .end local v57    # "fl":I
    .local v5, "fl":I
    if-eqz v2, :cond_530

    .line 5570
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v11, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5571
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5572
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5573
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5622
    .end local v12    # "type":I
    .end local v52    # "sysUiFl":I
    .restart local v3    # "sysUiFl":I
    .local v4, "type":I
    :goto_528
    move v4, v12

    move/from16 v3, v52

    const/4 v2, 0x1

    :goto_52c
    move-object/from16 v12, p0

    goto/16 :goto_639

    .line 5574
    .end local v3    # "sysUiFl":I
    .end local v4    # "type":I
    .restart local v12    # "type":I
    .restart local v52    # "sysUiFl":I
    :cond_530
    :goto_530
    const/16 v2, 0x7e5

    if-ne v12, v2, :cond_549

    .line 5576
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v11, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5577
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5578
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5579
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_528

    .line 5580
    :cond_549
    const/high16 v2, 0x2000000

    and-int/2addr v2, v5

    if-eqz v2, :cond_56b

    const/4 v2, 0x1

    if-lt v12, v2, :cond_56c

    if-gt v12, v6, :cond_56c

    .line 5584
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v11, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5585
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5586
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5587
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5622
    move v4, v12

    move/from16 v3, v52

    goto :goto_52c

    .line 5588
    :cond_56b
    const/4 v2, 0x1

    :cond_56c
    move v4, v12

    move-object/from16 v12, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v3

    .end local v12    # "type":I
    .restart local v4    # "type":I
    if-eqz v3, :cond_5a5

    move/from16 v3, v52

    and-int/lit16 v1, v3, 0x200

    .end local v52    # "sysUiFl":I
    .restart local v3    # "sysUiFl":I
    if-eqz v1, :cond_5a7

    const/16 v1, 0x7d0

    if-eq v4, v1, :cond_58f

    const/16 v1, 0x7d5

    if-eq v4, v1, :cond_58f

    const/16 v1, 0x7f2

    if-eq v4, v1, :cond_58f

    const/16 v1, 0x7f1

    if-eq v4, v1, :cond_58f

    if-lt v4, v2, :cond_5a7

    if-gt v4, v6, :cond_5a7

    .line 5602
    :cond_58f
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v11, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5603
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5604
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5605
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_639

    .line 5606
    .end local v3    # "sysUiFl":I
    .restart local v52    # "sysUiFl":I
    :cond_5a5
    move/from16 v3, v52

    .end local v52    # "sysUiFl":I
    .restart local v3    # "sysUiFl":I
    :cond_5a7
    and-int/lit16 v1, v3, 0x400

    if-eqz v1, :cond_5ca

    .line 5607
    iget-object v1, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v10, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5608
    iget-object v1, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v9, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5609
    iget-object v1, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v8, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5610
    if-eq v14, v0, :cond_5c3

    .line 5611
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v11, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_639

    .line 5613
    :cond_5c3
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v11, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_639

    .line 5616
    :cond_5ca
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v11, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5617
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5618
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5619
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_639

    .line 5560
    .end local v3    # "sysUiFl":I
    .end local v4    # "type":I
    .end local v5    # "fl":I
    .restart local v12    # "type":I
    .restart local v52    # "sysUiFl":I
    .restart local v57    # "fl":I
    :cond_5df
    move v4, v12

    move/from16 v3, v52

    move/from16 v5, v57

    const/4 v2, 0x1

    move-object/from16 v12, p0

    .end local v12    # "type":I
    .end local v52    # "sysUiFl":I
    .end local v57    # "fl":I
    .restart local v3    # "sysUiFl":I
    .restart local v4    # "type":I
    .restart local v5    # "fl":I
    :goto_5e7
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5561
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5562
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_639

    .line 5545
    .end local v3    # "sysUiFl":I
    .end local v4    # "type":I
    .end local v5    # "fl":I
    .restart local v12    # "type":I
    .restart local v52    # "sysUiFl":I
    .restart local v57    # "fl":I
    :cond_5f7
    move v4, v12

    move/from16 v3, v52

    move/from16 v5, v57

    const/4 v2, 0x1

    move-object/from16 v12, p0

    .end local v12    # "type":I
    .end local v52    # "sysUiFl":I
    .end local v57    # "fl":I
    .restart local v3    # "sysUiFl":I
    .restart local v4    # "type":I
    .restart local v5    # "fl":I
    :goto_5ff
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v11, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5546
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5547
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5548
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5549
    if-eqz v24, :cond_639

    .line 5550
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, v11, Landroid/graphics/Rect;->left:I

    iput v0, v10, Landroid/graphics/Rect;->left:I

    iput v0, v9, Landroid/graphics/Rect;->left:I

    iput v0, v8, Landroid/graphics/Rect;->left:I

    .line 5551
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, v11, Landroid/graphics/Rect;->right:I

    iput v0, v10, Landroid/graphics/Rect;->right:I

    iput v0, v9, Landroid/graphics/Rect;->right:I

    iput v0, v8, Landroid/graphics/Rect;->right:I

    .line 5552
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, v11, Landroid/graphics/Rect;->bottom:I

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    .line 5622
    :cond_639
    :goto_639
    invoke-direct {v12, v3, v5, v11, v15}, Lcom/android/server/policy/PhoneWindowManager;->applyStableConstraints(IILandroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V

    .line 5624
    const/16 v0, 0x30

    if-eq v14, v0, :cond_646

    .line 5625
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    invoke-virtual {v7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_649

    .line 5627
    :cond_646
    invoke-virtual {v7, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5679
    .end local v19    # "isAppWindow":Z
    .end local v25    # "inheritTranslucentDecor":Z
    .end local v27    # "topAtRest":Z
    :goto_649
    const/4 v0, 0x0

    .line 5680
    .local v0, "parentFrameWasClippedByDisplayCutout":Z
    move-object/from16 v6, v50

    iget v1, v6, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 5681
    .end local v50    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v1, "cutoutMode":I
    .local v6, "attrs":Landroid/view/WindowManager$LayoutParams;
    if-eqz p2, :cond_655

    if-nez v28, :cond_655

    move/from16 v19, v2

    goto :goto_657

    :cond_655
    const/16 v19, 0x0

    .line 5682
    .local v19, "attachedInParent":Z
    :goto_657
    and-int/lit8 v20, v18, 0x2

    if-eqz v20, :cond_65e

    move/from16 v20, v2

    goto :goto_660

    :cond_65e
    const/16 v20, 0x0

    .line 5687
    .local v20, "requestedHideNavigation":Z
    :goto_660
    invoke-virtual {v6}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v25

    if-nez v25, :cond_66d

    if-eqz v28, :cond_66d

    if-eq v4, v2, :cond_66d

    move/from16 v25, v2

    goto :goto_66f

    :cond_66d
    const/16 v25, 0x0

    .line 5692
    .local v25, "floatingInScreenWindow":Z
    :goto_66f
    if-eq v1, v2, :cond_6d4

    .line 5693
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpDisplayCutoutSafeExceptMaybeBarsRect:Landroid/graphics/Rect;

    .line 5694
    .local v2, "displayCutoutSafeExceptMaybeBars":Landroid/graphics/Rect;
    move/from16 v58, v3

    iget-object v3, v15, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    .end local v3    # "sysUiFl":I
    .local v58, "sysUiFl":I
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5695
    if-eqz v28, :cond_686

    if-eqz v31, :cond_686

    if-nez v26, :cond_686

    if-nez v1, :cond_686

    .line 5701
    const/high16 v3, -0x80000000

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 5703
    :cond_686
    const/4 v3, 0x4

    if-eqz v28, :cond_6aa

    if-eqz v31, :cond_6aa

    if-nez v20, :cond_6aa

    if-nez v1, :cond_6aa

    .line 5706
    move/from16 v59, v1

    iget v1, v12, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    .end local v1    # "cutoutMode":I
    .local v59, "cutoutMode":I
    if-eq v1, v3, :cond_6a4

    packed-switch v1, :pswitch_data_7ea

    goto :goto_6ac

    .line 5711
    :pswitch_699
    const v1, 0x7fffffff

    iput v1, v2, Landroid/graphics/Rect;->right:I

    .line 5712
    goto :goto_6ac

    .line 5714
    :pswitch_69f
    const/high16 v1, -0x80000000

    iput v1, v2, Landroid/graphics/Rect;->left:I

    goto :goto_6ac

    .line 5708
    :cond_6a4
    const v1, 0x7fffffff

    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 5709
    goto :goto_6ac

    .line 5718
    .end local v59    # "cutoutMode":I
    .restart local v1    # "cutoutMode":I
    :cond_6aa
    move/from16 v59, v1

    .end local v1    # "cutoutMode":I
    .restart local v59    # "cutoutMode":I
    :goto_6ac
    const/16 v1, 0x7db

    if-ne v4, v1, :cond_6b9

    iget v1, v12, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    if-ne v1, v3, :cond_6b9

    .line 5720
    const v1, 0x7fffffff

    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 5727
    :cond_6b9
    if-nez v19, :cond_6ce

    if-nez v25, :cond_6ce

    .line 5728
    sget-object v1, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5729
    invoke-virtual {v8, v2}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 5730
    sget-object v1, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v8}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    xor-int/2addr v1, v3

    or-int/2addr v0, v1

    .line 5734
    :cond_6ce
    invoke-virtual {v9, v2}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 5738
    .end local v2    # "displayCutoutSafeExceptMaybeBars":Landroid/graphics/Rect;
    move/from16 v27, v0

    goto :goto_6da

    .end local v58    # "sysUiFl":I
    .end local v59    # "cutoutMode":I
    .restart local v1    # "cutoutMode":I
    .restart local v3    # "sysUiFl":I
    :cond_6d4
    move/from16 v59, v1

    move/from16 v58, v3

    move/from16 v27, v0

    .end local v0    # "parentFrameWasClippedByDisplayCutout":Z
    .end local v1    # "cutoutMode":I
    .end local v3    # "sysUiFl":I
    .local v27, "parentFrameWasClippedByDisplayCutout":Z
    .restart local v58    # "sysUiFl":I
    .restart local v59    # "cutoutMode":I
    :goto_6da
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {v11, v0}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 5741
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7e1

    if-ne v0, v1, :cond_6ec

    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-nez v0, :cond_6f1

    :cond_6ec
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_701

    .line 5744
    :cond_6f1
    move-object/from16 v3, v41

    const/4 v0, 0x0

    iput v0, v3, Landroid/graphics/Rect;->top:I

    .end local v41    # "dcf":Landroid/graphics/Rect;
    .local v3, "dcf":Landroid/graphics/Rect;
    iput v0, v7, Landroid/graphics/Rect;->top:I

    iput v0, v11, Landroid/graphics/Rect;->top:I

    iput v0, v10, Landroid/graphics/Rect;->top:I

    iput v0, v9, Landroid/graphics/Rect;->top:I

    iput v0, v8, Landroid/graphics/Rect;->top:I

    goto :goto_703

    .line 5750
    .end local v3    # "dcf":Landroid/graphics/Rect;
    .restart local v41    # "dcf":Landroid/graphics/Rect;
    :cond_701
    move-object/from16 v3, v41

    .end local v41    # "dcf":Landroid/graphics/Rect;
    .restart local v3    # "dcf":Landroid/graphics/Rect;
    :goto_703
    and-int/lit16 v0, v5, 0x200

    if-eqz v0, :cond_73d

    const/16 v0, 0x7da

    if-eq v4, v0, :cond_73d

    .line 5751
    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_73d

    .line 5752
    const/16 v0, -0x2710

    iput v0, v9, Landroid/graphics/Rect;->top:I

    iput v0, v9, Landroid/graphics/Rect;->left:I

    .line 5753
    const/16 v0, 0x2710

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    iput v0, v9, Landroid/graphics/Rect;->right:I

    .line 5754
    const/16 v0, 0x7dd

    if-eq v4, v0, :cond_73d

    .line 5755
    const/16 v0, -0x2710

    iput v0, v7, Landroid/graphics/Rect;->top:I

    iput v0, v7, Landroid/graphics/Rect;->left:I

    iput v0, v11, Landroid/graphics/Rect;->top:I

    iput v0, v11, Landroid/graphics/Rect;->left:I

    iput v0, v10, Landroid/graphics/Rect;->top:I

    iput v0, v10, Landroid/graphics/Rect;->left:I

    .line 5756
    const/16 v0, 0x2710

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    iput v0, v7, Landroid/graphics/Rect;->right:I

    iput v0, v11, Landroid/graphics/Rect;->bottom:I

    iput v0, v11, Landroid/graphics/Rect;->right:I

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    iput v0, v10, Landroid/graphics/Rect;->right:I

    .line 5764
    :cond_73d
    invoke-direct {v12, v6, v5}, Lcom/android/server/policy/PhoneWindowManager;->shouldUseOutsets(Landroid/view/WindowManager$LayoutParams;I)Z

    move-result v29

    .line 5765
    .local v29, "useOutsets":Z
    if-eqz v16, :cond_789

    if-eqz v29, :cond_789

    .line 5766
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpOutsetFrame:Landroid/graphics/Rect;

    .line 5767
    .end local v22    # "osf":Landroid/graphics/Rect;
    .local v0, "osf":Landroid/graphics/Rect;
    iget v1, v11, Landroid/graphics/Rect;->left:I

    iget v2, v11, Landroid/graphics/Rect;->top:I

    move-object/from16 v60, v3

    iget v3, v11, Landroid/graphics/Rect;->right:I

    .end local v3    # "dcf":Landroid/graphics/Rect;
    .local v60, "dcf":Landroid/graphics/Rect;
    move/from16 v61, v4

    iget v4, v11, Landroid/graphics/Rect;->bottom:I

    .end local v4    # "type":I
    .local v61, "type":I
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 5768
    iget-object v1, v12, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ScreenShapeHelper;->getWindowOutsetBottomPx(Landroid/content/res/Resources;)I

    move-result v1

    .line 5769
    .local v1, "outset":I
    if-lez v1, :cond_786

    .line 5770
    iget v2, v15, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 5771
    .local v2, "rotation":I
    if-nez v2, :cond_76c

    .line 5772
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_786

    .line 5773
    :cond_76c
    const/4 v3, 0x1

    if-ne v2, v3, :cond_775

    .line 5774
    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->right:I

    goto :goto_786

    .line 5775
    :cond_775
    const/4 v3, 0x2

    if-ne v2, v3, :cond_77e

    .line 5776
    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->top:I

    goto :goto_786

    .line 5777
    :cond_77e
    const/4 v3, 0x3

    if-ne v2, v3, :cond_786

    .line 5778
    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 5796
    .end local v1    # "outset":I
    .end local v2    # "rotation":I
    :cond_786
    :goto_786
    move-object/from16 v22, v0

    goto :goto_78d

    .end local v0    # "osf":Landroid/graphics/Rect;
    .end local v60    # "dcf":Landroid/graphics/Rect;
    .end local v61    # "type":I
    .restart local v3    # "dcf":Landroid/graphics/Rect;
    .restart local v4    # "type":I
    .restart local v22    # "osf":Landroid/graphics/Rect;
    :cond_789
    move-object/from16 v60, v3

    move/from16 v61, v4

    .end local v3    # "dcf":Landroid/graphics/Rect;
    .end local v4    # "type":I
    .restart local v60    # "dcf":Landroid/graphics/Rect;
    .restart local v61    # "type":I
    :goto_78d
    iget-object v4, v15, Lcom/android/server/wm/DisplayFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    move-object v0, v13

    move/from16 v32, v59

    const/16 v3, 0x7db

    move-object v1, v8

    .end local v59    # "cutoutMode":I
    .local v32, "cutoutMode":I
    move-object v2, v9

    move/from16 v62, v14

    move/from16 v33, v58

    move-object/from16 v34, v60

    move v14, v3

    move-object v3, v10

    .end local v14    # "adjust":I
    .end local v58    # "sysUiFl":I
    .end local v60    # "dcf":Landroid/graphics/Rect;
    .local v33, "sysUiFl":I
    .local v34, "dcf":Landroid/graphics/Rect;
    .local v62, "adjust":I
    move-object/from16 v35, v4

    move/from16 v14, v61

    move-object v4, v11

    .end local v61    # "type":I
    .local v14, "type":I
    move/from16 v36, v5

    move-object v5, v7

    .end local v5    # "fl":I
    .restart local v36    # "fl":I
    move-object/from16 v37, v6

    move-object/from16 v6, v34

    .end local v6    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v37, "attrs":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v38, v7

    move-object/from16 v7, v30

    .end local v7    # "vf":Landroid/graphics/Rect;
    .local v38, "vf":Landroid/graphics/Rect;
    move-object/from16 v39, v8

    move-object/from16 v8, v22

    .end local v8    # "pf":Landroid/graphics/Rect;
    .local v39, "pf":Landroid/graphics/Rect;
    move-object/from16 v40, v9

    move-object/from16 v9, v35

    .end local v9    # "df":Landroid/graphics/Rect;
    .local v40, "df":Landroid/graphics/Rect;
    move-object/from16 v35, v10

    move/from16 v10, v27

    .end local v10    # "of":Landroid/graphics/Rect;
    .local v35, "of":Landroid/graphics/Rect;
    invoke-interface/range {v0 .. v10}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/utils/WmDisplayCutout;Z)V

    .line 5800
    const/16 v0, 0x7db

    if-ne v14, v0, :cond_7d4

    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_7d4

    .line 5801
    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getGivenInsetsPendingLw()Z

    move-result v0

    if-nez v0, :cond_7d4

    .line 5802
    const/4 v0, 0x0

    invoke-virtual {v12, v0, v0}, Lcom/android/server/policy/PhoneWindowManager;->setLastInputMethodWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 5803
    invoke-direct {v12, v13, v15}, Lcom/android/server/policy/PhoneWindowManager;->offsetInputMethodWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/wm/DisplayFrames;)V

    .line 5805
    :cond_7d4
    const/16 v0, 0x7ef

    if-ne v14, v0, :cond_7e7

    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_7e7

    .line 5806
    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getGivenInsetsPendingLw()Z

    move-result v0

    if-nez v0, :cond_7e7

    .line 5807
    invoke-direct {v12, v13, v15}, Lcom/android/server/policy/PhoneWindowManager;->offsetVoiceInputWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/wm/DisplayFrames;)V

    .line 5809
    :cond_7e7
    return-void

    .line 5333
    .end local v11    # "cf":Landroid/graphics/Rect;
    .end local v14    # "type":I
    .end local v16    # "isDefaultDisplay":Z
    .end local v17    # "needsToOffsetInputMethodTarget":Z
    .end local v18    # "requestedSysUiFl":I
    .end local v19    # "attachedInParent":Z
    .end local v20    # "requestedHideNavigation":Z
    .end local v21    # "pfl":I
    .end local v22    # "osf":Landroid/graphics/Rect;
    .end local v23    # "sim":I
    .end local v24    # "hasNavBar":Z
    .end local v25    # "floatingInScreenWindow":Z
    .end local v26    # "requestedFullscreen":Z
    .end local v27    # "parentFrameWasClippedByDisplayCutout":Z
    .end local v28    # "layoutInScreen":Z
    .end local v29    # "useOutsets":Z
    .end local v30    # "sf":Landroid/graphics/Rect;
    .end local v31    # "layoutInsetDecor":Z
    .end local v32    # "cutoutMode":I
    .end local v33    # "sysUiFl":I
    .end local v34    # "dcf":Landroid/graphics/Rect;
    .end local v35    # "of":Landroid/graphics/Rect;
    .end local v36    # "fl":I
    .end local v37    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v38    # "vf":Landroid/graphics/Rect;
    .end local v39    # "pf":Landroid/graphics/Rect;
    .end local v40    # "df":Landroid/graphics/Rect;
    .end local v62    # "adjust":I
    :cond_7e8
    :goto_7e8
    return-void

    nop

    :pswitch_data_7ea
    .packed-switch 0x1
        :pswitch_69f
        :pswitch_699
    .end packed-switch
.end method

.method public lockNow(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "options"    # Landroid/os/Bundle;

    .line 8131
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8132
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8133
    if-eqz p1, :cond_16

    .line 8136
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;->setLockOptions(Landroid/os/Bundle;)V

    .line 8138
    :cond_16
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8139
    return-void
.end method

.method needSensorRunningLp()Z
    .registers 5

    .line 1252
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportAutoRotation:Z

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eqz v0, :cond_1b

    .line 1253
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    if-eq v0, v1, :cond_1a

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    const/16 v3, 0xa

    if-eq v0, v3, :cond_1a

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    const/4 v3, 0x7

    if-eq v0, v3, :cond_1a

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    const/4 v3, 0x6

    if-ne v0, v3, :cond_1b

    .line 1259
    :cond_1a
    return v2

    .line 1262
    :cond_1b
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-eqz v0, :cond_24

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_35

    :cond_24
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-eqz v0, :cond_36

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    if-eq v0, v2, :cond_35

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_35

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    if-ne v0, v1, :cond_36

    .line 1268
    :cond_35
    return v2

    .line 1270
    :cond_36
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    if-ne v0, v2, :cond_45

    .line 1282
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportAutoRotation:Z

    if-eqz v0, :cond_43

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowRotationSuggestions:I

    if-ne v0, v2, :cond_43

    goto :goto_44

    :cond_43
    const/4 v2, 0x0

    :goto_44
    return v2

    .line 1285
    :cond_45
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportAutoRotation:Z

    return v0
.end method

.method public notifyCameraLensCoverSwitchChanged(JZ)V
    .registers 11
    .param p1, "whenNanos"    # J
    .param p3, "lensCovered"    # Z

    .line 6212
    move v0, p3

    .line 6213
    .local v0, "lensCoverState":I
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    if-ne v1, v0, :cond_6

    .line 6214
    return-void

    .line 6216
    :cond_6
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3b

    if-nez v0, :cond_3b

    .line 6219
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    goto :goto_19

    .line 6220
    :cond_13
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v1

    .line 6221
    .local v1, "keyguardActive":Z
    :goto_19
    if-eqz v1, :cond_23

    .line 6222
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, "intent":Landroid/content/Intent;
    goto :goto_2a

    .line 6224
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_23
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6226
    .restart local v2    # "intent":Landroid/content/Intent;
    :goto_2a
    const-wide/32 v3, 0xf4240

    div-long v3, p1, v3

    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromCameraLens:Z

    const-string v6, "android.policy:CAMERA_COVER"

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    .line 6228
    sget-object v3, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-direct {p0, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 6230
    .end local v1    # "keyguardActive":Z
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3b
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    .line 6231
    return-void
.end method

.method public notifyLidSwitchChanged(JZ)V
    .registers 9
    .param p1, "whenNanos"    # J
    .param p3, "lidOpen"    # Z

    .line 6193
    move v0, p3

    .line 6194
    .local v0, "newLidState":I
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    if-ne v0, v1, :cond_6

    .line 6195
    return-void

    .line 6198
    :cond_6
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    .line 6199
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->applyLidSwitchState()V

    .line 6200
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    .line 6202
    if-eqz p3, :cond_1d

    .line 6203
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromLidSwitch:Z

    const-string v4, "android.policy:LID"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    goto :goto_2b

    .line 6205
    :cond_1d
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsSleep:Z

    if-nez v1, :cond_2b

    .line 6206
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 6208
    :cond_2b
    :goto_2b
    return-void
.end method

.method public okToAnimate()Z
    .registers 2

    .line 7383
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGoingToSleep:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public onConfigurationChanged()V
    .registers 12

    .line 3061
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getSystemUiContext()Landroid/content/Context;

    move-result-object v0

    .line 3062
    .local v0, "uiContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3064
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeightForRotation:[I

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeightForRotation:[I

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    .line 3065
    const v6, 0x10501cd

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    aput v6, v4, v5

    aput v6, v2, v3

    .line 3067
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeightForRotation:[I

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeightForRotation:[I

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    .line 3068
    const v6, 0x10501cc

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    aput v6, v4, v5

    aput v6, v2, v3

    .line 3072
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    .line 3074
    const v6, 0x105012a

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    aput v6, v4, v5

    aput v6, v2, v3

    .line 3075
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    .line 3076
    const v6, 0x105012c

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    aput v6, v4, v5

    aput v6, v2, v3

    .line 3080
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    .line 3084
    const v10, 0x105012f

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    aput v10, v8, v9

    aput v10, v6, v7

    aput v10, v4, v5

    aput v10, v2, v3

    .line 3104
    return-void
.end method

.method public onKeyguardOccludedChangedLw(Z)V
    .registers 3
    .param p1, "occluded"    # Z

    .line 4475
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 4476
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    .line 4477
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    goto :goto_16

    .line 4481
    :cond_12
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/PhoneWindowManager;->setKeyguardVisibilityState(ZZ)Z

    .line 4483
    :goto_16
    return-void
.end method

.method public onLockTaskStateChangedLw(I)V
    .registers 3
    .param p1, "lockTaskState"    # I

    .line 9363
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/ImmersiveModeConfirmation;->onLockTaskModeChangedLw(I)V

    .line 9364
    return-void
.end method

.method public onOverlayChangedLw()V
    .registers 1

    .line 3055
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->onConfigurationChanged()V

    .line 3056
    return-void
.end method

.method public onSystemUiStarted()V
    .registers 1

    .line 7933
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->bindKeyguard()V

    .line 7934
    return-void
.end method

.method public performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z
    .registers 11
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "effectId"    # I
    .param p3, "always"    # Z

    .line 8403
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 8404
    return v1

    .line 8406
    :cond_a
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "haptic_feedback_enabled"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1c

    move v0, v2

    goto :goto_1d

    :cond_1c
    move v0, v1

    .line 8408
    .local v0, "hapticsDisabled":Z
    :goto_1d
    if-eqz v0, :cond_22

    if-nez p3, :cond_22

    .line 8409
    return v1

    .line 8412
    :cond_22
    invoke-direct {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->getVibrationEffect(I)Landroid/os/VibrationEffect;

    move-result-object v3

    .line 8413
    .local v3, "effect":Landroid/os/VibrationEffect;
    if-nez v3, :cond_29

    .line 8414
    return v1

    .line 8419
    :cond_29
    if-eqz p1, :cond_34

    .line 8420
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningUid()I

    move-result v1

    .line 8421
    .local v1, "owningUid":I
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v4

    .local v4, "owningPackage":Ljava/lang/String;
    goto :goto_3e

    .line 8423
    .end local v1    # "owningUid":I
    .end local v4    # "owningPackage":Ljava/lang/String;
    :cond_34
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 8424
    .restart local v1    # "owningUid":I
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 8426
    .restart local v4    # "owningPackage":Ljava/lang/String;
    :goto_3e
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v6, Lcom/android/server/policy/PhoneWindowManager;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v5, v1, v4, v3, v6}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    .line 8427
    return v2
.end method

.method public prepareAddWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .registers 8
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 3458
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_15

    .line 3459
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v2, "PhoneWindowManager"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3462
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3465
    :cond_15
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d0

    const/4 v2, 0x1

    const/4 v3, -0x7

    if-eq v0, v1, :cond_61

    const/16 v1, 0x7de

    if-eq v0, v1, :cond_57

    const/16 v1, 0x7e1

    if-eq v0, v1, :cond_57

    const/16 v1, 0x7e3

    if-eq v0, v1, :cond_32

    const/16 v1, 0x7e8

    if-eq v0, v1, :cond_57

    const/16 v1, 0x7f1

    if-eq v0, v1, :cond_57

    goto :goto_84

    .line 3482
    :cond_32
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v4, "PhoneWindowManager"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3485
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_48

    .line 3486
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 3487
    return v3

    .line 3490
    :cond_48
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 3491
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/BarController;->setWindow(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 3492
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavBarVisibilityListener:Lcom/android/server/policy/BarController$OnBarVisibilityChangedListener;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/BarController;->setOnBarVisibilityChangedListener(Lcom/android/server/policy/BarController$OnBarVisibilityChangedListener;Z)V

    .line 3495
    goto :goto_84

    .line 3500
    :cond_57
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v2, "PhoneWindowManager"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_84

    .line 3467
    :cond_61
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v4, "PhoneWindowManager"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3470
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_77

    .line 3471
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 3472
    return v3

    .line 3475
    :cond_77
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 3476
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/StatusBarController;->setWindow(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 3479
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    invoke-virtual {p0, v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->setKeyguardVisibilityState(ZZ)Z

    .line 3480
    nop

    .line 3505
    :goto_84
    const/4 v0, 0x0

    return v0
.end method

.method readLidState()V
    .registers 2

    .line 3010
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getLidState()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    .line 3011
    return-void
.end method

.method public registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V
    .registers 8
    .param p1, "shortcutCode"    # J
    .param p3, "shortcutService"    # Lcom/android/internal/policy/IShortcutService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4463
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4464
    :try_start_3
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/IShortcutService;

    .line 4465
    .local v1, "service":Lcom/android/internal/policy/IShortcutService;
    if-eqz v1, :cond_20

    invoke-interface {v1}, Lcom/android/internal/policy/IShortcutService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->pingBinder()Z

    move-result v2

    if-nez v2, :cond_18

    goto :goto_20

    .line 4466
    :cond_18
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Key already exists."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4469
    :cond_20
    :goto_20
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p1, p2, p3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 4470
    .end local v1    # "service":Lcom/android/internal/policy/IShortcutService;
    monitor-exit v0

    .line 4471
    return-void

    .line 4470
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public removeWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .registers 4
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 3511
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_d

    .line 3512
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 3513
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/StatusBarController;->setWindow(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    goto :goto_18

    .line 3514
    :cond_d
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_18

    .line 3515
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 3516
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/BarController;->setWindow(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 3518
    :cond_18
    :goto_18
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 3519
    return-void
.end method

.method public requestUserActivityNotification()V
    .registers 3

    .line 8073
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNotifyUserActivity:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 8074
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNotifyUserActivity:Z

    .line 8076
    :cond_11
    return-void
.end method

.method public rotationForOrientationLw(IIZ)I
    .registers 14
    .param p1, "orientation"    # I
    .param p2, "lastRotation"    # I
    .param p3, "defaultDisplay"    # Z

    .line 7582
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceDefaultOrientation:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 7583
    return v1

    .line 7586
    :cond_6
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7587
    :try_start_9
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->getProposedRotation()I

    move-result v2

    .line 7590
    .local v2, "sensorRotation":I
    const/4 v3, 0x2

    if-ltz v2, :cond_18

    sget-boolean v4, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    if-eqz v4, :cond_19

    if-ne v2, v3, :cond_19

    .line 7592
    :cond_18
    move v2, p2

    .line 7596
    :cond_19
    const/4 v4, -0x1

    if-nez p3, :cond_1f

    .line 7599
    const/4 v4, 0x0

    .local v4, "preferredRotation":I
    :goto_1d
    goto/16 :goto_105

    .line 7600
    .end local v4    # "preferredRotation":I
    :cond_1f
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2c

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidOpenRotation:I

    if-ltz v5, :cond_2c

    .line 7602
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidOpenRotation:I

    move v4, v3

    goto :goto_1d

    .line 7603
    :cond_2c
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    if-ne v5, v3, :cond_42

    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-nez v5, :cond_38

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockRotation:I

    if-ltz v5, :cond_42

    .line 7608
    :cond_38
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-eqz v3, :cond_3e

    .line 7609
    move v3, v2

    goto :goto_40

    :cond_3e
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockRotation:I

    :goto_40
    move v4, v3

    goto :goto_1d

    .line 7610
    :cond_42
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    const/4 v7, 0x4

    if-eq v5, v6, :cond_50

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    const/4 v8, 0x3

    if-eq v5, v8, :cond_50

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    if-ne v5, v7, :cond_5a

    :cond_50
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-nez v5, :cond_fa

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockRotation:I

    if-ltz v5, :cond_5a

    goto/16 :goto_fa

    .line 7619
    :cond_5a
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    if-nez v5, :cond_62

    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mWifiDisplayConnected:Z

    if-eqz v5, :cond_6a

    :cond_62
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotationLock:Z

    if-eqz v5, :cond_6a

    .line 7622
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotation:I

    move v4, v3

    goto :goto_1d

    .line 7623
    :cond_6a
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mWifiDisplayConnected:Z

    if-eqz v5, :cond_76

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mWifiDisplayCustomRotation:I

    if-le v5, v4, :cond_76

    .line 7625
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWifiDisplayCustomRotation:I

    move v4, v3

    goto :goto_1d

    .line 7626
    :cond_76
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    if-eqz v5, :cond_86

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    if-nez v5, :cond_86

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mUndockedHdmiRotation:I

    if-ltz v5, :cond_86

    .line 7632
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mUndockedHdmiRotation:I

    move v4, v3

    goto :goto_1d

    .line 7633
    :cond_86
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoRotationLock:Z

    if-eqz v5, :cond_8e

    .line 7636
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoRotation:I

    move v4, v3

    goto :goto_1d

    .line 7637
    :cond_8e
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mPersistentVrModeEnabled:Z

    if-eqz v5, :cond_96

    .line 7642
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    move v4, v3

    goto :goto_1d

    .line 7643
    :cond_96
    const/16 v5, 0xe

    if-ne p1, v5, :cond_9c

    .line 7645
    move v4, p2

    goto :goto_1d

    .line 7646
    :cond_9c
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportAutoRotation:Z

    if-nez v5, :cond_a3

    .line 7649
    const/4 v4, -0x1

    goto/16 :goto_1d

    .line 7650
    :cond_a3
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    const/16 v8, 0xa

    const/16 v9, 0xd

    if-nez v5, :cond_b9

    if-eq p1, v3, :cond_d1

    if-eq p1, v4, :cond_d1

    const/16 v5, 0xb

    if-eq p1, v5, :cond_d1

    const/16 v5, 0xc

    if-eq p1, v5, :cond_d1

    if-eq p1, v9, :cond_d1

    :cond_b9
    if-eq p1, v7, :cond_d1

    if-eq p1, v8, :cond_d1

    const/4 v5, 0x6

    if-eq p1, v5, :cond_d1

    const/4 v5, 0x7

    if-ne p1, v5, :cond_c4

    goto :goto_d1

    .line 7677
    :cond_c4
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    if-ne v3, v6, :cond_d0

    const/4 v3, 0x5

    if-eq p1, v3, :cond_d0

    .line 7683
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    move v4, v3

    goto/16 :goto_1d

    .line 7687
    :cond_d0
    goto :goto_105

    .line 7662
    :cond_d1
    :goto_d1
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowAllRotations:I

    if-gez v4, :cond_e9

    .line 7666
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1120006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_e6

    .line 7667
    move v4, v6

    goto :goto_e7

    :cond_e6
    move v4, v1

    :goto_e7
    iput v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowAllRotations:I

    .line 7669
    :cond_e9
    if-ne v2, v3, :cond_f7

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowAllRotations:I

    if-eq v3, v6, :cond_f7

    if-eq p1, v8, :cond_f7

    if-ne p1, v9, :cond_f4

    goto :goto_f7

    .line 7675
    :cond_f4
    move v4, p2

    goto/16 :goto_1d

    .line 7673
    :cond_f7
    :goto_f7
    move v4, v2

    goto/16 :goto_1d

    .line 7617
    :cond_fa
    :goto_fa
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-eqz v3, :cond_100

    .line 7618
    move v3, v2

    goto :goto_102

    :cond_100
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockRotation:I

    :goto_102
    move v4, v3

    goto/16 :goto_1d

    .line 7687
    .restart local v4    # "preferredRotation":I
    :goto_105
    move v3, v4

    .line 7690
    .end local v4    # "preferredRotation":I
    .local v3, "preferredRotation":I
    packed-switch p1, :pswitch_data_178

    .line 7752
    :pswitch_109
    if-ltz v3, :cond_172

    .line 7753
    monitor-exit v0

    goto :goto_171

    .line 7708
    :pswitch_10d
    sget-boolean v1, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    if-eqz v1, :cond_119

    .line 7709
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    if-ne v3, v1, :cond_117

    .line 7710
    monitor-exit v0

    return v3

    .line 7712
    :cond_117
    monitor-exit v0

    return p2

    .line 7715
    :cond_119
    invoke-direct {p0, v3}, Lcom/android/server/policy/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v1

    if-eqz v1, :cond_121

    .line 7716
    monitor-exit v0

    return v3

    .line 7718
    :cond_121
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    monitor-exit v0

    return v1

    .line 7722
    :pswitch_125
    invoke-direct {p0, v3}, Lcom/android/server/policy/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v1

    if-eqz v1, :cond_12d

    .line 7723
    monitor-exit v0

    return v3

    .line 7725
    :cond_12d
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    monitor-exit v0

    return v1

    .line 7741
    :pswitch_131
    invoke-direct {p0, v3}, Lcom/android/server/policy/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v1

    if-eqz v1, :cond_139

    .line 7742
    monitor-exit v0

    return v3

    .line 7744
    :cond_139
    invoke-direct {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v1

    if-eqz v1, :cond_141

    .line 7745
    monitor-exit v0

    return p2

    .line 7747
    :cond_141
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    monitor-exit v0

    return v1

    .line 7730
    :pswitch_145
    invoke-direct {p0, v3}, Lcom/android/server/policy/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v1

    if-eqz v1, :cond_14d

    .line 7731
    monitor-exit v0

    return v3

    .line 7733
    :cond_14d
    invoke-direct {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v1

    if-eqz v1, :cond_155

    .line 7734
    monitor-exit v0

    return p2

    .line 7736
    :cond_155
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    monitor-exit v0

    return v1

    .line 7693
    :pswitch_159
    invoke-direct {p0, v3}, Lcom/android/server/policy/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v1

    if-eqz v1, :cond_161

    .line 7694
    monitor-exit v0

    return v3

    .line 7696
    :cond_161
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    monitor-exit v0

    return v1

    .line 7700
    :pswitch_165
    invoke-direct {p0, v3}, Lcom/android/server/policy/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v1

    if-eqz v1, :cond_16d

    .line 7701
    monitor-exit v0

    return v3

    .line 7703
    :cond_16d
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    monitor-exit v0

    return v1

    .line 7753
    :goto_171
    return v3

    .line 7755
    :cond_172
    monitor-exit v0

    return v1

    .line 7757
    .end local v2    # "sensorRotation":I
    .end local v3    # "preferredRotation":I
    :catchall_174
    move-exception v1

    monitor-exit v0
    :try_end_176
    .catchall {:try_start_9 .. :try_end_176} :catchall_174

    throw v1

    nop

    :pswitch_data_178
    .packed-switch 0x0
        :pswitch_165
        :pswitch_159
        :pswitch_109
        :pswitch_109
        :pswitch_109
        :pswitch_109
        :pswitch_145
        :pswitch_131
        :pswitch_125
        :pswitch_10d
        :pswitch_109
        :pswitch_145
        :pswitch_131
    .end packed-switch
.end method

.method public rotationHasCompatibleMetricsLw(II)Z
    .registers 5
    .param p1, "orientation"    # I
    .param p2, "rotation"    # I

    .line 7763
    sget-boolean v0, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    const/16 v0, 0x9

    if-ne p1, v0, :cond_a

    .line 7765
    return v1

    .line 7768
    :cond_a
    packed-switch p1, :pswitch_data_1c

    packed-switch p1, :pswitch_data_24

    .line 7780
    return v1

    .line 7772
    :pswitch_11
    invoke-direct {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v0

    return v0

    .line 7777
    :pswitch_16
    invoke-direct {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v0

    return v0

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_16
        :pswitch_11
    .end packed-switch

    :pswitch_data_24
    .packed-switch 0x6
        :pswitch_16
        :pswitch_11
        :pswitch_16
        :pswitch_11
    .end packed-switch
.end method

.method public screenTurnedOff()V
    .registers 4

    .line 7211
    const-string v0, "WindowManager"

    const-string v1, "Screen turned off..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7213
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->updateScreenOffSleepToken(Z)V

    .line 7214
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7215
    const/4 v1, 0x0

    :try_start_f
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    .line 7216
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    .line 7217
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    .line 7218
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    .line 7219
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    .line 7220
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 7222
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v2, :cond_26

    .line 7223
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurnedOff()V

    .line 7225
    :cond_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_f .. :try_end_27} :catchall_2b

    .line 7226
    invoke-direct {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->reportScreenStateToVrManager(Z)V

    .line 7227
    return-void

    .line 7225
    :catchall_2b
    move-exception v1

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public screenTurnedOn()V
    .registers 3

    .line 7265
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7266
    :try_start_3
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_c

    .line 7267
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurnedOn()V

    .line 7269
    :cond_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_12

    .line 7270
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->reportScreenStateToVrManager(Z)V

    .line 7271
    return-void

    .line 7269
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public screenTurningOff(Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
    .registers 4
    .param p1, "screenOffListener"    # Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;

    .line 7275
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->screenTurningOff(Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V

    .line 7276
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7277
    :try_start_8
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_11

    .line 7278
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurningOff()V

    .line 7280
    :cond_11
    monitor-exit v0

    .line 7281
    return-void

    .line 7280
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public screenTurningOn(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V
    .registers 7
    .param p1, "screenOnListener"    # Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    .line 7239
    const-string v0, "WindowManager"

    const-string v1, "Screen turning on..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7241
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->updateScreenOffSleepToken(Z)V

    .line 7242
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7243
    const/4 v2, 0x1

    :try_start_f
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    .line 7244
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    .line 7245
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    .line 7246
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    .line 7247
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    .line 7249
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->hasKeyguard()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 7250
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 7251
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 7252
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getKeyguardDrawnTimeout()J

    move-result-wide v3

    .line 7251
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 7253
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnCallback:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    invoke-virtual {v0, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurningOn(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;)V

    goto :goto_47

    .line 7255
    :cond_3c
    const-string v0, "WindowManager"

    const-string/jumbo v2, "null mKeyguardDelegate: setting mKeyguardDrawComplete."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7257
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishKeyguardDrawn()V

    .line 7259
    :goto_47
    monitor-exit v1

    .line 7260
    return-void

    .line 7259
    :catchall_49
    move-exception v0

    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_f .. :try_end_4b} :catchall_49

    throw v0
.end method

.method public selectAnimationLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;I)I
    .registers 11
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "transit"    # I

    .line 3528
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v1, 0x3

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne p1, v0, :cond_44

    .line 3529
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_16

    move v0, v6

    goto :goto_17

    :cond_16
    move v0, v3

    .line 3530
    .local v0, "isKeyguard":Z
    :goto_17
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v7, v2, :cond_29

    .line 3531
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v7, v2, :cond_29

    move v7, v6

    goto :goto_2a

    :cond_29
    move v7, v3

    .line 3532
    .local v7, "expanded":Z
    :goto_2a
    if-nez v0, :cond_43

    if-eqz v7, :cond_2f

    goto :goto_43

    .line 3535
    :cond_2f
    if-eq p2, v5, :cond_3f

    if-ne p2, v4, :cond_34

    goto :goto_3f

    .line 3538
    :cond_34
    if-eq p2, v6, :cond_3b

    if-ne p2, v1, :cond_39

    goto :goto_3b

    .line 3542
    .end local v0    # "isKeyguard":Z
    .end local v7    # "expanded":Z
    :cond_39
    goto/16 :goto_a9

    .line 3540
    .restart local v0    # "isKeyguard":Z
    .restart local v7    # "expanded":Z
    :cond_3b
    :goto_3b
    const v1, 0x10a002d

    return v1

    .line 3537
    :cond_3f
    :goto_3f
    const v1, 0x10a002e

    return v1

    .line 3533
    :cond_43
    :goto_43
    return v2

    .line 3542
    .end local v0    # "isKeyguard":Z
    .end local v7    # "expanded":Z
    :cond_44
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-ne p1, v0, :cond_9a

    .line 3543
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v0, :cond_51

    .line 3544
    return v3

    .line 3547
    :cond_51
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    if-ne v0, v4, :cond_70

    .line 3548
    if-eq p2, v5, :cond_62

    if-ne p2, v4, :cond_5a

    goto :goto_62

    .line 3555
    :cond_5a
    if-eq p2, v6, :cond_5e

    if-ne p2, v1, :cond_a9

    .line 3557
    :cond_5e
    const v0, 0x10a0026

    return v0

    .line 3550
    :cond_62
    :goto_62
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 3551
    const v0, 0x10a0028

    return v0

    .line 3553
    :cond_6c
    const v0, 0x10a0027

    return v0

    .line 3559
    :cond_70
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    if-ne v0, v5, :cond_85

    .line 3560
    if-eq p2, v5, :cond_81

    if-ne p2, v4, :cond_79

    goto :goto_81

    .line 3563
    :cond_79
    if-eq p2, v6, :cond_7d

    if-ne p2, v1, :cond_a9

    .line 3565
    :cond_7d
    const v0, 0x10a002b

    return v0

    .line 3562
    :cond_81
    :goto_81
    const v0, 0x10a002c

    return v0

    .line 3567
    :cond_85
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    if-ne v0, v6, :cond_a9

    .line 3568
    if-eq p2, v5, :cond_96

    if-ne p2, v4, :cond_8e

    goto :goto_96

    .line 3571
    :cond_8e
    if-eq p2, v6, :cond_92

    if-ne p2, v1, :cond_a9

    .line 3573
    :cond_92
    const v0, 0x10a0029

    return v0

    .line 3570
    :cond_96
    :goto_96
    const v0, 0x10a002a

    return v0

    .line 3576
    :cond_9a
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7f2

    if-ne v0, v1, :cond_a9

    .line 3577
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->selectDockedDividerAnimationLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;I)I

    move-result v0

    return v0

    .line 3580
    :cond_a9
    :goto_a9
    const/4 v0, 0x5

    if-ne p2, v0, :cond_b6

    .line 3581
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->hasAppShownWindows()Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 3583
    const v0, 0x10a0013

    return v0

    .line 3585
    :cond_b6
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7e7

    if-ne v0, v1, :cond_c7

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingLockscreen:Z

    if-eqz v0, :cond_c7

    if-ne p2, v6, :cond_c7

    .line 3591
    return v2

    .line 3594
    :cond_c7
    return v3
.end method

.method public selectRotationAnimationLw([I)V
    .registers 9
    .param p1, "anim"    # [I

    .line 3630
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->okToAnimate()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_f

    :cond_d
    move v0, v2

    goto :goto_10

    :cond_f
    :goto_f
    move v0, v1

    .line 3636
    .local v0, "forceJumpcut":Z
    :goto_10
    const v3, 0x10a0073

    const v4, 0x10a0072

    if-eqz v0, :cond_1d

    .line 3637
    aput v3, p1, v2

    .line 3638
    aput v4, p1, v1

    .line 3639
    return-void

    .line 3641
    :cond_1d
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_4b

    .line 3642
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getRotationAnimationHint()I

    move-result v5

    .line 3643
    .local v5, "animationHint":I
    if-gez v5, :cond_35

    iget-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopIsFullscreen:Z

    if-eqz v6, :cond_35

    .line 3644
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v5, v6, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 3646
    :cond_35
    packed-switch v5, :pswitch_data_50

    .line 3658
    aput v2, p1, v1

    aput v2, p1, v2

    .end local v5    # "animationHint":I
    goto :goto_4a

    .line 3653
    .restart local v5    # "animationHint":I
    :pswitch_3d
    aput v3, p1, v2

    .line 3654
    aput v4, p1, v1

    .line 3655
    goto :goto_4a

    .line 3649
    :pswitch_42
    const v3, 0x10a0074

    aput v3, p1, v2

    .line 3650
    aput v4, p1, v1

    .line 3651
    nop

    .line 3661
    .end local v5    # "animationHint":I
    :goto_4a
    goto :goto_4f

    .line 3662
    :cond_4b
    aput v2, p1, v1

    aput v2, p1, v2

    .line 3664
    :goto_4f
    return-void

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_42
        :pswitch_3d
        :pswitch_42
    .end packed-switch
.end method

.method sendCloseSystemWindows()V
    .registers 3

    .line 7564
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 7565
    return-void
.end method

.method sendCloseSystemWindows(Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;

    .line 7568
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 7569
    return-void
.end method

.method public setAodShowing(Z)Z
    .registers 3
    .param p1, "aodShowing"    # Z

    .line 9368
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAodShowing:Z

    if-eq v0, p1, :cond_8

    .line 9369
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAodShowing:Z

    .line 9370
    const/4 v0, 0x1

    return v0

    .line 9372
    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public setCurrentOrientationLw(I)V
    .registers 4
    .param p1, "newOrientation"    # I

    .line 8388
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8389
    :try_start_3
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    if-eq p1, v1, :cond_c

    .line 8390
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    .line 8391
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 8393
    :cond_c
    monitor-exit v0

    .line 8394
    return-void

    .line 8393
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public setCurrentUserLw(I)V
    .registers 4
    .param p1, "newUserId"    # I

    .line 8885
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 8886
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_b

    .line 8887
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setCurrentUser(I)V

    .line 8889
    :cond_b
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    if-eqz v0, :cond_14

    .line 8890
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-virtual {v0, p1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->setCurrentUser(I)V

    .line 8892
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 8893
    .local v0, "statusBar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_1d

    .line 8894
    invoke-interface {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setCurrentUser(I)V

    .line 8896
    :cond_1d
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Lcom/android/server/policy/PhoneWindowManager;->setLastInputMethodWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 8897
    return-void
.end method

.method public setDismissImeOnBackKeyPressed(Z)V
    .registers 2
    .param p1, "newValue"    # Z

    .line 8880
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissImeOnBackKeyPressed:Z

    .line 8881
    return-void
.end method

.method public setHangUpEnable(Z)V
    .registers 2
    .param p1, "hangUp"    # Z

    .line 9452
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeingHangUp:Z

    .line 9453
    return-void
.end method

.method setHdmiPlugged(Z)V
    .registers 5
    .param p1, "plugged"    # Z

    .line 6234
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    if-eq v0, p1, :cond_23

    .line 6235
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    .line 6236
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(ZZ)V

    .line 6237
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.HDMI_PLUGGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6238
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6239
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6240
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 6242
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_23
    return-void
.end method

.method public setInitialDisplaySize(Landroid/view/Display;III)V
    .registers 21
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "density"    # I

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    .line 2506
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_110

    invoke-virtual/range {p1 .. p1}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    if-eqz v3, :cond_12

    goto/16 :goto_110

    .line 2509
    :cond_12
    move-object/from16 v3, p1

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    .line 2511
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 2513
    .local v4, "res":Landroid/content/res/Resources;
    const v5, 0x1120099

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-le v1, v2, :cond_3b

    .line 2514
    move v10, v2

    .line 2515
    .local v10, "shortSize":I
    move v11, v1

    .line 2516
    .local v11, "longSize":I
    iput v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    .line 2517
    iput v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    .line 2518
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 2519
    iput v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    .line 2520
    iput v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    goto :goto_50

    .line 2522
    :cond_36
    iput v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    .line 2523
    iput v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    goto :goto_50

    .line 2526
    .end local v10    # "shortSize":I
    .end local v11    # "longSize":I
    :cond_3b
    move v10, v1

    .line 2527
    .restart local v10    # "shortSize":I
    move v11, v2

    .line 2528
    .restart local v11    # "longSize":I
    iput v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    .line 2529
    iput v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    .line 2530
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 2531
    iput v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    .line 2532
    iput v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    goto :goto_50

    .line 2534
    :cond_4c
    iput v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    .line 2535
    iput v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    .line 2540
    :goto_50
    mul-int/lit16 v5, v10, 0xa0

    div-int v5, v5, p4

    .line 2541
    .local v5, "shortSizeDp":I
    mul-int/lit16 v6, v11, 0xa0

    div-int v6, v6, p4

    .line 2544
    .local v6, "longSizeDp":I
    if-eq v1, v2, :cond_60

    const/16 v7, 0x258

    if-ge v5, v7, :cond_60

    move v7, v8

    goto :goto_61

    :cond_60
    move v7, v9

    :goto_61
    iput-boolean v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    .line 2546
    const v7, 0x11200a2

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    .line 2550
    const-string/jumbo v7, "qemu.hw.mainkeys"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2551
    .local v7, "navBarOverride":Ljava/lang/String;
    const-string v12, "1"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7e

    .line 2552
    iput-boolean v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    goto :goto_88

    .line 2553
    :cond_7e
    const-string v12, "0"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_88

    .line 2554
    iput-boolean v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    .line 2559
    :cond_88
    :goto_88
    const-string/jumbo v12, "portrait"

    const-string/jumbo v13, "persist.demo.hdmirotation"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9d

    .line 2560
    iget v12, v0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    iput v12, v0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotation:I

    goto :goto_a1

    .line 2562
    :cond_9d
    iget v12, v0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    iput v12, v0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotation:I

    .line 2564
    :goto_a1
    const-string/jumbo v12, "persist.demo.hdmirotationlock"

    invoke-static {v12, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    iput-boolean v12, v0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotationLock:Z

    .line 2568
    const-string/jumbo v12, "portrait"

    const-string/jumbo v13, "persist.demo.remoterotation"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_bf

    .line 2569
    iget v12, v0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    iput v12, v0, Lcom/android/server/policy/PhoneWindowManager;->mDemoRotation:I

    goto :goto_c3

    .line 2571
    :cond_bf
    iget v12, v0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    iput v12, v0, Lcom/android/server/policy/PhoneWindowManager;->mDemoRotation:I

    .line 2573
    :goto_c3
    const-string/jumbo v12, "persist.demo.rotationlock"

    invoke-static {v12, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    iput-boolean v12, v0, Lcom/android/server/policy/PhoneWindowManager;->mDemoRotationLock:Z

    .line 2580
    iget-object v12, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const-string v13, "android.hardware.type.automotive"

    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v12

    .line 2584
    .local v12, "isCar":Z
    iget-object v13, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const-string v14, "android.software.leanback"

    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v13

    .line 2586
    .local v13, "isTv":Z
    const/16 v14, 0x3c0

    if-lt v6, v14, :cond_ec

    const/16 v14, 0x2d0

    if-ge v5, v14, :cond_f0

    :cond_ec
    if-nez v12, :cond_f0

    if-eqz v13, :cond_10a

    :cond_f0
    const v14, 0x1120074

    .line 2587
    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    if-eqz v14, :cond_10a

    const-string/jumbo v14, "true"

    const-string v8, "config.override_forced_orient"

    .line 2591
    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10a

    const/4 v9, 0x1

    nop

    :cond_10a
    iput-boolean v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceDefaultOrientation:Z

    .line 2595
    const/4 v8, 0x0

    iput-object v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/MiuiGlobalActions;

    .line 2596
    return-void

    .line 2507
    .end local v4    # "res":Landroid/content/res/Resources;
    .end local v5    # "shortSizeDp":I
    .end local v6    # "longSizeDp":I
    .end local v7    # "navBarOverride":Ljava/lang/String;
    .end local v10    # "shortSize":I
    .end local v11    # "longSize":I
    .end local v12    # "isCar":Z
    .end local v13    # "isTv":Z
    :cond_110
    :goto_110
    move-object/from16 v3, p1

    return-void
.end method

.method protected setKeyguardVisibilityState(ZZ)Z
    .registers 4
    .param p1, "hide"    # Z
    .param p2, "force"    # Z

    .line 9404
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->setKeyguardOccludedLw(ZZ)Z

    move-result v0

    return v0
.end method

.method public setLastInputMethodWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .registers 3
    .param p1, "ime"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "target"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 8874
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 8875
    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodTargetWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 8876
    return-void
.end method

.method public setNavBarVirtualKeyHapticFeedbackEnabledLw(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 4771
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavBarVirtualKeyHapticFeedbackEnabled:Z

    .line 4772
    return-void
.end method

.method public setPipVisibilityLw(Z)V
    .registers 2
    .param p1, "visible"    # Z

    .line 4766
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPictureInPictureVisible:Z

    .line 4767
    return-void
.end method

.method setPowerLongPress(Ljava/lang/Runnable;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/Runnable;

    .line 9388
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    return-void
.end method

.method public setRecentsVisibilityLw(Z)V
    .registers 2
    .param p1, "visible"    # Z

    .line 4761
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mRecentsVisible:Z

    .line 4762
    return-void
.end method

.method public setRotationLw(I)V
    .registers 3
    .param p1, "rotation"    # I

    .line 7786
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->setCurrentRotation(I)V

    .line 7787
    return-void
.end method

.method public setSafeMode(Z)V
    .registers 5
    .param p1, "safeMode"    # Z

    .line 7911
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeMode:Z

    .line 7912
    if-eqz p1, :cond_b

    .line 7913
    const/4 v0, 0x0

    const/16 v1, 0x2711

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z

    .line 7915
    :cond_b
    return-void
.end method

.method public setSlideCoverState(I)V
    .registers 3
    .param p1, "stateEvent"    # I

    .line 9437
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSlideScreenListener:Lmiui/slide/SlideCoverListener;

    if-eqz v0, :cond_9

    .line 9438
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSlideScreenListener:Lmiui/slide/SlideCoverListener;

    invoke-virtual {v0, p1}, Lmiui/slide/SlideCoverListener;->setSlideCoverState(I)V

    .line 9440
    :cond_9
    return-void
.end method

.method public setSwitchingUser(Z)V
    .registers 3
    .param p1, "switching"    # Z

    .line 8901
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setSwitchingUser(Z)V

    .line 8902
    return-void
.end method

.method public setUserRotationMode(II)V
    .registers 7
    .param p1, "mode"    # I
    .param p2, "rot"    # I

    .line 7889
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 7892
    .local v0, "res":Landroid/content/ContentResolver;
    const/4 v1, 0x1

    const/4 v2, -0x2

    if-ne p1, v1, :cond_17

    .line 7893
    const-string/jumbo v1, "user_rotation"

    invoke-static {v0, v1, p2, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 7897
    const-string v1, "accelerometer_rotation"

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_1c

    .line 7902
    :cond_17
    const-string v3, "accelerometer_rotation"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 7907
    :goto_1c
    return-void
.end method

.method public shouldRotateSeamlessly(II)Z
    .registers 8
    .param p1, "oldRotation"    # I
    .param p2, "newRotation"    # I

    .line 8920
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3c

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    if-ne p2, v0, :cond_a

    goto :goto_3c

    .line 8926
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-nez v0, :cond_f

    .line 8927
    return v1

    .line 8929
    :cond_f
    sub-int v0, p2, p1

    .line 8930
    .local v0, "delta":I
    if-gez v0, :cond_15

    add-int/lit8 v0, v0, 0x4

    .line 8935
    :cond_15
    const/4 v2, 0x2

    if-ne v0, v2, :cond_19

    .line 8936
    return v1

    .line 8939
    :cond_19
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 8940
    .local v3, "w":Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eq v3, v4, :cond_20

    .line 8941
    return v1

    .line 8948
    :cond_20
    if-eqz v3, :cond_3b

    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v4

    if-nez v4, :cond_3b

    .line 8949
    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    if-eq v4, v2, :cond_39

    .line 8950
    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_3b

    .line 8951
    :cond_39
    const/4 v1, 0x1

    return v1

    .line 8953
    :cond_3b
    return v1

    .line 8921
    .end local v0    # "delta":I
    .end local v3    # "w":Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    :cond_3c
    :goto_3c
    return v1
.end method

.method public showBootMessage(Ljava/lang/CharSequence;Z)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "always"    # Z

    .line 8008
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$21;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/PhoneWindowManager$21;-><init>(Lcom/android/server/policy/PhoneWindowManager;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8063
    return-void
.end method

.method public showGlobalActions()V
    .registers 3

    .line 1904
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1905
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1906
    return-void
.end method

.method showGlobalActionsInternal()V
    .registers 6

    .line 1909
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/MiuiGlobalActions;

    if-nez v0, :cond_f

    .line 1912
    new-instance v0, Lcom/android/server/policy/MiuiGlobalActions;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/MiuiGlobalActions;-><init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/MiuiGlobalActions;

    .line 1914
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    .line 1915
    .local v0, "keyguardShowing":Z
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/MiuiGlobalActions;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/server/policy/MiuiGlobalActions;->showDialog(ZZ)V

    .line 1916
    if-eqz v0, :cond_28

    .line 1919
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 1921
    :cond_28
    return-void
.end method

.method public showRecentApps()V
    .registers 3

    .line 4596
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4597
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4598
    return-void
.end method

.method startDockOrHome(ZZ)V
    .registers 6
    .param p1, "fromHomeKey"    # Z
    .param p2, "awakenFromDreams"    # Z

    .line 8303
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 8304
    goto :goto_9

    :catch_8
    move-exception v0

    .line 8305
    :goto_9
    const-string v0, "homekey"

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 8307
    if-eqz p2, :cond_13

    .line 8308
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->awakenDreams()V

    .line 8311
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v0

    .line 8312
    .local v0, "dock":Landroid/content/Intent;
    if-eqz v0, :cond_2a

    .line 8314
    if-eqz p1, :cond_23

    .line 8315
    :try_start_1b
    const-string v1, "android.intent.extra.FROM_HOME_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_23

    .line 8319
    :catch_21
    move-exception v1

    goto :goto_29

    .line 8317
    :cond_23
    :goto_23
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_28
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1b .. :try_end_28} :catch_21

    .line 8318
    return-void

    .line 8319
    :goto_29
    nop

    .line 8325
    :cond_2a
    if-eqz p1, :cond_39

    .line 8326
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 8327
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.FROM_HOME_KEY"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_3b

    .line 8329
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_39
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    .line 8332
    .restart local v1    # "intent":Landroid/content/Intent;
    :goto_3b
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-direct {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 8333
    return-void
.end method

.method public startKeyguardExitAnimation(JJ)V
    .registers 6
    .param p1, "startTime"    # J
    .param p3, "fadeoutDuration"    # J

    .line 7479
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_9

    .line 7481
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->startKeyguardExitAnimation(JJ)V

    .line 7483
    :cond_9
    return-void
.end method

.method public startedGoingToSleep(I)V
    .registers 5
    .param p1, "why"    # I

    .line 7093
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Started going to sleep... (why="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7095
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGoingToSleep:Z

    .line 7096
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRequestedOrGoingToSleep:Z

    .line 7098
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_29

    .line 7099
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onStartedGoingToSleep(I)V

    .line 7101
    :cond_29
    return-void
.end method

.method public startedWakingUp()V
    .registers 4

    .line 7131
    const/4 v0, 0x1

    const v1, 0x11170

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 7132
    const-string v1, "WindowManager"

    const-string v2, "Started waking up..."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7138
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7139
    :try_start_11
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    .line 7141
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    .line 7142
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 7143
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 7144
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_27

    .line 7146
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_26

    .line 7147
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onStartedWakingUp()V

    .line 7149
    :cond_26
    return-void

    .line 7144
    :catchall_27
    move-exception v0

    :try_start_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v0
.end method

.method public startedWakingUp(Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;

    .line 7155
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_9

    .line 7156
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onStartedWakingUp(Ljava/lang/String;)V

    .line 7158
    :cond_9
    return-void
.end method

.method public systemBooted()V
    .registers 4

    .line 7975
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->bindKeyguard()V

    .line 7976
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7977
    const/4 v1, 0x1

    :try_start_7
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    .line 7978
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    if-eqz v1, :cond_12

    .line 7979
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onBootCompleted()V

    .line 7981
    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_38

    .line 7982
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->startedWakingUp()V

    .line 7983
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->screenTurningOn(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V

    .line 7984
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->screenTurnedOn()V

    .line 7987
    :try_start_1d
    invoke-static {}, Lmiui/os/DeviceFeature;->hasMirihiSupport()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSlideScreenListener:Lmiui/slide/SlideCoverListener;

    if-eqz v0, :cond_2c

    .line 7988
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSlideScreenListener:Lmiui/slide/SlideCoverListener;

    invoke-virtual {v0}, Lmiui/slide/SlideCoverListener;->systemReady()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2c} :catch_2d

    .line 7992
    :cond_2c
    goto :goto_37

    .line 7990
    :catch_2d
    move-exception v0

    .line 7991
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SlideCoverListener"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7994
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_37
    return-void

    .line 7981
    :catchall_38
    move-exception v1

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method public systemReady()V
    .registers 4

    .line 7941
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onSystemReady()V

    .line 7943
    const-class v0, Lcom/android/server/vr/VrManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vr/VrManagerInternal;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

    .line 7944
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

    if-eqz v0, :cond_1a

    .line 7945
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

    invoke-virtual {v0, v1}, Lcom/android/server/vr/VrManagerInternal;->addPersistentVrModeStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V

    .line 7948
    :cond_1a
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->readCameraLensCoverState()V

    .line 7949
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateUiMode()V

    .line 7950
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7951
    :try_start_23
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 7952
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    .line 7953
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$20;

    invoke-direct {v2, p0}, Lcom/android/server/policy/PhoneWindowManager$20;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7961
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    if-eqz v1, :cond_3c

    .line 7962
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onBootCompleted()V

    .line 7964
    :cond_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_23 .. :try_end_3d} :catchall_52

    .line 7966
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    invoke-virtual {v0}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->systemReady()V

    .line 7967
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    invoke-virtual {v0}, Lcom/android/server/policy/ImmersiveModeConfirmation;->systemReady()V

    .line 7969
    const-class v0, Landroid/view/autofill/AutofillManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManagerInternal;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAutofillManagerInternal:Landroid/view/autofill/AutofillManagerInternal;

    .line 7970
    return-void

    .line 7964
    :catchall_52
    move-exception v1

    :try_start_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw v1
.end method

.method updateOrientationListenerLp()V
    .registers 4

    .line 1299
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->canDetectOrientation()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1301
    return-void

    .line 1311
    :cond_9
    const/4 v0, 0x1

    .line 1315
    .local v0, "disable":Z
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v1, :cond_2d

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    if-eqz v1, :cond_2d

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    if-eqz v1, :cond_2d

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    if-eqz v1, :cond_2d

    .line 1316
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->needSensorRunningLp()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1317
    const/4 v0, 0x0

    .line 1319
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    if-nez v1, :cond_2d

    .line 1326
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->enable(Z)V

    .line 1328
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    .line 1333
    :cond_2d
    if-eqz v0, :cond_3b

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    if-eqz v1, :cond_3b

    .line 1334
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->disable()V

    .line 1336
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    .line 1338
    :cond_3b
    return-void
.end method

.method updateRotation(Z)V
    .registers 4
    .param p1, "alwaysSendConfiguration"    # Z

    .line 8224
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    .line 8227
    goto :goto_8

    .line 8225
    :catch_7
    move-exception v0

    .line 8228
    :goto_8
    return-void
.end method

.method updateRotation(ZZ)V
    .registers 4
    .param p1, "alwaysSendConfiguration"    # Z
    .param p2, "forceRelayout"    # Z

    .line 8233
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 8236
    goto :goto_7

    .line 8234
    :catch_6
    move-exception v0

    .line 8237
    :goto_7
    return-void
.end method

.method public updateSettings()V
    .registers 14

    .line 2612
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2613
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 2614
    .local v1, "updateRotation":Z
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2615
    :try_start_a
    const-string v3, "end_button_behavior"

    const/4 v4, 0x2

    const/4 v5, -0x2

    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    .line 2619
    const-string v3, "incall_power_button_behavior"

    const/4 v6, 0x1

    invoke-static {v0, v3, v6, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    .line 2623
    const-string v3, "incall_back_button_behavior"

    const/4 v7, 0x0

    invoke-static {v0, v3, v7, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallBackBehavior:I

    .line 2627
    const-string/jumbo v3, "system_navigation_keys_enabled"

    invoke-static {v0, v3, v7, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v6, :cond_31

    move v3, v6

    goto :goto_32

    :cond_31
    move v3, v7

    :goto_32
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemNavigationKeysEnabled:Z

    .line 2630
    const-string/jumbo v3, "volume_hush_gesture"

    invoke-static {v0, v3, v7, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    .line 2633
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v8, 0x11200d5

    .line 2634
    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_4e

    .line 2635
    iput v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    .line 2638
    :cond_4e
    const-string/jumbo v3, "show_rotation_suggestions"

    invoke-static {v0, v3, v7, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 2642
    .local v3, "showRotationSuggestions":I
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowRotationSuggestions:I

    if-eq v8, v3, :cond_5e

    .line 2643
    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowRotationSuggestions:I

    .line 2644
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 2648
    :cond_5e
    const-string/jumbo v8, "wake_gesture_enabled"

    invoke-static {v0, v8, v7, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-eqz v8, :cond_69

    move v8, v6

    goto :goto_6a

    :cond_69
    move v8, v7

    .line 2651
    .local v8, "wakeGestureEnabledSetting":Z
    :goto_6a
    iget-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    if-eq v9, v8, :cond_73

    .line 2652
    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    .line 2653
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    .line 2657
    :cond_73
    const-string/jumbo v9, "user_rotation"

    invoke-static {v0, v9, v7, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    .line 2660
    .local v9, "userRotation":I
    iget v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    if-eq v10, v9, :cond_81

    .line 2661
    iput v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    .line 2662
    const/4 v1, 0x1

    .line 2665
    :cond_81
    const-string v10, "accelerometer_rotation"

    .line 2664
    invoke-static {v0, v10, v7, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    if-eqz v10, :cond_8c

    .line 2666
    nop

    .line 2667
    move v10, v7

    goto :goto_8d

    :cond_8c
    move v10, v6

    .line 2668
    .local v10, "userRotationMode":I
    :goto_8d
    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    if-eq v11, v10, :cond_97

    .line 2669
    iput v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    .line 2670
    const/4 v1, 0x1

    .line 2671
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 2674
    :cond_97
    iget-boolean v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    if-eqz v11, :cond_b3

    .line 2675
    const-string/jumbo v11, "pointer_location"

    invoke-static {v0, v11, v7, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    .line 2677
    .local v11, "pointerLocation":I
    iget v12, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationMode:I

    if-eq v12, v11, :cond_b3

    .line 2678
    iput v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationMode:I

    .line 2679
    iget-object v12, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    if-eqz v11, :cond_af

    .line 2680
    nop

    .line 2679
    move v4, v6

    goto :goto_b0

    .line 2680
    :cond_af
    nop

    .line 2679
    :goto_b0
    invoke-virtual {v12, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2684
    .end local v11    # "pointerLocation":I
    :cond_b3
    const-string/jumbo v4, "screen_off_timeout"

    invoke-static {v0, v4, v7, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    iput v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    .line 2686
    const-string v4, "default_input_method"

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 2688
    .local v4, "imId":Ljava/lang/String;
    if-eqz v4, :cond_cc

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_cc

    move v7, v6

    nop

    :cond_cc
    move v5, v7

    .line 2689
    .local v5, "hasSoftInput":Z
    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    if-eq v7, v5, :cond_d4

    .line 2690
    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    .line 2691
    const/4 v1, 0x1

    .line 2693
    :cond_d4
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    if-eqz v7, :cond_df

    .line 2694
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v7, v11}, Lcom/android/server/policy/ImmersiveModeConfirmation;->loadSetting(I)V

    .line 2696
    .end local v3    # "showRotationSuggestions":I
    .end local v4    # "imId":Ljava/lang/String;
    .end local v5    # "hasSoftInput":Z
    .end local v8    # "wakeGestureEnabledSetting":Z
    .end local v9    # "userRotation":I
    .end local v10    # "userRotationMode":I
    :cond_df
    monitor-exit v2
    :try_end_e0
    .catchall {:try_start_a .. :try_end_e0} :catchall_f6

    .line 2697
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 2698
    :try_start_e7
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/policy/PolicyControl;->reloadFromSetting(Landroid/content/Context;)V

    .line 2699
    monitor-exit v3
    :try_end_ed
    .catchall {:try_start_e7 .. :try_end_ed} :catchall_f3

    .line 2700
    if-eqz v1, :cond_f2

    .line 2701
    invoke-virtual {p0, v6}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    .line 2703
    :cond_f2
    return-void

    .line 2699
    :catchall_f3
    move-exception v2

    :try_start_f4
    monitor-exit v3
    :try_end_f5
    .catchall {:try_start_f4 .. :try_end_f5} :catchall_f3

    throw v2

    .line 2696
    :catchall_f6
    move-exception v3

    :try_start_f7
    monitor-exit v2
    :try_end_f8
    .catchall {:try_start_f7 .. :try_end_f8} :catchall_f6

    throw v3
.end method

.method updateUiMode()V
    .registers 2

    .line 8211
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    if-nez v0, :cond_11

    .line 8212
    const-string/jumbo v0, "uimode"

    .line 8213
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 8212
    invoke-static {v0}, Landroid/app/IUiModeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    .line 8216
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    invoke-interface {v0}, Landroid/app/IUiModeManager;->getCurrentModeType()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_19} :catch_1a

    .line 8218
    goto :goto_1b

    .line 8217
    :catch_1a
    move-exception v0

    .line 8219
    :goto_1b
    return-void
.end method

.method public userActivity()V
    .registers 6

    .line 8092
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    monitor-enter v0

    .line 8093
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eqz v1, :cond_18

    .line 8095
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8096
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8098
    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_2e

    .line 8100
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    if-eqz v0, :cond_2d

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNotifyUserActivity:Z

    if-eqz v0, :cond_2d

    .line 8101
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1d

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 8103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNotifyUserActivity:Z

    .line 8105
    :cond_2d
    return-void

    .line 8098
    :catchall_2e
    move-exception v1

    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v1
.end method

.method public validateRotationAnimationLw(IIZ)Z
    .registers 8
    .param p1, "exitAnimId"    # I
    .param p2, "enterAnimId"    # I
    .param p3, "forceDefault"    # Z

    .line 3669
    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_1a

    .line 3680
    return v0

    .line 3673
    :pswitch_5
    const/4 v1, 0x0

    if-eqz p3, :cond_9

    .line 3674
    return v1

    .line 3676
    :cond_9
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 3677
    .local v2, "anim":[I
    invoke-virtual {p0, v2}, Lcom/android/server/policy/PhoneWindowManager;->selectRotationAnimationLw([I)V

    .line 3678
    aget v3, v2, v1

    if-ne p1, v3, :cond_18

    aget v3, v2, v0

    if-ne p2, v3, :cond_18

    goto :goto_19

    :cond_18
    move v0, v1

    :goto_19
    return v0

    :pswitch_data_1a
    .packed-switch 0x10a0073
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 8958
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 8959
    .local v0, "token":J
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8960
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    const-wide v3, 0x10e00000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8961
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    const-wide v3, 0x10e00000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8962
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    const-wide v3, 0x10e00000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8963
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    const-wide v3, 0x10800000005L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 8964
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    const-wide v3, 0x10800000006L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 8965
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    const-wide v3, 0x10800000007L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 8966
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    if-eqz v2, :cond_5c

    .line 8967
    const-wide v2, 0x10900000008L

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8969
    :cond_5c
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_6a

    .line 8970
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const-wide v3, 0x10b00000009L

    invoke-interface {v2, p1, v3, v4}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 8972
    :cond_6a
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_78

    .line 8973
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const-wide v3, 0x10b0000000aL

    invoke-interface {v2, p1, v3, v4}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 8976
    :cond_78
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_86

    .line 8977
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const-wide v3, 0x10b0000000bL

    invoke-interface {v2, p1, v3, v4}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 8980
    :cond_86
    const-wide v2, 0x1080000000cL

    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 8981
    const-wide v2, 0x1080000000dL

    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 8982
    const-wide v2, 0x1080000000eL

    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 8983
    const-wide v2, 0x1080000000fL

    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 8984
    const-wide v2, 0x10800000010L

    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 8985
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    const-wide v3, 0x10b00000011L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/policy/StatusBarController;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 8986
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    const-wide v3, 0x10b00000012L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/policy/BarController;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 8987
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    if-eqz v2, :cond_da

    .line 8988
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    const-wide v3, 0x10b00000013L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 8990
    :cond_da
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v2, :cond_e8

    .line 8991
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    const-wide v3, 0x10b00000014L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 8993
    :cond_e8
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8994
    return-void
.end method
