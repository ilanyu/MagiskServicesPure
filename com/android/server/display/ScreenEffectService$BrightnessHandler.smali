.class Lcom/android/server/display/ScreenEffectService$BrightnessHandler;
.super Landroid/os/Handler;
.source "ScreenEffectService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/ScreenEffectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrightnessHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/ScreenEffectService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/ScreenEffectService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 868
    iput-object p1, p0, Lcom/android/server/display/ScreenEffectService$BrightnessHandler;->this$0:Lcom/android/server/display/ScreenEffectService;

    .line 869
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 870
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 874
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_34

    goto :goto_29

    .line 879
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$BrightnessHandler;->this$0:Lcom/android/server/display/ScreenEffectService;

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    # setter for: Lcom/android/server/display/ScreenEffectService;->mGrayScale:F
    invoke-static {v0, v1}, Lcom/android/server/display/ScreenEffectService;->access$3302(Lcom/android/server/display/ScreenEffectService;F)F

    goto :goto_29

    .line 876
    :pswitch_1b
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$BrightnessHandler;->this$0:Lcom/android/server/display/ScreenEffectService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # setter for: Lcom/android/server/display/ScreenEffectService;->mNightLightBrightness:I
    invoke-static {v0, v1}, Lcom/android/server/display/ScreenEffectService;->access$3102(Lcom/android/server/display/ScreenEffectService;I)I

    .line 877
    nop

    .line 882
    :goto_29
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$BrightnessHandler;->this$0:Lcom/android/server/display/ScreenEffectService;

    # getter for: Lcom/android/server/display/ScreenEffectService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;
    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->access$3400(Lcom/android/server/display/ScreenEffectService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->updateBrightness()V

    .line 883
    return-void

    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_6
    .end packed-switch
.end method
