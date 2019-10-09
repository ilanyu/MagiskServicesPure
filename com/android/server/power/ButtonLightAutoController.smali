.class public Lcom/android/server/power/ButtonLightAutoController;
.super Ljava/lang/Object;
.source "ButtonLightAutoController.java"


# static fields
.field private static final ANIMATION_FPS:I = 0x14

.field private static final ANIMATION_RATE:I = 0xa0

.field private static final BUTTON_LIGHT_HIGH:I = 0x96

.field private static final BUTTON_LIGHT_LOW:I = 0x14

.field private static final BUTTON_LIGHT_MEDIUM:I = 0x50

.field private static final BUTTON_LUX_LEVEL0_D:F = 5.0f

.field private static final BUTTON_LUX_LEVEL0_U:F = 15.0f

.field private static final BUTTON_LUX_LEVEL1_D:F = 1000.0f

.field private static final BUTTON_LUX_LEVEL1_U:F = 1500.0f

.field static sButtonLight:Lcom/android/server/lights/Light;

.field private static sButtonLightAnimation:Ljava/lang/Runnable;

.field private static sButtonLightEnabled:Z

.field static sButtonLightTimeout:I

.field static sButtonLightTimeoutTask:Ljava/lang/Runnable;

.field static sButtonLightTurnOff:Z

.field static sCurrentBrightenss:I

.field static sDeltaBrightness:I

.field static sHandler:Landroid/os/Handler;

.field static sIsScreenOn:Z

.field private static sLightSensor:Landroid/hardware/Sensor;

.field static sLightSensorButtonBrightness:I

.field private static final sLightSensorListener:Landroid/hardware/SensorEventListener;

.field private static sSensorManager:Landroid/hardware/SensorManager;

.field static sTargetBrightness:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 78
    new-instance v0, Lcom/android/server/power/ButtonLightAutoController$1;

    invoke-direct {v0}, Lcom/android/server/power/ButtonLightAutoController$1;-><init>()V

    sput-object v0, Lcom/android/server/power/ButtonLightAutoController;->sButtonLightAnimation:Ljava/lang/Runnable;

    .line 112
    new-instance v0, Lcom/android/server/power/ButtonLightAutoController$2;

    invoke-direct {v0}, Lcom/android/server/power/ButtonLightAutoController$2;-><init>()V

    sput-object v0, Lcom/android/server/power/ButtonLightAutoController;->sLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 185
    new-instance v0, Lcom/android/server/power/ButtonLightAutoController$5;

    invoke-direct {v0}, Lcom/android/server/power/ButtonLightAutoController$5;-><init>()V

    sput-object v0, Lcom/android/server/power/ButtonLightAutoController;->sButtonLightTimeoutTask:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .registers 0

    .line 21
    invoke-static {}, Lcom/android/server/power/ButtonLightAutoController;->sSetNextStepBrightness()V

    return-void
.end method

.method static synthetic access$100(F)I
    .registers 2
    .param p0, "x0"    # F

    .line 21
    invoke-static {p0}, Lcom/android/server/power/ButtonLightAutoController;->sGetNewBrightess(F)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(III)V
    .registers 3
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 21
    invoke-static {p0, p1, p2}, Lcom/android/server/power/ButtonLightAutoController;->sAnimateButtonLight(III)V

    return-void
.end method

.method static doTurnOffButtonLight()V
    .registers 2

    .line 247
    sget-object v0, Lcom/android/server/power/ButtonLightAutoController;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_14

    sget-object v0, Lcom/android/server/power/ButtonLightAutoController;->sButtonLight:Lcom/android/server/lights/Light;

    if-nez v0, :cond_9

    goto :goto_14

    .line 251
    :cond_9
    sget-object v0, Lcom/android/server/power/ButtonLightAutoController;->sHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/power/ButtonLightAutoController;->sButtonLightTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 252
    invoke-static {}, Lcom/android/server/power/ButtonLightAutoController;->turnOffHWButtonLight()V

    .line 253
    return-void

    .line 248
    :cond_14
    :goto_14
    return-void
