.class public Lcom/android/server/display/AutomaticBrightnessControllerInjector;
.super Ljava/lang/Object;
.source "AutomaticBrightnessControllerInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/AutomaticBrightnessControllerInjector$BrightnessEvent;
    }
.end annotation


# static fields
.field private static ALS_FOV:I = 0x0

.field private static final AUTOBRIGHTNESS_RATE_SLOW:I

.field private static final AUTO_BRIGHTNESS_DEBUG:Ljava/lang/String; = "sys.sensor.autobacklight.dbg"

.field private static AUTO_BRIGHTNESS_MIN_NIT_SPLINE:Landroid/util/Spline; = null

.field private static final BRIGHTNESS_BRIGHTEN_RATE:I

.field private static BRIGHTNESS_DARK:F = 0.0f

.field private static final BRIGHTNESS_DARKTIME_1SECOND:I

.field private static final BRIGHTNESS_DARKTIME_2SECOND:I

.field private static BRIGHTNESS_DARK_RAMPRATE:F = 0.0f

.field private static final BRIGHTNESS_DARK_THREHOLD:I

.field private static final BRIGHTNESS_RATE_ADJUSTIBLE:Z

.field private static DARKENING_HYSTERESIS_FOV2SEVENTY:F = 0.0f

.field private static DARKENING_HYSTERESIS_SEVENTY2NINETY:F = 0.0f

.field private static DARKENING_HYSTERESIS_ZERO2FOV:F = 0.0f

.field private static DEBUG:Z = false

.field private static HIGHANGLE_THRESHOLD:F = 0.0f

.field private static final HIGHEST_LUX:I = 0xfa0

.field private static final INIT_BRIGHTNESS:I = -0x1

.field private static final PROXIMITY_NEGATIVE:I = 0x0

.field private static final PROXIMITY_POSITIVE:I = 0x1

.field private static final PROXIMITY_UNKNOWN:I = -0x1

.field private static final SEVERAL_CHANGE_THRESHOLD:I = 0x1e

.field private static final SINGLE_CHANGE_THRESHOLD:I = 0x14

.field private static final SKIP_DEBOUNCE:I

.field private static final SKIP_DEBOUNCE_ENABLED:Z

.field private static final SKIP_LUX_DEBOUNCE1:F

.field private static final SKIP_LUX_DEBOUNCE2:F

.field private static final SLOW_RATIO:I

.field private static final TAG:Ljava/lang/String; = "AutomaticBrightnessControllerInjector"

.field private static final TIME_THRESHOLD:I = 0x2710

.field private static final TYPICAL_PROXIMITY_THRESHOLD:F = 5.0f

.field private static final USE_ACCELEROMETER_ENABLED:Z

.field private static final USE_PROXIMITY_ENABLED:Z

.field private static final WAIT_FOR_AUTOBRIGHTNESS:Z

.field private static final WAIT_TIME:I

.field private static sAccSensorEnabled:Z

.field private static final sAccSensorListener:Landroid/hardware/SensorEventListener;

.field private static sAccelerometer:Landroid/hardware/Sensor;

.field private static sAmbientLuxFirstEvent:Z

.field private static sAngleXY2Horizon:F

.field private static sAutoBrightnessEnableTime:J

.field private static sAutoBrightnessStartTime:J

.field private static sAutomaticBrightnessEnable:Z

.field private static sEvents:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/display/AutomaticBrightnessControllerInjector$BrightnessEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static sFirstLux:F

.field private static sLastAppliedAutoBrightness:Z

.field private static sLastAutoBrightnessEnable:Z

.field private static sLastBrightness:I

.field private static sLastLux:F

.field private static sLastScreenState:I

.field private static sProximity:I

.field private static sProximitySensor:Landroid/hardware/Sensor;

.field private static sProximitySensorEnabled:Z

.field private static final sProximitySensorListener:Landroid/hardware/SensorEventListener;

.field private static sProximityThreshold:F

.field private static sRealLux:F

.field private static sSensorManager:Landroid/hardware/SensorManager;

.field private static sSlowChange:Z

.field private static sStableLux:F

.field private static sStartBrightness:I

