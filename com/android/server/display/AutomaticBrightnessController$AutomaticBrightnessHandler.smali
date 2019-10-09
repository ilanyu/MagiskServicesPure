.class final Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;
.super Landroid/os/Handler;
.source "AutomaticBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutomaticBrightnessHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;

    .line 797
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    .line 798
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 799
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 803
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3a

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_44

    goto :goto_38

    .line 820
    :pswitch_a
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;
    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$400(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/BrightnessMappingStrategy;

    move-result-object v0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Lcom/android/server/display/BrightnessMappingStrategy;->mRotation:I

    .line 821
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # invokes: Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V
    invoke-static {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->access$300(Lcom/android/server/display/AutomaticBrightnessController;Z)V

    goto :goto_38

    .line 817
    :pswitch_20
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # invokes: Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V
    invoke-static {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->access$300(Lcom/android/server/display/AutomaticBrightnessController;Z)V

    .line 818
    goto :goto_38

    .line 813
    :pswitch_26
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # invokes: Lcom/android/server/display/AutomaticBrightnessController;->invalidateShortTermModel()V
    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$200(Lcom/android/server/display/AutomaticBrightnessController;)V

    .line 814
    goto :goto_38

    .line 809
    :pswitch_2c
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # invokes: Lcom/android/server/display/AutomaticBrightnessController;->collectBrightnessAdjustmentSample()V
    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$100(Lcom/android/server/display/AutomaticBrightnessController;)V

    .line 810
    goto :goto_38

    .line 805
    :pswitch_32
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # invokes: Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLux()V
    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$000(Lcom/android/server/display/AutomaticBrightnessController;)V

    .line 806
    nop

    .line 825
    :goto_38
    return-void

    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_32
        :pswitch_2c
        :pswitch_26
    .end packed-switch

    :pswitch_data_44
    .packed-switch 0x3e8
        :pswitch_20
        :pswitch_a
    .end packed-switch
.end method