.end method

.method private static sAnimateButtonLight(III)V
    .registers 6
    .param p0, "from"    # I
    .param p1, "target"    # I
    .param p2, "rate"    # I

    .line 105
    const/4 v0, 0x1

    if-le p0, p1, :cond_5

    const/4 v1, -0x1

    goto :goto_6

    :cond_5
    move v1, v0

    :goto_6
    div-int/lit8 v2, p2, 0x14

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/2addr v1, v0

    sput v1, Lcom/android/server/power/ButtonLightAutoController;->sDeltaBrightness:I

    .line 106
    sput p1, Lcom/android/server/power/ButtonLightAutoController;->sTargetBrightness:I

    .line 107
    sput p0, Lcom/android/server/power/ButtonLightAutoController;->sCurrentBrightenss:I

    .line 109
    invoke-static {}, Lcom/android/server/power/ButtonLightAutoController;->sSetNextStepBrightness()V

    .line 110
    return-void
.end method

.method private static final sGetNewBrightess(F)I
    .registers 6
    .param p0, "lux"    # F

    .line 48
    sget v0, Lcom/android/server/power/ButtonLightAutoController;->sLightSensorButtonBrightness:I

    .line 49
    .local v0, "brightness":I
    sget v1, Lcom/android/server/power/ButtonLightAutoController;->sLightSensorButtonBrightness:I

    const v2, 0x44bb8000    # 1500.0f

    const/16 v3, 0x14

    if-ne v1, v3, :cond_1e

    .line 50
    cmpl-float v1, p0, v2

    if-lez v1, :cond_12

    .line 51
    const/16 v0, 0x96

    goto :goto_49

    .line 52
    :cond_12
    const/high16 v1, 0x41700000    # 15.0f

    cmpl-float v1, p0, v1

    if-lez v1, :cond_1b

    .line 53
    const/16 v0, 0x50

    goto :goto_49

    .line 55
    :cond_1b
    const/16 v0, 0x14

    goto :goto_49

    .line 56
    :cond_1e
    sget v1, Lcom/android/server/power/ButtonLightAutoController;->sLightSensorButtonBrightness:I

    const/16 v3, 0x50

    const/high16 v4, 0x40a00000    # 5.0f

    if-ne v1, v3, :cond_37

    .line 57
    cmpl-float v1, p0, v2

    if-lez v1, :cond_2d

    .line 58
    const/16 v0, 0x96

    goto :goto_49

    .line 59
    :cond_2d
    cmpg-float v1, p0, v4

    if-gez v1, :cond_34

    .line 60
    const/16 v0, 0x14

    goto :goto_49

    .line 62
    :cond_34
    const/16 v0, 0x50

    goto :goto_49

    .line 64
    :cond_37
    cmpg-float v1, p0, v4

    if-gez v1, :cond_3e

    .line 65
    const/16 v0, 0x14

    goto :goto_49

    .line 66
    :cond_3e
    const/high16 v1, 0x447a0000    # 1000.0f

    cmpg-float v1, p0, v1

    if-gez v1, :cond_47

    .line 67
    const/16 v0, 0x50

    goto :goto_49

    .line 69
    :cond_47
    const/16 v0, 0x96

    .line 72
    :goto_49
    return v0
.end method

