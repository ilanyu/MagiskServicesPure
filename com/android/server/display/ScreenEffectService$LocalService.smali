.class Lcom/android/server/display/ScreenEffectService$LocalService;
.super Lcom/android/server/display/ScreenEffectManager;
.source "ScreenEffectService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/ScreenEffectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/ScreenEffectService;


# direct methods
.method constructor <init>(Lcom/android/server/display/ScreenEffectService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/display/ScreenEffectService;

    .line 740
    iput-object p1, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    invoke-direct {p0}, Lcom/android/server/display/ScreenEffectManager;-><init>()V

    return-void
.end method


# virtual methods
.method public getDimDurationExtraTime(J)J
    .registers 7
    .param p1, "extraTimeMillis"    # J

    .line 798
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    # getter for: Lcom/android/server/display/ScreenEffectService;->mDriveMode:I
    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->access$1900(Lcom/android/server/display/ScreenEffectService;)I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_11

    cmp-long v0, p1, v1

    if-gtz v0, :cond_10

    goto :goto_11

    .line 800
    :cond_10
    return-wide p1

    .line 799
    :cond_11
    :goto_11
    return-wide v1
.end method

.method public getGrayScale()F
    .registers 2

    .line 805
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    # getter for: Lcom/android/server/display/ScreenEffectService;->mGrayScale:F
    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->access$3300(Lcom/android/server/display/ScreenEffectService;)F

    move-result v0

    return v0
.end method

.method public getNightLightBrightness()I
    .registers 2

    .line 771
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    # getter for: Lcom/android/server/display/ScreenEffectService;->mNightLightBrightness:I
    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->access$3100(Lcom/android/server/display/ScreenEffectService;)I

    move-result v0

    return v0
.end method

.method public initDisplayPowerController(Lcom/android/server/display/DisplayPowerController;Landroid/os/Looper;)V
    .registers 7
    .param p1, "controller"    # Lcom/android/server/display/DisplayPowerController;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 810
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    # setter for: Lcom/android/server/display/ScreenEffectService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;
    invoke-static {v0, p1}, Lcom/android/server/display/ScreenEffectService;->access$3402(Lcom/android/server/display/ScreenEffectService;Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController;

    .line 811
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    new-instance v1, Lcom/android/server/display/ScreenEffectService$BrightnessHandler;

    iget-object v2, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    .line 812
    if-eqz p2, :cond_f

    move-object v3, p2

    goto :goto_19

    :cond_f
    iget-object v3, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    # getter for: Lcom/android/server/display/ScreenEffectService;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/display/ScreenEffectService;->access$500(Lcom/android/server/display/ScreenEffectService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    :goto_19
    invoke-direct {v1, v2, v3}, Lcom/android/server/display/ScreenEffectService$BrightnessHandler;-><init>(Lcom/android/server/display/ScreenEffectService;Landroid/os/Looper;)V

    .line 811
    # setter for: Lcom/android/server/display/ScreenEffectService;->mBrightnessHandler:Lcom/android/server/display/ScreenEffectService$BrightnessHandler;
    invoke-static {v0, v1}, Lcom/android/server/display/ScreenEffectService;->access$602(Lcom/android/server/display/ScreenEffectService;Lcom/android/server/display/ScreenEffectService$BrightnessHandler;)Lcom/android/server/display/ScreenEffectService$BrightnessHandler;

    .line 813
    return-void
.end method

.method public setNightLight(I)V
    .registers 8
    .param p1, "value"    # I

    .line 776
    and-int/lit16 v0, p1, 0xff

    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    .line 777
    # getter for: Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/display/ScreenEffectService;->access$700(Lcom/android/server/display/ScreenEffectService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110a0015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    .line 779
    # getter for: Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/display/ScreenEffectService;->access$700(Lcom/android/server/display/ScreenEffectService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x110a0014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 776
    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    .line 781
    .local v0, "brightness":I
    const v1, 0xff00

    and-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    .line 782
    # getter for: Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/display/ScreenEffectService;->access$700(Lcom/android/server/display/ScreenEffectService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x110a0018

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    .line 784
    # getter for: Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/display/ScreenEffectService;->access$700(Lcom/android/server/display/ScreenEffectService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x110a0017

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 781
    invoke-static {v1, v2, v3}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    .line 786
    .local v1, "color":I
    iget-object v2, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    # getter for: Lcom/android/server/display/ScreenEffectService;->mNightLightBrightness:I
    invoke-static {v2}, Lcom/android/server/display/ScreenEffectService;->access$3100(Lcom/android/server/display/ScreenEffectService;)I

    move-result v2

    if-eq v0, v2, :cond_7c

    iget-object v2, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    # getter for: Lcom/android/server/display/ScreenEffectService;->mBrightnessHandler:Lcom/android/server/display/ScreenEffectService$BrightnessHandler;
    invoke-static {v2}, Lcom/android/server/display/ScreenEffectService;->access$600(Lcom/android/server/display/ScreenEffectService;)Lcom/android/server/display/ScreenEffectService$BrightnessHandler;

    move-result-object v2

    if-eqz v2, :cond_7c

    .line 787
    iget-object v2, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    # getter for: Lcom/android/server/display/ScreenEffectService;->mBrightnessHandler:Lcom/android/server/display/ScreenEffectService$BrightnessHandler;
    invoke-static {v2}, Lcom/android/server/display/ScreenEffectService;->access$600(Lcom/android/server/display/ScreenEffectService;)Lcom/android/server/display/ScreenEffectService$BrightnessHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    # getter for: Lcom/android/server/display/ScreenEffectService;->mBrightnessHandler:Lcom/android/server/display/ScreenEffectService$BrightnessHandler;
    invoke-static {v3}, Lcom/android/server/display/ScreenEffectService;->access$600(Lcom/android/server/display/ScreenEffectService;)Lcom/android/server/display/ScreenEffectService$BrightnessHandler;

    move-result-object v3

    const/4 v4, 0x0

    .line 788
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 787
    invoke-static {v3, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/display/ScreenEffectService$BrightnessHandler;->sendMessage(Landroid/os/Message;)Z

    .line 790
    :cond_7c
    iget-object v2, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    # getter for: Lcom/android/server/display/ScreenEffectService;->mNightLightColor:I
    invoke-static {v2}, Lcom/android/server/display/ScreenEffectService;->access$3200(Lcom/android/server/display/ScreenEffectService;)I

    move-result v2

    if-eq v1, v2, :cond_97

    .line 791
    iget-object v2, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    # setter for: Lcom/android/server/display/ScreenEffectService;->mNightLightColor:I
    invoke-static {v2, v1}, Lcom/android/server/display/ScreenEffectService;->access$3202(Lcom/android/server/display/ScreenEffectService;I)I

    .line 792
    iget-object v2, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    # getter for: Lcom/android/server/display/ScreenEffectService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/display/ScreenEffectService;->access$500(Lcom/android/server/display/ScreenEffectService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 794
    :cond_97
    return-void
.end method

.method public updateLocalScreenEffect(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 743
    if-eqz p1, :cond_38

    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    # getter for: Lcom/android/server/display/ScreenEffectService;->mTopAppPkg:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->access$2800(Lcom/android/server/display/ScreenEffectService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 744
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    # setter for: Lcom/android/server/display/ScreenEffectService;->mTopAppPkg:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/server/display/ScreenEffectService;->access$2802(Lcom/android/server/display/ScreenEffectService;Ljava/lang/String;)Ljava/lang/String;

    .line 745
    # getter for: Lcom/android/server/display/ScreenEffectService;->SUPPORT_MONOCHROME_MODE:Z
    invoke-static {}, Lcom/android/server/display/ScreenEffectService;->access$2700()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 746
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    # getter for: Lcom/android/server/display/ScreenEffectService;->mMonochromeModeEnabled:Z
    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->access$1500(Lcom/android/server/display/ScreenEffectService;)Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    # getter for: Lcom/android/server/display/ScreenEffectService;->mMonochromeModeType:I
    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->access$1700(Lcom/android/server/display/ScreenEffectService;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_38

    .line 748
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    # getter for: Lcom/android/server/display/ScreenEffectService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->access$500(Lcom/android/server/display/ScreenEffectService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 752
    :cond_38
    return-void
.end method

.method public updateScreenEffect(I)V
    .registers 6
    .param p1, "state"    # I

    .line 756
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    # getter for: Lcom/android/server/display/ScreenEffectService;->mDisplayState:I
    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->access$100(Lcom/android/server/display/ScreenEffectService;)I

    move-result v0

    .line 757
    .local v0, "oldState":I
    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    # setter for: Lcom/android/server/display/ScreenEffectService;->mDisplayState:I
    invoke-static {v1, p1}, Lcom/android/server/display/ScreenEffectService;->access$102(Lcom/android/server/display/ScreenEffectService;I)I

    .line 758
    sget-boolean v1, Lmiui/os/DeviceFeature;->PERSIST_SCREEN_EFFECT:Z

    if-nez v1, :cond_2c

    .line 759
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2c

    if-eq p1, v0, :cond_2c

    .line 760
    iget-object v2, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    # getter for: Lcom/android/server/display/ScreenEffectService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v2}, Lcom/android/server/display/ScreenEffectService;->access$2900(Lcom/android/server/display/ScreenEffectService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v2

    if-nez v2, :cond_27

    .line 761
    iget-object v2, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/display/ScreenEffectService;->mTopAppPkg:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/server/display/ScreenEffectService;->access$2802(Lcom/android/server/display/ScreenEffectService;Ljava/lang/String;)Ljava/lang/String;

    .line 764
    :cond_27
    iget-object v2, p0, Lcom/android/server/display/ScreenEffectService$LocalService;->this$0:Lcom/android/server/display/ScreenEffectService;

    # invokes: Lcom/android/server/display/ScreenEffectService;->setScreenModes(Z)V
    invoke-static {v2, v1}, Lcom/android/server/display/ScreenEffectService;->access$3000(Lcom/android/server/display/ScreenEffectService;Z)V

    .line 767
    :cond_2c
    return-void
.end method
