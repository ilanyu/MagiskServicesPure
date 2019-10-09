.class public Lcom/android/server/power/ButtonLightController;
.super Ljava/lang/Object;
.source "ButtonLightController.java"


# static fields
.field static sButtonLight:Lcom/android/server/lights/Light;

.field static sButtonLightTimeout:I

.field static sButtonLightTimeoutTask:Ljava/lang/Runnable;

.field static sButtonLightTurnOff:Z

.field static sHandler:Landroid/os/Handler;

.field static sIsScreenOn:Z

.field static sLightSensorButtonBrightness:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 47
    new-instance v0, Lcom/android/server/power/ButtonLightController$2;

    invoke-direct {v0}, Lcom/android/server/power/ButtonLightController$2;-><init>()V

    sput-object v0, Lcom/android/server/power/ButtonLightController;->sButtonLightTimeoutTask:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static doTurnOffButtonLight()V
    .registers 2

    .line 93
    sget-object v0, Lcom/android/server/power/ButtonLightController;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_19

    sget-object v0, Lcom/android/server/power/ButtonLightController;->sButtonLight:Lcom/android/server/lights/Light;

    if-nez v0, :cond_9

    goto :goto_19

    .line 97
    :cond_9
    sget-object v0, Lcom/android/server/power/ButtonLightController;->sHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/power/ButtonLightController;->sButtonLightTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 98
    sget-object v0, Lcom/android/server/power/ButtonLightController;->sButtonLight:Lcom/android/server/lights/Light;

    invoke-virtual {v0}, Lcom/android/server/lights/Light;->turnOff()V

    .line 99
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/ButtonLightController;->sButtonLightTurnOff:Z

    .line 100
    return-void

    .line 94
    :cond_19
    :goto_19
    return-void
.end method