.method private static sSetNextStepBrightness()V
    .registers 7

    .line 86
    const/4 v0, 0x0

    .line 88
    .local v0, "needChange":Z
    sget-object v1, Lcom/android/server/power/ButtonLightAutoController;->sButtonLight:Lcom/android/server/lights/Light;

    sget v2, Lcom/android/server/power/ButtonLightAutoController;->sCurrentBrightenss:I

    invoke-virtual {v1, v2}, Lcom/android/server/lights/Light;->setBrightness(I)V

    .line 90
    sget v1, Lcom/android/server/power/ButtonLightAutoController;->sDeltaBrightness:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sget v2, Lcom/android/server/power/ButtonLightAutoController;->sCurrentBrightenss:I

    sget v3, Lcom/android/server/power/ButtonLightAutoController;->sTargetBrightness:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v1, v2, :cond_22

    .line 91
    sget v1, Lcom/android/server/power/ButtonLightAutoController;->sCurrentBrightenss:I

    sget v2, Lcom/android/server/power/ButtonLightAutoController;->sDeltaBrightness:I

    add-int/2addr v1, v2

    sput v1, Lcom/android/server/power/ButtonLightAutoController;->sCurrentBrightenss:I

    .line 92
    const/4 v0, 0x1

    goto :goto_2d

    .line 93
    :cond_22
    sget v1, Lcom/android/server/power/ButtonLightAutoController;->sCurrentBrightenss:I

    sget v2, Lcom/android/server/power/ButtonLightAutoController;->sTargetBrightness:I

    if-eq v1, v2, :cond_2d

    .line 94
    sget v1, Lcom/android/server/power/ButtonLightAutoController;->sTargetBrightness:I

    sput v1, Lcom/android/server/power/ButtonLightAutoController;->sCurrentBrightenss:I

    .line 95
    const/4 v0, 0x1

    .line 98
    :cond_2d
    :goto_2d
    if-eqz v0, :cond_44

    .line 99
    sget-object v1, Lcom/android/server/power/ButtonLightAutoController;->sHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/server/power/ButtonLightAutoController;->sButtonLightAnimation:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 100
    sget-object v1, Lcom/android/server/power/ButtonLightAutoController;->sHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/server/power/ButtonLightAutoController;->sButtonLightAnimation:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x32

    add-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 102
    :cond_44
    return-void
.end method

.method static setButtonLight(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/lights/Light;)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "buttonLight"    # Lcom/android/server/lights/Light;

    .line 136
    sput-object p1, Lcom/android/server/power/ButtonLightAutoController;->sHandler:Landroid/os/Handler;

    .line 137
    sput-object p2, Lcom/android/server/power/ButtonLightAutoController;->sButtonLight:Lcom/android/server/lights/Light;

    .line 138
    const-string/jumbo v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    sput-object v0, Lcom/android/server/power/ButtonLightAutoController;->sSensorManager:Landroid/hardware/SensorManager;

    .line 139
    sget-object v0, Lcom/android/server/power/ButtonLightAutoController;->sSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1c

    .line 140
    sget-object v0, Lcom/android/server/power/ButtonLightAutoController;->sSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/ButtonLightAutoController;->sLightSensor:Landroid/hardware/Sensor;

    .line 143
    :cond_1c
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_buttons_timeout"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/android/server/power/ButtonLightAutoController$3;

    sget-object v4, Lcom/android/server/power/ButtonLightAutoController;->sHandler:Landroid/os/Handler;

    invoke-direct {v3, v4, p0}, Lcom/android/server/power/ButtonLightAutoController$3;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_buttons_turn_on"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/power/ButtonLightAutoController$4;

    sget-object v3, Lcom/android/server/power/ButtonLightAutoController;->sHandler:Landroid/os/Handler;

    invoke-direct {v2, v3, p0}, Lcom/android/server/power/ButtonLightAutoController$4;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 162
    sput-boolean v3, Lcom/android/server/power/ButtonLightAutoController;->sButtonLightTurnOff:Z

    .line 163
    sput-boolean v3, Lcom/android/server/power/ButtonLightAutoController;->sIsScreenOn:Z

    .line 164
    const/16 v0, 0x50

    sput v0, Lcom/android/server/power/ButtonLightAutoController;->sLightSensorButtonBrightness:I

    .line 165
    invoke-static {p0}, Lcom/android/server/power/ButtonLightAutoController;->updateButtonLightTimeout(Landroid/content/Context;)V

    .line 166
    return-void
.end method

