.class public Lcom/android/server/GestureLauncherService;
.super Lcom/android/server/SystemService;
.source "GestureLauncherService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;,
        Lcom/android/server/GestureLauncherService$GestureEventListener;
    }
.end annotation


# static fields
.field static final CAMERA_POWER_DOUBLE_TAP_MAX_TIME_MS:J = 0x12cL
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final DBG_CAMERA_LIFT:Z = false

.field static final POWER_SHORT_TAP_SEQUENCE_MAX_INTERVAL_MS:J = 0x1f4L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "GestureLauncherService"


# instance fields
.field private mCameraDoubleTapPowerEnabled:Z

.field private mCameraGestureLastEventTime:J

.field private mCameraGestureOnTimeMs:J

.field private mCameraGestureSensor1LastOnTimeMs:J

.field private mCameraGestureSensor2LastOnTimeMs:J

.field private mCameraLaunchLastEventExtra:I

.field private mCameraLaunchRegistered:Z

.field private mCameraLaunchSensor:Landroid/hardware/Sensor;

.field private mCameraLiftRegistered:Z

.field private final mCameraLiftTriggerListener:Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

.field private mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

.field private mContext:Landroid/content/Context;

.field private final mGestureListener:Lcom/android/server/GestureLauncherService$GestureEventListener;

.field private mLastPowerDown:J

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mPowerButtonConsecutiveTaps:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mSettingObserver:Landroid/database/ContentObserver;

.field private mUserId:I

.field private final mUserReceiver:Landroid/content/BroadcastReceiver;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 133
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/GestureLauncherService;-><init>(Landroid/content/Context;Lcom/android/internal/logging/MetricsLogger;)V

    .line 134
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/logging/MetricsLogger;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "metricsLogger"    # Lcom/android/internal/logging/MetricsLogger;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 138
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 78
    new-instance v0, Lcom/android/server/GestureLauncherService$GestureEventListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/GestureLauncherService$GestureEventListener;-><init>(Lcom/android/server/GestureLauncherService;Lcom/android/server/GestureLauncherService$1;)V

    iput-object v0, p0, Lcom/android/server/GestureLauncherService;->mGestureListener:Lcom/android/server/GestureLauncherService$GestureEventListener;

    .line 79
    new-instance v0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

    invoke-direct {v0, p0, v1}, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;-><init>(Lcom/android/server/GestureLauncherService;Lcom/android/server/GestureLauncherService$1;)V

    iput-object v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerListener:Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

    .line 97
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J

    .line 100
    iput-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    .line 107
    iput-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor1LastOnTimeMs:J

    .line 117
    iput-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor2LastOnTimeMs:J

    .line 123
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchLastEventExtra:I

    .line 423
    new-instance v0, Lcom/android/server/GestureLauncherService$1;

    invoke-direct {v0, p0}, Lcom/android/server/GestureLauncherService$1;-><init>(Lcom/android/server/GestureLauncherService;)V

    iput-object v0, p0, Lcom/android/server/GestureLauncherService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 436
    new-instance v0, Lcom/android/server/GestureLauncherService$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/GestureLauncherService$2;-><init>(Lcom/android/server/GestureLauncherService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    .line 139
    iput-object p1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    .line 140
    iput-object p2, p0, Lcom/android/server/GestureLauncherService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 141
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/GestureLauncherService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;

    .line 58
    iget-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/android/server/GestureLauncherService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;

    .line 58
    iget-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/android/server/GestureLauncherService;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;
    .param p1, "x1"    # J

    .line 58
    iput-wide p1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/android/server/GestureLauncherService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;

    .line 58
    iget-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor1LastOnTimeMs:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/android/server/GestureLauncherService;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;
    .param p1, "x1"    # J

    .line 58
    iput-wide p1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor1LastOnTimeMs:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/android/server/GestureLauncherService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;

    .line 58
    iget-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor2LastOnTimeMs:J

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/android/server/GestureLauncherService;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;
    .param p1, "x1"    # J

    .line 58
    iput-wide p1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor2LastOnTimeMs:J

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/android/server/GestureLauncherService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;

    .line 58
    iget v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchLastEventExtra:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/GestureLauncherService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;
    .param p1, "x1"    # I

    .line 58
    iput p1, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchLastEventExtra:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/GestureLauncherService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;

    .line 58
    iget-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/GestureLauncherService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;
    .param p1, "x1"    # Z

    .line 58
    iput-boolean p1, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/GestureLauncherService;)Landroid/hardware/Sensor;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;

    .line 58
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/GestureLauncherService;)Lcom/android/server/wm/WindowManagerInternal;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;

    .line 58
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/GestureLauncherService;)Landroid/os/PowerManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;

    .line 58
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/GestureLauncherService;)Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;

    .line 58
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerListener:Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/GestureLauncherService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;

    .line 58
    iget v0, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/GestureLauncherService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;
    .param p1, "x1"    # I

    .line 58
    iput p1, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/GestureLauncherService;)Landroid/database/ContentObserver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;

    .line 58
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/GestureLauncherService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;

    .line 58
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/GestureLauncherService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;

    .line 58
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->registerContentObservers()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/GestureLauncherService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;

    .line 58
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->updateCameraRegistered()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/GestureLauncherService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;

    .line 58
    iget-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchRegistered:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/GestureLauncherService;)Landroid/hardware/Sensor;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;

    .line 58
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/GestureLauncherService;)Lcom/android/internal/logging/MetricsLogger;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/GestureLauncherService;

    .line 58
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object v0
.end method