.field private static sUnadjustedBrightness:F


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->DEBUG:Z

    .line 31
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110c0025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 32
    invoke-static {}, Lmiui/os/DeviceFeature;->hasSupportAudioPromity()Z

    move-result v1

    if-nez v1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    move v1, v0

    :goto_19
    sput-boolean v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->USE_PROXIMITY_ENABLED:Z

    .line 33
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110c0026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->USE_ACCELEROMETER_ENABLED:Z

    .line 35
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110c0027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->SKIP_DEBOUNCE_ENABLED:Z

    .line 37
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110a001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->SKIP_DEBOUNCE:I

    .line 39
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110a001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->SKIP_LUX_DEBOUNCE1:F

    .line 41
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110a0020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->SKIP_LUX_DEBOUNCE2:F

    .line 51
    const/4 v1, -0x1

    sput v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sProximity:I

    .line 53
    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sProximitySensorEnabled:Z

    .line 56
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x110a0021

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    sput v2, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->DARKENING_HYSTERESIS_ZERO2FOV:F

    .line 58
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x110a0022

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sput v2, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->DARKENING_HYSTERESIS_FOV2SEVENTY:F

    .line 60
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x110a0023

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sput v2, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->DARKENING_HYSTERESIS_SEVENTY2NINETY:F

    .line 62
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x110a0024

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->ALS_FOV:I

    .line 64
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x110a0025

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    sput v2, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->HIGHANGLE_THRESHOLD:F

    .line 66
    const/4 v2, 0x0

    sput v2, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAngleXY2Horizon:F

    .line 69
    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAccSensorEnabled:Z

    .line 71
    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAmbientLuxFirstEvent:Z

    .line 73
    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sSlowChange:Z

    .line 74
    sput v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sStartBrightness:I

    .line 75
    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAutomaticBrightnessEnable:Z

    .line 76
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sUnadjustedBrightness:F

    .line 77
    sput v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sFirstLux:F

    .line 78
    sput v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sLastLux:F

    .line 79
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x110a0032

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->SLOW_RATIO:I

    .line 81
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x110c002a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->WAIT_FOR_AUTOBRIGHTNESS:Z

    .line 83
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x110a0031

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->WAIT_TIME:I

    .line 85
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAutoBrightnessEnableTime:J

    .line 86
    sput-wide v2, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAutoBrightnessStartTime:J

    .line 88
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x110a0026

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->BRIGHTNESS_BRIGHTEN_RATE:I

    .line 90
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x110a0027

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->BRIGHTNESS_DARK_THREHOLD:I

    .line 92
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x110a0028

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->BRIGHTNESS_DARKTIME_1SECOND:I

    .line 94
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x110a0029

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->BRIGHTNESS_DARKTIME_2SECOND:I

    .line 96
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x110a002b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->AUTOBRIGHTNESS_RATE_SLOW:I

    .line 98
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x110c0028

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->BRIGHTNESS_RATE_ADJUSTIBLE:Z

    .line 100
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x110a001c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v0, v2

    sput v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->BRIGHTNESS_DARK:F

    .line 102
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x110a001d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    sput v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->BRIGHTNESS_DARK_RAMPRATE:F

    .line 111
    :try_start_15d
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1109002c

    .line 112
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 111
    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v0

    .line 114
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1109002d

    .line 115
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 114
    invoke-static {v2}, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    .line 110
    invoke-static {v0, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->AUTO_BRIGHTNESS_MIN_NIT_SPLINE:Landroid/util/Spline;

    .line 117
    const-string v0, "AutomaticBrightnessControllerInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AUTO_BRIGHTNESS_MIN_NIT_SPLINE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->AUTO_BRIGHTNESS_MIN_NIT_SPLINE:Landroid/util/Spline;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_199
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15d .. :try_end_199} :catch_19a

    .line 120
    goto :goto_1a3

    .line 118
    :catch_19a
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "AutomaticBrightnessControllerInjector"

    const-string/jumbo v3, "min brightness changes with original lux not support"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1a3
    new-instance v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector$1;

    invoke-direct {v0}, Lcom/android/server/display/AutomaticBrightnessControllerInjector$1;-><init>()V

    sput-object v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sProximitySensorListener:Landroid/hardware/SensorEventListener;

    .line 255
    new-instance v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector$2;

    invoke-direct {v0}, Lcom/android/server/display/AutomaticBrightnessControllerInjector$2;-><init>()V

    sput-object v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAccSensorListener:Landroid/hardware/SensorEventListener;

    .line 569
    sput v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sLastBrightness:I

    .line 570
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sEvents:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 27
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sProximitySensorEnabled:Z

    return v0
.end method

.method static synthetic access$100()F
    .registers 1

    .line 27
    sget v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sProximityThreshold:F

    return v0
.end method

.method static synthetic access$202(I)I
    .registers 1
    .param p0, "x0"    # I

    .line 27
    sput p0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sProximity:I

    return p0
.end method

.method static synthetic access$300()Z
    .registers 1

    .line 27
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAccSensorEnabled:Z

    return v0
.end method

.method static synthetic access$400()F
    .registers 1

    .line 27
    sget v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAngleXY2Horizon:F

    return v0
.end method

.method static synthetic access$402(F)F
    .registers 1
    .param p0, "x0"    # F

    .line 27
    sput p0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAngleXY2Horizon:F

    return p0
.end method

.method static synthetic access$500()Z
    .registers 1

    .line 27
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->DEBUG:Z

    return v0
.end method

.method public static changeBrightness(FI)I
    .registers 3
    .param p0, "lux"    # F
    .param p1, "brightness"    # I

    .line 387
    const/high16 v0, 0x457a0000    # 4000.0f

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_9

    .line 388
    sget v0, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    return v0

    .line 390
    :cond_9
    return p1
.end method

