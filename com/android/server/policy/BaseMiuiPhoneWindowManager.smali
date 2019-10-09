.class public abstract Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
.super Lcom/android/server/policy/PhoneWindowManager;
.source "BaseMiuiPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;,
        Lcom/android/server/policy/BaseMiuiPhoneWindowManager$RotationWatcher;,
        Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;,
        Lcom/android/server/policy/BaseMiuiPhoneWindowManager$StatusBarPointEventTracker;
    }
.end annotation


# static fields
.field private static final BTN_MOUSE:I = 0x110

.field private static final CAMERA_POWER_DOUBLE_TAP_MAX_TIME_MS:J = 0x12cL

.field private static final CAMERA_POWER_DOUBLE_TAP_MIN_TIME_MS:J = 0x0L

.field private static final COMBINE_VOLUME_KEY_DELAY_TIME:I = 0x96

.field private static final DOUBLE_CLICK_AI_KEY_TIME:I = 0x12c

.field private static final DOUBLE_TAP_HOME_NOTHING:I = 0x0

.field private static final DOUBLE_TAP_HOME_RECENT_PANEL:I = 0x1

.field private static final ENABLE_HOME_KEY_DOUBLE_TAP_INTERVAL:I = 0x12c

.field private static final ENABLE_HOME_KEY_PRESS_INTERVAL:I = 0x12c

.field private static final ENABLE_VOLUME_KEY_PRESS_COUNTS:I = 0x2

.field private static final ENABLE_VOLUME_KEY_PRESS_INTERVAL:I = 0x12c

.field protected static final INTERCEPT_EXPECTED_RESULT_GO_TO_SLEEP:I = -0x1

.field protected static final INTERCEPT_EXPECTED_RESULT_NONE:I = 0x0

.field protected static final INTERCEPT_EXPECTED_RESULT_WAKE_UP:I = 0x1

.field private static final KEYCODE_AI:I = 0x2b1

.field private static final KEY_GAME_BOOSTER:Ljava/lang/String; = "gb_boosting"

.field private static final LAUNCH_SOS_BY_PRESS_POWER_KEY_CONTINUOUSLY:I = 0x5

.field private static final LONG_PRESS_AI_KEY_TIME:I = 0x1f4

.field private static final LONG_PRESS_POWER_KEY_TIMEOUT:J = 0xbb8L

.field private static final LONG_PRESS_VOLUME_DOWN_ACTION_NONE:I = 0x0

.field private static final LONG_PRESS_VOLUME_DOWN_ACTION_PAY:I = 0x2

.field private static final LONG_PRESS_VOLUME_DOWN_ACTION_STREET_SNAP:I = 0x1

.field private static final LONG_PRESS_VOLUME_TIME:I = 0x3e8

.field private static final MSG_COMBINE_VOLUME_KEY_DELAY_TIME:I = 0xbb8

.field private static final NAVIGATION_BAR_WINDOW_LOADED:Ljava/lang/String; = "navigation_bar_window_loaded"

.field private static final PERMISSION_INTERNAL_GENERAL_API:Ljava/lang/String; = "miui.permission.USE_INTERNAL_GENERAL_API"

.field protected static final REASON_FP_DPAD_CENTER_WAKEUP:Ljava/lang/String; = "miui.policy:FINGERPRINT_DPAD_CENTER"

.field private static final SCREEN_KEY_LONG_PRESS_VOLUME_DOWN:Ljava/lang/String; = "screen_key_long_press_volume_down"

.field private static final SHORTCUT_BACK_POWER:I

.field private static final SHORTCUT_HOME_POWER:I

.field private static final SHORTCUT_MENU_POWER:I

.field private static final SHORTCUT_SCREENSHOT_ANDROID:I

.field private static final SHORTCUT_SCREENSHOT_MIUI:I

.field private static final SHORTCUT_SCREENSHOT_SINGLE_KEY:I

.field private static final SHORTCUT_UNLOCK:I

.field protected static final SUPPORT_EDGE_TOUCH_VOLUME:Z

.field private static final SYSTEM_SETTINGS_VR_MODE:Ljava/lang/String; = "vr_mode"

.field private static final SYSTEM_UI_FLAG_LIGHT_NAVIGATION_BAR:I = 0x10

.field private static final WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

.field static final sScreenRecorderKeyEventList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final sVoiceAssistKeyEventList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final talkBackServiceName:Landroid/content/ComponentName;


# instance fields
.field mAccessibilityShortcutOnLockScreen:Z

.field private mAccessibilityShortcutSetting:Lmiui/provider/SettingsStringUtil$SettingStringHelper;

.field private mAiKeyWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoDisableScreenButtonsManager:Lcom/miui/server/AutoDisableScreenButtonsManager;

.field private mBinder:Landroid/os/Binder;

.field private mBootProgress:Landroid/widget/ProgressBar;