.method public static isCameraDoubleTapPowerEnabled(Landroid/content/res/Resources;)Z
    .registers 2
    .param p0, "resources"    # Landroid/content/res/Resources;

    .line 339
    const v0, 0x112002d

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isCameraDoubleTapPowerSettingEnabled(Landroid/content/Context;I)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 316
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->isCameraDoubleTapPowerEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 317
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "camera_double_tap_power_gesture_disabled"

    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_19

    const/4 v1, 0x1

    nop

    .line 316
    :cond_19
    return v1
.end method

.method public static isCameraLaunchEnabled(Landroid/content/res/Resources;)Z
    .registers 5
    .param p0, "resources"    # Landroid/content/res/Resources;

    .line 332
    const v0, 0x10e0020

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    move v0, v2

    .line 334
    .local v0, "configSet":Z
    :goto_f
    if-eqz v0, :cond_1a

    const-string v3, "gesture.disable_camera_launch"

    .line 335
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1a

    goto :goto_1b

    .line 334
    :cond_1a
    move v1, v2

    :goto_1b
    return v1
.end method

.method public static isCameraLaunchSettingEnabled(Landroid/content/Context;I)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 310
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->isCameraLaunchEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 311
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "camera_gesture_disabled"

    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_19

    const/4 v1, 0x1

    nop

    .line 310
    :cond_19
    return v1
.end method

.method public static isCameraLiftTriggerEnabled(Landroid/content/res/Resources;)Z
    .registers 3
    .param p0, "resources"    # Landroid/content/res/Resources;

    .line 344
    const v0, 0x10e0021

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 346
    .local v0, "configSet":Z
    :goto_d
    return v0
.end method

.method public static isCameraLiftTriggerSettingEnabled(Landroid/content/Context;I)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 322
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->isCameraLiftTriggerEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_18

    .line 323
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "camera_lift_trigger_enabled"

    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    .line 322
    :goto_19
    return v1
.end method

.method public static isGestureLauncherEnabled(Landroid/content/res/Resources;)Z
    .registers 2
    .param p0, "resources"    # Landroid/content/res/Resources;

    .line 353
    invoke-static {p0}, Lcom/android/server/GestureLauncherService;->isCameraLaunchEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {p0}, Lcom/android/server/GestureLauncherService;->isCameraDoubleTapPowerEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 354
    invoke-static {p0}, Lcom/android/server/GestureLauncherService;->isCameraLiftTriggerEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    .line 353
    :goto_16
    return v0
.end method

.method private registerCameraLaunchGesture(Landroid/content/res/Resources;)V
    .registers 8
    .param p1, "resources"    # Landroid/content/res/Resources;

    .line 223
    iget-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchRegistered:Z

    if-eqz v0, :cond_5

    .line 224
    return-void

    .line 226
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J

    .line 227
    iget-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J

    iput-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    .line 228
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 230
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    const v1, 0x10e0020

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 232
    .local v1, "cameraLaunchGestureId":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_69

    .line 233
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchRegistered:Z

    .line 234
    const v3, 0x104012b

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 236
    .local v3, "sensorName":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    .line 243
    iget-object v5, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    if-eqz v5, :cond_69

    .line 244
    iget-object v5, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 245
    iget-object v4, p0, Lcom/android/server/GestureLauncherService;->mGestureListener:Lcom/android/server/GestureLauncherService$GestureEventListener;

    iget-object v5, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v4, v5, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchRegistered:Z

    goto :goto_69

    .line 248
    :cond_50
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v2

    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    .line 250
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v4

    .line 248
    const-string v2, "Wrong configuration. Sensor type and sensor string type don\'t match: %s in resources, %s in the sensor."

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 251
    .local v2, "message":Ljava/lang/String;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 258
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "sensorName":Ljava/lang/String;
    :cond_69
    :goto_69
    return-void