.method public static changeBrightness(FILandroid/util/Spline;)I
    .registers 6
    .param p0, "lux"    # F
    .param p1, "brightness"    # I
    .param p2, "nitToBrightnessSpline"    # Landroid/util/Spline;

    .line 394
    const/high16 v0, 0x457a0000    # 4000.0f

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_9

    .line 395
    sget v0, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    return v0

    .line 398
    :cond_9
    sget-object v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->AUTO_BRIGHTNESS_MIN_NIT_SPLINE:Landroid/util/Spline;

    if-eqz v0, :cond_60

    if-eqz p2, :cond_60

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-nez v0, :cond_60

    .line 399
    const-string v0, "AutomaticBrightnessControllerInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mOriginalLux: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sStableLux:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " oldMinBrightness: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    sget-object v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->AUTO_BRIGHTNESS_MIN_NIT_SPLINE:Landroid/util/Spline;

    sget v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sStableLux:F

    .line 401
    invoke-virtual {v0, v1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    .line 400
    invoke-virtual {p2, v0}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    sget v1, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 402
    const-string v0, "AutomaticBrightnessControllerInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "newMinBrightness: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_60
    return p1
.end method

.method static checkProximityStatus(FZ)Z
    .registers 6
    .param p0, "lux"    # F
    .param p1, "luxValid"    # Z

    .line 291
    invoke-static {p0, p1}, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->checkTouchStatus(FZ)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 292
    return v1

    .line 295
    :cond_8
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->DEBUG:Z

    if-nez v0, :cond_e

    if-nez p1, :cond_2f

    .line 296
    :cond_e
    const-string v0, "AutomaticBrightnessControllerInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sProximity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sProximity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", lux="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_2f
    sget v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sFirstLux:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_39

    .line 299
    sput p0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sFirstLux:F

    .line 301
    :cond_39
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->USE_PROXIMITY_ENABLED:Z

    if-eqz v0, :cond_5a

    sget v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sProximity:I

    if-ne v0, v1, :cond_5a

    if-eqz p1, :cond_5a

    .line 302
    const-string v0, "AutomaticBrightnessControllerInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drop the lightsensor event! lux="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    return v1

    .line 305
    :cond_5a
    sput p0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sRealLux:F

    .line 306
    const/4 v0, 0x0

    return v0
.end method

.method static checkSkipDebounceStatus(JJ)Z
    .registers 6
    .param p0, "enableTime"    # J
    .param p2, "time"    # J

    .line 344
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->SKIP_DEBOUNCE_ENABLED:Z

    if-eqz v0, :cond_18

    sget v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->SKIP_DEBOUNCE:I

    int-to-long v0, v0

    add-long/2addr v0, p0

    cmp-long v0, v0, p2

    if-ltz v0, :cond_18

    .line 345
    const-string v0, "AutomaticBrightnessControllerInjector"

    const-string/jumbo v1, "skip debounce!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAmbientLuxFirstEvent:Z

    .line 347
    return v0

    .line 349
    :cond_18
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAmbientLuxFirstEvent:Z

    .line 350
    return v0
.end method

.method static checkSkipDebounceStatus(JJF)Z
    .registers 9
    .param p0, "enableTime"    # J
    .param p2, "time"    # J
    .param p4, "lux"    # F

    .line 354
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->DEBUG:Z

    if-eqz v0, :cond_5a

    .line 355
    const-string v0, "AutomaticBrightnessControllerInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkSkipDebounceStatus, enableTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", SKIP_DEBOUNCE_ENABLED="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->SKIP_DEBOUNCE_ENABLED:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", SKIP_DEBOUNCE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->SKIP_DEBOUNCE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", enableTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", sLastLux="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sLastLux:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", sFirstLux="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sFirstLux:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", lux="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_5a
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->SKIP_DEBOUNCE_ENABLED:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_95

    sget v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->SKIP_DEBOUNCE:I

    int-to-long v2, v0

    add-long/2addr v2, p0

    cmp-long v0, v2, p2

    if-ltz v0, :cond_95

    .line 365
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAmbientLuxFirstEvent:Z

    .line 366
    sget v2, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sLastLux:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_8a

    sget v2, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sLastLux:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_97

    sget v2, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sLastLux:F

    sget v3, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->SKIP_LUX_DEBOUNCE2:F

    add-float/2addr v2, v3

    cmpl-float v2, p4, v2

    if-lez v2, :cond_97

    sget v2, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sFirstLux:F

    sget v3, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->SKIP_LUX_DEBOUNCE1:F

    add-float/2addr v2, v3

    cmpl-float v2, p4, v2

    if-lez v2, :cond_97

    .line 368
    :cond_8a
    const-string v1, "AutomaticBrightnessControllerInjector"

    const-string/jumbo v2, "skip debounce!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    sput p4, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sLastLux:F

    .line 370
    return v0

    .line 373
    :cond_95
    sput-boolean v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAmbientLuxFirstEvent:Z

    .line 375
    :cond_97
    sput p4, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sLastLux:F

    .line 376
    sget v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sRealLux:F

    cmpl-float v0, v0, p4

    if-nez v0, :cond_a6

    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-eqz v0, :cond_a6

    .line 377
    sput p4, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sStableLux:F

    .line 379
    :cond_a6
    return v1
.end method

.method static computeRate(JJIII)I
    .registers 16
    .param p0, "startTime"    # J
    .param p2, "time"    # J
    .param p4, "rate"    # I
    .param p5, "currBrightness"    # I
    .param p6, "tgtBrightness"    # I

    .line 476
    move v0, p4

    .line 477
    .local v0, "ret":I
    sget-boolean v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->BRIGHTNESS_RATE_ADJUSTIBLE:Z

    if-eqz v1, :cond_59

    sget-boolean v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAutomaticBrightnessEnable:Z

    if-eqz v1, :cond_59

    sget-boolean v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sSlowChange:Z

    if-eqz v1, :cond_59

    .line 478
    if-nez p4, :cond_11

    .line 479
    const/4 v0, 0x0

    goto :goto_59

    .line 480
    :cond_11
    sget v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sStartBrightness:I

    if-lt v1, p6, :cond_58

    sget-boolean v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAmbientLuxFirstEvent:Z

    if-eqz v1, :cond_1a

    goto :goto_58

    .line 483
    :cond_1a
    int-to-float v1, p5

    sget v2, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    sget v2, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->BRIGHTNESS_DARK:F

    cmpg-float v1, v1, v2

    const/4 v2, 0x1

    if-gez v1, :cond_32

    .line 484
    sget v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->BRIGHTNESS_DARK_RAMPRATE:F

    sget v3, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    int-to-float v3, v3

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_59

    .line 489
    :cond_32
    sget v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sStartBrightness:I

    sub-int/2addr v1, p6

    int-to-double v3, v1

    const-wide v5, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v3, v5

    const-wide v5, -0x4036666666666666L    # -0.2

    sub-long v7, p2, p0

    long-to-double v7, v7

    mul-double/2addr v5, v7

    const-wide v7, 0x3e112e0be0000000L    # 9.999999717180685E-10

    mul-double/2addr v5, v7

    double-to-float v1, v5

    .line 490
    invoke-static {v1}, Landroid/util/MathUtils;->exp(F)F

    move-result v1

    float-to-double v5, v1

    mul-double/2addr v3, v5

    double-to-int v1, v3

    .line 489
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_59

    .line 481
    :cond_58
    :goto_58
    move v0, p4

    .line 494
    :cond_59
    :goto_59
    sget-boolean v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->DEBUG:Z

    if-eqz v1, :cond_af

    .line 495
    const-string v1, "AutomaticBrightnessControllerInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "computeRate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", rate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", sAmbientLuxFirstEvent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAmbientLuxFirstEvent:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", sStartBrightness="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sStartBrightness:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", tgtBrightness="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", currBrightness="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", startTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_af
    return v0
.end method

.method public static configure(ZI)I
    .registers 3
    .param p0, "enable"    # Z
    .param p1, "screenautobrightness"    # I

    .line 148
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->USE_PROXIMITY_ENABLED:Z

    if-eqz v0, :cond_7

    .line 149
    invoke-static {p0}, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->setProximitySensorEnabled(Z)V

    .line 151
    :cond_7
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->USE_ACCELEROMETER_ENABLED:Z

    if-eqz v0, :cond_e

    .line 152
    invoke-static {p0}, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->setAccSensorEnabled(Z)V

    .line 155
    :cond_e
    invoke-static {p0}, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->configure(Z)V

    .line 157
    if-nez p0, :cond_18

    .line 158
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAutomaticBrightnessEnable:Z

    .line 159
    const/4 v0, -0x1

    return v0

    .line 161
    :cond_18
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAutomaticBrightnessEnable:Z

    .line 162
    return p1
.end method

.method static dump(Ljava/io/PrintWriter;)Z
    .registers 3
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 533
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->isDebuggable()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->DEBUG:Z

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  USE_PROXIMITY_ENABLED="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->USE_PROXIMITY_ENABLED:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  DARKENING_HYSTERESIS_ZERO2FOV="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->DARKENING_HYSTERESIS_ZERO2FOV:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  DARKENING_HYSTERESIS_FOV2SEVENTY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->DARKENING_HYSTERESIS_FOV2SEVENTY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  DARKENING_HYSTERESIS_SEVENTY2NINETY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->DARKENING_HYSTERESIS_SEVENTY2NINETY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  ALS_FOV="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->ALS_FOV:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  HIGHANGLE_THRESHOLD="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->HIGHANGLE_THRESHOLD:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  SKIP_DEBOUNCE_ENABLED="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->SKIP_DEBOUNCE_ENABLED:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  SKIP_DEBOUNCE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->SKIP_DEBOUNCE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  SKIP_LUX_DEBOUNCE1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->SKIP_LUX_DEBOUNCE1:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  SKIP_LUX_DEBOUNCE2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->SKIP_LUX_DEBOUNCE2:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  USE_ACCELEROMETER_ENABLED="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->USE_ACCELEROMETER_ENABLED:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  BACKLIGHT_BIT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lmiui/os/DeviceFeature;->BACKLIGHT_BIT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  BRIGHTNESS_BRIGHTEN_RATE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->BRIGHTNESS_BRIGHTEN_RATE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  BRIGHTNESS_DARK_THREHOLD="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->BRIGHTNESS_DARK_THREHOLD:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  BRIGHTNESS_DARKTIME_1SECOND="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->BRIGHTNESS_DARKTIME_1SECOND:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  BRIGHTNESS_DARKTIME_2SECOND="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->BRIGHTNESS_DARKTIME_2SECOND:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  AUTOBRIGHTNESS_RATE_SLOW="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->AUTOBRIGHTNESS_RATE_SLOW:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  BRIGHTNESS_RATE_ADJUSTIBLE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->BRIGHTNESS_RATE_ADJUSTIBLE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  BRIGHTNESS_DARK="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->BRIGHTNESS_DARK:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  BRIGHTNESS_DARK_RAMPRATE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->BRIGHTNESS_DARK_RAMPRATE:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  SLOW_RATIO="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->SLOW_RATIO:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  WAIT_FOR_AUTOBRIGHTNESS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->WAIT_FOR_AUTOBRIGHTNESS:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  WAIT_TIME="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->WAIT_TIME:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 557
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->DEBUG:Z

    invoke-static {p0, v0}, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->dump(Ljava/io/PrintWriter;Z)V

    .line 558
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->isDebuggable()Z

    move-result v0

    return v0
.end method

.method private static getAutoBrightnessEnableTimeLength()J
    .registers 7

    .line 182
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAccSensorEnabled:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_39

    .line 183
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sget-wide v5, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAutoBrightnessStartTime:J

    sub-long/2addr v3, v5

    sput-wide v3, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAutoBrightnessEnableTime:J

    .line 184
    sget-wide v3, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAutoBrightnessEnableTime:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_19

    .line 185
    sput-wide v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAutoBrightnessEnableTime:J

    .line 186
    sput-wide v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAutoBrightnessStartTime:J

    .line 188
    :cond_19
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->DEBUG:Z

    if-eqz v0, :cond_36

    .line 189
    const-string v0, "AutomaticBrightnessControllerInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sAutoBrightnessEnableTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAutoBrightnessEnableTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_36
    sget-wide v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAutoBrightnessEnableTime:J

    return-wide v0

    .line 193
    :cond_39
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->DEBUG:Z

    if-eqz v0, :cond_56

    .line 194
    const-string v0, "AutomaticBrightnessControllerInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sAutoBrightnessEnableTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v4, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAutoBrightnessEnableTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_56
    return-wide v1
.end method

.method static getCurrentLux(F)F
    .registers 4
    .param p0, "ambientlux"    # F

    .line 317
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->DEBUG:Z

    if-eqz v0, :cond_25

    .line 318
    const-string v0, "AutomaticBrightnessControllerInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sRealLux = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sRealLux:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", ambientlux = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_25
    sget v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sRealLux:F

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, p0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3c

    sget v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sRealLux:F

    const v1, 0x3f99999a    # 1.2f

    mul-float/2addr v1, p0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3c

    .line 323
    sget v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sRealLux:F

    return v0

    .line 325
    :cond_3c
    return p0
.end method

.method static getCurrentRealLux()F
    .registers 1

    .line 310
    sget v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sRealLux:F

    return v0
.end method

.method static getDarkenThreshold(FFF)F
    .registers 7
    .param p0, "darkThreshold"    # F
    .param p1, "brightenThreshold"    # F
    .param p2, "lux"    # F

    .line 330
    move v0, p0

    .line 331
    .local v0, "mAmbientDarkeningThreshold":F
    sget v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAngleXY2Horizon:F

    sget v2, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->HIGHANGLE_THRESHOLD:F

    cmpl-float v1, v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    if-lez v1, :cond_10

    .line 332
    sget v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->DARKENING_HYSTERESIS_SEVENTY2NINETY:F

    sub-float/2addr v2, v1

    mul-float/2addr v0, v2

    goto :goto_1d

    .line 333
    :cond_10
    sget v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAngleXY2Horizon:F

    sget v3, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->ALS_FOV:I

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1d

    .line 334
    sget v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->DARKENING_HYSTERESIS_FOV2SEVENTY:F

    sub-float/2addr v2, v1

    mul-float/2addr v0, v2

    .line 336
    :cond_1d
    :goto_1d
    const-string v1, "AutomaticBrightnessControllerInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AmbientLux="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", mAmbientDarkeningThreshold="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", mAmbientBrighteningThreshold="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", angle_xy2horizon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAngleXY2Horizon:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    return v0
.end method

.method private static getFloatArray(Landroid/content/res/TypedArray;)[F
    .registers 5
    .param p0, "array"    # Landroid/content/res/TypedArray;

    .line 687
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 688
    .local v0, "length":I
    new-array v1, v0, [F

    .line 689
    .local v1, "floatArray":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_14

    .line 690
    const/high16 v3, 0x7fc00000    # Float.NaN

    invoke-virtual {p0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    aput v3, v1, v2

    .line 689
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 692
    .end local v2    # "i":I
    :cond_14
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 693
    return-object v1
.end method

.method static getScreenDarkenRate(IIIF)I
    .registers 11
    .param p0, "previousBrightness"    # I
    .param p1, "currentBrightness"    # I
    .param p2, "currentRate"    # I
    .param p3, "colorFadeLevel"    # F

    .line 410
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->DEBUG:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x3a

    if-eqz v0, :cond_53

    .line 411
    sget v0, Lmiui/os/DeviceFeature;->BACKLIGHT_BIT:I

    add-int/lit8 v0, v0, -0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    shl-int v0, v2, v0

    mul-int/2addr v0, v3

    .line 412
    .local v0, "testdata":I
    const-string v4, "AutomaticBrightnessControllerInjector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getScreenDarkenRate: previousBrightness="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", currentBrightness="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", sAmbientLuxFirstEvent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAmbientLuxFirstEvent:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", currentRate="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", colorFadeLevel="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", testdata="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    .end local v0    # "testdata":I
    :cond_53
    if-ne p0, p1, :cond_56

    .line 420
    nop

    .line 423
    :cond_56
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAmbientLuxFirstEvent:Z

    if-eqz v0, :cond_5f

    .line 424
    sget v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->BRIGHTNESS_BRIGHTEN_RATE:I

    mul-int/lit8 v0, v0, 0x3

    .local v0, "rate":I
    :goto_5e
    goto :goto_aa

    .line 425
    .end local v0    # "rate":I
    :cond_5f
    if-le p1, p0, :cond_83

    .line 426
    sget v0, Lmiui/os/DeviceFeature;->BACKLIGHT_BIT:I

    add-int/lit8 v0, v0, -0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    shl-int v0, v2, v0

    mul-int/2addr v3, v0

    if-le v3, p1, :cond_80

    .line 427
    sub-int v0, p1, p0

    div-int/lit8 v0, v0, 0x4

    .line 428
    .restart local v0    # "rate":I
    sget v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->BRIGHTNESS_BRIGHTEN_RATE:I

    sget v2, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->SLOW_RATIO:I

    div-int/2addr v1, v2

    if-ge v0, v1, :cond_aa

    .line 429
    sget v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->BRIGHTNESS_BRIGHTEN_RATE:I

    sget v2, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->SLOW_RATIO:I

    div-int v0, v1, v2

    goto :goto_aa

    .line 432
    .end local v0    # "rate":I
    :cond_80
    sget v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->BRIGHTNESS_BRIGHTEN_RATE:I

    goto :goto_5e

    .line 437
    :cond_83
    sget v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->BRIGHTNESS_DARK_THREHOLD:I

    if-le p1, v0, :cond_99

    .line 438
    sub-int v0, p0, p1

    sget v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->AUTOBRIGHTNESS_RATE_SLOW:I

    sget v2, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->BRIGHTNESS_DARKTIME_1SECOND:I

    mul-int/2addr v1, v2

    if-le v0, v1, :cond_96

    .line 440
    sub-int v0, p0, p1

    sget v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->BRIGHTNESS_DARKTIME_1SECOND:I

    div-int/2addr v0, v1

    goto :goto_5e

    .line 443
    :cond_96
    sget v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->AUTOBRIGHTNESS_RATE_SLOW:I

    goto :goto_5e

    .line 447
    :cond_99
    sub-int v0, p0, p1

    sget v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->AUTOBRIGHTNESS_RATE_SLOW:I

    sget v2, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->BRIGHTNESS_DARKTIME_2SECOND:I

    mul-int/2addr v1, v2

    if-le v0, v1, :cond_a8

    .line 449
    sub-int v0, p0, p1

    sget v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->BRIGHTNESS_DARKTIME_2SECOND:I

    div-int/2addr v0, v1

    goto :goto_5e

    .line 452
    :cond_a8
    sget v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->AUTOBRIGHTNESS_RATE_SLOW:I

    .line 456
    .restart local v0    # "rate":I
    :cond_aa
    :goto_aa
    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-nez v1, :cond_b0

    .line 458
    const/4 v0, 0x0

    .line 460
    :cond_b0
    sget-boolean v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->DEBUG:Z

    if-eqz v1, :cond_ca

    .line 461
    const-string v1, "AutomaticBrightnessControllerInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "final rate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_ca
    return v0
.end method

.method static initialize(Landroid/hardware/SensorManager;)V
    .registers 3
    .param p0, "sensorManager"    # Landroid/hardware/SensorManager;

    .line 130
    sput-object p0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sSensorManager:Landroid/hardware/SensorManager;

    .line 132
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->USE_PROXIMITY_ENABLED:Z

    if-eqz v0, :cond_22

    .line 133
    sget-object v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sProximitySensor:Landroid/hardware/Sensor;

    .line 134
    sget-object v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sProximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_22

    .line 135
    sget-object v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sput v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sProximityThreshold:F

    .line 140
    :cond_22
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->USE_ACCELEROMETER_ENABLED:Z

    if-eqz v0, :cond_2f

    .line 141
    sget-object v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAccelerometer:Landroid/hardware/Sensor;

    .line 144
    :cond_2f
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->initialize()V

    .line 145
    return-void
.end method

.method static isAmbientLuxFirstEvent()Z
    .registers 1

    .line 383
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAmbientLuxFirstEvent:Z

    return v0
.end method

.method static isDebuggable()Z
    .registers 2

    .line 562
    const-string/jumbo v0, "sys.sensor.autobacklight.dbg"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static needAutoBrightnessImmediately(ZZZI)Z
    .registers 8
    .param p0, "useAutoBrightness"    # Z
    .param p1, "autoBrightnessEnabled"    # Z
    .param p2, "appliedAutoBrightness"    # Z
    .param p3, "state"    # I

    .line 626
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->DEBUG:Z

    if-eqz v0, :cond_51

    .line 627
    const-string v0, "AutomaticBrightnessControllerInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "needAutoBrightnessImmediately, 1.useAutoBrightness:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",autoBrightnessEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",sLastAutoBrightnessEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sLastAutoBrightnessEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",appliedAutoBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",sLastAppliedAutoBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sLastAppliedAutoBrightness:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",sLastScreenState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sLastScreenState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_51
    const/4 v0, 0x0

    .line 638
    .local v0, "firstApplyAutoBrightnessAfterScreenOn":Z
    if-eqz p0, :cond_86

    .line 639
    if-eqz p1, :cond_7f

    sget-boolean v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sLastAutoBrightnessEnable:Z

    if-nez v1, :cond_7f

    if-eqz p2, :cond_7f

    sget-boolean v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sLastAppliedAutoBrightness:Z

    if-nez v1, :cond_7f

    const/4 v1, 0x2

    if-ne p3, v1, :cond_7f

    sget v2, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sLastScreenState:I

    if-eq v2, v1, :cond_7f

    .line 642
    const/4 v0, 0x1

    .line 643
    const-string v1, "AutomaticBrightnessControllerInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "needAutoBrightnessImmediately, 2.immediately ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_7f
    if-eqz p1, :cond_83

    if-eqz v0, :cond_86

    .line 649
    :cond_83
    invoke-static {p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->updateLastAutoBrightnessState(ZZI)V

    .line 652
    :cond_86
    sget-boolean v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->DEBUG:Z

    if-eqz v1, :cond_a1

    .line 653
    const-string v1, "AutomaticBrightnessControllerInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "needAutoBrightnessImmediately, 3.immediately ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :cond_a1
    return v0
.end method

.method public static recordAutoBrightnessChange(I)V
    .registers 10
    .param p0, "brightness"    # I

    .line 573
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 574
    .local v0, "now":J
    sget v2, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sLastBrightness:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_16

    .line 575
    sput p0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sLastBrightness:I

    .line 576
    sget-object v2, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sEvents:Ljava/util/LinkedList;

    new-instance v3, Lcom/android/server/display/AutomaticBrightnessControllerInjector$BrightnessEvent;

    invoke-direct {v3, v0, v1, p0}, Lcom/android/server/display/AutomaticBrightnessControllerInjector$BrightnessEvent;-><init>(JI)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 577
    return-void

    .line 580
    :cond_16
    sget v2, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sLastBrightness:I

    sub-int v2, p0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0x14

    const/4 v4, 0x1

    if-lt v2, v3, :cond_34

    .line 581
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v2

    sget v3, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sLastBrightness:I

    const-string v5, ""

    invoke-virtual {v2, v3, p0, v4, v5}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportBrightnessEvent(IIILjava/lang/String;)V

    .line 583
    sget-object v2, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sEvents:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    goto :goto_9e

    .line 587
    :cond_34
    sget-object v2, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sEvents:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/AutomaticBrightnessControllerInjector$BrightnessEvent;

    .line 588
    .local v2, "earliestEvent":Lcom/android/server/display/AutomaticBrightnessControllerInjector$BrightnessEvent;
    if-nez v2, :cond_49

    .line 589
    sget-object v3, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sEvents:Ljava/util/LinkedList;

    new-instance v4, Lcom/android/server/display/AutomaticBrightnessControllerInjector$BrightnessEvent;

    invoke-direct {v4, v0, v1, p0}, Lcom/android/server/display/AutomaticBrightnessControllerInjector$BrightnessEvent;-><init>(JI)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_9e

    .line 591
    :cond_49
    iget-wide v5, v2, Lcom/android/server/display/AutomaticBrightnessControllerInjector$BrightnessEvent;->time:J

    sub-long v5, v0, v5

    const-wide/16 v7, 0x2710

    cmp-long v3, v5, v7

    if-gtz v3, :cond_7b

    .line 592
    iget v3, v2, Lcom/android/server/display/AutomaticBrightnessControllerInjector$BrightnessEvent;->brightness:I

    sub-int v3, p0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v5, 0x1e

    if-lt v3, v5, :cond_70

    .line 593
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v3

    iget v5, v2, Lcom/android/server/display/AutomaticBrightnessControllerInjector$BrightnessEvent;->brightness:I

    const-string v6, ""

    invoke-virtual {v3, v5, p0, v4, v6}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportBrightnessEvent(IIILjava/lang/String;)V

    .line 595
    sget-object v3, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sEvents:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    goto :goto_9e

    .line 597
    :cond_70
    sget-object v3, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sEvents:Ljava/util/LinkedList;

    new-instance v4, Lcom/android/server/display/AutomaticBrightnessControllerInjector$BrightnessEvent;

    invoke-direct {v4, v0, v1, p0}, Lcom/android/server/display/AutomaticBrightnessControllerInjector$BrightnessEvent;-><init>(JI)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_9e

    .line 600
    :cond_7b
    :goto_7b
    if-eqz v2, :cond_94

    iget-wide v3, v2, Lcom/android/server/display/AutomaticBrightnessControllerInjector$BrightnessEvent;->time:J

    sub-long v3, v0, v3

    cmp-long v3, v3, v7

    if-lez v3, :cond_94

    .line 601
    sget-object v3, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sEvents:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    .line 602
    sget-object v3, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sEvents:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lcom/android/server/display/AutomaticBrightnessControllerInjector$BrightnessEvent;

    goto :goto_7b

    .line 604
    :cond_94
    sget-object v3, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sEvents:Ljava/util/LinkedList;

    new-instance v4, Lcom/android/server/display/AutomaticBrightnessControllerInjector$BrightnessEvent;

    invoke-direct {v4, v0, v1, p0}, Lcom/android/server/display/AutomaticBrightnessControllerInjector$BrightnessEvent;-><init>(JI)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 608
    .end local v2    # "earliestEvent":Lcom/android/server/display/AutomaticBrightnessControllerInjector$BrightnessEvent;
    :goto_9e
    sput p0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sLastBrightness:I

    .line 609
    return-void
.end method

.method private static setAccSensorEnabled(Z)V
    .registers 5
    .param p0, "enable"    # Z

    .line 218
    if-eqz p0, :cond_22

    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAccSensorEnabled:Z

    if-nez v0, :cond_22

    .line 219
    const-string v0, "AutomaticBrightnessControllerInjector"

    const-string/jumbo v1, "setAccSensorEnabled enable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAccSensorEnabled:Z

    .line 221
    sget-object v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sSensorManager:Landroid/hardware/SensorManager;

    sget-object v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAccSensorListener:Landroid/hardware/SensorEventListener;

    sget-object v2, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAccelerometer:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 223
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAutoBrightnessStartTime:J

    goto :goto_46

    .line 224
    :cond_22
    if-nez p0, :cond_46

    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAccSensorEnabled:Z

    if-eqz v0, :cond_46

    .line 225
    const-string v0, "AutomaticBrightnessControllerInjector"

    const-string/jumbo v1, "setAccSensorEnabled disable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAccSensorEnabled:Z

    .line 227
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sFirstLux:F

    .line 228
    sput v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sLastLux:F

    .line 229
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAutoBrightnessEnableTime:J

    .line 230
    sput-wide v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAutoBrightnessStartTime:J

    .line 231
    sget-object v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sSensorManager:Landroid/hardware/SensorManager;

    sget-object v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAccSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 233
    :cond_46
    :goto_46
    return-void
.end method

.method private static setProximitySensorEnabled(Z)V
    .registers 5
    .param p0, "enable"    # Z

    .line 200
    if-eqz p0, :cond_1c

    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sProximitySensorEnabled:Z

    if-nez v0, :cond_1c

    .line 203
    const-string v0, "AutomaticBrightnessControllerInjector"

    const-string/jumbo v1, "setProximitySensorEnabled enable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sProximitySensorEnabled:Z

    .line 205
    sget-object v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sSensorManager:Landroid/hardware/SensorManager;

    sget-object v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sProximitySensorListener:Landroid/hardware/SensorEventListener;

    sget-object v2, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sProximitySensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_37

    .line 207
    :cond_1c
    if-nez p0, :cond_37

    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sProximitySensorEnabled:Z

    if-eqz v0, :cond_37

    .line 210
    const-string v0, "AutomaticBrightnessControllerInjector"

    const-string/jumbo v1, "setProximitySensorEnabled disable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sProximitySensorEnabled:Z

    .line 212
    const/4 v0, -0x1

    sput v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sProximity:I

    .line 213
    sget-object v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sSensorManager:Landroid/hardware/SensorManager;

    sget-object v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 215
    :cond_37
    :goto_37
    return-void
.end method

.method static smoothNewCurve([F[FI)V
    .registers 7
    .param p0, "lux"    # [F
    .param p1, "brightness"    # [F
    .param p2, "idx"    # I

    .line 517
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->DEBUG:Z

    if-eqz v0, :cond_31

    .line 518
    const-string v0, "AutomaticBrightnessControllerInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "userLux="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, p0, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", userBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, p1, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", unadjustedbrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sUnadjustedBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :cond_31
    add-int/lit8 v0, p2, 0x1

    .line 521
    .local v0, "i":I
    :goto_33
    array-length v1, p0

    if-ge v0, v1, :cond_4f

    .line 522
    aget v1, p1, v0

    sget v2, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sUnadjustedBrightness:F

    aget v3, p1, p2

    sub-float/2addr v2, v3

    sub-float/2addr v1, v2

    aput v1, p1, v0

    .line 523
    aget v1, p1, v0

    add-int/lit8 v2, v0, -0x1

    aget v2, p1, v2

    invoke-static {v1, v2}, Landroid/util/MathUtils;->max(FF)F

    move-result v1

    aput v1, p1, v0

    .line 521
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 525
    .end local v0    # "i":I
    :cond_4f
    add-int/lit8 v0, p2, -0x1

    .line 525
    .restart local v0    # "i":I
    :goto_51
    if-ltz v0, :cond_72

    .line 526
    aget v1, p1, v0

    sget v2, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sUnadjustedBrightness:F

    aget v3, p1, p2

    sub-float/2addr v2, v3

    aget v3, p1, v0

    mul-float/2addr v2, v3

    sget v3, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sUnadjustedBrightness:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    aput v1, p1, v0

    .line 528
    aget v1, p1, v0

    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    invoke-static {v1, v2}, Landroid/util/MathUtils;->min(FF)F

    move-result v1

    aput v1, p1, v0

    .line 525
    add-int/lit8 v0, v0, -0x1

    goto :goto_51

    .line 530
    .end local v0    # "i":I
    :cond_72
    return-void
.end method

.method private static updateLastAutoBrightnessState(ZZI)V
    .registers 4
    .param p0, "autoBrightnessEnabled"    # Z
    .param p1, "appliedAutoBrightness"    # Z
    .param p2, "state"    # I

    .line 661
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sLastAutoBrightnessEnable:Z

    if-eq v0, p0, :cond_6

    .line 662
    sput-boolean p0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sLastAutoBrightnessEnable:Z

    .line 664
    :cond_6
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sLastAppliedAutoBrightness:Z

    if-eq v0, p1, :cond_c

    .line 665
    sput-boolean p1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sLastAppliedAutoBrightness:Z

    .line 667
    :cond_c
    sget v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sLastScreenState:I

    if-eq v0, p2, :cond_12

    .line 668
    sput p2, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sLastScreenState:I

    .line 670
    :cond_12
    return-void
.end method

.method static updateSlowChangeStatus(ZI)V
    .registers 5
    .param p0, "slowChange"    # Z
    .param p1, "startBrightness"    # I

    .line 467
    sput-boolean p0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sSlowChange:Z

    .line 468
    sput p1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sStartBrightness:I

    .line 469
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->DEBUG:Z

    if-eqz v0, :cond_2b

    .line 470
    const-string v0, "AutomaticBrightnessControllerInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSlowChangeStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sSlowChange:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", startBrightness: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sStartBrightness:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_2b
    return-void
.end method

.method static updateUnadjustedBrightness(FFF)V
    .registers 6
    .param p0, "lux"    # F
    .param p1, "brightness"    # F
    .param p2, "unadjustedbrightness"    # F

    .line 508
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->DEBUG:Z

    if-eqz v0, :cond_2b

    .line 509
    const-string v0, "AutomaticBrightnessControllerInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "userLux="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", userBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", unadjustedbrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_2b
    sput p2, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sUnadjustedBrightness:F

    .line 513
    return-void
.end method

.method public static waitForAutoBrightness(Z)Z
    .registers 5
    .param p0, "autobrightnessenabled"    # Z

    .line 167
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->WAIT_FOR_AUTOBRIGHTNESS:Z

    if-eqz v0, :cond_1f

    if-eqz p0, :cond_1f

    sget v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->WAIT_TIME:I

    int-to-long v0, v0

    .line 168
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->getAutoBrightnessEnableTimeLength()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1f

    .line 169
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->DEBUG:Z

    if-eqz v0, :cond_1d

    .line 170
    const-string v0, "AutomaticBrightnessControllerInjector"

    const-string/jumbo v1, "waitForAutoBrightness true!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_1d
    const/4 v0, 0x1

    return v0

    .line 174
    :cond_1f
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->DEBUG:Z

    if-eqz v0, :cond_2b

    .line 175
    const-string v0, "AutomaticBrightnessControllerInjector"

    const-string/jumbo v1, "waitForAutoBrightness false!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_2b
    const/4 v0, 0x0

    return v0
.end method
