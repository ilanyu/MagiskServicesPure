.class Lcom/android/server/wm/MiuiGestureRecentsStrategy$GestureRecentsHandler;
.super Landroid/os/Handler;
.source "MiuiGestureRecentsStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MiuiGestureRecentsStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureRecentsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/MiuiGestureRecentsStrategy;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/MiuiGestureRecentsStrategy;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 502
    iput-object p1, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$GestureRecentsHandler;->this$0:Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    .line 503
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 504
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 509
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_34

    goto :goto_2e

    .line 526
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$GestureRecentsHandler;->this$0:Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    # invokes: Lcom/android/server/wm/MiuiGestureRecentsStrategy;->resetAllStatus()V
    invoke-static {v0}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->access$1000(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)V

    .line 527
    goto :goto_2e

    .line 523
    :pswitch_c
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$GestureRecentsHandler;->this$0:Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    # invokes: Lcom/android/server/wm/MiuiGestureRecentsStrategy;->handleRestartFromRecentsAnimation()V
    invoke-static {v0}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->access$1900(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)V

    .line 524
    goto :goto_2e

    .line 520
    :pswitch_12
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$GestureRecentsHandler;->this$0:Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    # invokes: Lcom/android/server/wm/MiuiGestureRecentsStrategy;->handleCancelAnimation(Lcom/android/server/wm/AppWindowToken;)V
    invoke-static {v0, v1}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->access$1800(Lcom/android/server/wm/MiuiGestureRecentsStrategy;Lcom/android/server/wm/AppWindowToken;)V

    .line 521
    goto :goto_2e

    .line 517
    :pswitch_1c
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$GestureRecentsHandler;->this$0:Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    # invokes: Lcom/android/server/wm/MiuiGestureRecentsStrategy;->handleResetInput()V
    invoke-static {v0}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->access$1700(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)V

    .line 518
    goto :goto_2e

    .line 514
    :pswitch_22
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$GestureRecentsHandler;->this$0:Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    # invokes: Lcom/android/server/wm/MiuiGestureRecentsStrategy;->handleResetGoRecentsAnimation()V
    invoke-static {v0}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->access$1600(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)V

    .line 515
    goto :goto_2e

    .line 511
    :pswitch_28
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$GestureRecentsHandler;->this$0:Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    # invokes: Lcom/android/server/wm/MiuiGestureRecentsStrategy;->startGoRecentsAnimation()V
    invoke-static {v0}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->access$1500(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_2f

    .line 512
    nop

    .line 535
    :goto_2e
    goto :goto_33

    .line 531
    :catch_2f
    move-exception v0

    .line 534
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 536
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_33
    return-void

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_28
        :pswitch_22
        :pswitch_1c
        :pswitch_12
        :pswitch_c
        :pswitch_6
    .end packed-switch
.end method