.method static setButtonLightTimeout()V
    .registers 6

    .line 220
    sget-boolean v0, Lcom/android/server/power/ButtonLightAutoController;->sIsScreenOn:Z

    if-eqz v0, :cond_4e

    sget-object v0, Lcom/android/server/power/ButtonLightAutoController;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4e

    sget-object v0, Lcom/android/server/power/ButtonLightAutoController;->sButtonLight:Lcom/android/server/lights/Light;

    if-eqz v0, :cond_4e

    sget-boolean v0, Lcom/android/server/power/ButtonLightAutoController;->sButtonLightEnabled:Z

    if-nez v0, :cond_11

    goto :goto_4e

    .line 225
    :cond_11
    sget-boolean v0, Lcom/android/server/power/ButtonLightAutoController;->sButtonLightTurnOff:Z

    if-eqz v0, :cond_33

    .line 226
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/ButtonLightAutoController;->sButtonLightTurnOff:Z

    .line 227
    sget-object v0, Lcom/android/server/power/ButtonLightAutoController;->sButtonLight:Lcom/android/server/lights/Light;

    sget v1, Lcom/android/server/power/ButtonLightAutoController;->sLightSensorButtonBrightness:I

    invoke-virtual {v0, v1}, Lcom/android/server/lights/Light;->setBrightness(I)V

    .line 229
    sget-object v0, Lcom/android/server/power/ButtonLightAutoController;->sSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_33

    sget-object v0, Lcom/android/server/power/ButtonLightAutoController;->sLightSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_33

    .line 230
    sget-object v0, Lcom/android/server/power/ButtonLightAutoController;->sSensorManager:Landroid/hardware/SensorManager;

    sget-object v1, Lcom/android/server/power/ButtonLightAutoController;->sLightSensorListener:Landroid/hardware/SensorEventListener;

    sget-object v2, Lcom/android/server/power/ButtonLightAutoController;->sLightSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    sget-object v4, Lcom/android/server/power/ButtonLightAutoController;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 234
    :cond_33
    sget-object v0, Lcom/android/server/power/ButtonLightAutoController;->sHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/power/ButtonLightAutoController;->sButtonLightTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 235
    sget v0, Lcom/android/server/power/ButtonLightAutoController;->sButtonLightTimeout:I

    if-lez v0, :cond_4d

    .line 236
    sget-object v0, Lcom/android/server/power/ButtonLightAutoController;->sHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/power/ButtonLightAutoController;->sButtonLightTimeoutTask:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sget v4, Lcom/android/server/power/ButtonLightAutoController;->sButtonLightTimeout:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 238
    :cond_4d
    return-void

    .line 222
    :cond_4e
    :goto_4e
    return-void
.end method

.method public static setScreenOn(Z)V
    .registers 2
    .param p0, "isScreenOn"    # Z

    .line 269
    sget-boolean v0, Lcom/android/server/power/ButtonLightAutoController;->sIsScreenOn:Z

    if-ne v0, p0, :cond_5

    .line 270
    return-void

    .line 272
    :cond_5
    sput-boolean p0, Lcom/android/server/power/ButtonLightAutoController;->sIsScreenOn:Z

    .line 273
    if-eqz p0, :cond_d

    .line 274
    invoke-static {}, Lcom/android/server/power/ButtonLightAutoController;->setButtonLightTimeout()V

    goto :goto_10

    .line 276
    :cond_d
    invoke-static {}, Lcom/android/server/power/ButtonLightAutoController;->doTurnOffButtonLight()V

    .line 278
    :goto_10
    return-void
.end method

.method static turnOffButtonLight(I)V
    .registers 2
    .param p0, "newScreenState"    # I

    .line 241
    if-nez p0, :cond_9

    sget-boolean v0, Lcom/android/server/power/ButtonLightAutoController;->sButtonLightTurnOff:Z

    if-nez v0, :cond_9

    .line 242
    invoke-static {}, Lcom/android/server/power/ButtonLightAutoController;->doTurnOffButtonLight()V

    .line 244
    :cond_9
    return-void