.field private mBootText:[Ljava/lang/String;

.field private mBootTextView:Landroid/widget/TextView;

.field private mCameraComponentName:Landroid/content/ComponentName;

.field private mCameraIntent:Landroid/content/Intent;

.field mCameraKeyWakeScreen:Z

.field private mCurrentUserId:I

.field private mDoubleClickAiKeyCount:I

.field private mDoubleClickAiKeyIsConsumed:Z

.field private mDoubleClickAiKeyRunnable:Ljava/lang/Runnable;

.field mDoubleClickPowerKey:Ljava/lang/String;

.field private mDoubleTapOnHomeBehavior:I

.field mDpadCenterDown:Z

.field private mDumpLogIntent:Landroid/content/Intent;

.field private mEnableNotchConfig:Z

.field private mForbidFullScreen:Z

.field protected mFpNavEventNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mFrontFingerprintSensor:Z

.field protected mHandler:Landroid/os/Handler;

.field private mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

.field private mHasCameraFlash:Z

.field mHaveBankCard:Z

.field mHaveTranksCard:Z

.field mHomeConsumed:Z

.field mHomeDoubleClickPending:Z

.field private final mHomeDoubleClickTimeoutRunnable:Ljava/lang/Runnable;

.field mHomeDoubleTapPending:Z

.field private final mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field mHomeDownAfterDpCenter:Z

.field private mInputMethodWindowVisibleHeight:I

.field private mInternalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected mIsStatusBarVisibleInFullscreen:Z

.field private mIsVRMode:Z

.field mKeyCombinationPowerBack:Ljava/lang/String;

.field mKeyCombinationPowerHome:Ljava/lang/String;

.field mKeyCombinationPowerMenu:Ljava/lang/String;

.field protected mKeyLongPressTimeout:I

.field private mKeyPressed:I

.field private mKeyPressing:I

.field private mKeyguardOnWhenHomeDown:Z

.field private mLastClickAiKeyTime:J

.field private mLastPowerDown:J

.field private mLongPressAiKeyIsConsumed:Z

.field mLongPressBackKey:Ljava/lang/String;

.field private mLongPressDownAiKeyRunnable:Ljava/lang/Runnable;

.field mLongPressHomeKey:Ljava/lang/String;

.field mLongPressMenuKey:Ljava/lang/String;

.field mLongPressMenuKeyWhenLock:Ljava/lang/String;

.field mLongPressPowerKey:Ljava/lang/String;

.field private mLongPressUpAiKeyRunnable:Ljava/lang/Runnable;

.field private mLongPressVolumeDownBehavior:I

.field mMikeymodeEnabled:Z

.field private mMiuiBootMsgDialog:Landroid/app/Dialog;

.field protected mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

.field protected mMiuiPointerEventListener:Lcom/miui/server/MiuiPointerEventListener;

.field mNavBarHeight:I

.field mNavBarHeightLand:I

.field mNavBarWidth:I

.field private mNfcIntent:Landroid/content/Intent;

.field private mPackage:Ljava/lang/String;

.field mPowerLongPressOriginal:Ljava/lang/Runnable;

.field private mPressPowerKeyCount:I

.field private mPressToAppSwitch:Z

.field private mProximitySensor:Lcom/android/server/policy/MiuiScreenOnProximityLock;

.field private final mProximitySensorListener:Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;

.field private mProximitySensorWrapper:Lmiui/util/ProximitySensorWrapper;

.field private mRequestShowMenu:Z

.field private mRotationWatcher:Lcom/android/server/policy/BaseMiuiPhoneWindowManager$RotationWatcher;

.field protected mScreenOffReason:I

.field mScreenRecordeEnablekKeyEventReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenRecorderEnabled:Z

.field mScreenshotReceiver:Landroid/content/BroadcastReceiver;

.field private mSettingsObserver:Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;

.field private mShortcutPressing:I

.field mShortcutServiceIsTalkBack:Z

.field private mShortcutTriggered:Z

.field private mSingleClickAiKeyRunnable:Ljava/lang/Runnable;

.field mSingleKeyUse:Z

.field private mSmartCoverManager:Lmiui/util/SmartCoverManager;

.field private mStatusBarDisableToken:Landroid/os/Binder;

.field mStatusBarExitFullscreenReceiver:Landroid/content/BroadcastReceiver;

.field private mStatusBarVisible:Z

.field private mSuperWaitingKey:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mSupportFsg:Z

.field protected mSupportTapFingerprintSensorToHome:Z

.field private mSystemKeyPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTalkBackIsOpened:Z

.field mTestModeEnabled:Z

.field mThreeGestureDown:Ljava/lang/String;

.field private mTorchEnabled:Z

.field private mTrackDumpLogKeyCodeLastKeyCode:I

.field private mTrackDumpLogKeyCodePengding:Z

.field private mTrackDumpLogKeyCodeStartTime:J

.field private mTrackDumpLogKeyCodeTimeOut:I

.field private mTrackDumpLogKeyCodeVolumeDownTimes:I

.field mTrackballWakeScreen:Z

.field private final mTurnOffTorch:Ljava/lang/Runnable;

.field private mVoiceAssistEnabled:Z

.field private mVolumeButtonPrePressedTime:J

.field private mVolumeButtonPressedCount:J

.field private mVolumeDownKeyConsumed:Z

.field private mVolumeDownKeyPressed:Z

.field private mVolumeDownKeyTime:J

.field mVolumeKeyLaunchCamera:Z

.field private mVolumeKeyWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mVolumeUpKeyConsumed:Z

.field private mVolumeUpKeyPressed:Z

.field private mVolumeUpKeyTime:J

.field private mWifiOnly:Z

.field private mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

.field private mWindowFlagBinder:Landroid/os/Binder;

.field private mWindowStatusBinder:Landroid/os/Binder;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 130
    nop

    .line 131
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v1

    const/16 v2, 0x1a

    invoke-static {v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v3

    or-int/2addr v1, v3

    sput v1, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_HOME_POWER:I

    .line 132
    nop

    .line 133
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v3

    invoke-static {v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v4

    or-int/2addr v3, v4

    sput v3, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_BACK_POWER:I

    .line 134
    nop

    .line 135
    const/16 v3, 0xbb

    invoke-static {v3}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v4

    invoke-static {v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v5

    or-int/2addr v4, v5

    sput v4, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_MENU_POWER:I

    .line 136
    nop

    .line 137
    invoke-static {v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v4

    const/16 v5, 0x19

    invoke-static {v5}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v6

    or-int/2addr v4, v6

    sput v4, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_SCREENSHOT_ANDROID:I

    .line 138
    nop

    .line 139
    invoke-static {v3}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v6

    or-int/2addr v4, v6

    sput v4, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_SCREENSHOT_MIUI:I

    .line 140
    nop

    .line 141
    invoke-static {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v4

    invoke-static {v5}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v6

    or-int/2addr v4, v6

    sput v4, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_SCREENSHOT_SINGLE_KEY:I

    .line 142
    nop

    .line 143
    invoke-static {v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v4

    const/16 v6, 0x18

    invoke-static {v6}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v7

    or-int/2addr v4, v7

    sput v4, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_UNLOCK:I

    .line 169
    const-string/jumbo v4, "support_edge_touch_volume"

    const/4 v7, 0x0

    invoke-static {v4, v7}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SUPPORT_EDGE_TOUCH_VOLUME:Z

    .line 200
    new-instance v4, Landroid/content/ComponentName;

    const-string v7, "com.google.android.marvin.talkback"

    const-string v8, "com.google.android.marvin.talkback.TalkBackService"

    invoke-direct {v4, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->talkBackServiceName:Landroid/content/ComponentName;

    .line 592
    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_d6

    sput-object v4, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    .line 2829
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sScreenRecorderKeyEventList:Ljava/util/ArrayList;

    .line 2831
    sget-object v4, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sScreenRecorderKeyEventList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2832
    sget-object v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sScreenRecorderKeyEventList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2833
    sget-object v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sScreenRecorderKeyEventList:Ljava/util/ArrayList;

    const/16 v4, 0x52

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2834
    sget-object v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sScreenRecorderKeyEventList:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2835
    sget-object v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sScreenRecorderKeyEventList:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2836
    sget-object v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sScreenRecorderKeyEventList:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2837
    sget-object v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sScreenRecorderKeyEventList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2916
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sVoiceAssistKeyEventList:Ljava/util/ArrayList;

    .line 2918
    sget-object v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sVoiceAssistKeyEventList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2919
    return-void

    nop

    nop

    :array_d6
    .array-data 4
        0x7d3
        0x7da
    .end array-data
.end method

.method public constructor <init>()V
    .registers 7

    .line 103
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;-><init>()V

    .line 153
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPressPowerKeyCount:I

    .line 154
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDoubleClickAiKeyCount:I

    .line 157
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLastClickAiKeyTime:J

    .line 197
    iput v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressVolumeDownBehavior:I

    .line 198
    iput v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 239
    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getPowerLongPress()Ljava/lang/Runnable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPowerLongPressOriginal:Ljava/lang/Runnable;

    .line 249
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    iput v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyLongPressTimeout:I

    .line 318
    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    iput-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWindowStatusBinder:Landroid/os/Binder;

    .line 575
    new-instance v4, Lmiui/util/SmartCoverManager;

    invoke-direct {v4}, Lmiui/util/SmartCoverManager;-><init>()V

    iput-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSmartCoverManager:Lmiui/util/SmartCoverManager;

    .line 854
    new-instance v4, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$5;

    invoke-direct {v4, p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$5;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    iput-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTurnOffTorch:Ljava/lang/Runnable;

    .line 875
    new-instance v4, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$6;

    invoke-direct {v4, p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$6;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    iput-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSingleClickAiKeyRunnable:Ljava/lang/Runnable;

    .line 884
    new-instance v4, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$7;

    invoke-direct {v4, p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$7;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    iput-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDoubleClickAiKeyRunnable:Ljava/lang/Runnable;

    .line 892
    new-instance v4, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$8;

    invoke-direct {v4, p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$8;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    iput-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressDownAiKeyRunnable:Ljava/lang/Runnable;

    .line 902
    new-instance v4, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$9;

    invoke-direct {v4, p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$9;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    iput-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressUpAiKeyRunnable:Ljava/lang/Runnable;

    .line 939
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSuperWaitingKey:Ljava/util/HashSet;

    .line 959
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensorWrapper:Lmiui/util/ProximitySensorWrapper;

    .line 960
    new-instance v5, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$10;

    invoke-direct {v5, p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$10;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    iput-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensorListener:Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;

    .line 1040
    iput-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mFpNavEventNameList:Ljava/util/List;

    .line 1041
    iput-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyguardOnWhenHomeDown:Z

    .line 1398
    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    iput-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWindowFlagBinder:Landroid/os/Binder;

    .line 1475
    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    iput-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBarDisableToken:Landroid/os/Binder;

    .line 1476
    iput-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBarVisible:Z

    .line 1523
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mBinder:Landroid/os/Binder;

    .line 1525
    new-instance v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$13;

    invoke-direct {v0, p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$13;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBarExitFullscreenReceiver:Landroid/content/BroadcastReceiver;

    .line 1604
    new-instance v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$14;

    invoke-direct {v0, p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$14;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenshotReceiver:Landroid/content/BroadcastReceiver;

    .line 1699
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSystemKeyPackages:Ljava/util/HashSet;

    .line 1701
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSystemKeyPackages:Ljava/util/HashSet;

    const-string v4, "android"

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1702
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSystemKeyPackages:Ljava/util/HashSet;

    const-string v4, "com.android.systemui"

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1703
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSystemKeyPackages:Ljava/util/HashSet;

    const-string v4, "com.android.phone"

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1704
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSystemKeyPackages:Ljava/util/HashSet;

    const-string v4, "com.android.mms"

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1705
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSystemKeyPackages:Ljava/util/HashSet;

    const-string v4, "com.android.contacts"

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1706
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSystemKeyPackages:Ljava/util/HashSet;

    const-string v4, "com.miui.home"

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1707
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSystemKeyPackages:Ljava/util/HashSet;

    const-string v4, "com.jeejen.family.miui"

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1708
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSystemKeyPackages:Ljava/util/HashSet;

    const-string v4, "com.android.incallui"

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1709
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSystemKeyPackages:Ljava/util/HashSet;

    const-string v4, "com.miui.backup"

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1710
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSystemKeyPackages:Ljava/util/HashSet;

    const-string v4, "com.miui.securitycenter"

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1711
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSystemKeyPackages:Ljava/util/HashSet;

    const-string v4, "com.xiaomi.mihomemanager"

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1712
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSystemKeyPackages:Ljava/util/HashSet;

    const-string v4, "com.miui.securityadd"

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2590
    new-instance v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$19;

    invoke-direct {v0, p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$19;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 2600
    new-instance v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$20;

    invoke-direct {v0, p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$20;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDoubleClickTimeoutRunnable:Ljava/lang/Runnable;

    .line 2840
    iput-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenRecorderEnabled:Z

    .line 2846
    new-instance v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$21;

    invoke-direct {v0, p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$21;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenRecordeEnablekKeyEventReceiver:Landroid/content/BroadcastReceiver;

    .line 2871
    iput-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTrackDumpLogKeyCodePengding:Z

    .line 2872
    iput-wide v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTrackDumpLogKeyCodeStartTime:J

    .line 2873
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTrackDumpLogKeyCodeLastKeyCode:I

    .line 2874
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTrackDumpLogKeyCodeTimeOut:I

    .line 2875
    iput v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTrackDumpLogKeyCodeVolumeDownTimes:I

    .line 2921
    iput-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVoiceAssistEnabled:Z

    .line 2948
    new-instance v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$22;

    invoke-direct {v0, p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$22;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mInternalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/os/Binder;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 103
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWindowStatusBinder:Landroid/os/Binder;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Z

    .line 103
    invoke-direct {p0, p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->setStatusBarInFullscreen(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 103
    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShortcutTriggered:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 103
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getCameraIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/content/Intent;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 103
    invoke-direct {p0, p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->launchApp(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/content/Intent;Ljava/lang/String;)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Ljava/lang/String;

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->launchVoiceAssistant(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/os/Bundle;

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->launchAssistAction(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 103
    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWifiOnly:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Z

    .line 103
    invoke-direct {p0, p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->closeApp(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 103
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->showMenu()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 103
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getNfcIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 103
    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTorchEnabled:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 103
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getDumpLogIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Z

    .line 103
    iput-boolean p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTorchEnabled:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Ljava/lang/String;I)Landroid/widget/Toast;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->makeAllUserToastAndShow(Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 103
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->preloadRecentApps()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 103
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->launchRecentPanel()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 103
    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeDownKeyConsumed:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 103
    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeUpKeyConsumed:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 103
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->closeTalkBack()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 103
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getPowerGuideIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Lmiui/util/HapticFeedbackUtil;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 103
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 103
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->markShortcutTriggered()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Z

    .line 103
    invoke-direct {p0, p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->setTorch(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 103
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->handleGameModeChange()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 103
    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$3202(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Z

    .line 103
    iput-boolean p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPressToAppSwitch:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 103
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTurnOffTorch:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # I

    .line 103
    iput p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    return p1
.end method

.method static synthetic access$3502(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Z

    .line 103
    iput-boolean p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVoiceAssistEnabled:Z

    return p1
.end method

.method static synthetic access$3602(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # I

    .line 103
    iput p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressVolumeDownBehavior:I

    return p1
.end method

.method static synthetic access$3702(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Z

    .line 103
    iput-boolean p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mIsVRMode:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Lmiui/provider/SettingsStringUtil$SettingStringHelper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 103
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mAccessibilityShortcutSetting:Lmiui/provider/SettingsStringUtil$SettingStringHelper;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Lmiui/provider/SettingsStringUtil$SettingStringHelper;)Lmiui/provider/SettingsStringUtil$SettingStringHelper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Lmiui/provider/SettingsStringUtil$SettingStringHelper;

    .line 103
    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mAccessibilityShortcutSetting:Lmiui/provider/SettingsStringUtil$SettingStringHelper;

    return-object p1
.end method

.method static synthetic access$3900()Landroid/content/ComponentName;
    .registers 1

    .line 103
    sget-object v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->talkBackServiceName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 103
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Landroid/app/Dialog;

    .line 103
    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # I

    .line 103
    iput p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDoubleClickAiKeyCount:I

    return p1
.end method

.method static synthetic access$4100(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/widget/ProgressBar;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 103
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mBootProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Landroid/widget/ProgressBar;

    .line 103
    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mBootProgress:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 103
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mBootText:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # [Ljava/lang/String;

    .line 103
    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mBootText:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 103
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mBootTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Landroid/widget/TextView;

    .line 103
    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mBootTextView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$4400(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Z

    .line 103
    invoke-direct {p0, p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->setScreenRecorderEnabled(Z)V

    return-void
.end method

.method static synthetic access$4502(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Z

    .line 103
    iput-boolean p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mForbidFullScreen:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 103
    invoke-direct {p0, p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->startAiKeyService(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Z

    .line 103
    iput-boolean p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressAiKeyIsConsumed:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Lmiui/util/ProximitySensorWrapper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 103
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensorWrapper:Lmiui/util/ProximitySensorWrapper;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Lmiui/util/ProximitySensorWrapper;)Lmiui/util/ProximitySensorWrapper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p1, "x1"    # Lmiui/util/ProximitySensorWrapper;

    .line 103
    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensorWrapper:Lmiui/util/ProximitySensorWrapper;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 103
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensorListener:Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/os/Binder;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 103
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWindowFlagBinder:Landroid/os/Binder;

    return-object v0
.end method

.method private canReceiveInput(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .registers 7
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 400
    nop

    .line 401
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

    .line 402
    .local v0, "notFocusable":Z
    :goto_10
    nop

    .line 403
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

    .line 404
    .local v3, "altFocusableIm":Z
    :goto_1f
    xor-int v4, v0, v3

    .line 405
    .local v4, "notFocusableForIm":Z
    if-nez v4, :cond_25

    move v1, v2

    nop

    :cond_25
    return v1
.end method

.method private cancelPendingAccessibilityShortcutAction()V
    .registers 4

    .line 1272
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    const-string v1, "close_talkback"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1273
    return-void
.end method

.method private closeApp(Z)Z
    .registers 15
    .param p1, "isTriggeredByBack"    # Z

    .line 1870
    if-eqz p1, :cond_5

    .line 1871
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 1871
    .local v0, "_win":Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    goto :goto_7

    .line 1873
    .end local v0    # "_win":Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 1876
    .restart local v0    # "_win":Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    :goto_7
    const/4 v1, 0x0

    if-eqz v0, :cond_e9

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    if-nez v2, :cond_12

    goto/16 :goto_e9

    .line 1878
    :cond_12
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1879
    .local v2, "type":I
    const/4 v3, 0x1

    if-lt v2, v3, :cond_1f

    const/16 v4, 0x63

    if-le v2, v4, :cond_29

    :cond_1f
    const/16 v4, 0x3e8

    if-lt v2, v4, :cond_e8

    const/16 v4, 0x7cf

    if-le v2, v4, :cond_29

    goto/16 :goto_e8

    .line 1885
    :cond_29
    const/4 v4, 0x0

    .line 1886
    .local v4, "title":Ljava/lang/String;
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget-object v5, v5, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1887
    .local v5, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 1888
    .local v6, "pm":Landroid/content/pm/PackageManager;
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 1891
    .local v7, "OwningUserId":I
    :try_start_3e
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1892
    .local v8, "className":Ljava/lang/String;
    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 1893
    .local v9, "index":I
    if-ltz v9, :cond_70

    .line 1894
    new-instance v10, Landroid/content/ComponentName;

    add-int/lit8 v11, v9, 0x1

    .line 1896
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v8, v11, v12}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-direct {v10, v5, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1899
    .local v10, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v6, v10, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v11

    .line 1900
    .local v11, "activityInfo":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v11, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12
    :try_end_6f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3e .. :try_end_6f} :catch_71

    move-object v4, v12

    .line 1904
    .end local v8    # "className":Ljava/lang/String;
    .end local v9    # "index":I
    .end local v10    # "componentName":Landroid/content/ComponentName;
    .end local v11    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_70
    goto :goto_79

    .line 1902
    :catch_71
    move-exception v8

    .line 1903
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "WindowManager"

    const-string v10, "NameNotFoundException"

    invoke-static {v9, v10, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1907
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_79
    :try_start_79
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8c

    .line 1909
    invoke-virtual {v6, v5, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 1910
    .local v8, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v8, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9
    :try_end_8b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_79 .. :try_end_8b} :catch_8d

    move-object v4, v9

    .line 1914
    .end local v8    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_8c
    goto :goto_95

    .line 1912
    :catch_8d
    move-exception v8

    .line 1913
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "WindowManager"

    const-string v10, "NameNotFoundException"

    invoke-static {v9, v10, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1916
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_95
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9c

    .line 1917
    move-object v4, v5

    .line 1920
    :cond_9c
    const-string v8, "com.miui.home"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a5

    .line 1921
    return v3

    .line 1924
    :cond_a5
    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSystemKeyPackages:Ljava/util/HashSet;

    invoke-virtual {v8, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_be

    .line 1926
    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const v9, 0x110b007b

    new-array v10, v3, [Ljava/lang/Object;

    aput-object v4, v10, v1

    .line 1927
    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1926
    invoke-direct {p0, v8, v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->makeAllUserToastAndShow(Ljava/lang/String;I)Landroid/widget/Toast;

    .line 1929
    return v3

    .line 1934
    :cond_be
    :try_start_be
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    iget-object v8, v8, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v1, v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->finishActivityInternal(Landroid/os/IBinder;ILandroid/content/Intent;)V
    :try_end_c8
    .catch Landroid/os/RemoteException; {:try_start_be .. :try_end_c8} :catch_c9

    .line 1937
    goto :goto_d1

    .line 1935
    :catch_c9
    move-exception v8

    .line 1936
    .local v8, "e":Landroid/os/RemoteException;
    const-string v9, "WindowManager"

    const-string v10, "RemoteException"

    invoke-static {v9, v10, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1940
    .end local v8    # "e":Landroid/os/RemoteException;
    :goto_d1
    const-string/jumbo v8, "key shortcut"

    invoke-virtual {p0, v5, v7, v8}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->forceStopPackage(Ljava/lang/String;ILjava/lang/String;)V

    .line 1943
    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const v9, 0x110b007a

    new-array v10, v3, [Ljava/lang/Object;

    aput-object v4, v10, v1

    .line 1944
    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1943
    invoke-direct {p0, v8, v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->makeAllUserToastAndShow(Ljava/lang/String;I)Landroid/widget/Toast;

    .line 1946
    return v3

    .line 1882
    .end local v4    # "title":Ljava/lang/String;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    .end local v7    # "OwningUserId":I
    :cond_e8
    :goto_e8
    return v1

    .line 1876
    .end local v2    # "type":I
    :cond_e9
    :goto_e9
    return v1
.end method

.method private closeTalkBack()V
    .registers 4

    .line 1800
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mAccessibilityShortcutSetting:Lmiui/provider/SettingsStringUtil$SettingStringHelper;

    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mAccessibilityShortcutSetting:Lmiui/provider/SettingsStringUtil$SettingStringHelper;

    .line 1801
    invoke-virtual {v1}, Lmiui/provider/SettingsStringUtil$SettingStringHelper;->read()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->talkBackServiceName:Landroid/content/ComponentName;

    .line 1800
    invoke-static {v1, v2}, Lmiui/provider/SettingsStringUtil$ComponentNameSet;->remove(Ljava/lang/String;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/provider/SettingsStringUtil$SettingStringHelper;->write(Ljava/lang/String;)Z

    .line 1802
    return-void
.end method

.method private closeTorchWhenScreenOff(Z)Z
    .registers 4
    .param p1, "isScreenOn"    # Z

    .line 1276
    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTorchEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    if-nez p1, :cond_c

    .line 1277
    invoke-direct {p0, v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->setTorch(Z)Z

    .line 1278
    const/4 v0, 0x1

    return v0

    .line 1280
    :cond_c
    return v1
.end method

.method private exitFreeFormWindowIfNeeded(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .registers 9
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 603
    const/4 v0, 0x0

    .line 605
    .local v0, "stackInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getAllStackInfos()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .line 606
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$StackInfo;

    .line 607
    .local v2, "stackInfo":Landroid/app/ActivityManager$StackInfo;
    iget-object v3, v2, Landroid/app/ActivityManager$StackInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_32

    .line 608
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, v2, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    const/4 v6, 0x1

    invoke-interface {v3, v4, v6, v5}, Landroid/app/IActivityManager;->setTaskWindowingMode(IIZ)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_32} :catch_34

    .line 610
    .end local v2    # "stackInfo":Landroid/app/ActivityManager$StackInfo;
    :cond_32
    goto :goto_e

    .line 613
    :cond_33
    goto :goto_38

    .line 611
    :catch_34
    move-exception v1

    .line 612
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 614
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_38
    return-void
.end method

.method private forceLayoutHideNavigation()Z
    .registers 3

    .line 2581
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    goto :goto_9

    .line 2582
    :cond_7
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 2583
    .local v0, "win":Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    :goto_9
    invoke-direct {p0, v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->forceLayoutHideNavigation(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v1

    return v1
.end method

.method private forceLayoutHideNavigation(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .registers 3
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 2587
    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v0, :cond_12

    if-eqz p1, :cond_12

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/util/CustomizeUtil;->forceLayoutHideNavigation(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .registers 3

    .line 2018
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_10

    .line 2019
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mAudioManager:Landroid/media/AudioManager;

    .line 2021
    :cond_10
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private getCameraIntent()Landroid/content/Intent;
    .registers 4

    .line 2783
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraIntent:Landroid/content/Intent;

    if-nez v0, :cond_47

    .line 2784
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraIntent:Landroid/content/Intent;

    .line 2785
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraIntent:Landroid/content/Intent;

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2786
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraIntent:Landroid/content/Intent;

    const-string v1, "ShowCameraWhenLocked"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2787
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraIntent:Landroid/content/Intent;

    const-string v1, "StartActivityWhenLocked"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2788
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraIntent:Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2789
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_40

    .line 2790
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x110b005d

    .line 2791
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2790
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraComponentName:Landroid/content/ComponentName;

    .line 2793
    :cond_40
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2795
    :cond_47
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraIntent:Landroid/content/Intent;

    return-object v0
.end method

.method private getDumpLogIntent()Landroid/content/Intent;
    .registers 3

    .line 2799
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDumpLogIntent:Landroid/content/Intent;

    if-nez v0, :cond_19

    .line 2800
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDumpLogIntent:Landroid/content/Intent;

    .line 2801
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDumpLogIntent:Landroid/content/Intent;

    const-string v1, "com.miui.bugreport"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2802
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDumpLogIntent:Landroid/content/Intent;

    const-string v1, "com.miui.bugreport.service.action.DUMPLOG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2804
    :cond_19
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDumpLogIntent:Landroid/content/Intent;

    return-object v0
.end method

.method private static getKeyBitmask(I)I
    .registers 2
    .param p0, "keycode"    # I

    .line 110
    const/16 v0, 0x52

    if-eq p0, v0, :cond_21

    const/16 v0, 0xbb

    if-eq p0, v0, :cond_1f

    packed-switch p0, :pswitch_data_24

    packed-switch p0, :pswitch_data_2c

    .line 126
    const/4 v0, 0x1

    return v0

    .line 120
    :pswitch_10
    const/16 v0, 0x20

    return v0

    .line 122
    :pswitch_13
    const/16 v0, 0x40

    return v0

    .line 124
    :pswitch_16
    const/16 v0, 0x80

    return v0

    .line 118
    :pswitch_19
    const/16 v0, 0x10

    return v0

    .line 116
    :pswitch_1c
    const/16 v0, 0x8

    return v0

    .line 114
    :cond_1f
    const/4 v0, 0x4

    return v0

    .line 112
    :cond_21
    const/4 v0, 0x2

    return v0

    nop

    :pswitch_data_24
    .packed-switch 0x3
        :pswitch_1c
        :pswitch_19
    .end packed-switch

    :pswitch_data_2c
    .packed-switch 0x18
        :pswitch_16
        :pswitch_13
        :pswitch_10
    .end packed-switch
.end method

.method private getNfcIntent()Landroid/content/Intent;
    .registers 4

    .line 2773
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNfcIntent:Landroid/content/Intent;

    if-nez v0, :cond_21

    .line 2774
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNfcIntent:Landroid/content/Intent;

    .line 2775
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNfcIntent:Landroid/content/Intent;

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2776
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNfcIntent:Landroid/content/Intent;

    const-string v1, "StartActivityWhenLocked"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2777
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNfcIntent:Landroid/content/Intent;

    const-string v1, "com.miui.intent.action.DOUBLE_CLICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2779
    :cond_21
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNfcIntent:Landroid/content/Intent;

    return-object v0
.end method

.method private getPowerGuideIntent()Landroid/content/Intent;
    .registers 4

    .line 1805
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1806
    .local v0, "powerGuideIntent":Landroid/content/Intent;
    const-string v1, "com.miui.voiceassist"

    const-string v2, "com.xiaomi.voiceassistant.guidePage.PowerGuideDialogActivityV2"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1808
    const-string/jumbo v1, "showSwitchNotice"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1809
    const/high16 v1, 0x30000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1810
    return-object v0
.end method

.method static getWindownManagerService()Landroid/view/IWindowManager;
    .registers 3

    .line 2463
    const-string/jumbo v0, "window"

    .line 2464
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2463
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 2465
    .local v0, "service":Landroid/view/IWindowManager;
    if-nez v0, :cond_14

    .line 2466
    const-string v1, "WindowManager"

    const-string v2, "Unable to find IWindowManager interface."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2468
    :cond_14
    return-object v0
.end method

.method private handleAiKeyEvent(Landroid/view/KeyEvent;Z)V
    .registers 13
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "down"    # Z

    .line 912
    const-wide/16 v0, 0x12c

    if-eqz p2, :cond_4b

    .line 913
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 914
    .local v2, "keyDownTime":J
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_22

    .line 915
    iput-boolean v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDoubleClickAiKeyIsConsumed:Z

    .line 916
    iput-boolean v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressAiKeyIsConsumed:Z

    .line 917
    iget v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDoubleClickAiKeyCount:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDoubleClickAiKeyCount:I

    .line 918
    iget-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressDownAiKeyRunnable:Ljava/lang/Runnable;

    const-wide/16 v8, 0x1f4

    invoke-virtual {v4, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 920
    :cond_22
    iget-wide v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLastClickAiKeyTime:J

    sub-long v7, v2, v7

    cmp-long v0, v7, v0

    if-gez v0, :cond_48

    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDoubleClickAiKeyCount:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_48

    .line 922
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDoubleClickAiKeyRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 923
    iput-boolean v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDoubleClickAiKeyIsConsumed:Z

    .line 924
    iput v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDoubleClickAiKeyCount:I

    .line 925
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSingleClickAiKeyRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 926
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressDownAiKeyRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 928
    :cond_48
    iput-wide v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLastClickAiKeyTime:J

    .line 929
    .end local v2    # "keyDownTime":J
    goto :goto_69

    .line 930
    :cond_4b
    iget-boolean v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressAiKeyIsConsumed:Z

    if-eqz v2, :cond_57

    .line 931
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressUpAiKeyRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_69

    .line 932
    :cond_57
    iget-boolean v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDoubleClickAiKeyIsConsumed:Z

    if-nez v2, :cond_69

    .line 933
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSingleClickAiKeyRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 934
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressDownAiKeyRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 937
    :cond_69
    :goto_69
    return-void
.end method

.method private handleDoubleTapOnHome()V
    .registers 3

    .line 2610
    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 2611
    iput-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeConsumed:Z

    .line 2612
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->launchRecentPanel()Z

    .line 2614
    :cond_a
    return-void
.end method

.method private handleGameModeChange()V
    .registers 6

    .line 2068
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mRotationWatcher:Lcom/android/server/policy/BaseMiuiPhoneWindowManager$RotationWatcher;

    if-nez v0, :cond_b

    .line 2069
    new-instance v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$RotationWatcher;

    invoke-direct {v0, p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$RotationWatcher;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mRotationWatcher:Lcom/android/server/policy/BaseMiuiPhoneWindowManager$RotationWatcher;

    .line 2071
    :cond_b
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isGameMode()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 2072
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 2073
    .local v0, "rotation":I
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set rotation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    invoke-static {}, Lmiui/util/ITouchFeature;->getInstance()Lmiui/util/ITouchFeature;

    move-result-object v1

    .line 2075
    .local v1, "touchFeature":Lmiui/util/ITouchFeature;
    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Lmiui/util/ITouchFeature;->setTouchMode(II)Z

    .line 2077
    :try_start_3b
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mRotationWatcher:Lcom/android/server/policy/BaseMiuiPhoneWindowManager$RotationWatcher;

    iget-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;I)I
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_4c} :catch_4d

    .line 2080
    goto :goto_51

    .line 2078
    :catch_4d
    move-exception v2

    .line 2079
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2081
    .end local v0    # "rotation":I
    .end local v1    # "touchFeature":Lmiui/util/ITouchFeature;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_51
    goto :goto_5e

    .line 2083
    :cond_52
    :try_start_52
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mRotationWatcher:Lcom/android/server/policy/BaseMiuiPhoneWindowManager$RotationWatcher;

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_59} :catch_5a

    .line 2086
    goto :goto_5e

    .line 2084
    :catch_5a
    move-exception v0

    .line 2085
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2088
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_5e
    return-void
.end method

.method private handleKeyCombination()Z
    .registers 6

    .line 781
    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_9b

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShortcutTriggered:Z

    if-eqz v0, :cond_d

    goto/16 :goto_9b

    .line 783
    :cond_d
    const/4 v0, 0x0

    .line 784
    .local v0, "result":Z
    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    sget v3, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_HOME_POWER:I

    if-ne v1, v3, :cond_24

    .line 785
    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->stopLockTaskMode()Z

    move-result v0

    .line 786
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyCombinationPowerHome:Ljava/lang/String;

    const-string/jumbo v3, "key_combination_power_home"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->postKeyFunction(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    goto/16 :goto_9a

    .line 788
    :cond_24
    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    sget v3, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_BACK_POWER:I

    if-ne v1, v3, :cond_38

    iget-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSingleKeyUse:Z

    if-nez v1, :cond_38

    .line 789
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyCombinationPowerBack:Ljava/lang/String;

    const-string/jumbo v3, "key_combination_power_back"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->postKeyFunction(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    goto :goto_9a

    .line 791
    :cond_38
    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    sget v3, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_MENU_POWER:I

    if-ne v1, v3, :cond_4c

    iget-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSingleKeyUse:Z

    if-nez v1, :cond_4c

    .line 792
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyCombinationPowerMenu:Ljava/lang/String;

    const-string/jumbo v3, "key_combination_power_menu"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->postKeyFunction(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    goto :goto_9a

    .line 794
    :cond_4c
    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    sget v3, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_SCREENSHOT_MIUI:I

    const/4 v4, 0x0

    if-ne v1, v3, :cond_5f

    iget-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSingleKeyUse:Z

    if-nez v1, :cond_5f

    .line 798
    const-string/jumbo v1, "screen_shot"

    invoke-direct {p0, v1, v2, v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->postKeyFunction(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    goto :goto_9a

    .line 800
    :cond_5f
    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    sget v3, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_SCREENSHOT_SINGLE_KEY:I

    if-ne v1, v3, :cond_71

    iget-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSingleKeyUse:Z

    if-eqz v1, :cond_71

    .line 801
    const-string/jumbo v1, "screen_shot"

    invoke-direct {p0, v1, v2, v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->postKeyFunction(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    goto :goto_9a

    .line 803
    :cond_71
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    if-eqz v1, :cond_9a

    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    invoke-virtual {v1}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 804
    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    sget v3, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_UNLOCK:I

    if-eq v1, v3, :cond_92

    iget-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v1, :cond_9a

    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    const/16 v3, 0x18

    .line 805
    invoke-static {v3}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v3

    and-int/2addr v1, v3

    if-eqz v1, :cond_9a

    .line 806
    :cond_92
    iget-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSingleKeyUse:Z

    if-nez v1, :cond_9a

    .line 807
    invoke-direct {p0, v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->releaseScreenOnProximitySensor(Z)V

    .line 808
    const/4 v0, 0x1

    .line 812
    :cond_9a
    :goto_9a
    return v0

    .line 781
    .end local v0    # "result":Z
    :cond_9b
    :goto_9b
    return v2
.end method

.method private inFingerprintEnrolling()Z
    .registers 6

    .line 1386
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1388
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_c
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 1389
    .local v3, "topClassName":Ljava/lang/String;
    const-string v4, "com.android.settings.NewFingerprintInternalActivity"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_22} :catch_26

    if-eqz v4, :cond_25

    .line 1390
    return v2

    .line 1394
    .end local v3    # "topClassName":Ljava/lang/String;
    :cond_25
    goto :goto_2e

    .line 1392
    :catch_26
    move-exception v2

    .line 1393
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "WindowManager"

    const-string v4, "Exception"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1395
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2e
    return v1
.end method

.method private injectEvent(I)V
    .registers 17
    .param p1, "injectKeyCode"    # I

    .line 1996
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 1997
    .local v11, "now":J
    new-instance v13, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object v0, v13

    move-wide v1, v11

    move-wide v3, v11

    move/from16 v6, p1

    invoke-direct/range {v0 .. v10}, Landroid/view/KeyEvent;-><init>(JJIIIIII)V

    .line 1999
    .local v13, "homeDown":Landroid/view/KeyEvent;
    new-instance v14, Landroid/view/KeyEvent;

    const/4 v5, 0x1

    move-object v0, v14

    invoke-direct/range {v0 .. v10}, Landroid/view/KeyEvent;-><init>(JJIIIIII)V

    .line 2001
    .local v0, "homeUp":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v13, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 2003
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 2005
    return-void
.end method

.method private interceptAccessibilityShortcutChord(Z)V
    .registers 8
    .param p1, "keyguardActive"    # Z

    .line 1257
    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeDownKeyPressed:Z

    if-eqz v0, :cond_3e

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeUpKeyPressed:Z

    if-eqz v0, :cond_3e

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTalkBackIsOpened:Z

    if-eqz v0, :cond_3e

    .line 1258
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1259
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeDownKeyTime:J

    const-wide/16 v4, 0x96

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_3e

    iget-wide v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeUpKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_3e

    .line 1261
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeDownKeyConsumed:Z

    .line 1262
    iput-boolean v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeUpKeyConsumed:Z

    .line 1263
    iget-boolean v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShortcutServiceIsTalkBack:Z

    if-eqz v3, :cond_2f

    if-eqz p1, :cond_3e

    iget-boolean v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mAccessibilityShortcutOnLockScreen:Z

    if-nez v3, :cond_3e

    .line 1264
    :cond_2f
    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    const-string v5, "close_talkback"

    invoke-virtual {v4, v2, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1269
    .end local v0    # "now":J
    :cond_3e
    return-void
.end method

.method private interceptPowerKey(Landroid/view/KeyEvent;Z)Z
    .registers 13
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "isScreenOn"    # Z

    .line 2670
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x1a

    if-eq v0, v2, :cond_11

    goto/16 :goto_f8

    .line 2673
    :cond_11
    const/4 v0, 0x0

    .line 2674
    .local v0, "interceptWhenScreenOn":Z
    invoke-direct {p0, p2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->closeTorchWhenScreenOff(Z)Z

    move-result v2

    .line 2675
    .local v2, "interceptWhenScreenOff":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLastPowerDown:J

    sub-long/2addr v3, v5

    .line 2676
    .local v3, "doubleTapInterval":J
    const-wide/16 v5, 0x12c

    cmp-long v5, v3, v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-gez v5, :cond_45

    const-wide/16 v8, 0x0

    cmp-long v5, v3, v8

    if-lez v5, :cond_45

    .line 2678
    iget v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPressPowerKeyCount:I

    add-int/2addr v5, v7

    iput v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPressPowerKeyCount:I

    .line 2679
    iget v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPressPowerKeyCount:I

    if-gt v5, v6, :cond_47

    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDoubleClickPowerKey:Ljava/lang/String;

    if-eqz v5, :cond_47

    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDoubleClickPowerKey:Ljava/lang/String;

    const-string/jumbo v8, "none"

    .line 2680
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_47

    .line 2681
    move v0, p2

    goto :goto_47

    .line 2684
    :cond_45
    iput v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPressPowerKeyCount:I

    .line 2686
    :cond_47
    :goto_47
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLastPowerDown:J

    .line 2691
    iget v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPressPowerKeyCount:I

    const/4 v8, 0x5

    if-ne v5, v8, :cond_72

    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2692
    invoke-static {v5}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isSosEnable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_72

    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isInSosMode(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_72

    .line 2693
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v8, "miui.intent.action.LAUNCH_SOS"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2694
    .local v5, "intent":Landroid/content/Intent;
    const-string v8, "com.android.settings"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2695
    invoke-direct {p0, v5}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->launchApp(Landroid/content/Intent;)Z

    .line 2701
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_72
    iget v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPressPowerKeyCount:I

    if-ne v5, v6, :cond_f0

    .line 2702
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Power button double tap gesture detected, "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDoubleClickPowerKey:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ". Interval="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "ms"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2704
    const-string/jumbo v5, "launch_camera"

    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDoubleClickPowerKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_af

    .line 2705
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getCameraIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->launchApp(Landroid/content/Intent;)Z

    goto :goto_f0

    .line 2706
    :cond_af
    const-string/jumbo v5, "turn_on_torch"

    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDoubleClickPowerKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d7

    .line 2707
    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v5

    .line 2708
    .local v5, "telecomManager":Landroid/telecom/TelecomManager;
    iget-boolean v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWifiOnly:Z

    if-nez v6, :cond_cd

    if-eqz v5, :cond_cb

    .line 2709
    invoke-virtual {v5}, Landroid/telecom/TelecomManager;->getCallState()I

    move-result v6

    if-nez v6, :cond_cb

    goto :goto_cd

    :cond_cb
    move v6, v1

    goto :goto_ce

    :cond_cd
    :goto_cd
    move v6, v7

    .line 2710
    .local v6, "phoneIdle":Z
    :goto_ce
    if-eqz v6, :cond_d6

    .line 2711
    iget-boolean v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTorchEnabled:Z

    xor-int/2addr v8, v7

    invoke-direct {p0, v8}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->setTorch(Z)Z

    .line 2713
    .end local v5    # "telecomManager":Landroid/telecom/TelecomManager;
    .end local v6    # "phoneIdle":Z
    :cond_d6
    goto :goto_f0

    :cond_d7
    const-string/jumbo v5, "mi_pay"

    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDoubleClickPowerKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f0

    .line 2714
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getNfcIntent()Landroid/content/Intent;

    move-result-object v5

    .line 2715
    .local v5, "nfcIntent":Landroid/content/Intent;
    const-string v6, "event_source"

    const-string v8, "double_click_power"

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2716
    invoke-direct {p0, v5}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->launchApp(Landroid/content/Intent;)Z

    .line 2719
    .end local v5    # "nfcIntent":Landroid/content/Intent;
    :cond_f0
    :goto_f0
    if-nez v0, :cond_f6

    if-eqz v2, :cond_f5

    goto :goto_f6

    :cond_f5
    goto :goto_f7

    :cond_f6
    :goto_f6
    move v1, v7

    :goto_f7
    return v1

    .line 2671
    .end local v0    # "interceptWhenScreenOn":Z
    .end local v2    # "interceptWhenScreenOff":Z
    .end local v3    # "doubleTapInterval":J
    :cond_f8
    :goto_f8
    return v1
.end method

.method private isAudioActive()Z
    .registers 7

    .line 2808
    const/4 v0, 0x0

    .line 2809
    .local v0, "active":Z
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    .line 2810
    .local v1, "mode":I
    if-lez v1, :cond_10

    const/4 v2, 0x4

    if-ge v1, v2, :cond_10

    .line 2811
    const/4 v0, 0x1

    .line 2812
    return v0

    .line 2814
    :cond_10
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v2

    .line 2815
    .local v2, "size":I
    const/4 v3, 0x0

    move v4, v0

    move v0, v3

    .local v0, "i":I
    .local v4, "active":Z
    :goto_17
    if-ge v0, v2, :cond_27

    .line 2816
    const/4 v5, 0x1

    if-ne v5, v0, :cond_1d

    .line 2818
    goto :goto_24

    .line 2820
    :cond_1d
    invoke-static {v0, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v4

    .line 2821
    if-eqz v4, :cond_24

    .line 2822
    goto :goto_27

    .line 2815
    :cond_24
    :goto_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 2825
    .end local v0    # "i":I
    :cond_27
    :goto_27
    return v4
.end method

.method private isGameMode()Z
    .registers 4

    .line 2064
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gb_boosting"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    goto :goto_12

    :cond_11
    move v1, v2

    :goto_12
    return v1
.end method

.method private isInCallScreenShowing()Z
    .registers 6

    .line 766
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    .line 767
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 768
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 769
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 770
    .local v2, "runningActivity":Ljava/lang/String;
    const-string v4, "com.android.phone.MiuiInCallScreen"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2f

    const-string v4, "com.android.incallui.InCallActivity"

    .line 771
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    goto :goto_2f

    .line 770
    :cond_2d
    move v1, v3

    goto :goto_30

    .line 771
    :cond_2f
    :goto_2f
    nop

    .line 770
    :goto_30
    return v1
.end method

.method private static isInSosMode(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 2728
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "key_is_in_miui_sos_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_12

    goto :goto_13

    :cond_12
    move v0, v1

    :goto_13
    return v0
.end method

.method private isLockDeviceWindow(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .registers 5
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 2940
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 2942
    :cond_4
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 2943
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    if-nez v1, :cond_b

    return v0

    .line 2945
    :cond_b
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_13

    const/4 v0, 0x1

    nop

    :cond_13
    return v0
.end method

.method private isNfcEnable(Z)Z
    .registers 6
    .param p1, "ishomeclick"    # Z

    .line 2617
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_28

    .line 2618
    const-string/jumbo v2, "sagit"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    const-string/jumbo v2, "jason"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_27

    .line 2621
    :cond_1b
    iget-boolean v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHaveBankCard:Z

    if-nez v2, :cond_26

    iget-boolean v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHaveTranksCard:Z

    if-eqz v2, :cond_24

    goto :goto_26

    :cond_24
    move v0, v1

    nop

    :cond_26
    :goto_26
    return v0

    .line 2619
    :cond_27
    :goto_27
    return v1

    .line 2624
    :cond_28
    iget v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressVolumeDownBehavior:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_32

    iget-boolean v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHaveTranksCard:Z

    if-eqz v2, :cond_32

    goto :goto_33

    :cond_32
    move v0, v1

    :goto_33
    return v0
.end method

.method private static isSosEnable(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 2723
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "key_miui_sos_enable"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_12

    goto :goto_13

    :cond_12
    move v0, v1

    :goto_13
    return v0
.end method

.method private isTrackInputEvenForScreenRecorder(Landroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 2855
    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenRecorderEnabled:Z

    if-eqz v0, :cond_16

    sget-object v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sScreenRecorderKeyEventList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2856
    const/4 v0, 0x1

    return v0

    .line 2858
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method private isTrackInputEventForVoiceAssist(Landroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 2924
    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVoiceAssistEnabled:Z

    if-eqz v0, :cond_16

    sget-object v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sVoiceAssistKeyEventList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2925
    const/4 v0, 0x1

    return v0

    .line 2927
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method private launchApp(Landroid/content/Intent;)Z
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1814
    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1815
    return v1

    .line 1818
    :cond_8
    const/high16 v0, 0x10000000

    :try_start_a
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1819
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_14
    .catch Landroid/content/ActivityNotFoundException; {:try_start_a .. :try_end_14} :catch_1f
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_14} :catch_16

    .line 1820
    const/4 v0, 0x1

    return v0

    .line 1823
    :catch_16
    move-exception v0

    .line 1824
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v2, "WindowManager"

    const-string v3, "IllegalStateException"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/IllegalStateException;
    goto :goto_28

    .line 1821
    :catch_1f
    move-exception v0

    .line 1822
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "WindowManager"

    const-string v3, "ActivityNotFoundException"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1825
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    nop

    .line 1826
    :goto_28
    return v1
.end method

.method private launchAssistAction(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 5
    .param p1, "hint"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .line 1950
    const-string v0, "assist"

    invoke-virtual {p0, v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 1951
    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1953
    const/4 v0, 0x0

    return v0

    .line 1955
    :cond_d
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x4

    if-ne v0, v1, :cond_31

    .line 1958
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 1959
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, p1, v1, p2}, Landroid/app/SearchManager;->launchLegacyAssist(Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_34

    .line 1961
    :cond_31
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->launchAssistActionInternal(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1963
    :goto_34
    const/4 v0, 0x1

    return v0
.end method

.method private launchRecentPanel()Z
    .registers 5

    .line 1967
    const-string/jumbo v0, "recentapps"

    invoke-virtual {p0, v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 1969
    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->keyguardOn()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1971
    const/4 v0, 0x0

    return v0

    .line 1973
    :cond_e
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1974
    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 1975
    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    iget-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWifiOnly:Z

    const/4 v2, 0x1

    if-nez v1, :cond_34

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isInCallScreenShowing()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 1976
    const-string v1, "WindowManager"

    const-string v3, "Ignoring recent apps button; there\'s a ringing incoming call."

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    return v2

    .line 1979
    :cond_34
    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->launchRecentPanelInternal()V

    .line 1980
    return v2
.end method

.method private launchVoiceAssistant(Landroid/content/Intent;Ljava/lang/String;)Z
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "shortcut"    # Ljava/lang/String;

    .line 1830
    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1831
    return v1

    .line 1834
    :cond_8
    :try_start_8
    const-string/jumbo v0, "voice_assist_start_from_key"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1835
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1836
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x10000

    .line 1835
    invoke-interface {v0, p1, v2, v3, v1}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 1838
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1839
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x110b005c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 1840
    .local v2, "componentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_56

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_56

    .line 1841
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 1842
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1843
    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, p1, v4}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_56

    .line 1844
    const/4 v1, 0x1

    return v1

    .line 1847
    :cond_56
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1848
    const-string v3, "WindowManager"

    const-string/jumbo v4, "launchVoiceAssistant startAcitvity"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    invoke-direct {p0, p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->launchApp(Landroid/content/Intent;)Z

    move-result v3
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_66} :catch_79
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_66} :catch_70
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_66} :catch_67

    return v3

    .line 1854
    .end local v0    # "info":Landroid/content/pm/ResolveInfo;
    .end local v2    # "componentName":Landroid/content/ComponentName;
    :catch_67
    move-exception v0

    .line 1855
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v2, "WindowManager"

    const-string v3, "IllegalStateException"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1855
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    goto :goto_82

    .line 1852
    :catch_70
    move-exception v0

    .line 1853
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "WindowManager"

    const-string v3, "SecurityException"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1853
    .end local v0    # "e":Ljava/lang/SecurityException;
    goto :goto_81

    .line 1850
    :catch_79
    move-exception v0

    .line 1851
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1856
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_81
    nop

    .line 1857
    :goto_82
    return v1
.end method

.method private makeAllUserToastAndShow(Ljava/lang/String;I)Landroid/widget/Toast;
    .registers 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "duration"    # I

    .line 832
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 833
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 835
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 836
    return-object v0
.end method

.method private markKeyPressAndHandleKeyCombin(IZ)Z
    .registers 7
    .param p1, "keyCode"    # I
    .param p2, "down"    # Z

    .line 1010
    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    if-nez v0, :cond_7

    .line 1011
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->resetKeyStatus()V

    .line 1014
    :cond_7
    invoke-static {p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    .line 1015
    .local v0, "keyBitMask":I
    if-eqz p2, :cond_18

    .line 1016
    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    or-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    .line 1017
    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    or-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    goto :goto_1e

    .line 1019
    :cond_18
    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    not-int v2, v0

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    .line 1022
    :goto_1e
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->handleKeyCombination()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_26

    .line 1023
    return v2

    .line 1028
    :cond_26
    iget-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShortcutTriggered:Z

    if-eqz v1, :cond_3b

    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShortcutPressing:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_3b

    if-nez p2, :cond_3b

    .line 1029
    invoke-direct {p0, p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->removeKeyLongPress(I)V

    .line 1030
    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShortcutPressing:I

    not-int v3, v0

    and-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShortcutPressing:I

    .line 1031
    return v2

    .line 1033
    :cond_3b
    const/4 v1, 0x0

    return v1
.end method

.method private markShortcutTriggered()V
    .registers 3

    .line 775
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShortcutTriggered:Z

    .line 776
    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShortcutPressing:I

    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShortcutPressing:I

    .line 777
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->callInterceptPowerKeyUp(Z)V

    .line 778
    return-void
.end method

.method private originalCanHideNavigationBar()Z
    .registers 2

    .line 396
    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHasNavigationBar:Z

    return v0
.end method

.method private playSoundEffect(IIZI)V
    .registers 6
    .param p1, "policyFlags"    # I
    .param p2, "keyCode"    # I
    .param p3, "down"    # Z
    .param p4, "repeatCount"    # I

    .line 2025
    if-eqz p3, :cond_27

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_27

    if-nez p4, :cond_27

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    .line 2026
    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-nez v0, :cond_27

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHasNavigationBar:Z

    if-nez v0, :cond_27

    .line 2027
    const/16 v0, 0x52

    if-eq p2, v0, :cond_24

    const/16 v0, 0x54

    if-eq p2, v0, :cond_24

    const/16 v0, 0xbb

    if-eq p2, v0, :cond_24

    packed-switch p2, :pswitch_data_28

    goto :goto_27

    .line 2033
    :cond_24
    :pswitch_24
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->playSoundEffect()Z

    .line 2038
    :cond_27
    :goto_27
    return-void

    :pswitch_data_28
    .packed-switch 0x3
        :pswitch_24
        :pswitch_24
    .end packed-switch
.end method

.method private playSoundEffect()Z
    .registers 3

    .line 2041
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 2042
    .local v0, "audioManager":Landroid/media/AudioManager;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2043
    return v1

    .line 2045
    :cond_8
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 2046
    const/4 v1, 0x1

    return v1
.end method

.method private postKeyFunction(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 10
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "delay"    # I
    .param p3, "shortcut"    # Ljava/lang/String;

    .line 1684
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1685
    const/4 v0, 0x0

    return v0

    .line 1687
    :cond_8
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1688
    .local v0, "message":Landroid/os/Message;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1689
    .local v2, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "shortcut"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1690
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1691
    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    int-to-long v4, p2

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1692
    return v1
.end method

.method private postKeyLongPress(IZ)V
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "underKeyguard"    # Z

    .line 1626
    const/16 v0, 0x1a

    if-eq p1, v0, :cond_76

    const/16 v0, 0x52

    if-eq p1, v0, :cond_3b

    const/16 v0, 0xbb

    if-eq p1, v0, :cond_3b

    packed-switch p1, :pswitch_data_84

    goto :goto_81

    .line 1637
    :pswitch_10
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressBackKey:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyLongPressTimeout:I

    const-string/jumbo v2, "long_press_back_key"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->postKeyFunction(Ljava/lang/String;ILjava/lang/String;)Z

    .line 1638
    goto :goto_81

    .line 1628
    :pswitch_1b
    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mFrontFingerprintSensor:Z

    if-eqz v0, :cond_30

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSupportTapFingerprintSensorToHome:Z

    if-nez v0, :cond_2d

    const-string v0, "capricorn"

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 1629
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    :cond_2d
    if-eqz p2, :cond_30

    .line 1632
    return-void

    .line 1634
    :cond_30
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressHomeKey:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyLongPressTimeout:I

    const-string/jumbo v2, "long_press_home_key"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->postKeyFunction(Ljava/lang/String;ILjava/lang/String;)Z

    .line 1635
    goto :goto_81

    .line 1641
    :cond_3b
    if-eqz p2, :cond_5b

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressMenuKeyWhenLock:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5b

    const-string/jumbo v0, "none"

    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressMenuKeyWhenLock:Ljava/lang/String;

    .line 1642
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 1643
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressMenuKeyWhenLock:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyLongPressTimeout:I

    const-string/jumbo v2, "long_press_menu_key_when_lock"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->postKeyFunction(Ljava/lang/String;ILjava/lang/String;)Z

    goto :goto_81

    .line 1646
    :cond_5b
    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPressToAppSwitch:Z

    if-nez v0, :cond_6b

    const-string/jumbo v0, "show_menu"

    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressMenuKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 1647
    return-void

    .line 1649
    :cond_6b
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressMenuKey:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyLongPressTimeout:I

    const-string/jumbo v2, "long_press_menu_key"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->postKeyFunction(Ljava/lang/String;ILjava/lang/String;)Z

    .line 1652
    goto :goto_81

    .line 1654
    :cond_76
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressPowerKey:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyLongPressTimeout:I

    const-string/jumbo v2, "long_press_power_key"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->postKeyFunction(Ljava/lang/String;ILjava/lang/String;)Z

    .line 1656
    nop

    .line 1660
    :goto_81
    return-void

    nop

    nop

    :pswitch_data_84
    .packed-switch 0x3
        :pswitch_1b
        :pswitch_10
    .end packed-switch
.end method

.method private preloadRecentApps()V
    .registers 1

    .line 1984
    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->preloadRecentAppsInternal()V

    .line 1985
    return-void
.end method

.method private releaseScreenOnProximitySensor(Z)V
    .registers 3
    .param p1, "isNowRelease"    # Z

    .line 589
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->release(Z)Z

    .line 590
    :cond_9
    return-void
.end method

.method private removeKeyFunction(Ljava/lang/String;)V
    .registers 4
    .param p1, "action"    # Ljava/lang/String;

    .line 1696
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1697
    return-void
.end method

.method private removeKeyLongPress(I)V
    .registers 3
    .param p1, "keyCode"    # I

    .line 1663
    const/16 v0, 0x1a

    if-eq p1, v0, :cond_27

    const/16 v0, 0x52

    if-eq p1, v0, :cond_1c

    const/16 v0, 0xbb

    if-eq p1, v0, :cond_1c

    packed-switch p1, :pswitch_data_2e

    goto :goto_2d

    .line 1668
    :pswitch_10
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressBackKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->removeKeyFunction(Ljava/lang/String;)V

    .line 1669
    goto :goto_2d

    .line 1665
    :pswitch_16
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressHomeKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->removeKeyFunction(Ljava/lang/String;)V

    .line 1666
    goto :goto_2d

    .line 1672
    :cond_1c
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressMenuKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->removeKeyFunction(Ljava/lang/String;)V

    .line 1673
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressMenuKeyWhenLock:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->removeKeyFunction(Ljava/lang/String;)V

    .line 1674
    goto :goto_2d

    .line 1676
    :cond_27
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressPowerKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->removeKeyFunction(Ljava/lang/String;)V

    .line 1677
    nop

    .line 1681
    :goto_2d
    return-void

    :pswitch_data_2e
    .packed-switch 0x3
        :pswitch_16
        :pswitch_10
    .end packed-switch
.end method

.method private resetKeyStatus()V
    .registers 2

    .line 848
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    .line 849
    iput v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    .line 850
    iput v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShortcutPressing:I

    .line 851
    iput-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShortcutTriggered:Z

    .line 852
    return-void
.end method

.method private saveWindowTypeLayer(Landroid/content/Context;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;

    .line 409
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 410
    .local v0, "typeLayers":Lorg/json/JSONObject;
    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_3c

    .line 413
    .local v1, "types":[I
    array-length v2, v1

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_2b

    aget v4, v1, v3

    .line 414
    .local v4, "type":I
    invoke-virtual {p0, v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getWindowLayerFromTypeLw(I)I

    move-result v5

    .line 415
    .local v5, "layer":I
    const/4 v6, 0x2

    if-eq v5, v6, :cond_28

    .line 417
    :try_start_18
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1f
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_1f} :catch_20

    .line 420
    goto :goto_28

    .line 418
    :catch_20
    move-exception v6

    .line 419
    .local v6, "ex":Lorg/json/JSONException;
    const-string v7, "WindowManager"

    const-string v8, "JSONException"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 413
    .end local v4    # "type":I
    .end local v5    # "layer":I
    .end local v6    # "ex":Lorg/json/JSONException;
    :cond_28
    :goto_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 423
    :cond_2b
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "window_type_layer"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/MiuiSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 424
    return-void

    nop

    nop

    :array_3c
    .array-data 4
        0x7d0
        0x7d1
        0x7dd
    .end array-data
.end method

.method private sendKeyEventBroadcast(Landroid/view/KeyEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 2862
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.SCREEN_RECORDER_TRACK_KEYEVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2863
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.miui.screenrecorder"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2864
    const-string/jumbo v1, "keycode"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2865
    const-string/jumbo v1, "isdown"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_22

    const/4 v2, 0x1

    goto :goto_23

    :cond_22
    const/4 v2, 0x0

    :goto_23
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2866
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2867
    return-void
.end method

.method private sendOthersBroadcast(ZZZILandroid/view/KeyEvent;)Z
    .registers 20
    .param p1, "down"    # Z
    .param p2, "isScreenOn"    # Z
    .param p3, "keyguardActive"    # Z
    .param p4, "keyCode"    # I
    .param p5, "event"    # Landroid/view/KeyEvent;

    move-object v0, p0

    move/from16 v1, p4

    .line 1319
    move-object/from16 v2, p5

    const/4 v3, 0x0

    const/16 v4, 0x1a

    if-eqz p1, :cond_a4

    .line 1323
    const/high16 v5, 0x40000000    # 2.0f

    const/16 v6, 0xa4

    const/16 v7, 0x18

    const/16 v8, 0x19

    if-eqz p2, :cond_39

    if-nez p3, :cond_39

    if-eq v1, v4, :cond_26

    if-eq v1, v8, :cond_26

    if-eq v1, v7, :cond_26

    if-eq v1, v6, :cond_26

    const/16 v9, 0x55

    if-eq v1, v9, :cond_26

    const/16 v9, 0x4f

    if-ne v1, v9, :cond_39

    .line 1329
    :cond_26
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v10, "miui.intent.action.KEYCODE_EXTERNAL"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1330
    .local v9, "i":Landroid/content/Intent;
    const-string v10, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v9, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1331
    invoke-virtual {v9, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1332
    invoke-virtual {v0, v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sendAsyncBroadcast(Landroid/content/Intent;)V

    .line 1334
    .end local v9    # "i":Landroid/content/Intent;
    :cond_39
    if-ne v1, v4, :cond_3d

    const/4 v4, 0x1

    goto :goto_3e

    :cond_3d
    move v4, v3

    .line 1335
    .local v4, "stopNotification":Z
    :goto_3e
    if-nez v4, :cond_49

    if-eqz p3, :cond_49

    .line 1336
    if-eq v1, v8, :cond_48

    if-eq v1, v7, :cond_48

    if-ne v1, v6, :cond_49

    .line 1339
    :cond_48
    const/4 v4, 0x1

    .line 1343
    :cond_49
    if-eqz v4, :cond_58

    iget-boolean v6, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSystemReady:Z

    if-eqz v6, :cond_58

    .line 1344
    invoke-virtual {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v6

    .line 1345
    .local v6, "statusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v6, :cond_58

    .line 1346
    invoke-virtual {v0, v6}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->onStatusBarPanelRevealed(Lcom/android/internal/statusbar/IStatusBarService;)V

    .line 1350
    .end local v6    # "statusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_58
    if-eq v1, v8, :cond_5c

    if-ne v1, v7, :cond_a3

    .line 1352
    :cond_5c
    iget-object v6, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 1353
    .local v6, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v7, "remote_control_proc_name"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1354
    .local v7, "proc":Ljava/lang/String;
    const-string/jumbo v8, "remote_control_pkg_name"

    invoke-static {v6, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1356
    .local v8, "pkg":Ljava/lang/String;
    if-eqz v7, :cond_a3

    if-eqz v8, :cond_a3

    .line 1357
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 1358
    .local v10, "c":J
    invoke-virtual {v0, v7}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->checkProcessRunning(Ljava/lang/String;)Z

    move-result v12

    .line 1362
    .local v12, "running":Z
    if-eqz v12, :cond_96

    .line 1363
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v9, "miui.intent.action.REMOTE_CONTROL"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1364
    .local v3, "i":Landroid/content/Intent;
    invoke-virtual {v3, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1365
    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1366
    const-string v5, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1367
    invoke-virtual {v0, v3}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sendAsyncBroadcast(Landroid/content/Intent;)V

    .line 1368
    const/4 v5, 0x1

    return v5

    .line 1370
    .end local v3    # "i":Landroid/content/Intent;
    :cond_96
    const-string/jumbo v5, "remote_control_proc_name"

    const/4 v9, 0x0

    invoke-static {v6, v5, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1371
    const-string/jumbo v5, "remote_control_pkg_name"

    invoke-static {v6, v5, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1375
    .end local v4    # "stopNotification":Z
    .end local v6    # "cr":Landroid/content/ContentResolver;
    .end local v7    # "proc":Ljava/lang/String;
    .end local v8    # "pkg":Ljava/lang/String;
    .end local v10    # "c":J
    .end local v12    # "running":Z
    :cond_a3
    goto :goto_b0

    .line 1376
    :cond_a4
    if-ne v1, v4, :cond_b0

    .line 1377
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.KEYCODE_POWER_UP"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sendAsyncBroadcast(Landroid/content/Intent;)V

    .line 1380
    :cond_b0
    :goto_b0
    return v3
.end method

.method public static sendRecordCountEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;

    .line 816
    const-string v0, "count_event"

    .line 817
    .local v0, "STAT_TYPE_COUNT_EVENT":Ljava/lang/String;
    const-string v1, "com.miui.gallery"

    .line 818
    .local v1, "GALLERY_PKG_NAME":Ljava/lang/String;
    const-string v2, "com.miui.gallery.intent.action.SEND_STAT"

    .line 819
    .local v2, "ACTION_SEND_STAT":Ljava/lang/String;
    const-string/jumbo v3, "stat_type"

    .line 820
    .local v3, "EXTRA_STAT_TYPE":Ljava/lang/String;
    const-string v4, "category"

    .line 821
    .local v4, "EXTRA_CATEGORY":Ljava/lang/String;
    const-string v5, "event"

    .line 823
    .local v5, "EXTRA_EVENT":Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.miui.gallery.intent.action.SEND_STAT"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 824
    .local v6, "intent":Landroid/content/Intent;
    const-string v7, "com.miui.gallery"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 825
    const-string/jumbo v7, "stat_type"

    const-string v8, "count_event"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 826
    const-string v7, "category"

    invoke-virtual {v6, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 827
    const-string v7, "event"

    invoke-virtual {v6, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 828
    invoke-virtual {p0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 829
    return-void
.end method

.method private sendVoiceAssistKeyEventBroadcast(Landroid/view/KeyEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 2931
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.VOICE_ASSIST_TRACK_KEYEVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2932
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.miui.voiceassist"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2933
    const-string/jumbo v1, "keycode"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2934
    const-string/jumbo v1, "isdown"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_22

    const/4 v2, 0x1

    goto :goto_23

    :cond_22
    const/4 v2, 0x0

    :goto_23
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2935
    invoke-virtual {p0, v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sendAsyncBroadcast(Landroid/content/Intent;)V

    .line 2936
    return-void
.end method

.method private setScreenRecorderEnabled(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 2843
    iput-boolean p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenRecorderEnabled:Z

    .line 2844
    return-void
.end method

.method private setStatusBarInFullscreen(Z)V
    .registers 7
    .param p1, "show"    # Z

    .line 1532
    iput-boolean p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mIsStatusBarVisibleInFullscreen:Z

    .line 1534
    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 1535
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_17

    .line 1536
    nop

    .line 1537
    if-eqz p1, :cond_f

    const/high16 v2, -0x80000000

    goto :goto_10

    :cond_f
    move v2, v0

    :goto_10
    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mBinder:Landroid/os/Binder;

    const-string v4, "android"

    .line 1536
    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_17} :catch_18

    .line 1545
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_17
    goto :goto_23

    .line 1541
    :catch_18
    move-exception v1

    .line 1543
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "RemoteException"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1544
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 1549
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_23
    :try_start_23
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_29} :catch_2a

    .line 1552
    goto :goto_32

    .line 1550
    :catch_2a
    move-exception v0

    .line 1551
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WindowManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1553
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_32
    return-void
.end method

.method private setTorch(Z)Z
    .registers 4
    .param p1, "enable"    # Z

    .line 1616
    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHasCameraFlash:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 1618
    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.TOGGLE_TORCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1619
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "miui.intent.extra.IS_ENABLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1620
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1622
    const/4 v1, 0x1

    return v1
.end method

.method private shouldInterceptHeadSetHookKey(ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1307
    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMikeymodeEnabled:Z

    if-eqz v0, :cond_30

    const/16 v0, 0x4f

    if-ne p1, v0, :cond_30

    .line 1308
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.MIKEY_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1309
    .local v0, "mikeyIntent":Landroid/content/Intent;
    const-string v1, "com.xiaomi.miclick"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1310
    const-string/jumbo v1, "key_action"

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1311
    const-string/jumbo v1, "key_event_time"

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1312
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1313
    const/4 v1, 0x1

    return v1

    .line 1315
    .end local v0    # "mikeyIntent":Landroid/content/Intent;
    :cond_30
    const/4 v0, 0x0

    return v0
.end method

.method private shouldInterceptKey(IZZ)Z
    .registers 10
    .param p1, "keyCode"    # I
    .param p2, "isVirtual"    # Z
    .param p3, "isScreenOn"    # Z

    .line 986
    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mIsVRMode:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    .line 987
    const-string v0, "WindowManager"

    const-string v2, "VR mode drop all keys."

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    return v1

    .line 990
    :cond_d
    const-string/jumbo v0, "sys.in_shutdown_progress"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lmiui/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_20

    .line 992
    const-string v0, "WindowManager"

    const-string/jumbo v2, "this device is being shut down, ignore key event."

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    return v1

    .line 995
    :cond_20
    const/16 v0, 0x52

    const/4 v3, 0x4

    if-nez p3, :cond_31

    .line 996
    if-eq v3, p1, :cond_29

    if-ne v0, p1, :cond_31

    .line 997
    :cond_29
    const-string v0, "WindowManager"

    const-string v2, "Drop back or menu key when screen is off"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    return v1

    .line 1003
    :cond_31
    iget-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "force_fsg_nav_bar"

    invoke-static {v4, v5}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v4

    .line 1005
    .local v4, "supportFsg":Z
    if-eqz v4, :cond_4d

    sget-boolean v5, Lmiui/os/DeviceFeature;->SUPPORT_LAB_GESTURE:Z

    if-eqz v5, :cond_4d

    const/4 v5, 0x3

    if-eq p1, v5, :cond_4a

    if-eq p1, v3, :cond_4a

    if-ne p1, v0, :cond_4d

    :cond_4a
    if-nez p2, :cond_4d

    goto :goto_4e

    :cond_4d
    move v1, v2

    :goto_4e
    return v1
.end method

.method private showMenu()Z
    .registers 4

    .line 1988
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mRequestShowMenu:Z

    .line 1989
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    const-string/jumbo v1, "virtual_key_longpress"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Ljava/lang/String;Z)Z

    .line 1990
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->markShortcutTriggered()V

    .line 1991
    const/16 v0, 0x52

    invoke-direct {p0, v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->injectEvent(I)V

    .line 1992
    return v2
.end method

.method private startAiKeyService(Ljava/lang/String;)V
    .registers 6
    .param p1, "pressType"    # Ljava/lang/String;

    .line 865
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 866
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.ai.AidaemonService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 868
    const-string/jumbo v1, "key_ai_button_settings"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 869
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 872
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_29

    .line 870
    :catch_1f
    move-exception v0

    .line 871
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WindowManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_29
    return-void
.end method

.method private startCameraProcess()V
    .registers 4

    .line 550
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.action.CAMERA_EMPTY_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 551
    .local v0, "cameraIntent":Landroid/content/Intent;
    const-string v1, "com.android.camera"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 552
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    .line 555
    .end local v0    # "cameraIntent":Landroid/content/Intent;
    goto :goto_1d

    .line 553
    :catch_15
    move-exception v0

    .line 554
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WindowManager"

    const-string v2, "IllegalAccessException"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 556
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1d
    return-void
.end method

.method private streetSnap(ZIZLandroid/view/KeyEvent;)V
    .registers 9
    .param p1, "isScreenOn"    # Z
    .param p2, "keyCode"    # I
    .param p3, "down"    # Z
    .param p4, "event"    # Landroid/view/KeyEvent;

    .line 1284
    if-nez p1, :cond_53

    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressVolumeDownBehavior:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_53

    .line 1286
    const/4 v0, 0x0

    .line 1287
    .local v0, "keyIntent":Landroid/content/Intent;
    const/16 v1, 0x18

    if-eq p2, v1, :cond_20

    const/16 v1, 0x19

    if-ne p2, v1, :cond_11

    goto :goto_20

    .line 1291
    :cond_11
    if-eqz p3, :cond_29

    const/16 v1, 0x1a

    if-ne p2, v1, :cond_29

    .line 1293
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.KEYCODE_POWER_UP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_29

    .line 1290
    :cond_20
    :goto_20
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "miui.intent.action.CAMERA_KEY_BUTTON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 1295
    :cond_29
    :goto_29
    if-eqz v0, :cond_53

    .line 1297
    const-string v1, "com.android.camera"

    const-string v2, "com.android.camera.snap.SnapKeyReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1298
    const-string/jumbo v1, "key_code"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1299
    const-string/jumbo v1, "key_action"

    invoke-virtual {p4}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1300
    const-string/jumbo v1, "key_event_time"

    invoke-virtual {p4}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1301
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1304
    .end local v0    # "keyIntent":Landroid/content/Intent;
    :cond_53
    return-void
.end method

.method private trackDumpLogKeyCode(Landroid/view/KeyEvent;)V
    .registers 12
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 2878
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 2879
    .local v0, "code":I
    const/16 v1, 0x19

    const/4 v2, 0x0

    const/16 v3, 0x18

    if-eq v0, v1, :cond_10

    if-eq v0, v3, :cond_10

    .line 2880
    iput-boolean v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTrackDumpLogKeyCodePengding:Z

    .line 2881
    return-void

    .line 2884
    :cond_10
    iget-boolean v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTrackDumpLogKeyCodePengding:Z

    const/4 v5, 0x1

    if-nez v4, :cond_24

    if-ne v0, v3, :cond_24

    .line 2885
    iput-boolean v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTrackDumpLogKeyCodePengding:Z

    .line 2886
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTrackDumpLogKeyCodeStartTime:J

    .line 2887
    iput v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTrackDumpLogKeyCodeLastKeyCode:I

    .line 2888
    iput v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTrackDumpLogKeyCodeVolumeDownTimes:I

    goto :goto_71

    .line 2889
    :cond_24
    iget-boolean v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTrackDumpLogKeyCodePengding:Z

    if-eqz v4, :cond_71

    .line 2890
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTrackDumpLogKeyCodeStartTime:J

    sub-long/2addr v6, v8

    .line 2891
    .local v6, "timeDelta":J
    iget v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTrackDumpLogKeyCodeTimeOut:I

    int-to-long v8, v4

    cmp-long v4, v6, v8

    if-gez v4, :cond_60

    iget v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTrackDumpLogKeyCodeLastKeyCode:I

    if-ne v0, v4, :cond_3b

    goto :goto_60

    .line 2901
    :cond_3b
    iput v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTrackDumpLogKeyCodeLastKeyCode:I

    .line 2902
    if-ne v0, v1, :cond_44

    .line 2903
    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTrackDumpLogKeyCodeVolumeDownTimes:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTrackDumpLogKeyCodeVolumeDownTimes:I

    .line 2905
    :cond_44
    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTrackDumpLogKeyCodeVolumeDownTimes:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_71

    .line 2906
    iput-boolean v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTrackDumpLogKeyCodePengding:Z

    .line 2907
    const-string v1, "BaseMiuiPhoneWindowManager"

    const-string v2, "DumpLog triggered"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2908
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    const-string v2, "dump_log"

    invoke-virtual {v1, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2909
    .local v1, "message":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .end local v1    # "message":Landroid/os/Message;
    .end local v6    # "timeDelta":J
    goto :goto_71

    .line 2892
    .restart local v6    # "timeDelta":J
    :cond_60
    :goto_60
    iput-boolean v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTrackDumpLogKeyCodePengding:Z

    .line 2893
    if-ne v0, v3, :cond_70

    .line 2894
    iput-boolean v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTrackDumpLogKeyCodePengding:Z

    .line 2895
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTrackDumpLogKeyCodeStartTime:J

    .line 2896
    iput v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTrackDumpLogKeyCodeLastKeyCode:I

    .line 2897
    iput v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTrackDumpLogKeyCodeVolumeDownTimes:I

    .line 2899
    :cond_70
    return-void

    .line 2912
    .end local v6    # "timeDelta":J
    :cond_71
    :goto_71
    return-void
.end method


# virtual methods
.method protected abstract callSuperInterceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I
.end method

.method public canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .registers 4
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 2504
    if-eqz p1, :cond_10

    .line 2505
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2506
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v0, :cond_10

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_10

    .line 2508
    const/4 v1, 0x0

    return v1

    .line 2512
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_10
    invoke-super {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v0

    return v0
.end method

.method protected canHideNavigationBar()Z
    .registers 2

    .line 392
    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->forceShowNavigationBar()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method checkProcessRunning(Ljava/lang/String;)Z
    .registers 8
    .param p1, "processName"    # Ljava/lang/String;

    .line 2472
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2473
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 2474
    return v1

    .line 2477
    :cond_e
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 2479
    .local v2, "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v2, :cond_15

    .line 2480
    return v1

    .line 2483
    :cond_15
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2484
    .local v4, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 2485
    const/4 v1, 0x1

    return v1

    .line 2487
    .end local v4    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_2f
    goto :goto_19

    .line 2489
    :cond_30
    return v1
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 2961
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2962
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "BaseMiuiPhoneWindowManager"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2964
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mInputMethodWindowVisibleHeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mInputMethodWindowVisibleHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2965
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFrontFingerprintSensor="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mFrontFingerprintSensor:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2966
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSupportTapFingerprintSensorToHome="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSupportTapFingerprintSensorToHome:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2967
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mScreenOffReason="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenOffReason:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2968
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mStatusBarVisible="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBarVisible:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2969
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mIsStatusBarVisibleInFullscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mIsStatusBarVisibleInFullscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2970
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHasCameraFlash="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHasCameraFlash:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2971
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTorchEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTorchEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2972
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mScreenRecorderEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenRecorderEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2973
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mVoiceAssistEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVoiceAssistEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2974
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWifiOnly="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWifiOnly:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2975
    const-string v0, "    "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "KeyPress"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2976
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mKeyPressed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2977
    const-string v0, " mKeyPressing="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressing:I

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2978
    const-string v0, " mShortcutPressing="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShortcutPressing:I

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2979
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "KEYCODE_MENU KeyBitmask="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x52

    invoke-static {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2980
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "KEYCODE_APP_SWITCH KeyBitmask="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0xbb

    invoke-static {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2981
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "KEYCODE_HOME KeyBitmask="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2982
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "KEYCODE_BACK KeyBitmask="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2983
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "KEYCODE_POWER KeyBitmask="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x1a

    invoke-static {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2984
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "KEYCODE_VOLUME_DOWN KeyBitmask="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x19

    invoke-static {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2985
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "KEYCODE_VOLUME_UP KeyBitmask="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x18

    invoke-static {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2986
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "ElSE KEYCODE KeyBitmask="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2987
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "SHORTCUT_HOME_POWER="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_HOME_POWER:I

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2988
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "SHORTCUT_BACK_POWER="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_BACK_POWER:I

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2989
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "SHORTCUT_MENU_POWER="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_MENU_POWER:I

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2990
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "SHORTCUT_SCREENSHOT_ANDROID="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_SCREENSHOT_ANDROID:I

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2991
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "SHORTCUT_SCREENSHOT_MIUI="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_SCREENSHOT_MIUI:I

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2992
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "SHORTCUT_UNLOCK="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SHORTCUT_UNLOCK:I

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2993
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mShortcutTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShortcutTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2994
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDpadCenterDown="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDpadCenterDown:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2995
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHomeDownAfterDpCenter="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDownAfterDpCenter:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2996
    const-string v0, "    "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "KeyResponseSetting"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2997
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCurrentUserId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2998
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPressToAppSwitch="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPressToAppSwitch:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2999
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mMikeymodeEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMikeymodeEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3000
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCameraKeyWakeScreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraKeyWakeScreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3001
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTrackballWakeScreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTrackballWakeScreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3002
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mVolumeKeyLaunchCamera="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeKeyLaunchCamera:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3003
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTestModeEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTestModeEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3005
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDoubleClickPowerKey="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDoubleClickPowerKey:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3006
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mThreeGestureDown="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mThreeGestureDown:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3007
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLongPressHomeKey="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressHomeKey:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3008
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLongPressMenuKey="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressMenuKey:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3009
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLongPressMenuKeyWhenLock="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressMenuKeyWhenLock:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3010
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLongPressBackKey="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressBackKey:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3011
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLongPressPowerKey="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressPowerKey:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3012
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mKeyCombinationPowerHome="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyCombinationPowerHome:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3013
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mKeyCombinationPowerMenu="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyCombinationPowerMenu:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3014
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mKeyCombinationPowerBack="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyCombinationPowerBack:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3016
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mScreenButtonsDisabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mAutoDisableScreenButtonsManager:Lcom/miui/server/AutoDisableScreenButtonsManager;

    invoke-virtual {v0}, Lcom/miui/server/AutoDisableScreenButtonsManager;->isScreenButtonsDisabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3017
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mVolumeButtonPrePressedTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeButtonPrePressedTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 3018
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mVolumeButtonPressedCount="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeButtonPressedCount:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 3019
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHaveBankCard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHaveBankCard:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3020
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHaveTranksCard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHaveTranksCard:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3021
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLongPressVolumeDownBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressVolumeDownBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3022
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mIsVRMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mIsVRMode:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3023
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTalkBackIsOpened="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTalkBackIsOpened:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3024
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mShortcutServiceIsTalkBack="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShortcutServiceIsTalkBack:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3025
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSmartCoverManager:Lmiui/util/SmartCoverManager;

    invoke-virtual {v0, p1, p2}, Lmiui/util/SmartCoverManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 3026
    return-void
.end method

.method public enableScreenAfterBoot()V
    .registers 4

    .line 2551
    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->enableScreenAfterBoot()V

    .line 2552
    const-string/jumbo v0, "ro.radio.noril"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWifiOnly:Z

    .line 2554
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSmartCoverManager:Lmiui/util/SmartCoverManager;

    iget v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLidState:I

    invoke-virtual {v0, v2}, Lmiui/util/SmartCoverManager;->enableLidAfterBoot(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2555
    iput-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLidControlsSleep:Z

    .line 2557
    :cond_19
    return-void
.end method

.method protected abstract finishActivityInternal(Landroid/os/IBinder;ILandroid/content/Intent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public finishLayoutLw(Lcom/android/server/wm/DisplayFrames;)V
    .registers 6
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;

    .line 2561
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayFrames;->getInputMethodWindowVisibleHeight()I

    move-result v0

    .line 2562
    .local v0, "inputMethodHeight":I
    iget v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mInputMethodWindowVisibleHeight:I

    if-eq v1, v0, :cond_36

    .line 2563
    iput v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mInputMethodWindowVisibleHeight:I

    .line 2564
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "input method visible height changed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2565
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "miui.intent.action.INPUT_METHOD_VISIBLE_HEIGHT_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2566
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "miui.intent.extra.input_method_visible_height"

    iget v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mInputMethodWindowVisibleHeight:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2568
    const-string/jumbo v2, "miui.permission.USE_INTERNAL_GENERAL_API"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sendAsyncBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2570
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_36
    return-void
.end method

.method public finishPostLayoutPolicyLw()I
    .registers 6

    .line 1478
    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishPostLayoutPolicyLw()I

    move-result v0

    .line 1479
    .local v0, "changes":I
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_43

    iget-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBarVisible:Z

    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eq v1, v2, :cond_43

    .line 1480
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBarVisible:Z

    .line 1481
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mAutoDisableScreenButtonsManager:Lcom/miui/server/AutoDisableScreenButtonsManager;

    iget-boolean v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBarVisible:Z

    invoke-virtual {v1, v2}, Lcom/miui/server/AutoDisableScreenButtonsManager;->onStatusBarVisibilityChange(Z)V

    .line 1483
    :try_start_21
    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 1484
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_37

    .line 1485
    iget-boolean v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBarVisible:Z

    if-eqz v2, :cond_2d

    .line 1486
    const/4 v2, 0x0

    goto :goto_2f

    .line 1487
    :cond_2d
    const/16 v2, 0x100

    :goto_2f
    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBarDisableToken:Landroid/os/Binder;

    const-string/jumbo v4, "system"

    .line 1485
    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_37} :catch_38

    .line 1495
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_37
    goto :goto_43

    .line 1491
    :catch_38
    move-exception v1

    .line 1492
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "RemoteException when disable status bar visible"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1494
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 1497
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_43
    :goto_43
    return v0
.end method

.method protected finishPostLayoutPolicyLwInternalAfter()V
    .registers 2

    .line 1511
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/MiuiStatusBarManager;->isExpandableUnderFullscreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_23

    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mIsStatusBarVisibleInFullscreen:Z

    if-nez v0, :cond_23

    .line 1513
    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTopIsFullscreen:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-nez v0, :cond_20

    .line 1514
    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->registerStatusBarInputEventReceiver()V

    goto :goto_23

    .line 1517
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->unregisterStatusBarInputEventReceiver()V

    .line 1520
    :cond_23
    :goto_23
    return-void
.end method

.method protected finishPostLayoutPolicyLwInternalBefore()V
    .registers 3

    .line 1501
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 1502
    .local v0, "statusBar":Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    iget-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mIsStatusBarVisibleInFullscreen:Z

    if-eqz v1, :cond_15

    .line 1503
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 1504
    if-eqz v0, :cond_15

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v1

    if-nez v1, :cond_15

    .line 1505
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->showLw(Z)Z

    .line 1508
    :cond_15
    return-void
.end method

.method public finishedGoingToSleep(I)V
    .registers 2
    .param p1, "why"    # I

    .line 566
    invoke-virtual {p0, p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->screenTurnedOffInternal(I)V

    .line 567
    invoke-super {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->finishedGoingToSleep(I)V

    .line 568
    return-void
.end method

.method protected forceShowNavigationBar()Z
    .registers 2

    .line 2577
    invoke-static {}, Lmiui/util/CustomizeUtil;->needChangeSize()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->forceLayoutHideNavigation()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method protected abstract forceStopPackage(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method getExtraSystemUiVisibility(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I
    .registers 3
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 1407
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getExtraSystemUiVisibility(Lcom/android/server/policy/WindowManagerPolicy$WindowState;F)I

    move-result v0

    return v0
.end method

.method getExtraSystemUiVisibility(Lcom/android/server/policy/WindowManagerPolicy$WindowState;F)I
    .registers 11
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "maxAspect"    # F

    .line 1411
    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyguardWindowState()Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    move-result-object v0

    .line 1412
    .local v0, "keyguard":Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    if-eqz v0, :cond_e

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1413
    move-object v1, v0

    goto :goto_10

    :cond_e
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 1414
    .local v1, "transWin":Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    :goto_10
    const/4 v2, 0x0

    .line 1415
    .local v2, "flags":I
    if-eqz v1, :cond_25

    .line 1416
    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    or-int/2addr v2, v3

    .line 1417
    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_25

    .line 1418
    or-int/lit8 v2, v2, 0x1

    .line 1422
    :cond_25
    invoke-static {v2}, Landroid/app/MiuiStatusBarManager;->getDisabledFlags(I)I

    move-result v3

    .line 1423
    .local v3, "flag":I
    iget-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 1425
    invoke-interface {v6}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getInputMethodWindowLw()Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    move-result-object v6

    iget v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNavigationBarPosition:I

    .line 1423
    invoke-static {v4, v5, v6, v7}, Lcom/android/server/policy/PhoneWindowManager;->chooseNavigationColorWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;I)Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    move-result-object v4

    .line 1426
    .local v4, "winState":Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    iget-boolean v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHasNavigationBar:Z

    const/16 v6, 0x40

    if-eqz v5, :cond_74

    if-eqz v4, :cond_74

    .line 1427
    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v5}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getInputMethodWindowLw()Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    move-result-object v5

    if-eq v4, v5, :cond_5b

    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-ne v4, v5, :cond_4e

    goto :goto_5b

    .line 1435
    :cond_4e
    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-ne v4, v5, :cond_74

    invoke-interface {v4}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isDimming()Z

    move-result v5

    if-eqz v5, :cond_74

    .line 1436
    and-int/lit16 v3, v3, -0x201

    goto :goto_74

    .line 1428
    :cond_5b
    :goto_5b
    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v5

    const/16 v7, 0x10

    and-int/2addr v5, v7

    if-eq v5, v7, :cond_72

    .line 1429
    invoke-interface {v4}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_6f

    goto :goto_72

    .line 1433
    :cond_6f
    and-int/lit16 v3, v3, -0x201

    goto :goto_74

    .line 1431
    :cond_72
    :goto_72
    or-int/lit16 v3, v3, 0x200

    .line 1439
    :cond_74
    :goto_74
    iget-boolean v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v5, :cond_8d

    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-nez v5, :cond_8d

    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_8d

    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 1440
    invoke-interface {v5}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    or-int/2addr v5, v6

    if-eqz v5, :cond_8d

    .line 1442
    or-int/lit16 v3, v3, 0x200

    .line 1444
    :cond_8d
    iget-boolean v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v5, :cond_9f

    if-eqz v1, :cond_9f

    iget-object v5, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-ne v5, v1, :cond_9f

    .line 1445
    invoke-static {p2}, Lmiui/util/CustomizeUtil;->isRestrict(F)Z

    move-result v5

    if-eqz v5, :cond_9f

    .line 1446
    and-int/lit16 v3, v3, -0x241

    .line 1448
    :cond_9f
    if-eqz p1, :cond_af

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    const v6, 0x8000

    and-int/2addr v5, v6

    if-eqz v5, :cond_af

    .line 1449
    or-int/lit16 v3, v3, 0x800

    .line 1455
    :cond_af
    move v5, v3

    .line 1456
    .local v5, "disabledFlag":I
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$12;

    invoke-direct {v7, p0, v5}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$12;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;I)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1472
    invoke-static {v2}, Landroid/app/MiuiStatusBarManager;->getSystemUIVisibilityFlags(I)I

    move-result v6

    return v6
.end method

.method protected getForbidFullScreenFlag()Z
    .registers 2

    .line 2573
    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mForbidFullScreen:Z

    return v0
.end method

.method protected abstract getKeyguardWindowState()Lcom/android/server/policy/WindowManagerPolicy$WindowState;
.end method

.method protected getPowerLongPressTimeOut()J
    .registers 3

    .line 1861
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressPowerKey:Ljava/lang/String;

    if-eqz v0, :cond_19

    const-string/jumbo v0, "none"

    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressPowerKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_19

    .line 1863
    :cond_16
    const-wide/16 v0, 0xbb8

    goto :goto_23

    .line 1862
    :cond_19
    :goto_19
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v0

    .line 1861
    :goto_23
    return-wide v0
.end method

.method protected abstract getWakePolicyFlag()I
.end method

.method public hideBootMessages()V
    .registers 3

    .line 2449
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$16;

    invoke-direct {v1, p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$16;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2460
    return-void
.end method

.method protected initInternal(Landroid/content/Context;Landroid/view/IWindowManager;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/IWindowManager;
    .param p3, "windowManagerFuncs"    # Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 262
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 263
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x105012f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNavBarWidth:I

    .line 264
    const v1, 0x105012a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNavBarHeight:I

    .line 265
    const v1, 0x105012c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNavBarHeightLand:I

    .line 267
    new-instance v1, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Lcom/android/server/policy/BaseMiuiPhoneWindowManager$1;)V

    iput-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 268
    new-instance v1, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;

    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;

    .line 269
    new-instance v1, Lcom/miui/server/MiuiPointerEventListener;

    invoke-direct {v1, p1}, Lcom/miui/server/MiuiPointerEventListener;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiPointerEventListener:Lcom/miui/server/MiuiPointerEventListener;

    .line 270
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;

    invoke-virtual {v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->observe()V

    .line 272
    new-instance v1, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$1;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    invoke-virtual {p0, v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->setPowerLongPress(Ljava/lang/Runnable;)V

    .line 278
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v2, "PhoneWindowManager.mVolumeKeyWakeLock"

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 280
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v2, "PhoneWindowManager.mAiKeyWakeLock"

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mAiKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 283
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 284
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.CAPTURE_SCREENSHOT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 285
    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenshotReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v6, "miui.permission.USE_INTERNAL_GENERAL_API"

    const/4 v7, 0x0

    move-object v2, p1

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 288
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    move-object v1, v2

    .line 289
    const-string v2, "com.miui.app.ExtraStatusBarManager.EXIT_FULLSCREEN"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 290
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBarExitFullscreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 292
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    move-object v1, v2

    .line 293
    const-string/jumbo v2, "miui.intent.SCREEN_RECORDER_ENABLE_KEYEVENT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 294
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenRecordeEnablekKeyEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 296
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    move-object v1, v2

    .line 297
    const-string v2, "com.miui.app.ExtraStatusBarManager.action_enter_drive_mode"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 298
    const-string v2, "com.miui.app.ExtraStatusBarManager.action_leave_drive_mode"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 299
    iget-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mInternalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v7, "miui.permission.USE_INTERNAL_GENERAL_API"

    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object v3, p1

    move-object v6, v1

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 305
    invoke-static {p1}, Lmiui/os/Build;->hasCameraFlash(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHasCameraFlash:Z

    .line 306
    new-instance v2, Lmiui/util/HapticFeedbackUtil;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lmiui/util/HapticFeedbackUtil;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    .line 307
    new-instance v2, Lcom/miui/server/AutoDisableScreenButtonsManager;

    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p1, v3}, Lcom/miui/server/AutoDisableScreenButtonsManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mAutoDisableScreenButtonsManager:Lcom/miui/server/AutoDisableScreenButtonsManager;

    .line 308
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSmartCoverManager:Lmiui/util/SmartCoverManager;

    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2, p1, v3}, Lmiui/util/SmartCoverManager;->init(Landroid/content/Context;Landroid/os/PowerManager;)V

    .line 310
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "force_fsg_nav_bar"

    invoke-static {v2, v3}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSupportFsg:Z

    .line 313
    invoke-direct {p0, p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->saveWindowTypeLayer(Landroid/content/Context;)V

    .line 314
    return-void
.end method

.method protected intercept(Landroid/view/KeyEvent;IZI)I
    .registers 9
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z
    .param p4, "expectedResult"    # I

    .line 945
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 946
    .local v0, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    .line 949
    .local v1, "down":Z
    :goto_d
    if-nez v1, :cond_35

    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSuperWaitingKey:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 950
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSuperWaitingKey:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 951
    const/16 v2, 0x1a

    if-ne v2, v0, :cond_32

    .line 952
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    or-int/lit8 v2, v2, 0x20

    invoke-static {p1, v2}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object p1

    .line 954
    :cond_32
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->callSuperInterceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I

    .line 956
    :cond_35
    return p4
.end method

.method protected interceptHomeKeyStartNfc(Landroid/view/KeyEvent;IZ)Z
    .registers 13
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z

    .line 2632
    const/4 v0, 0x0

    .line 2633
    .local v0, "intercept":Z
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isNfcEnable(Z)Z

    move-result v2

    if-nez v2, :cond_9

    .line 2634
    return v0

    .line 2636
    :cond_9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_12

    move v2, v1

    goto :goto_13

    :cond_12
    move v2, v3

    .line 2637
    .local v2, "down":Z
    :goto_13
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 2641
    .local v4, "keyCode":I
    const/high16 v5, 0x1000000

    and-int/2addr v5, p2

    if-eqz v5, :cond_1e

    move v5, v1

    goto :goto_1f

    :cond_1e
    move v5, v3

    .line 2642
    .local v5, "isInjected":Z
    :goto_1f
    iget-boolean v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDoubleClickPending:Z

    if-nez v6, :cond_31

    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    if-eqz v6, :cond_31

    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    .line 2643
    invoke-virtual {v6}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v6

    if-nez v6, :cond_31

    move v6, v1

    goto :goto_32

    :cond_31
    move v6, v3

    .line 2644
    .local v6, "KeyguardNotActive":Z
    :goto_32
    if-nez v5, :cond_7f

    if-eqz p3, :cond_39

    if-eqz v6, :cond_39

    goto :goto_7f

    .line 2648
    :cond_39
    const/4 v7, 0x3

    if-ne v4, v7, :cond_7e

    if-eqz v2, :cond_7e

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-nez v7, :cond_7e

    .line 2649
    iget-boolean v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDoubleClickPending:Z

    if-eqz v7, :cond_73

    .line 2650
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getNfcIntent()Landroid/content/Intent;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNfcIntent:Landroid/content/Intent;

    .line 2652
    :try_start_4e
    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDoubleClickTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2653
    const/4 v0, 0x1

    .line 2654
    iput-boolean v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDoubleClickPending:Z

    .line 2655
    iput-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeConsumed:Z

    .line 2656
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->OnDoubleClickHome()V

    .line 2657
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNfcIntent:Landroid/content/Intent;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v3, v7}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_68
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4e .. :try_end_68} :catch_69

    goto :goto_72

    .line 2658
    :catch_69
    move-exception v1

    .line 2659
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "WindowManager"

    const-string/jumbo v7, "mNfcIntent problem"

    invoke-static {v3, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2660
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :goto_72
    goto :goto_7e

    .line 2662
    :cond_73
    iput-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDoubleClickPending:Z

    .line 2663
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDoubleClickTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v7, 0x12c

    invoke-virtual {v1, v3, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2666
    :cond_7e
    :goto_7e
    return v0

    .line 2645
    :cond_7f
    :goto_7f
    return v0
.end method

.method public interceptKeyBeforeDispatching(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .registers 20
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 618
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    .line 619
    .local v2, "repeatCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_12

    move v3, v4

    goto :goto_13

    :cond_12
    move v3, v5

    .line 620
    .local v3, "down":Z
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v6

    .line 621
    .local v6, "canceled":Z
    iget-object v7, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    if-eqz v7, :cond_25

    iget-object v7, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    invoke-virtual {v7}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v7

    if-eqz v7, :cond_25

    move v7, v4

    goto :goto_26

    :cond_25
    move v7, v5

    .line 623
    .local v7, "keyguardActive":Z
    :goto_26
    if-eqz v3, :cond_2c

    if-nez v2, :cond_2c

    .line 624
    iput-object v1, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 626
    :cond_2c
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    .line 628
    .local v8, "keyCode":I
    const/4 v9, 0x4

    const/4 v10, 0x3

    const/16 v11, 0x52

    if-ne v8, v9, :cond_3f

    if-eqz v1, :cond_3f

    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getWindowingMode()I

    move-result v9

    const/4 v12, 0x5

    if-ne v9, v12, :cond_43

    :cond_3f
    if-eq v8, v11, :cond_43

    if-ne v8, v10, :cond_46

    .line 631
    :cond_43
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->exitFreeFormWindowIfNeeded(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 634
    :cond_46
    const-wide/16 v12, -0x1

    const-wide/16 v14, 0x0

    if-ne v8, v11, :cond_98

    .line 635
    iget-boolean v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTestModeEnabled:Z

    if-eqz v4, :cond_69

    .line 636
    const-string v4, "BaseMiuiPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignoring MENU because mTestModeEnabled = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTestModeEnabled:Z

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    return-wide v14

    .line 640
    :cond_69
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isLockDeviceWindow(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v4

    if-eqz v4, :cond_77

    .line 641
    const-string v4, "BaseMiuiPhoneWindowManager"

    const-string v5, "device locked, pass MENU to lock window"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    return-wide v14

    .line 645
    :cond_77
    iget-boolean v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPressToAppSwitch:Z

    if-nez v4, :cond_7c

    .line 646
    return-wide v14

    .line 650
    :cond_7c
    iget-boolean v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mRequestShowMenu:Z

    if-nez v4, :cond_90

    .line 651
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->keyguardOn()Z

    move-result v4

    if-nez v4, :cond_8f

    .line 652
    if-eqz v3, :cond_8c

    .line 653
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->preloadRecentApps()V

    goto :goto_8f

    .line 655
    :cond_8c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->launchRecentPanel()Z

    .line 658
    :cond_8f
    :goto_8f
    return-wide v12

    .line 660
    :cond_90
    if-nez v2, :cond_97

    .line 661
    if-nez v3, :cond_96

    .line 662
    iput-boolean v5, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mRequestShowMenu:Z

    .line 664
    :cond_96
    return-wide v14

    .line 666
    :cond_97
    return-wide v12

    .line 671
    :cond_98
    if-ne v8, v10, :cond_176

    .line 672
    iget-boolean v9, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTestModeEnabled:Z

    if-eqz v9, :cond_b7

    .line 673
    const-string v4, "BaseMiuiPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignoring HOME because mTestModeEnabled = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTestModeEnabled:Z

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    return-wide v14

    .line 677
    :cond_b7
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isLockDeviceWindow(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v9

    if-eqz v9, :cond_c5

    .line 678
    const-string v4, "BaseMiuiPhoneWindowManager"

    const-string v5, "device locked, pass HOME to lock window"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    return-wide v14

    .line 682
    :cond_c5
    if-nez v3, :cond_133

    .line 683
    iget-boolean v9, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeConsumed:Z

    if-eqz v9, :cond_ce

    .line 684
    iput-boolean v5, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeConsumed:Z

    .line 685
    return-wide v12

    .line 687
    :cond_ce
    if-nez v6, :cond_12b

    iget-boolean v9, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenOnFully:Z

    if-eqz v9, :cond_12b

    .line 688
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v9

    .line 689
    .local v9, "telecomManager":Landroid/telecom/TelecomManager;
    iget-boolean v10, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWifiOnly:Z

    if-nez v10, :cond_f2

    if-eqz v9, :cond_f2

    .line 690
    invoke-virtual {v9}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v10

    if-eqz v10, :cond_f2

    .line 691
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isInCallScreenShowing()Z

    move-result v10

    if-eqz v10, :cond_f2

    .line 692
    const-string v10, "WindowManager"

    const-string v11, "Ignoring HOME; there\'s a ringing incoming call."

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12a

    .line 694
    :cond_f2
    if-eqz v7, :cond_102

    .line 696
    iget-object v10, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "statusbar"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/StatusBarManager;

    .line 697
    .local v10, "sbm":Landroid/app/StatusBarManager;
    invoke-virtual {v10}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 699
    .end local v10    # "sbm":Landroid/app/StatusBarManager;
    :cond_102
    iget-boolean v10, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyguardOnWhenHomeDown:Z

    if-nez v10, :cond_123

    .line 700
    iget v10, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-eqz v10, :cond_11f

    if-nez v7, :cond_11f

    .line 701
    iget-object v5, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v10, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 702
    iput-boolean v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDoubleTapPending:Z

    .line 703
    iget-object v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v10, 0x12c

    invoke-virtual {v4, v5, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 704
    return-wide v12

    .line 706
    :cond_11f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->launchHomeFromHotKey()V

    goto :goto_12a

    .line 708
    :cond_123
    const-string v10, "WindowManager"

    const-string v11, "Ignoring HOME; keyguard is on when first Home down"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    .end local v9    # "telecomManager":Landroid/telecom/TelecomManager;
    :goto_12a
    goto :goto_15b

    .line 712
    :cond_12b
    const-string v9, "WindowManager"

    const-string v10, "Ignoring HOME; event canceled."

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15b

    .line 718
    :cond_133
    if-eqz v1, :cond_13a

    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    goto :goto_13b

    :cond_13a
    const/4 v9, 0x0

    .line 719
    .local v9, "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_13b
    if-eqz v9, :cond_15b

    .line 720
    iget v10, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 721
    .local v10, "type":I
    const/16 v11, 0x7d4

    if-eq v10, v11, :cond_15a

    const/16 v11, 0x7d9

    if-ne v10, v11, :cond_148

    goto :goto_15a

    .line 726
    :cond_148
    sget-object v11, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    array-length v11, v11

    .line 727
    .local v11, "typeCount":I
    move v14, v5

    .line 727
    .local v14, "i":I
    :goto_14c
    if-ge v14, v11, :cond_15b

    .line 728
    sget-object v15, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    aget v15, v15, v14

    if-ne v10, v15, :cond_157

    .line 730
    invoke-direct {v0, v8}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->removeKeyLongPress(I)V

    .line 727
    :cond_157
    add-int/lit8 v14, v14, 0x1

    goto :goto_14c

    .line 724
    .end local v11    # "typeCount":I
    .end local v14    # "i":I
    :cond_15a
    :goto_15a
    return-wide v14

    .line 736
    .end local v9    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v10    # "type":I
    :cond_15b
    :goto_15b
    if-nez v2, :cond_175

    .line 737
    iget-boolean v9, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDoubleTapPending:Z

    if-eqz v9, :cond_16e

    .line 738
    iput-boolean v5, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDoubleTapPending:Z

    .line 739
    iget-object v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 740
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->handleDoubleTapOnHome()V

    goto :goto_175

    .line 741
    :cond_16e
    iget v5, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-ne v5, v4, :cond_175

    .line 742
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->preloadRecentApps()V

    .line 745
    :cond_175
    :goto_175
    return-wide v12

    .line 748
    :cond_176
    const/16 v4, 0x19

    if-ne v8, v4, :cond_183

    iget-boolean v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeDownKeyConsumed:Z

    if-eqz v4, :cond_183

    .line 749
    if-nez v3, :cond_182

    .line 750
    iput-boolean v5, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeDownKeyConsumed:Z

    .line 752
    :cond_182
    return-wide v12

    .line 755
    :cond_183
    const/16 v4, 0x18

    if-ne v8, v4, :cond_190

    iget-boolean v4, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeUpKeyConsumed:Z

    if-eqz v4, :cond_190

    .line 756
    if-nez v3, :cond_18f

    .line 757
    iput-boolean v5, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeUpKeyConsumed:Z

    .line 759
    :cond_18f
    return-wide v12

    .line 762
    :cond_190
    invoke-super/range {p0 .. p3}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeDispatching(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v4

    return-wide v4
.end method

.method protected interceptKeyBeforeQueueingInternal(Landroid/view/KeyEvent;IZ)I
    .registers 23
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    .line 1043
    move/from16 v9, p3

    iget-boolean v0, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSystemBooted:Z

    const/4 v10, 0x0

    if-nez v0, :cond_e

    .line 1045
    return v10

    .line 1048
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1049
    .local v0, "keyCode":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v11, 0x1

    if-nez v1, :cond_1b

    move v1, v11

    goto :goto_1c

    :cond_1b
    move v1, v10

    :goto_1c
    move v12, v1

    .line 1050
    .local v12, "down":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v13

    .line 1051
    .local v13, "repeatCount":I
    const/high16 v1, 0x1000000

    and-int/2addr v1, v8

    if-eqz v1, :cond_28

    move v1, v11

    goto :goto_29

    :cond_28
    move v1, v10

    :goto_29
    move v14, v1

    .line 1052
    .local v14, "isInjected":Z
    iget-object v1, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    if-eqz v1, :cond_43

    if-eqz v9, :cond_39

    iget-object v1, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    .line 1053
    invoke-virtual {v1}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v1

    if-eqz v1, :cond_43

    goto :goto_41

    :cond_39
    iget-object v1, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    .line 1054
    invoke-virtual {v1}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_43

    :goto_41
    move v1, v11

    goto :goto_44

    :cond_43
    move v1, v10

    :goto_44
    move v15, v1

    .line 1056
    .local v15, "keyguardActive":Z
    const-string v1, "BaseMiuiPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "keyCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " down:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " eventTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1057
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " downTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " policyFlags:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1058
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " flags:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1059
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " deviceId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1060
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isScreenOn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " keyguardActive:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " repeatCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1056
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getPowerLongPressTimeOut()J

    move-result-wide v1

    invoke-static {v0, v12, v1, v2}, Landroid/os/AnrMonitor;->screenHangMonitor(IZJ)V

    .line 1064
    if-eqz v12, :cond_c8

    .line 1065
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->trackDumpLogKeyCode(Landroid/view/KeyEvent;)V

    .line 1068
    :cond_c8
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isTrackInputEvenForScreenRecorder(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_d1

    .line 1069
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sendKeyEventBroadcast(Landroid/view/KeyEvent;)V

    .line 1072
    :cond_d1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isTrackInputEventForVoiceAssist(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_da

    .line 1073
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sendVoiceAssistKeyEventBroadcast(Landroid/view/KeyEvent;)V

    .line 1076
    :cond_da
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v1

    invoke-direct {v6, v0, v1, v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->shouldInterceptKey(IZZ)Z

    move-result v1

    if-eqz v1, :cond_e9

    .line 1077
    return v10

    .line 1080
    :cond_e9
    const/16 v1, 0x52

    if-ne v0, v1, :cond_f3

    iget-boolean v1, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mRequestShowMenu:Z

    if-nez v1, :cond_f3

    const/16 v0, 0xbb

    .line 1082
    .end local v0    # "keyCode":I
    .local v5, "keyCode":I
    :cond_f3
    move v5, v0

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isFingerPrintKey(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_ff

    .line 1083
    invoke-virtual {v6, v7, v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->processFingerprintNavigationEvent(Landroid/view/KeyEvent;Z)I

    move-result v0

    return v0

    .line 1086
    :cond_ff
    invoke-direct {v6, v5, v12}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->markKeyPressAndHandleKeyCombin(IZ)Z

    move-result v0

    if-eqz v0, :cond_10a

    .line 1087
    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v0

    return v0

    .line 1090
    :cond_10a
    const/16 v4, 0x1a

    if-ne v5, v4, :cond_12b

    .line 1091
    iget-boolean v0, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTestModeEnabled:Z

    if-eqz v0, :cond_12b

    .line 1092
    const-string v0, "BaseMiuiPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring POWER because mTestModeEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTestModeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    return v11

    .line 1097
    :cond_12b
    const/16 v3, 0x19

    if-ne v5, v3, :cond_146

    if-eqz v12, :cond_146

    .line 1098
    iget-object v0, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressPowerKey:Ljava/lang/String;

    if-eqz v0, :cond_146

    iget-object v0, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressPowerKey:Ljava/lang/String;

    invoke-virtual {v0, v11, v1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_146

    .line 1099
    iget-object v0, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressPowerKey:Ljava/lang/String;

    invoke-virtual {v0, v11, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1103
    :cond_146
    const/16 v0, 0x2b1

    if-ne v5, v0, :cond_186

    iget-boolean v0, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTestModeEnabled:Z

    if-nez v0, :cond_186

    .line 1104
    sget-boolean v0, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz v0, :cond_159

    .line 1105
    invoke-direct {v6, v7, v12}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->handleAiKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 1106
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->callSuperInterceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I

    goto :goto_185

    .line 1108
    :cond_159
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ASSIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1109
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.miui.voiceassist"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1110
    const-string/jumbo v1, "key_action"

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1111
    const-string/jumbo v1, "key_event_time"

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1112
    const-string v1, "ai_key"

    invoke-direct {v6, v0, v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->launchVoiceAssistant(Landroid/content/Intent;Ljava/lang/String;)Z

    .line 1113
    iget-object v1, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mAiKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1115
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_185
    return v10

    .line 1118
    :cond_186
    const/4 v0, 0x3

    if-ne v5, v0, :cond_1a6

    .line 1119
    if-eqz v12, :cond_19b

    if-nez v13, :cond_19b

    .line 1120
    iget-object v0, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v0

    iput-boolean v0, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyguardOnWhenHomeDown:Z

    .line 1121
    iget-boolean v0, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDpadCenterDown:Z

    if-eqz v0, :cond_19b

    .line 1122
    iput-boolean v11, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHomeDownAfterDpCenter:Z

    .line 1125
    :cond_19b
    iget-boolean v0, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mFrontFingerprintSensor:Z

    if-eqz v0, :cond_1a6

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->inFingerprintEnrolling()Z

    move-result v0

    if-eqz v0, :cond_1a6

    .line 1126
    return v10

    .line 1130
    :cond_1a6
    const/16 v2, 0x18

    if-ne v5, v3, :cond_1ce

    .line 1131
    if-eqz v12, :cond_1c8

    .line 1132
    if-eqz v9, :cond_1f3

    iget-boolean v0, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeDownKeyPressed:Z

    if-nez v0, :cond_1f3

    .line 1133
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_1f3

    .line 1134
    iput-boolean v11, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeDownKeyPressed:Z

    .line 1135
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    iput-wide v0, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeDownKeyTime:J

    .line 1136
    iput-boolean v10, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeDownKeyConsumed:Z

    .line 1137
    invoke-direct {v6, v15}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->interceptAccessibilityShortcutChord(Z)V

    goto :goto_1f3

    .line 1140
    :cond_1c8
    iput-boolean v10, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeDownKeyPressed:Z

    .line 1141
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->cancelPendingAccessibilityShortcutAction()V

    goto :goto_1f3

    .line 1143
    :cond_1ce
    if-ne v5, v2, :cond_1f3

    .line 1144
    if-eqz v12, :cond_1ee

    .line 1145
    if-eqz v9, :cond_1f3

    iget-boolean v0, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeUpKeyPressed:Z

    if-nez v0, :cond_1f3

    .line 1146
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_1f3

    .line 1147
    iput-boolean v11, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeUpKeyPressed:Z

    .line 1148
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    iput-wide v0, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeUpKeyTime:J

    .line 1149
    iput-boolean v10, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeUpKeyConsumed:Z

    .line 1150
    invoke-direct {v6, v15}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->interceptAccessibilityShortcutChord(Z)V

    goto :goto_1f3

    .line 1153
    :cond_1ee
    iput-boolean v10, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeUpKeyPressed:Z

    .line 1154
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->cancelPendingAccessibilityShortcutAction()V

    .line 1158
    :cond_1f3
    :goto_1f3
    iget-object v0, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    if-eqz v0, :cond_206

    iget-object v0, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    iget-boolean v1, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenOnFully:Z

    invoke-virtual {v0, v1, v7}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->shouldBeBlocked(ZLandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_206

    .line 1159
    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v0

    return v0

    .line 1162
    :cond_206
    if-eqz v9, :cond_230

    iget-object v0, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mAutoDisableScreenButtonsManager:Lcom/miui/server/AutoDisableScreenButtonsManager;

    iget-boolean v1, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSingleKeyUse:Z

    iget-object v2, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSmartCoverManager:Lmiui/util/SmartCoverManager;

    .line 1163
    invoke-virtual {v2}, Lmiui/util/SmartCoverManager;->getSmartCoverLidOpen()Z

    move-result v2

    if-nez v2, :cond_21b

    iget v2, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLidState:I

    if-nez v2, :cond_21b

    .line 1162
    move/from16 v16, v11

    goto :goto_21e

    .line 1163
    :cond_21b
    nop

    .line 1162
    move/from16 v16, v10

    :goto_21e
    move/from16 v17, v1

    move v1, v5

    move v2, v12

    move/from16 v3, v17

    move v11, v4

    move/from16 v4, v16

    move v11, v5

    move-object v5, v7

    .line 1162
    .end local v5    # "keyCode":I
    .local v11, "keyCode":I
    invoke-virtual/range {v0 .. v5}, Lcom/miui/server/AutoDisableScreenButtonsManager;->handleDisableButtons(IZZZLandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_231

    .line 1165
    return v10

    .line 1168
    .end local v11    # "keyCode":I
    .restart local v5    # "keyCode":I
    :cond_230
    move v11, v5

    .line 1168
    .end local v5    # "keyCode":I
    .restart local v11    # "keyCode":I
    :cond_231
    if-nez v12, :cond_237

    .line 1169
    invoke-direct {v6, v11}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->removeKeyLongPress(I)V

    goto :goto_24c

    .line 1170
    :cond_237
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_24c

    .line 1171
    iget v0, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyPressed:I

    invoke-static {v11}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getKeyBitmask(I)I

    move-result v1

    if-ne v0, v1, :cond_249

    .line 1172
    invoke-direct {v6, v11, v15}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->postKeyLongPress(IZ)V

    goto :goto_24c

    .line 1175
    :cond_249
    invoke-direct {v6, v11}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->removeKeyLongPress(I)V

    .line 1179
    :cond_24c
    :goto_24c
    const/16 v0, 0xe0

    if-ne v11, v0, :cond_257

    if-nez v9, :cond_257

    if-eqz v15, :cond_257

    .line 1181
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->registerProximitySensor()V

    .line 1184
    :cond_257
    invoke-direct {v6, v9, v11, v12, v7}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->streetSnap(ZIZLandroid/view/KeyEvent;)V

    .line 1187
    iget-boolean v0, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeKeyLaunchCamera:Z

    if-eqz v0, :cond_269

    invoke-virtual/range {p0 .. p3}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->interceptVoluemeKeyStartCamera(Landroid/view/KeyEvent;IZ)Z

    move-result v0

    if-eqz v0, :cond_269

    .line 1188
    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v0

    return v0

    .line 1190
    :cond_269
    invoke-direct {v6, v7, v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->interceptPowerKey(Landroid/view/KeyEvent;Z)Z

    move-result v0

    if-eqz v0, :cond_274

    .line 1191
    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v0

    return v0

    .line 1194
    :cond_274
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->interceptHomeKeyStartNfc(Landroid/view/KeyEvent;IZ)Z

    move-result v0

    if-eqz v0, :cond_27f

    .line 1195
    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v0

    return v0

    .line 1198
    :cond_27f
    const/16 v0, 0x1b

    if-nez v9, :cond_2b8

    if-eqz v14, :cond_286

    goto :goto_2b8

    .line 1204
    :cond_286
    const/4 v1, 0x1

    .line 1205
    .local v1, "isWakeKey":Z
    const/4 v2, 0x0

    .line 1208
    .local v2, "allowToWake":Z
    if-eq v11, v0, :cond_293

    const/16 v0, 0x110

    if-eq v11, v0, :cond_290

    .line 1218
    const/4 v1, 0x0

    goto :goto_296

    .line 1210
    :cond_290
    iget-boolean v2, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTrackballWakeScreen:Z

    .line 1211
    goto :goto_296

    .line 1214
    :cond_293
    iget-boolean v2, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraKeyWakeScreen:Z

    .line 1215
    nop

    .line 1221
    :goto_296
    if-eqz v1, :cond_2c8

    .line 1222
    if-eqz v2, :cond_2b0

    .line 1223
    if-eqz v12, :cond_2a1

    .line 1225
    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v0

    return v0

    .line 1228
    :cond_2a1
    if-eqz v15, :cond_2aa

    .line 1229
    iget-object v0, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    const/16 v3, 0x1a

    invoke-virtual {v0, v3, v10}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->onWakeKeyWhenKeyguardShowingTq(IZ)Z

    .line 1231
    :cond_2aa
    const/4 v0, 0x1

    invoke-virtual {v6, v7, v8, v9, v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v0

    return v0

    .line 1234
    :cond_2b0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getWakePolicyFlag()I

    move-result v0

    not-int v0, v0

    and-int/2addr v0, v8

    .line 1238
    .end local v1    # "isWakeKey":Z
    .end local v2    # "allowToWake":Z
    .end local p2    # "policyFlags":I
    .local v0, "policyFlags":I
    move v8, v0

    goto :goto_2c8

    .line 1200
    .end local v0    # "policyFlags":I
    .restart local p2    # "policyFlags":I
    :cond_2b8
    :goto_2b8
    iget-boolean v1, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraKeyWakeScreen:Z

    if-eqz v1, :cond_2c8

    if-eqz v15, :cond_2c8

    if-ne v11, v0, :cond_2c8

    if-nez v12, :cond_2c8

    .line 1201
    const/4 v0, -0x1

    invoke-virtual {v6, v7, v8, v9, v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v0

    return v0

    .line 1238
    .end local p2    # "policyFlags":I
    .local v8, "policyFlags":I
    :cond_2c8
    :goto_2c8
    invoke-direct {v6, v11, v7}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->shouldInterceptHeadSetHookKey(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2cf

    .line 1239
    return v10

    .line 1242
    :cond_2cf
    move-object v0, v6

    move v1, v12

    move v2, v9

    move v3, v15

    move v4, v11

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sendOthersBroadcast(ZZZILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2e0

    .line 1243
    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    move-result v0

    return v0

    .line 1246
    :cond_2e0
    if-eqz v12, :cond_2f7

    const/16 v0, 0x18

    if-eq v0, v11, :cond_2ee

    const/16 v0, 0x19

    if-eq v0, v11, :cond_2ee

    const/16 v0, 0x1a

    if-ne v0, v11, :cond_2f7

    .line 1249
    :cond_2ee
    iget-object v0, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSuperWaitingKey:Ljava/util/HashSet;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1252
    :cond_2f7
    invoke-direct {v6, v8, v11, v12, v13}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->playSoundEffect(IIZI)V

    .line 1253
    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->callSuperInterceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I

    move-result v0

    return v0
.end method

.method protected interceptVoluemeKeyStartCamera(Landroid/view/KeyEvent;IZ)Z
    .registers 16
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z

    .line 2736
    const/4 v0, 0x0

    .line 2737
    .local v0, "intercept":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_b

    move v1, v3

    goto :goto_c

    :cond_b
    move v1, v2

    .line 2738
    .local v1, "down":Z
    :goto_c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 2743
    .local v4, "keyCode":I
    const/high16 v5, 0x1000000

    and-int/2addr v5, p2

    if-eqz v5, :cond_17

    move v5, v3

    goto :goto_18

    :cond_17
    move v5, v2

    .line 2744
    .local v5, "isInjected":Z
    :goto_18
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    if-eqz v6, :cond_26

    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    invoke-virtual {v6}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v6

    if-nez v6, :cond_26

    move v2, v3

    nop

    .line 2745
    .local v2, "KeyguardNotActive":Z
    :cond_26
    if-nez v5, :cond_83

    if-eqz p3, :cond_2c

    if-nez v2, :cond_83

    :cond_2c
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isAudioActive()Z

    move-result v3

    if-eqz v3, :cond_33

    goto :goto_83

    .line 2749
    :cond_33
    const/16 v3, 0x19

    if-ne v4, v3, :cond_82

    if-eqz v1, :cond_82

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_82

    .line 2751
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 2752
    .local v6, "now":J
    iget-wide v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeButtonPrePressedTime:J

    sub-long v8, v6, v8

    const-wide/16 v10, 0x12c

    cmp-long v3, v8, v10

    const-wide/16 v8, 0x1

    if-gez v3, :cond_55

    .line 2753
    iget-wide v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeButtonPressedCount:J

    add-long/2addr v10, v8

    iput-wide v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeButtonPressedCount:J

    goto :goto_59

    .line 2755
    :cond_55
    iput-wide v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeButtonPressedCount:J

    .line 2756
    iput-wide v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeButtonPrePressedTime:J

    .line 2758
    :goto_59
    iget-wide v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeButtonPressedCount:J

    const-wide/16 v10, 0x2

    cmp-long v3, v8, v10

    if-ltz v3, :cond_82

    .line 2759
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getCameraIntent()Landroid/content/Intent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraIntent:Landroid/content/Intent;

    .line 2761
    :try_start_67
    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v8, 0x1388

    invoke-virtual {v3, v8, v9}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2762
    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraIntent:Landroid/content/Intent;

    sget-object v9, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v8, v9}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_77
    .catch Landroid/content/ActivityNotFoundException; {:try_start_67 .. :try_end_77} :catch_79

    .line 2763
    const/4 v0, 0x1

    .line 2766
    goto :goto_82

    .line 2764
    :catch_79
    move-exception v3

    .line 2765
    .local v3, "e":Landroid/content/ActivityNotFoundException;
    const-string v8, "WindowManager"

    const-string/jumbo v9, "mCameraIntent problem"

    invoke-static {v8, v9, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2769
    .end local v3    # "e":Landroid/content/ActivityNotFoundException;
    .end local v6    # "now":J
    :cond_82
    :goto_82
    return v0

    .line 2746
    :cond_83
    :goto_83
    return v0
.end method

.method protected abstract isFingerPrintKey(Landroid/view/KeyEvent;)Z
.end method

.method protected isInLockTaskMode()Z
    .registers 2

    .line 844
    const/4 v0, 0x0

    return v0
.end method

.method isPhoneOffhook()Z
    .registers 4

    .line 2516
    const/4 v0, 0x0

    .line 2517
    .local v0, "isOffhook":Z
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 2518
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_11

    .line 2519
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isOffhook()Z

    move-result v0

    .line 2522
    :cond_11
    return v0
.end method

.method protected abstract isScreenOnInternal()Z
.end method

.method protected abstract launchAssistActionInternal(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method protected abstract launchRecentPanelInternal()V
.end method

.method public layoutWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/wm/DisplayFrames;)V
    .registers 32
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "attached"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p3, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    .line 324
    move-object/from16 v13, p3

    invoke-super/range {p0 .. p3}, Lcom/android/server/policy/PhoneWindowManager;->layoutWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/wm/DisplayFrames;)V

    .line 325
    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    move v14, v2

    .line 327
    .local v14, "enableNotch":Z
    sget-boolean v1, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    if-eqz v1, :cond_40

    iget-object v1, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-ne v12, v1, :cond_40

    iget-object v1, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPackage:Ljava/lang/String;

    .line 328
    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-boolean v1, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mEnableNotchConfig:Z

    if-eq v1, v14, :cond_40

    .line 330
    :cond_2d
    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPackage:Ljava/lang/String;

    .line 331
    .local v1, "pkg":Ljava/lang/String;
    iput-boolean v14, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mEnableNotchConfig:Z

    move v2, v14

    .line 332
    .local v2, "enableNotchConfig":Z
    iget-object v3, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$2;

    invoke-direct {v4, v0, v1, v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$2;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Ljava/lang/String;Z)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 351
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v2    # "enableNotchConfig":Z
    :cond_40
    iget-object v1, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-ne v12, v1, :cond_4a

    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->canReceiveInput(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v1

    if-eqz v1, :cond_4e

    :cond_4a
    iget-object v1, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-ne v12, v1, :cond_4f

    .line 352
    :cond_4e
    return-void

    .line 354
    :cond_4f
    sget-object v15, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 355
    .local v15, "pf":Landroid/graphics/Rect;
    sget-object v11, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 356
    .local v11, "df":Landroid/graphics/Rect;
    sget-object v10, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    .line 357
    .local v10, "of":Landroid/graphics/Rect;
    sget-object v16, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    .line 358
    .local v16, "cf":Landroid/graphics/Rect;
    sget-object v17, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 359
    .local v17, "vf":Landroid/graphics/Rect;
    sget-object v9, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTmpDecorFrame:Landroid/graphics/Rect;

    .line 360
    .local v9, "dcf":Landroid/graphics/Rect;
    sget-object v18, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTmpStableFrame:Landroid/graphics/Rect;

    .line 361
    .local v18, "sf":Landroid/graphics/Rect;
    const/16 v19, 0x0

    .line 363
    .local v19, "osf":Landroid/graphics/Rect;
    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    .line 364
    .local v8, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-static {v12, v8}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v20

    .line 365
    .local v20, "fl":I
    const/4 v1, 0x0

    invoke-static {v12, v1}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v7

    .line 366
    .local v7, "sysUiFl":I
    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isDefaultDisplay()Z

    move-result v21

    .line 367
    .local v21, "isDefaultDisplay":Z
    iget v1, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7d4

    if-eq v1, v2, :cond_8f

    iget v1, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7d9

    if-eq v1, v2, :cond_8f

    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->forceLayoutHideNavigation(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v1

    if-eqz v1, :cond_83

    goto :goto_8f

    .line 389
    :cond_83
    move/from16 v24, v7

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v27, v10

    move-object/from16 v23, v11

    goto/16 :goto_ee

    .line 367
    :cond_8f
    :goto_8f
    if-eqz v21, :cond_e4

    const v1, 0x10100

    and-int v2, v20, v1

    if-ne v2, v1, :cond_e4

    if-nez p2, :cond_e4

    .line 372
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->originalCanHideNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_e4

    and-int/lit16 v1, v7, 0x200

    if-eqz v1, :cond_e4

    .line 378
    iget-object v1, v13, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v15, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 379
    iget-object v1, v13, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v11, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 383
    iget-object v1, v13, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v10, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 385
    iget-object v1, v13, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iput v1, v9, Landroid/graphics/Rect;->right:I

    .line 386
    iget-object v1, v13, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iput v1, v9, Landroid/graphics/Rect;->bottom:I

    .line 387
    iget-object v6, v13, Lcom/android/server/wm/DisplayFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    const/16 v22, 0x0

    move-object v1, v12

    move-object v2, v15

    move-object v3, v11

    move-object v4, v10

    move-object/from16 v5, v16

    move-object/from16 v23, v6

    move-object/from16 v6, v17

    move/from16 v24, v7

    move-object v7, v9

    .end local v7    # "sysUiFl":I
    .local v24, "sysUiFl":I
    move-object/from16 v25, v8

    move-object/from16 v8, v18

    .end local v8    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v25, "attrs":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v26, v9

    move-object/from16 v9, v19

    .end local v9    # "dcf":Landroid/graphics/Rect;
    .local v26, "dcf":Landroid/graphics/Rect;
    move-object/from16 v27, v10

    move-object/from16 v10, v23

    .end local v10    # "of":Landroid/graphics/Rect;
    .local v27, "of":Landroid/graphics/Rect;
    move-object/from16 v23, v11

    move/from16 v11, v22

    .end local v11    # "df":Landroid/graphics/Rect;
    .local v23, "df":Landroid/graphics/Rect;
    invoke-interface/range {v1 .. v11}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/utils/WmDisplayCutout;Z)V

    goto :goto_ee

    .line 389
    .end local v23    # "df":Landroid/graphics/Rect;
    .end local v24    # "sysUiFl":I
    .end local v25    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v26    # "dcf":Landroid/graphics/Rect;
    .end local v27    # "of":Landroid/graphics/Rect;
    .restart local v7    # "sysUiFl":I
    .restart local v8    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v9    # "dcf":Landroid/graphics/Rect;
    .restart local v10    # "of":Landroid/graphics/Rect;
    .restart local v11    # "df":Landroid/graphics/Rect;
    :cond_e4
    move/from16 v24, v7

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v27, v10

    move-object/from16 v23, v11

    .end local v7    # "sysUiFl":I
    .end local v8    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v9    # "dcf":Landroid/graphics/Rect;
    .end local v10    # "of":Landroid/graphics/Rect;
    .end local v11    # "df":Landroid/graphics/Rect;
    .restart local v23    # "df":Landroid/graphics/Rect;
    .restart local v24    # "sysUiFl":I
    .restart local v25    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v26    # "dcf":Landroid/graphics/Rect;
    .restart local v27    # "of":Landroid/graphics/Rect;
    :goto_ee
    return-void
.end method

.method public notifyLidSwitchChanged(JZ)V
    .registers 7
    .param p1, "whenNanos"    # J
    .param p3, "lidOpen"    # Z

    .line 579
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSmartCoverManager:Lmiui/util/SmartCoverManager;

    iget-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSystemBooted:Z

    invoke-virtual {v0, p3, v1}, Lmiui/util/SmartCoverManager;->notifyLidSwitchChanged(ZZ)Z

    move-result v0

    .line 580
    .local v0, "smartCoverEnable":Z
    if-nez v0, :cond_e

    .line 581
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLidState:I

    .line 582
    return-void

    .line 584
    :cond_e
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSmartCoverManager:Lmiui/util/SmartCoverManager;

    invoke-virtual {v1}, Lmiui/util/SmartCoverManager;->getSmartCoverMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_18

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    :goto_19
    iput-boolean v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLidControlsSleep:Z

    .line 585
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->notifyLidSwitchChanged(JZ)V

    .line 586
    return-void
.end method

.method protected abstract onStatusBarPanelRevealed(Lcom/android/internal/statusbar/IStatusBarService;)V
.end method

.method public performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z
    .registers 5
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "effectId"    # I
    .param p3, "always"    # Z

    .line 2051
    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWO:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isPhoneOffhook()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2053
    const/4 v0, 0x0

    return v0

    .line 2056
    :cond_c
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {v0, p2}, Lmiui/util/HapticFeedbackUtil;->isSupportedEffect(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2057
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {v0, p2, p3}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(IZ)Z

    move-result v0

    return v0

    .line 2060
    :cond_1b
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z

    move-result v0

    return v0
.end method

.method protected abstract preloadRecentAppsInternal()V
.end method

.method protected abstract processFingerprintNavigationEvent(Landroid/view/KeyEvent;Z)I
.end method

.method protected registerProximitySensor()V
    .registers 3

    .line 974
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$11;

    invoke-direct {v1, p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$11;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 983
    return-void
.end method

.method protected registerStatusBarInputEventReceiver()V
    .registers 1

    .line 1555
    return-void
.end method

.method public removeWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .registers 4
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 430
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_f

    .line 431
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$3;

    invoke-direct {v1, p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$3;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1d

    .line 440
    :cond_f
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_1d

    .line 441
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$4;

    invoke-direct {v1, p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$4;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 451
    :cond_1d
    :goto_1d
    invoke-super {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->removeWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 452
    return-void
.end method

.method protected abstract screenOffBecauseOfProxSensor()Z
.end method

.method public screenTurnedOff()V
    .registers 1

    .line 543
    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->screenTurnedOff()V

    .line 544
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->startCameraProcess()V

    .line 545
    return-void
.end method

.method protected screenTurnedOffInternal(I)V
    .registers 2
    .param p1, "why"    # I

    .line 571
    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->resetKeyStatus()V

    .line 572
    iput p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mScreenOffReason:I

    .line 573
    return-void
.end method

.method public screenTurningOn(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V
    .registers 3
    .param p1, "screenOnListener"    # Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    .line 532
    invoke-super {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->screenTurningOn(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V

    .line 533
    if-nez p1, :cond_e

    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    if-eqz v0, :cond_e

    .line 534
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->onScreenTurnedOnWithoutListener()V

    .line 537
    :cond_e
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSmartCoverManager:Lmiui/util/SmartCoverManager;

    invoke-virtual {v0}, Lmiui/util/SmartCoverManager;->notifyScreenTurningOn()Z

    .line 539
    return-void
.end method

.method sendAsyncBroadcast(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 2526
    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSystemReady:Z

    if-eqz v0, :cond_e

    .line 2527
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$17;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$17;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2534
    :cond_e
    return-void
.end method

.method sendAsyncBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;

    .line 2537
    iget-boolean v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSystemReady:Z

    if-eqz v0, :cond_e

    .line 2538
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$18;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$18;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2545
    :cond_e
    return-void
.end method

.method public setCurrentUserLw(I)V
    .registers 4
    .param p1, "newUserId"    # I

    .line 2332
    invoke-super {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->setCurrentUserLw(I)V

    .line 2333
    iput p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I

    .line 2334
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mAutoDisableScreenButtonsManager:Lcom/miui/server/AutoDisableScreenButtonsManager;

    invoke-virtual {v0, p1}, Lcom/miui/server/AutoDisableScreenButtonsManager;->onUserSwitch(I)V

    .line 2335
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSmartCoverManager:Lmiui/util/SmartCoverManager;

    invoke-virtual {v0, p1}, Lmiui/util/SmartCoverManager;->onUserSwitch(I)V

    .line 2336
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mAccessibilityShortcutSetting:Lmiui/provider/SettingsStringUtil$SettingStringHelper;

    invoke-virtual {v0, p1}, Lmiui/provider/SettingsStringUtil$SettingStringHelper;->setUserId(I)V

    .line 2337
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->onChange(Z)V

    .line 2338
    return-void
.end method

.method public showBootMessage(Ljava/lang/CharSequence;Z)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "always"    # Z

    .line 2347
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$15;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$15;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2445
    return-void
.end method

.method public startedGoingToSleep(I)V
    .registers 3
    .param p1, "why"    # I

    .line 560
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->releaseScreenOnProximitySensor(Z)V

    .line 561
    invoke-super {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->startedGoingToSleep(I)V

    .line 562
    return-void
.end method

.method public startedWakingUp()V
    .registers 6

    .line 505
    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->startedWakingUp()V

    .line 507
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_screen_on_proximity_sensor"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 510
    .local v0, "pSensorEnableInt":I
    if-ne v0, v2, :cond_37

    .line 511
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enable_screen_on_proximity_sensor"

    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    .line 513
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x110c0013

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 511
    invoke-static {v1, v2, v3}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    .line 514
    .local v1, "proximitySensorEnableSettings":Z
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enable_screen_on_proximity_sensor"

    invoke-static {v2, v3, v1}, Landroid/provider/MiuiSettings$Global;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    goto :goto_3c

    .line 518
    .end local v1    # "proximitySensorEnableSettings":Z
    :cond_37
    if-eqz v0, :cond_3b

    const/4 v1, 0x1

    goto :goto_3c

    :cond_3b
    const/4 v1, 0x0

    .line 521
    .restart local v1    # "proximitySensorEnableSettings":Z
    :goto_3c
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    if-eqz v2, :cond_59

    .line 522
    invoke-virtual {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    if-eqz v2, :cond_59

    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    .line 523
    invoke-static {v2}, Landroid/provider/MiuiSettings$System;->isInSmallWindowMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_59

    if-eqz v1, :cond_59

    iget-boolean v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mIsVRMode:Z

    if-nez v2, :cond_59

    .line 526
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    invoke-virtual {v2}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->aquire()V

    .line 528
    :cond_59
    return-void
.end method

.method protected stopLockTaskMode()Z
    .registers 2

    .line 840
    const/4 v0, 0x0

    return v0
.end method

.method protected systemReadyInternal()V
    .registers 8

    .line 455
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 456
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_27

    const-string v1, "android.hardware.sensor.proximity"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 457
    invoke-static {}, Lmiui/os/DeviceFeature;->hasSupportAudioPromity()Z

    move-result v1

    if-nez v1, :cond_27

    .line 458
    new-instance v1, Lcom/android/server/policy/MiuiScreenOnProximityLock;

    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    iget-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/policy/MiuiScreenOnProximityLock;-><init>(Landroid/content/Context;Lcom/android/server/policy/MiuiKeyguardServiceDelegate;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mProximitySensor:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    .line 461
    :cond_27
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "torch_state"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 462
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_test_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 464
    iput-boolean v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mIsVRMode:Z

    .line 465
    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "vr_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 467
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_5e

    .line 468
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lmiui/core/SdkManager;->initialize(Landroid/app/Application;Ljava/util/Map;)I

    .line 469
    invoke-static {v2}, Lmiui/core/SdkManager;->start(Ljava/util/Map;)I

    .line 472
    :cond_5e
    const-string v1, "front_fingerprint_sensor"

    .line 473
    invoke-static {v1, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mFrontFingerprintSensor:Z

    .line 474
    const-string/jumbo v1, "support_tap_fingerprint_sensor_to_home"

    .line 475
    invoke-static {v1, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSupportTapFingerprintSensorToHome:Z

    .line 476
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mFpNavEventNameList:Ljava/util/List;

    .line 477
    const-string v1, "fp_nav_event_name_list"

    invoke-static {v1}, Lmiui/util/FeatureParser;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 478
    .local v1, "strArray":[Ljava/lang/String;
    if-eqz v1, :cond_8c

    .line 479
    array-length v2, v1

    move v4, v3

    :goto_80
    if-ge v4, v2, :cond_8c

    aget-object v5, v1, v4

    .line 480
    .local v5, "str":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mFpNavEventNameList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    .end local v5    # "str":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_80

    .line 485
    :cond_8c
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "policy_control"

    const-string v5, "immersive.preconfirms=*"

    const/4 v6, -0x2

    invoke-static {v2, v4, v5, v6}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 488
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "persist.camera.snap.enable"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_dd

    .line 489
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "persist.camera.snap.enable"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 490
    iget-boolean v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHaveTranksCard:Z

    if-nez v2, :cond_cc

    .line 491
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "key_long_press_volume_down"

    const-string v5, "Street-snap"

    iget v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I

    invoke-static {v2, v4, v5, v6}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_dd

    .line 495
    :cond_cc
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "key_long_press_volume_down"

    const-string/jumbo v5, "none"

    iget v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCurrentUserId:I

    invoke-static {v2, v4, v5, v6}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 500
    :cond_dd
    :goto_dd
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->onChange(Z)V

    .line 501
    return-void
.end method

.method protected abstract toggleSplitScreenInternal()V
.end method

.method protected unregisterStatusBarInputEventReceiver()V
    .registers 1

    .line 1556
    return-void
.end method

.method protected updateNavigationBarWidth()V
    .registers 1

    .line 316
    return-void
.end method
