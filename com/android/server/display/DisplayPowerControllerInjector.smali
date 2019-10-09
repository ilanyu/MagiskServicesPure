.class public Lcom/android/server/display/DisplayPowerControllerInjector;
.super Ljava/lang/Object;
.source "DisplayPowerControllerInjector.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mTwilight:Lcom/android/server/twilight/TwilightManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    const-class v0, Lcom/android/server/display/DisplayPowerControllerInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/DisplayPowerControllerInjector;->TAG:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/display/DisplayPowerControllerInjector;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustBrightnessIfNeeded(Landroid/content/Context;I)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "oldBrightness"    # I

    .line 20
    const-string/jumbo v0, "persist.sys.smartcover_mode"

    .line 21
    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v1, v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 22
    .local v0, "isLattice":Z
    :goto_e
    if-eqz p1, :cond_33

    .line 23
    invoke-static {p0}, Landroid/provider/MiuiSettings$System;->isInSmallWindowMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_33

    if-eqz v0, :cond_33

    .line 24
    invoke-static {}, Lcom/android/server/display/DisplayPowerControllerInjector;->useTwilightAdjustment()I

    move-result p1

    .line 25
    sget-object v1, Lcom/android/server/display/DisplayPowerControllerInjector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "lattice cover adjust brightness to:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :cond_33
    return p1
.end method

.method private static useTwilightAdjustment()I
    .registers 3

    .line 31
    sget v0, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    .line 32
    .local v0, "brightness":I
    sget-object v1, Lcom/android/server/display/DisplayPowerControllerInjector;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    if-nez v1, :cond_10

    .line 33
    const-class v1, Lcom/android/server/twilight/TwilightManager;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/twilight/TwilightManager;

    sput-object v1, Lcom/android/server/display/DisplayPowerControllerInjector;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    .line 35
    :cond_10
    sget-object v1, Lcom/android/server/display/DisplayPowerControllerInjector;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    if-eqz v1, :cond_26

    .line 36
    sget-object v1, Lcom/android/server/display/DisplayPowerControllerInjector;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v1}, Lcom/android/server/twilight/TwilightManager;->getLastTwilightState()Lcom/android/server/twilight/TwilightState;

    move-result-object v1

    .line 37
    .local v1, "state":Lcom/android/server/twilight/TwilightState;
    if-eqz v1, :cond_26

    invoke-virtual {v1}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 38
    sget v2, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    div-int/lit8 v0, v2, 0x2

    .line 41
    .end local v1    # "state":Lcom/android/server/twilight/TwilightState;
    :cond_26
    return v0
.end method