.end method

.method private registerCameraLiftTrigger(Landroid/content/res/Resources;)V
    .registers 8
    .param p1, "resources"    # Landroid/content/res/Resources;

    .line 274
    iget-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    if-eqz v0, :cond_5

    .line 275
    return-void

    .line 277
    :cond_5
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 279
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    const v1, 0x10e0021

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 281
    .local v1, "cameraLiftTriggerId":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_5f

    .line 282
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    .line 283
    const v3, 0x104012c

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 285
    .local v3, "sensorName":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

    .line 292
    iget-object v5, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

    if-eqz v5, :cond_5f

    .line 293
    iget-object v5, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 294
    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerListener:Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

    iget-object v4, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v2, v4}, Landroid/hardware/SensorManager;->requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    goto :goto_5f

    .line 297
    :cond_46
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v2

    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

    .line 299
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v4

    .line 297
    const-string v2, "Wrong configuration. Sensor type and sensor string type don\'t match: %s in resources, %s in the sensor."

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, "message":Ljava/lang/String;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 307
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "sensorName":Ljava/lang/String;
    :cond_5f
    :goto_5f
    return-void
.end method

.method private registerContentObservers()V
    .registers 6

    .line 170
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "camera_gesture_disabled"

    .line 171
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    .line 170
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 173
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "camera_double_tap_power_gesture_disabled"

    .line 174
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    .line 173
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 176
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "camera_lift_trigger_enabled"

    .line 177
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    .line 176
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 179
    return-void
.end method

.method private unregisterCameraLaunchGesture()V
    .registers 4

    .line 205
    iget-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchRegistered:Z

    if-eqz v0, :cond_23

    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchRegistered:Z

    .line 207
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J

    .line 208
    iput-wide v1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    .line 209
    iput-wide v1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor1LastOnTimeMs:J

    .line 210
    iput-wide v1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor2LastOnTimeMs:J

    .line 211
    iput v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchLastEventExtra:I

    .line 213
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 215
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mGestureListener:Lcom/android/server/GestureLauncherService$GestureEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 217
    .end local v0    # "sensorManager":Landroid/hardware/SensorManager;
    :cond_23
    return-void
.end method

.method private unregisterCameraLiftTrigger()V
    .registers 4

    .line 261
    iget-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    if-eqz v0, :cond_19

    .line 262
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    .line 264
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 266
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerListener:Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    .line 268
    .end local v0    # "sensorManager":Landroid/hardware/SensorManager;
    :cond_19
    return-void
.end method