.end method

.method static turnOffHWButtonLight()V
    .registers 2

    .line 170
    sget-boolean v0, Lcom/android/server/power/ButtonLightAutoController;->sButtonLightTurnOff:Z

    if-nez v0, :cond_22

    .line 171
    sget-object v0, Lcom/android/server/power/ButtonLightAutoController;->sSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_13

    sget-object v0, Lcom/android/server/power/ButtonLightAutoController;->sLightSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_13

    .line 172
    sget-object v0, Lcom/android/server/power/ButtonLightAutoController;->sSensorManager:Landroid/hardware/SensorManager;

    sget-object v1, Lcom/android/server/power/ButtonLightAutoController;->sLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 175
    :cond_13
    sget-object v0, Lcom/android/server/power/ButtonLightAutoController;->sHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/power/ButtonLightAutoController;->sButtonLightAnimation:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 177
    sget-object v0, Lcom/android/server/power/ButtonLightAutoController;->sButtonLight:Lcom/android/server/lights/Light;

    invoke-virtual {v0}, Lcom/android/server/lights/Light;->turnOff()V

    .line 178
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/ButtonLightAutoController;->sButtonLightTurnOff:Z

    .line 180
    :cond_22
    return-void
.end method

.method static updateButtonLightState(ZZI)V
    .registers 4
    .param p0, "displayReady"    # Z
    .param p1, "isProximityPositive"    # Z
    .param p2, "displayPowerPolicy"    # I

    .line 257
    if-eqz p0, :cond_12

    const/4 v0, 0x3

    if-ne p2, v0, :cond_12

    if-nez p1, :cond_12

    sget-boolean v0, Lcom/android/server/power/ButtonLightAutoController;->sIsScreenOn:Z

    if-nez v0, :cond_12

    .line 258
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/ButtonLightAutoController;->sIsScreenOn:Z

    .line 259
    invoke-static {}, Lcom/android/server/power/ButtonLightAutoController;->setButtonLightTimeout()V

    goto :goto_20

    .line 262
    :cond_12
    if-eqz p2, :cond_16

    if-eqz p1, :cond_20

    :cond_16
    sget-boolean v0, Lcom/android/server/power/ButtonLightAutoController;->sIsScreenOn:Z

    if-eqz v0, :cond_20

    .line 263
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/ButtonLightAutoController;->sIsScreenOn:Z

    .line 264
    invoke-static {}, Lcom/android/server/power/ButtonLightAutoController;->doTurnOffButtonLight()V

    .line 266
    :cond_20
    :goto_20
    return-void
.end method

.method static updateButtonLightTimeout(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 196
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_buttons_timeout"

    const/16 v2, 0x1388

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 199
    .local v0, "buttonLightTimeout":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_buttons_turn_on"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v3, 0x0

    :goto_1e
    move v1, v3

    .line 202
    .local v1, "buttonLightEnabled":Z
    sget v2, Lcom/android/server/power/ButtonLightAutoController;->sButtonLightTimeout:I

    if-eq v0, v2, :cond_28

    .line 203
    sput v0, Lcom/android/server/power/ButtonLightAutoController;->sButtonLightTimeout:I

    .line 204
    invoke-static {}, Lcom/android/server/power/ButtonLightAutoController;->setButtonLightTimeout()V

    .line 207
    :cond_28
    sget-boolean v2, Lcom/android/server/power/ButtonLightAutoController;->sButtonLightEnabled:Z

    if-eq v1, v2, :cond_33

    .line 208
    sput-boolean v1, Lcom/android/server/power/ButtonLightAutoController;->sButtonLightEnabled:Z

    .line 209
    if-nez v1, :cond_33

    .line 210
    invoke-static {}, Lcom/android/server/power/ButtonLightAutoController;->turnOffHWButtonLight()V

    .line 213
    :cond_33
    return-void
.end method
