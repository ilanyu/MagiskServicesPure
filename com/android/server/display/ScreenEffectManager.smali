.class public abstract Lcom/android/server/display/ScreenEffectManager;
.super Ljava/lang/Object;
.source "ScreenEffectManager.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getDimDurationExtraTime(J)J
.end method

.method public abstract getGrayScale()F
.end method

.method public abstract getNightLightBrightness()I
.end method

.method public abstract initDisplayPowerController(Lcom/android/server/display/DisplayPowerController;Landroid/os/Looper;)V
.end method

.method public abstract setNightLight(I)V
.end method

.method public abstract updateLocalScreenEffect(Ljava/lang/String;)V
.end method

.method public abstract updateScreenEffect(I)V
.end method