.method private updateCameraRegistered()V
    .registers 4

    .line 182
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 183
    .local v0, "resources":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/server/GestureLauncherService;->isCameraLaunchSettingEnabled(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 184
    invoke-direct {p0, v0}, Lcom/android/server/GestureLauncherService;->registerCameraLaunchGesture(Landroid/content/res/Resources;)V

    goto :goto_17

    .line 186
    :cond_14
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->unregisterCameraLaunchGesture()V

    .line 189
    :goto_17
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/server/GestureLauncherService;->isCameraLiftTriggerSettingEnabled(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 190
    invoke-direct {p0, v0}, Lcom/android/server/GestureLauncherService;->registerCameraLiftTrigger(Landroid/content/res/Resources;)V

    goto :goto_28

    .line 192
    :cond_25
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->unregisterCameraLiftTrigger()V

    .line 194
    :goto_28
    return-void
.end method


# virtual methods
.method handleCameraGesture(ZI)Z
    .registers 8
    .param p1, "useWakelock"    # Z
    .param p2, "source"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 401
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_setup_complete"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    move v0, v1

    goto :goto_15

    :cond_14
    move v0, v2

    .line 403
    .local v0, "userSetupComplete":Z
    :goto_15
    if-nez v0, :cond_18

    .line 407
    return v2

    .line 413
    :cond_18
    if-eqz p1, :cond_21

    .line 415
    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 417
    :cond_21
    const-class v2, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 419
    .local v2, "service":Lcom/android/server/statusbar/StatusBarManagerInternal;
    invoke-interface {v2, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onCameraLaunchGestureDetected(I)V

    .line 420
    return v1
.end method

.method public interceptPowerKeyDown(Landroid/view/KeyEvent;ZLandroid/util/MutableBoolean;)Z
    .registers 13
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "interactive"    # Z
    .param p3, "outLaunched"    # Landroid/util/MutableBoolean;

    .line 359
    const/4 v0, 0x0

    .line 360
    .local v0, "launched":Z
    const/4 v1, 0x0

    .line 362
    .local v1, "intercept":Z
    monitor-enter p0

    .line 363
    :try_start_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/GestureLauncherService;->mLastPowerDown:J

    sub-long/2addr v2, v4

    .line 364
    .local v2, "powerTapInterval":J
    iget-boolean v4, p0, Lcom/android/server/GestureLauncherService;->mCameraDoubleTapPowerEnabled:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_1d

    const-wide/16 v6, 0x12c

    cmp-long v4, v2, v6

    if-gez v4, :cond_1d

    .line 366
    const/4 v0, 0x1

    .line 367
    move v1, p2

    .line 368
    iget v4, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    goto :goto_2b

    .line 369
    :cond_1d
    const-wide/16 v6, 0x1f4

    cmp-long v4, v2, v6

    if-gez v4, :cond_29

    .line 370
    iget v4, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    goto :goto_2b

    .line 372
    :cond_29
    iput v5, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    .line 374
    :goto_2b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/GestureLauncherService;->mLastPowerDown:J

    .line 375
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_7b

    .line 380
    const/4 v4, 0x0

    if-eqz v0, :cond_5f

    .line 381
    const-string v6, "GestureLauncherService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Power button double tap gesture detected, launching camera. Interval="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-virtual {p0, v4, v5}, Lcom/android/server/GestureLauncherService;->handleCameraGesture(ZI)Z

    move-result v0

    .line 385
    if-eqz v0, :cond_5f

    .line 386
    iget-object v6, p0, Lcom/android/server/GestureLauncherService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v7, 0xff

    long-to-int v8, v2

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    .line 390
    :cond_5f
    iget-object v6, p0, Lcom/android/server/GestureLauncherService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string/jumbo v7, "power_consecutive_short_tap_count"

    iget v8, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 391
    iget-object v6, p0, Lcom/android/server/GestureLauncherService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string/jumbo v7, "power_double_tap_interval"

    long-to-int v8, v2

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 392
    iput-boolean v0, p3, Landroid/util/MutableBoolean;->value:Z

    .line 393
    if-eqz v1, :cond_7a

    if-eqz v0, :cond_7a

    move v4, v5

    nop

    :cond_7a
    return v4

    .line 375
    .end local v2    # "powerTapInterval":J
    :catchall_7b
    move-exception v2

    :try_start_7c
    monitor-exit p0
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    throw v2
.end method

.method public onBootPhase(I)V
    .registers 7
    .param p1, "phase"    # I

    .line 148
    const/16 v0, 0x258

    if-ne p1, v0, :cond_50

    .line 149
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 150
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 152
    return-void

    .line 155
    :cond_11
    const-class v1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v1, p0, Lcom/android/server/GestureLauncherService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 156
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/GestureLauncherService;->mPowerManager:Landroid/os/PowerManager;

    .line 158
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "GestureLauncherService"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/GestureLauncherService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 160
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->updateCameraRegistered()V

    .line 161
    invoke-virtual {p0}, Lcom/android/server/GestureLauncherService;->updateCameraDoubleTapPowerEnabled()V

    .line 163
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    iput v1, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    .line 164
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.USER_SWITCHED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 165
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->registerContentObservers()V

    .line 167
    .end local v0    # "resources":Landroid/content/res/Resources;
    :cond_50
    return-void
.end method

.method public onStart()V
    .registers 2

    .line 144
    const-class v0, Lcom/android/server/GestureLauncherService;

    invoke-static {v0, p0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 145
    return-void
.end method

.method updateCameraDoubleTapPowerEnabled()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/server/GestureLauncherService;->isCameraDoubleTapPowerSettingEnabled(Landroid/content/Context;I)Z

    move-result v0

    .line 199
    .local v0, "enabled":Z
    monitor-enter p0

    .line 200
    :try_start_9
    iput-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraDoubleTapPowerEnabled:Z

    .line 201
    monitor-exit p0

    .line 202
    return-void

    .line 201
    :catchall_d
    move-exception v1

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_d

    throw v1
.end method
