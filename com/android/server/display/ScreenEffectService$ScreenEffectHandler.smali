.class Lcom/android/server/display/ScreenEffectService$ScreenEffectHandler;
.super Landroid/os/Handler;
.source "ScreenEffectService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/ScreenEffectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenEffectHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/ScreenEffectService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/ScreenEffectService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 532
    iput-object p1, p0, Lcom/android/server/display/ScreenEffectService$ScreenEffectHandler;->this$0:Lcom/android/server/display/ScreenEffectService;

    .line 533
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 534
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 538
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 539
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_84

    :pswitch_8
    goto/16 :goto_82

    .line 564
    :pswitch_a
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$ScreenEffectHandler;->this$0:Lcom/android/server/display/ScreenEffectService;

    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService$ScreenEffectHandler;->this$0:Lcom/android/server/display/ScreenEffectService;

    # getter for: Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/display/ScreenEffectService;->access$700(Lcom/android/server/display/ScreenEffectService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/ScreenEffectService$ScreenEffectHandler;->this$0:Lcom/android/server/display/ScreenEffectService;

    iget-object v3, p0, Lcom/android/server/display/ScreenEffectService$ScreenEffectHandler;->this$0:Lcom/android/server/display/ScreenEffectService;

    # getter for: Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/display/ScreenEffectService;->access$700(Lcom/android/server/display/ScreenEffectService;)Landroid/content/Context;

    move-result-object v3

    # invokes: Lcom/android/server/display/ScreenEffectService;->isDarkModeEnable(Landroid/content/Context;)Z
    invoke-static {v2, v3}, Lcom/android/server/display/ScreenEffectService;->access$2400(Lcom/android/server/display/ScreenEffectService;Landroid/content/Context;)Z

    move-result v2

    # invokes: Lcom/android/server/display/ScreenEffectService;->setDarkModeEnable(Landroid/content/Context;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/server/display/ScreenEffectService;->access$2500(Lcom/android/server/display/ScreenEffectService;Landroid/content/Context;Z)V

    .line 565
    goto :goto_82

    .line 567
    :pswitch_22
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$ScreenEffectHandler;->this$0:Lcom/android/server/display/ScreenEffectService;

    # invokes: Lcom/android/server/display/ScreenEffectService;->updateUnlimitedColorLevel()V
    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->access$1400(Lcom/android/server/display/ScreenEffectService;)V

    goto :goto_82

    .line 556
    :pswitch_28
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 557
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 558
    .local v1, "red":F
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 559
    .local v2, "green":F
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 560
    .local v3, "blue":F
    iget-object v4, p0, Lcom/android/server/display/ScreenEffectService$ScreenEffectHandler;->this$0:Lcom/android/server/display/ScreenEffectService;

    iget v5, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/display/ScreenEffectService;->notifySFPccLevel(IFFF)V
    invoke-static {v4, v5, v1, v2, v3}, Lcom/android/server/display/ScreenEffectService;->access$2300(Lcom/android/server/display/ScreenEffectService;IFFF)V

    .line 561
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 562
    goto :goto_82

    .line 553
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "red":F
    .end local v2    # "green":F
    .end local v3    # "blue":F
    :pswitch_4f
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$ScreenEffectHandler;->this$0:Lcom/android/server/display/ScreenEffectService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_57

    goto :goto_58

    :cond_57
    const/4 v2, 0x0

    :goto_58
    # invokes: Lcom/android/server/display/ScreenEffectService;->notifySFWcgState(Z)V
    invoke-static {v0, v2}, Lcom/android/server/display/ScreenEffectService;->access$2200(Lcom/android/server/display/ScreenEffectService;Z)V

    .line 554
    goto :goto_82

    .line 550
    :pswitch_5c
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$ScreenEffectHandler;->this$0:Lcom/android/server/display/ScreenEffectService;

    # invokes: Lcom/android/server/display/ScreenEffectService;->updateNightLightColor()V
    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->access$2100(Lcom/android/server/display/ScreenEffectService;)V

    .line 551
    goto :goto_82

    .line 547
    :pswitch_62
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$ScreenEffectHandler;->this$0:Lcom/android/server/display/ScreenEffectService;

    # invokes: Lcom/android/server/display/ScreenEffectService;->updateMonochromeMode()V
    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->access$1600(Lcom/android/server/display/ScreenEffectService;)V

    .line 548
    goto :goto_82

    .line 544
    :pswitch_68
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$ScreenEffectHandler;->this$0:Lcom/android/server/display/ScreenEffectService;

    # invokes: Lcom/android/server/display/ScreenEffectService;->updateScreenOptimize()V
    invoke-static {v0}, Lcom/android/server/display/ScreenEffectService;->access$1100(Lcom/android/server/display/ScreenEffectService;)V

    .line 545
    goto :goto_82

    .line 541
    :pswitch_6e
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService$ScreenEffectHandler;->this$0:Lcom/android/server/display/ScreenEffectService;

    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService$ScreenEffectHandler;->this$0:Lcom/android/server/display/ScreenEffectService;

    # getter for: Lcom/android/server/display/ScreenEffectService;->mPaperModeEnabled:Z
    invoke-static {v1}, Lcom/android/server/display/ScreenEffectService;->access$400(Lcom/android/server/display/ScreenEffectService;)Z

    move-result v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    # invokes: Lcom/android/server/display/ScreenEffectService;->updatePaperMode(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/android/server/display/ScreenEffectService;->access$800(Lcom/android/server/display/ScreenEffectService;ZZ)V

    .line 542
    nop

    .line 570
    :goto_82
    return-void

    nop

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_6e
        :pswitch_68
        :pswitch_62
        :pswitch_8
        :pswitch_5c
        :pswitch_4f
        :pswitch_28
        :pswitch_22
        :pswitch_8
        :pswitch_a
    .end packed-switch
.end method