.method static setButtonLight(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/lights/Light;)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "buttonLight"    # Lcom/android/server/lights/Light;

    .line 26
    sput-object p1, Lcom/android/server/power/ButtonLightController;->sHandler:Landroid/os/Handler;

    .line 27
    sput-object p2, Lcom/android/server/power/ButtonLightController;->sButtonLight:Lcom/android/server/lights/Light;

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_buttons_timeout"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/power/ButtonLightController$1;

    sget-object v3, Lcom/android/server/power/ButtonLightController;->sHandler:Landroid/os/Handler;

    invoke-direct {v2, v3, p0}, Lcom/android/server/power/ButtonLightController$1;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 37
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/ButtonLightController;->sButtonLightTurnOff:Z

    .line 38
    sput-boolean v0, Lcom/android/server/power/ButtonLightController;->sIsScreenOn:Z

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x110a0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/server/power/ButtonLightController;->sLightSensorButtonBrightness:I

    .line 41
    invoke-static {p0}, Lcom/android/server/power/ButtonLightController;->updateButtonLightTimeout(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method static setButtonLightTimeout()V
    .registers 6

    .line 73
    sget-boolean v0, Lcom/android/server/power/ButtonLightController;->sIsScreenOn:Z

    if-eqz v0, :cond_36

    sget-object v0, Lcom/android/server/power/ButtonLightController;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_36

    sget-object v0, Lcom/android/server/power/ButtonLightController;->sButtonLight:Lcom/android/server/lights/Light;

    if-nez v0, :cond_d

    goto :goto_36

    .line 76
    :cond_d
    sget-boolean v0, Lcom/android/server/power/ButtonLightController;->sButtonLightTurnOff:Z

    if-eqz v0, :cond_1b

    .line 77
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/ButtonLightController;->sButtonLightTurnOff:Z

    .line 78
    sget-object v0, Lcom/android/server/power/ButtonLightController;->sButtonLight:Lcom/android/server/lights/Light;

    sget v1, Lcom/android/server/power/ButtonLightController;->sLightSensorButtonBrightness:I

    invoke-virtual {v0, v1}, Lcom/android/server/lights/Light;->setBrightness(I)V

    .line 80
    :cond_1b
    sget-object v0, Lcom/android/server/power/ButtonLightController;->sHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/power/ButtonLightController;->sButtonLightTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 81
    sget v0, Lcom/android/server/power/ButtonLightController;->sButtonLightTimeout:I

    if-lez v0, :cond_35

    .line 82
    sget-object v0, Lcom/android/server/power/ButtonLightController;->sHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/power/ButtonLightController;->sButtonLightTimeoutTask:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sget v4, Lcom/android/server/power/ButtonLightController;->sButtonLightTimeout:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 84
    :cond_35
    return-void

    .line 74
    :cond_36
    :goto_36
    return-void
.end method

.method public static setScreenOn(Z)V
    .registers 2
    .param p0, "isScreenOn"    # Z

    .line 116
    sget-boolean v0, Lcom/android/server/power/ButtonLightController;->sIsScreenOn:Z

    if-ne v0, p0, :cond_5

    .line 117
    return-void

    .line 119
    :cond_5
    sput-boolean p0, Lcom/android/server/power/ButtonLightController;->sIsScreenOn:Z

    .line 120
    if-eqz p0, :cond_d

    .line 121
    invoke-static {}, Lcom/android/server/power/ButtonLightController;->setButtonLightTimeout()V

    goto :goto_10

    .line 123
    :cond_d
    invoke-static {}, Lcom/android/server/power/ButtonLightController;->doTurnOffButtonLight()V

    .line 125
    :goto_10
    return-void
.end method

.method static turnOffButtonLight(I)V
    .registers 2
    .param p0, "newScreenState"    # I

    .line 87
    if-nez p0, :cond_9

    sget-boolean v0, Lcom/android/server/power/ButtonLightController;->sButtonLightTurnOff:Z

    if-nez v0, :cond_9

    .line 88
    invoke-static {}, Lcom/android/server/power/ButtonLightController;->doTurnOffButtonLight()V

    .line 90
    :cond_9
    return-void
.end method

.method static updateButtonLightState(ZZI)V
    .registers 4
    .param p0, "displayReady"    # Z
    .param p1, "isProximityPositive"    # Z
    .param p2, "displayPowerPolicy"    # I

    .line 104
    if-eqz p0, :cond_12

    const/4 v0, 0x3

    if-ne p2, v0, :cond_12

    if-nez p1, :cond_12

    sget-boolean v0, Lcom/android/server/power/ButtonLightController;->sIsScreenOn:Z

    if-nez v0, :cond_12

    .line 105
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/ButtonLightController;->sIsScreenOn:Z

    .line 106
    invoke-static {}, Lcom/android/server/power/ButtonLightController;->setButtonLightTimeout()V

    goto :goto_20

    .line 109
    :cond_12
    if-eqz p2, :cond_16

    if-eqz p1, :cond_20

    :cond_16
    sget-boolean v0, Lcom/android/server/power/ButtonLightController;->sIsScreenOn:Z

    if-eqz v0, :cond_20

    .line 110
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/ButtonLightController;->sIsScreenOn:Z

    .line 111
    invoke-static {}, Lcom/android/server/power/ButtonLightController;->doTurnOffButtonLight()V

    .line 113
    :cond_20
    :goto_20
    return-void
.end method

.method static updateButtonLightTimeout(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_buttons_timeout"

    const/16 v2, 0x1388

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 62
    .local v0, "buttonLightTimeout":I
    sget v1, Lcom/android/server/power/ButtonLightController;->sButtonLightTimeout:I

    if-eq v0, v1, :cond_17

    .line 63
    sput v0, Lcom/android/server/power/ButtonLightController;->sButtonLightTimeout:I

    .line 64
    invoke-static {}, Lcom/android/server/power/ButtonLightController;->setButtonLightTimeout()V

    .line 66
    :cond_17
    return-void
.end method
