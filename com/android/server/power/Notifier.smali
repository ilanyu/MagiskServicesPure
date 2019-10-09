.class final Lcom/android/server/power/Notifier;
.super Ljava/lang/Object;
.source "Notifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/Notifier$NotifierHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final INTERACTIVE_STATE_ASLEEP:I = 0x2

.field private static final INTERACTIVE_STATE_AWAKE:I = 0x1

.field private static final INTERACTIVE_STATE_UNKNOWN:I = 0x0

.field private static final MSG_BROADCAST:I = 0x2

.field private static final MSG_PROFILE_TIMED_OUT:I = 0x5

.field private static final MSG_SCREEN_BRIGHTNESS_BOOST_CHANGED:I = 0x4

.field private static final MSG_USER_ACTIVITY:I = 0x1

.field private static final MSG_WIRED_CHARGING_STARTED:I = 0x6

.field private static final MSG_WIRELESS_CHARGING_STARTED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PowerManagerNotifier"

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static final WIRELESS_CHARGING_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

.field private static final WIRELESS_VIBRATION_AMPLITUDE:[I

.field private static final WIRELESS_VIBRATION_TIME:[J


# instance fields
.field private final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBeingHangUp:Z

.field private mBroadcastInProgress:Z

.field private mBroadcastStartTime:J

.field private mBroadcastedInteractiveState:I

.field private final mContext:Landroid/content/Context;

.field private mDisableRotationDueToHangUp:Z

.field private final mGoToSleepBroadcastDone:Landroid/content/BroadcastReceiver;

.field private final mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

.field private final mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

.field private final mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

.field private mInteractive:Z

.field private mInteractiveChangeReason:I

.field private mInteractiveChanging:Z

.field private final mLock:Ljava/lang/Object;

.field private mPendingGoToSleepBroadcast:Z

.field private mPendingInteractiveState:I

.field private mPendingWakeUpBroadcast:Z

.field private final mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

.field private final mScreeBrightnessBoostChangedDone:Landroid/content/BroadcastReceiver;

.field private final mScreenBrightnessBoostIntent:Landroid/content/Intent;

.field private final mScreenOffIntent:Landroid/content/Intent;

.field private final mScreenOnIntent:Landroid/content/Intent;

.field private final mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field private final mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private final mSuspendWhenScreenOffDueToProximityConfig:Z

.field private final mTrustManager:Landroid/app/trust/TrustManager;

.field private mUserActivityPending:Z

.field private final mVibrator:Landroid/os/Vibrator;

.field private final mWakeUpBroadcastDone:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 95
    const/16 v0, 0x10

    new-array v1, v0, [J

    fill-array-data v1, :array_2c

    sput-object v1, Lcom/android/server/power/Notifier;->WIRELESS_VIBRATION_TIME:[J

    .line 99
    new-array v0, v0, [I

    fill-array-data v0, :array_70

    sput-object v0, Lcom/android/server/power/Notifier;->WIRELESS_VIBRATION_AMPLITUDE:[I

    .line 103
    sget-object v0, Lcom/android/server/power/Notifier;->WIRELESS_VIBRATION_TIME:[J

    sget-object v1, Lcom/android/server/power/Notifier;->WIRELESS_VIBRATION_AMPLITUDE:[I

    .line 104
    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->createWaveform([J[II)Landroid/os/VibrationEffect;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/Notifier;->WIRELESS_CHARGING_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    .line 106
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 107
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/Notifier;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 106
    return-void

    :array_2c
    .array-data 8
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
        0x28
    .end array-data

    :array_70
    .array-data 4
        0x1
        0x4
        0xb
        0x19
        0x2c
        0x43
        0x5b
        0x72
        0x7b
        0x67
        0x4f
        0x37
        0x22
        0x11
        0x7
        0x2
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/power/SuspendBlocker;Lcom/android/server/policy/WindowManagerPolicy;)V
    .registers 10
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "batteryStats"    # Lcom/android/internal/app/IBatteryStats;
    .param p4, "suspendBlocker"    # Lcom/android/server/power/SuspendBlocker;
    .param p5, "policy"    # Lcom/android/server/policy/WindowManagerPolicy;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mInteractive:Z

    .line 696
    new-instance v1, Lcom/android/server/power/Notifier$6;

    invoke-direct {v1, p0}, Lcom/android/server/power/Notifier$6;-><init>(Lcom/android/server/power/Notifier;)V

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mScreeBrightnessBoostChangedDone:Landroid/content/BroadcastReceiver;

    .line 717
    new-instance v1, Lcom/android/server/power/Notifier$7;

    invoke-direct {v1, p0}, Lcom/android/server/power/Notifier$7;-><init>(Lcom/android/server/power/Notifier;)V

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mWakeUpBroadcastDone:Landroid/content/BroadcastReceiver;

    .line 740
    new-instance v1, Lcom/android/server/power/Notifier$8;

    invoke-direct {v1, p0}, Lcom/android/server/power/Notifier$8;-><init>(Lcom/android/server/power/Notifier;)V

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mGoToSleepBroadcastDone:Landroid/content/BroadcastReceiver;

    .line 163
    iput-object p2, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    .line 164
    iput-object p3, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 165
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mAppOps:Landroid/app/AppOpsManager;

    .line 166
    iput-object p4, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    .line 167
    iput-object p5, p0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 168
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 169
    const-class v1, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManagerInternal;

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    .line 170
    const-class v1, Landroid/view/inputmethod/InputMethodManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManagerInternal;

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

    .line 171
    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 172
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/trust/TrustManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/trust/TrustManager;

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mTrustManager:Landroid/app/trust/TrustManager;

    .line 173
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/Vibrator;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mVibrator:Landroid/os/Vibrator;

    .line 175
    new-instance v1, Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-direct {v1, p0, p1}, Lcom/android/server/power/Notifier$NotifierHandler;-><init>(Lcom/android/server/power/Notifier;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    .line 176
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mScreenOnIntent:Landroid/content/Intent;

    .line 177
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mScreenOnIntent:Landroid/content/Intent;

    const/high16 v2, 0x50200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 180
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mScreenOffIntent:Landroid/content/Intent;

    .line 181
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mScreenOffIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 184
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.os.action.SCREEN_BRIGHTNESS_BOOST_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mScreenBrightnessBoostIntent:Landroid/content/Intent;

    .line 186
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mScreenBrightnessBoostIntent:Landroid/content/Intent;

    const/high16 v2, 0x50000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 189
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11200bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mSuspendWhenScreenOffDueToProximityConfig:Z

    .line 194
    :try_start_b8
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, v0}, Lcom/android/internal/app/IBatteryStats;->noteInteractive(Z)V
    :try_end_bd
    .catch Landroid/os/RemoteException; {:try_start_b8 .. :try_end_bd} :catch_be

    .line 195
    goto :goto_bf

    :catch_be
    move-exception v0

    .line 196
    :goto_bf
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/power/Notifier;)Landroid/app/ActivityManagerInternal;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .line 79
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/power/Notifier;)Lcom/android/server/policy/WindowManagerPolicy;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .line 79
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/power/Notifier;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/Notifier;
    .param p1, "x1"    # I

    .line 79
    invoke-direct {p0, p1}, Lcom/android/server/power/Notifier;->lockProfile(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/power/Notifier;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .line 79
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->showWiredChargingStarted()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/power/Notifier;)Lcom/android/server/power/SuspendBlocker;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .line 79
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/power/Notifier;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .line 79
    iget-wide v0, p0, Lcom/android/server/power/Notifier;->mBroadcastStartTime:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/server/power/Notifier;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .line 79
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/power/Notifier;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .line 79
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->updateRotationOffState()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/power/Notifier;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .line 79
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendHangupBroadcast()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/power/Notifier;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .line 79
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendUserActivity()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/power/Notifier;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/Notifier;
    .param p1, "x1"    # I

    .line 79
    invoke-direct {p0, p1}, Lcom/android/server/power/Notifier;->showWirelessChargingStarted(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/power/Notifier;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .line 79
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendBrightnessBoostChangedBroadcast()V

    return-void
.end method

.method private finishPendingBroadcastLocked()V
    .registers 2

    .line 631
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mBroadcastInProgress:Z

    .line 632
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 633
    return-void
.end method

.method private getBatteryStatsWakeLockMonitorType(I)I
    .registers 6
    .param p1, "flags"    # I

    .line 331
    const v0, 0xffff

    and-int/2addr v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_28

    const/4 v3, 0x6

    if-eq v0, v3, :cond_27

    const/16 v3, 0xa

    if-eq v0, v3, :cond_27

    const/16 v2, 0x20

    const/4 v3, -0x1

    if-eq v0, v2, :cond_21

    const/16 v1, 0x40

    if-eq v0, v1, :cond_20

    const/16 v1, 0x80

    if-eq v0, v1, :cond_1d

    .line 355
    return v3

    .line 346
    :cond_1d
    const/16 v0, 0x12

    return v0

    .line 352
    :cond_20
    return v3

    .line 340
    :cond_21
    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mSuspendWhenScreenOffDueToProximityConfig:Z

    if-eqz v0, :cond_26

    .line 341
    return v3

    .line 343
    :cond_26
    return v1

    .line 337
    :cond_27
    return v2

    .line 333
    :cond_28
    return v1
.end method

.method private handleEarlyInteractiveChange()V
    .registers 5

    .line 431
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 432
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mInteractive:Z

    if-eqz v1, :cond_1a

    .line 434
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v2, Lcom/android/server/power/Notifier$2;

    invoke-direct {v2, p0}, Lcom/android/server/power/Notifier$2;-><init>(Lcom/android/server/power/Notifier;)V

    invoke-virtual {v1, v2}, Lcom/android/server/power/Notifier$NotifierHandler;->post(Ljava/lang/Runnable;)Z

    .line 443
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    .line 444
    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    .line 445
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->updatePendingBroadcastLocked()V

    goto :goto_2a

    .line 449
    :cond_1a
    iget v1, p0, Lcom/android/server/power/Notifier;->mInteractiveChangeReason:I

    invoke-static {v1}, Lcom/android/server/power/Notifier;->translateOffReason(I)I

    move-result v1

    .line 450
    .local v1, "why":I
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v3, Lcom/android/server/power/Notifier$3;

    invoke-direct {v3, p0, v1}, Lcom/android/server/power/Notifier$3;-><init>(Lcom/android/server/power/Notifier;I)V

    invoke-virtual {v2, v3}, Lcom/android/server/power/Notifier$NotifierHandler;->post(Ljava/lang/Runnable;)Z

    .line 457
    .end local v1    # "why":I
    :goto_2a
    monitor-exit v0

    .line 458
    return-void

    .line 457
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method private handleLateInteractiveChange()V
    .registers 6

    .line 466
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 467
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mInteractive:Z

    if-eqz v1, :cond_12

    .line 469
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v2, Lcom/android/server/power/Notifier$4;

    invoke-direct {v2, p0}, Lcom/android/server/power/Notifier$4;-><init>(Lcom/android/server/power/Notifier;)V

    invoke-virtual {v1, v2}, Lcom/android/server/power/Notifier$NotifierHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_37

    .line 483
    :cond_12
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1f

    .line 484
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    .line 485
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/power/Notifier$NotifierHandler;->removeMessages(I)V

    .line 489
    :cond_1f
    iget v1, p0, Lcom/android/server/power/Notifier;->mInteractiveChangeReason:I

    invoke-static {v1}, Lcom/android/server/power/Notifier;->translateOffReason(I)I

    move-result v1

    .line 490
    .local v1, "why":I
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v4, Lcom/android/server/power/Notifier$5;

    invoke-direct {v4, p0, v1}, Lcom/android/server/power/Notifier$5;-><init>(Lcom/android/server/power/Notifier;I)V

    invoke-virtual {v3, v4}, Lcom/android/server/power/Notifier$NotifierHandler;->post(Ljava/lang/Runnable;)Z

    .line 503
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    .line 504
    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    .line 505
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->updatePendingBroadcastLocked()V

    .line 507
    .end local v1    # "why":I
    :goto_37
    monitor-exit v0

    .line 508
    return-void

    .line 507
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw v1
.end method

.method private isChargingFeedbackEnabled()Z
    .registers 6

    .line 794
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "charging_sounds_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    move v0, v2

    goto :goto_13

    :cond_12
    move v0, v1

    .line 796
    .local v0, "enabled":Z
    :goto_13
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "zen_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_24

    move v3, v2

    goto :goto_25

    :cond_24
    move v3, v1

    .line 799
    .local v3, "dndOff":Z
    :goto_25
    if-eqz v0, :cond_2b

    if-eqz v3, :cond_2b

    move v1, v2

    nop

    :cond_2b
    return v1
.end method

.method private lockProfile(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 782
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mTrustManager:Landroid/app/trust/TrustManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    .line 783
    return-void
.end method

.method private playChargingStartedSound()V
    .registers 5

    .line 753
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wireless_charging_started_sound"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 755
    .local v0, "soundPath":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->isChargingFeedbackEnabled()Z

    move-result v1

    if-eqz v1, :cond_3b

    if-eqz v0, :cond_3b

    .line 756
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 757
    .local v1, "soundUri":Landroid/net/Uri;
    if-eqz v1, :cond_3b

    .line 758
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v2

    .line 759
    .local v2, "sfx":Landroid/media/Ringtone;
    if-eqz v2, :cond_3b

    .line 760
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 761
    invoke-virtual {v2}, Landroid/media/Ringtone;->play()V

    .line 765
    .end local v1    # "soundUri":Landroid/net/Uri;
    .end local v2    # "sfx":Landroid/media/Ringtone;
    :cond_3b
    return-void
.end method

.method private playWirelessChargingVibration()V
    .registers 5

    .line 786
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "charging_vibration_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_11

    const/4 v2, 0x1

    nop

    :cond_11
    move v0, v2

    .line 788
    .local v0, "vibrateEnabled":Z
    if-eqz v0, :cond_23

    invoke-direct {p0}, Lcom/android/server/power/Notifier;->isChargingFeedbackEnabled()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 789
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mVibrator:Landroid/os/Vibrator;

    sget-object v2, Lcom/android/server/power/Notifier;->WIRELESS_CHARGING_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    sget-object v3, Lcom/android/server/power/Notifier;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    .line 791
    :cond_23
    return-void
.end method

.method private sendBrightnessBoostChangedBroadcast()V
    .registers 10

    .line 692
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mScreenBrightnessBoostIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/server/power/Notifier;->mScreeBrightnessBoostChangedDone:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 694
    return-void
.end method

.method private sendGoToSleepBroadcast()V
    .registers 11

    .line 731
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 732
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/power/Notifier;->mScreenOffIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/power/Notifier;->mGoToSleepBroadcastDone:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_34

    .line 735
    :cond_1a
    const/16 v0, 0xaa7

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 736
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    .line 738
    :goto_34
    return-void
.end method

.method private sendHangupBroadcast()V
    .registers 6

    .line 827
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.HANG_UP_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 828
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x50000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 829
    const-string v1, "hang_up_enable"

    iget-boolean v2, p0, Lcom/android/server/power/Notifier;->mBeingHangUp:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 830
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "com.miui.permission.HANG_UP_CHANGED"

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 832
    return-void
.end method

.method private sendNextBroadcast()V
    .registers 6

    .line 647
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 648
    :try_start_3
    iget v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_e

    .line 650
    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    .line 651
    iput v3, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    goto :goto_40

    .line 652
    :cond_e
    iget v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    if-ne v1, v3, :cond_2a

    .line 654
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    const/4 v4, 0x2

    if-nez v1, :cond_25

    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    if-nez v1, :cond_25

    iget v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    if-ne v1, v4, :cond_20

    goto :goto_25

    .line 659
    :cond_20
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->finishPendingBroadcastLocked()V

    .line 660
    monitor-exit v0

    return-void

    .line 656
    :cond_25
    :goto_25
    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    .line 657
    iput v4, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    goto :goto_40

    .line 664
    :cond_2a
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    if-nez v1, :cond_3c

    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    if-nez v1, :cond_3c

    iget v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    if-ne v1, v3, :cond_37

    goto :goto_3c

    .line 669
    :cond_37
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->finishPendingBroadcastLocked()V

    .line 670
    monitor-exit v0

    return-void

    .line 666
    :cond_3c
    :goto_3c
    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    .line 667
    iput v3, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    .line 674
    :goto_40
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/Notifier;->mBroadcastStartTime:J

    .line 675
    iget v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    .line 676
    .local v1, "powerState":I
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_58

    .line 678
    const/16 v0, 0xaa5

    invoke-static {v0, v3}, Landroid/util/EventLog;->writeEvent(II)I

    .line 680
    if-ne v1, v3, :cond_54

    .line 681
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendWakeUpBroadcast()V

    goto :goto_57

    .line 683
    :cond_54
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendGoToSleepBroadcast()V

    .line 685
    :goto_57
    return-void

    .line 676
    .end local v1    # "powerState":I
    :catchall_58
    move-exception v1

    :try_start_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw v1
.end method

.method private sendUserActivity()V
    .registers 3

    .line 636
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 637
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    if-nez v1, :cond_9

    .line 638
    monitor-exit v0

    return-void

    .line 640
    :cond_9
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    .line 641
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_13

    .line 642
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->userActivity()V

    .line 643
    return-void

    .line 641
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v1
.end method

.method private sendWakeUpBroadcast()V
    .registers 11

    .line 708
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 709
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/power/Notifier;->mScreenOnIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/power/Notifier;->mWakeUpBroadcastDone:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_33

    .line 712
    :cond_1a
    const/16 v0, 0xaa7

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 713
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    .line 715
    :goto_33
    return-void
.end method

.method private showWiredChargingStarted()V
    .registers 2

    .line 777
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->playChargingStartedSound()V

    .line 778
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 779
    return-void
.end method

.method private showWirelessChargingStarted(I)V
    .registers 3
    .param p1, "batteryLevel"    # I

    .line 768
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->playWirelessChargingVibration()V

    .line 769
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->playChargingStartedSound()V

    .line 770
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz v0, :cond_f

    .line 771
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-interface {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showChargingAnimation(I)V

    .line 773
    :cond_f
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 774
    return-void
.end method

.method private static translateOffReason(I)I
    .registers 2
    .param p0, "reason"    # I

    .line 511
    packed-switch p0, :pswitch_data_a

    .line 517
    const/4 v0, 0x2

    return v0

    .line 515
    :pswitch_5
    const/4 v0, 0x3

    return v0

    .line 513
    :pswitch_7
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private updatePendingBroadcastLocked()V
    .registers 4

    .line 618
    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mBroadcastInProgress:Z

    if-nez v0, :cond_2d

    iget v0, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    if-eqz v0, :cond_2d

    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    if-nez v0, :cond_16

    iget v0, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    iget v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    if-eq v0, v1, :cond_2d

    .line 622
    :cond_16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mBroadcastInProgress:Z

    .line 623
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v1}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 624
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 625
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 626
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z

    .line 628
    .end local v1    # "msg":Landroid/os/Message;
    :cond_2d
    return-void
.end method

.method private updateRotationOffState()V
    .registers 6

    .line 836
    :try_start_0
    const-string/jumbo v0, "window"

    .line 837
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 836
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 838
    .local v0, "wm":Landroid/view/IWindowManager;
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    const/4 v3, -0x2

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1e

    move v1, v2

    goto :goto_1f

    :cond_1e
    move v1, v4

    .line 841
    .local v1, "accelerometer":Z
    :goto_1f
    iget-boolean v3, p0, Lcom/android/server/power/Notifier;->mBeingHangUp:Z

    if-eqz v3, :cond_34

    if-eqz v1, :cond_34

    .line 843
    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mDisableRotationDueToHangUp:Z

    .line 844
    const/4 v2, -0x1

    invoke-interface {v0, v2}, Landroid/view/IWindowManager;->freezeRotation(I)V

    .line 845
    const-string v2, "PowerManagerNotifier"

    const-string/jumbo v3, "updateRotationOffState: disable the accelerometer"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 846
    :cond_34
    iget-boolean v2, p0, Lcom/android/server/power/Notifier;->mBeingHangUp:Z

    if-nez v2, :cond_4b

    iget-boolean v2, p0, Lcom/android/server/power/Notifier;->mDisableRotationDueToHangUp:Z

    if-eqz v2, :cond_4b

    if-nez v1, :cond_4b

    .line 848
    const-string v2, "PowerManagerNotifier"

    const-string/jumbo v3, "updateRotationOffState: enable the accelerometer"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    iput-boolean v4, p0, Lcom/android/server/power/Notifier;->mDisableRotationDueToHangUp:Z

    .line 850
    invoke-interface {v0}, Landroid/view/IWindowManager;->thawRotation()V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4b} :catch_4c

    .line 853
    .end local v0    # "wm":Landroid/view/IWindowManager;
    .end local v1    # "accelerometer":Z
    :cond_4b
    :goto_4b
    goto :goto_4d

    .line 852
    :catch_4c
    move-exception v0

    .line 854
    :goto_4d
    return-void
.end method


# virtual methods
.method public onLongPartialWakeLockFinish(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;)V
    .registers 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "ownerUid"    # I
    .param p3, "workSource"    # Landroid/os/WorkSource;
    .param p4, "historyTag"    # Ljava/lang/String;

    .line 256
    if-eqz p3, :cond_a

    .line 257
    :try_start_2
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1, p4, p3}, Lcom/android/internal/app/IBatteryStats;->noteLongPartialWakelockFinishFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V

    goto :goto_f

    .line 261
    :catch_8
    move-exception v0

    goto :goto_10

    .line 259
    :cond_a
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1, p4, p2}, Lcom/android/internal/app/IBatteryStats;->noteLongPartialWakelockFinish(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_f} :catch_8

    .line 263
    :goto_f
    goto :goto_11

    .line 261
    :goto_10
    nop

    .line 264
    :goto_11
    return-void
.end method

.method public onLongPartialWakeLockStart(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;)V
    .registers 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "ownerUid"    # I
    .param p3, "workSource"    # Landroid/os/WorkSource;
    .param p4, "historyTag"    # Ljava/lang/String;

    .line 238
    if-eqz p3, :cond_a

    .line 239
    :try_start_2
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1, p4, p3}, Lcom/android/internal/app/IBatteryStats;->noteLongPartialWakelockStartFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V

    goto :goto_f

    .line 243
    :catch_8
    move-exception v0

    goto :goto_10

    .line 241
    :cond_a
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1, p4, p2}, Lcom/android/internal/app/IBatteryStats;->noteLongPartialWakelockStart(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_f} :catch_8

    .line 245
    :goto_f
    goto :goto_11

    .line 243
    :goto_10
    nop

    .line 246
    :goto_11
    return-void
.end method

.method public onProfileTimeout(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 582
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 583
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 584
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 585
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z

    .line 586
    return-void
.end method

.method public onScreenBrightnessBoostChanged()V
    .registers 3

    .line 529
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 530
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 531
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 532
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z

    .line 533
    return-void
.end method

.method public onUserActivity(II)V
    .registers 6
    .param p1, "event"    # I
    .param p2, "uid"    # I

    .line 544
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p2, p1}, Lcom/android/internal/app/IBatteryStats;->noteUserActivity(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 547
    goto :goto_7

    .line 545
    :catch_6
    move-exception v0

    .line 549
    :goto_7
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 550
    :try_start_a
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    if-nez v1, :cond_1f

    .line 551
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    .line 552
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 553
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 554
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z

    .line 556
    .end local v2    # "msg":Landroid/os/Message;
    :cond_1f
    monitor-exit v0

    .line 557
    return-void

    .line 556
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_21

    throw v1
.end method

.method public onWakeLockAcquired(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V
    .registers 27
    .param p1, "flags"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "ownerUid"    # I
    .param p5, "ownerPid"    # I
    .param p6, "workSource"    # Landroid/os/WorkSource;
    .param p7, "historyTag"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move/from16 v9, p4

    .line 210
    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v17

    .line 211
    .local v17, "monitorType":I
    if-ltz v17, :cond_4d

    .line 213
    const/16 v0, 0x3e8

    if-ne v9, v0, :cond_16

    const/high16 v0, 0x40000000    # 2.0f

    and-int v0, p1, v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    move/from16 v16, v0

    .line 215
    .local v16, "unimportantForLogging":Z
    if-eqz p6, :cond_31

    .line 216
    :try_start_1b
    iget-object v10, v1, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object/from16 v11, p6

    move/from16 v12, p5

    move-object/from16 v13, p2

    move-object/from16 v14, p7

    move/from16 v15, v17

    invoke-interface/range {v10 .. v16}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V

    .line 226
    move-object/from16 v3, p3

    goto :goto_4a

    .line 224
    .end local v16    # "unimportantForLogging":Z
    :catch_2d
    move-exception v0

    move-object/from16 v3, p3

    goto :goto_4c

    .line 219
    .restart local v16    # "unimportantForLogging":Z
    :cond_31
    iget-object v2, v1, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move v3, v9

    move/from16 v4, p5

    move-object/from16 v5, p2

    move-object/from16 v6, p7

    move/from16 v7, v17

    move/from16 v8, v16

    invoke-interface/range {v2 .. v8}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelock(IILjava/lang/String;Ljava/lang/String;IZ)V

    .line 222
    iget-object v0, v1, Lcom/android/server/power/Notifier;->mAppOps:Landroid/app/AppOpsManager;
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_43} :catch_2d

    const/16 v2, 0x28

    move-object/from16 v3, p3

    :try_start_47
    invoke-virtual {v0, v2, v9, v3}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_4a} :catch_4b

    .line 226
    .end local v16    # "unimportantForLogging":Z
    :goto_4a
    goto :goto_4f

    .line 224
    :catch_4b
    move-exception v0

    :goto_4c
    goto :goto_4f

    .line 228
    :cond_4d
    move-object/from16 v3, p3

    :goto_4f
    return-void
.end method

.method public onWakeLockChanging(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V
    .registers 41
    .param p1, "flags"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "ownerUid"    # I
    .param p5, "ownerPid"    # I
    .param p6, "workSource"    # Landroid/os/WorkSource;
    .param p7, "historyTag"    # Ljava/lang/String;
    .param p8, "newFlags"    # I
    .param p9, "newTag"    # Ljava/lang/String;
    .param p10, "newPackageName"    # Ljava/lang/String;
    .param p11, "newOwnerUid"    # I
    .param p12, "newOwnerPid"    # I
    .param p13, "newWorkSource"    # Landroid/os/WorkSource;
    .param p14, "newHistoryTag"    # Ljava/lang/String;

    move-object/from16 v9, p0

    move/from16 v10, p8

    .line 274
    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v23

    .line 275
    .local v23, "monitorType":I
    invoke-direct {v9, v10}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v24

    .line 276
    .local v24, "newMonitorType":I
    if-eqz p6, :cond_40

    if-eqz p13, :cond_40

    if-ltz v23, :cond_40

    if-ltz v24, :cond_40

    .line 285
    const/16 v0, 0x3e8

    move/from16 v8, p11

    if-ne v8, v0, :cond_21

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, v10

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    move/from16 v22, v0

    .line 288
    .local v22, "unimportantForLogging":Z
    :try_start_24
    iget-object v11, v9, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object/from16 v12, p6

    move/from16 v13, p5

    move-object/from16 v14, p2

    move-object/from16 v15, p7

    move/from16 v16, v23

    move-object/from16 v17, p13

    move/from16 v18, p12

    move-object/from16 v19, p9

    move-object/from16 v20, p14

    move/from16 v21, v24

    invoke-interface/range {v11 .. v22}, Lcom/android/internal/app/IBatteryStats;->noteChangeWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_3d} :catch_3e

    .line 293
    goto :goto_3f

    .line 291
    :catch_3e
    move-exception v0

    .line 294
    .end local v22    # "unimportantForLogging":Z
    :goto_3f
    goto :goto_55

    .line 295
    :cond_40
    move/from16 v8, p11

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/power/Notifier;->onWakeLockReleased(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 296
    move-object v1, v9

    move v2, v10

    move-object/from16 v3, p9

    move-object/from16 v4, p10

    move v5, v8

    move/from16 v6, p12

    move-object/from16 v7, p13

    move-object/from16 v8, p14

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/power/Notifier;->onWakeLockAcquired(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 299
    :goto_55
    return-void
.end method

.method public onWakeLockReleased(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V
    .registers 15
    .param p1, "flags"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "ownerUid"    # I
    .param p5, "ownerPid"    # I
    .param p6, "workSource"    # Landroid/os/WorkSource;
    .param p7, "historyTag"    # Ljava/lang/String;

    .line 313
    invoke-direct {p0, p1}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v6

    .line 314
    .local v6, "monitorType":I
    if-ltz v6, :cond_28

    .line 316
    if-eqz p6, :cond_15

    .line 317
    :try_start_8
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object v1, p6

    move v2, p5

    move-object v3, p2

    move-object v4, p7

    move v5, v6

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_26

    .line 324
    :catch_13
    move-exception v0

    goto :goto_27

    .line 320
    :cond_15
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move v1, p4

    move v2, p5

    move-object v3, p2

    move-object v4, p7

    move v5, v6

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelock(IILjava/lang/String;Ljava/lang/String;I)V

    .line 322
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x28

    invoke-virtual {v0, v1, p4, p3}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_26} :catch_13

    .line 326
    :goto_26
    goto :goto_28

    .line 324
    :goto_27
    nop

    .line 328
    :cond_28
    :goto_28
    return-void
.end method

.method public onWakeUp(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 7
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "reasonUid"    # I
    .param p3, "opPackageName"    # Ljava/lang/String;
    .param p4, "opUid"    # I

    .line 569
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/app/IBatteryStats;->noteWakeUp(Ljava/lang/String;I)V

    .line 570
    if-eqz p3, :cond_e

    .line 571
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1, p4, p3}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    .line 575
    :cond_e
    goto :goto_10

    .line 573
    :catch_f
    move-exception v0

    .line 576
    :goto_10
    return-void
.end method

.method public onWakefulnessChangeFinished()V
    .registers 2

    .line 420
    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mInteractiveChanging:Z

    if-eqz v0, :cond_a

    .line 421
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mInteractiveChanging:Z

    .line 422
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->handleLateInteractiveChange()V

    .line 424
    :cond_a
    return-void
.end method

.method public onWakefulnessChangeStarted(II)V
    .registers 6
    .param p1, "wakefulness"    # I
    .param p2, "reason"    # I

    .line 368
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 369
    return-void

    .line 372
    :cond_4
    invoke-static {p1}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v0

    .line 380
    .local v0, "interactive":Z
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v2, Lcom/android/server/power/Notifier$1;

    invoke-direct {v2, p0, p1}, Lcom/android/server/power/Notifier$1;-><init>(Lcom/android/server/power/Notifier;I)V

    invoke-virtual {v1, v2}, Lcom/android/server/power/Notifier$NotifierHandler;->post(Ljava/lang/Runnable;)Z

    .line 389
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mInteractive:Z

    if-eq v1, v0, :cond_38

    .line 391
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mInteractiveChanging:Z

    if-eqz v1, :cond_1d

    .line 392
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->handleLateInteractiveChange()V

    .line 396
    :cond_1d
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    invoke-virtual {v1, v0}, Landroid/hardware/input/InputManagerInternal;->setInteractive(Z)V

    .line 397
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

    invoke-interface {v1, v0}, Landroid/view/inputmethod/InputMethodManagerInternal;->setInteractive(Z)V

    .line 401
    :try_start_27
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, v0}, Lcom/android/internal/app/IBatteryStats;->noteInteractive(Z)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2c} :catch_2d

    .line 402
    goto :goto_2e

    :catch_2d
    move-exception v1

    .line 405
    :goto_2e
    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mInteractive:Z

    .line 406
    iput p2, p0, Lcom/android/server/power/Notifier;->mInteractiveChangeReason:I

    .line 407
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mInteractiveChanging:Z

    .line 408
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->handleEarlyInteractiveChange()V

    .line 410
    :cond_38
    return-void
.end method

.method public onWakefulnessInHangUp(Z)V
    .registers 5
    .param p1, "hangUp"    # Z

    .line 810
    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mBeingHangUp:Z

    if-eq v0, p1, :cond_4a

    .line 811
    iput-boolean p1, p0, Lcom/android/server/power/Notifier;->mBeingHangUp:Z

    .line 812
    const-string v0, "PowerManagerNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onWakefulnessInHangUp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    iget-boolean v2, p0, Lcom/android/server/power/Notifier;->mBeingHangUp:Z

    if-eqz v2, :cond_1a

    const-string v2, "disable "

    goto :goto_1c

    :cond_1a
    const-string v2, "enable "

    :goto_1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "input event."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 812
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mBeingHangUp:Z

    if-nez v1, :cond_37

    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mInteractive:Z

    if-eqz v1, :cond_37

    const/4 v1, 0x1

    goto :goto_38

    :cond_37
    const/4 v1, 0x0

    :goto_38
    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManagerInternal;->setInteractive(Z)V

    .line 815
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicy;->setHangUpEnable(Z)V

    .line 816
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v1, Lcom/android/server/power/Notifier$9;

    invoke-direct {v1, p0}, Lcom/android/server/power/Notifier$9;-><init>(Lcom/android/server/power/Notifier;)V

    invoke-virtual {v0, v1}, Lcom/android/server/power/Notifier$NotifierHandler;->post(Ljava/lang/Runnable;)Z

    .line 824
    :cond_4a
    return-void
.end method

.method public onWiredChargingStarted()V
    .registers 3

    .line 611
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 612
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 613
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 614
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z

    .line 615
    return-void
.end method

.method public onWirelessChargingStarted(I)V
    .registers 4
    .param p1, "batteryLevel"    # I

    .line 596
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 597
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 598
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 599
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 600
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z

    .line 601
    return-void
.end method
