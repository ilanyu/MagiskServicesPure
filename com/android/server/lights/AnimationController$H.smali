.class Lcom/android/server/lights/AnimationController$H;
.super Landroid/os/Handler;
.source "AnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/AnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/lights/AnimationController;


# direct methods
.method public constructor <init>(Lcom/android/server/lights/AnimationController;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 69
    iput-object p1, p0, Lcom/android/server/lights/AnimationController$H;->this$0:Lcom/android/server/lights/AnimationController;

    .line 70
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 71
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 76
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_108

    goto/16 :goto_101

    .line 102
    :pswitch_8
    iget-object v0, p0, Lcom/android/server/lights/AnimationController$H;->this$0:Lcom/android/server/lights/AnimationController;

    # getter for: Lcom/android/server/lights/AnimationController;->mAddedMessageAnimationView:Z
    invoke-static {v0}, Lcom/android/server/lights/AnimationController;->access$100(Lcom/android/server/lights/AnimationController;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_32

    .line 103
    iget-object v0, p0, Lcom/android/server/lights/AnimationController$H;->this$0:Lcom/android/server/lights/AnimationController;

    # getter for: Lcom/android/server/lights/AnimationController;->mMessageView:Lcom/android/server/lights/view/MessageView;
    invoke-static {v0}, Lcom/android/server/lights/AnimationController;->access$200(Lcom/android/server/lights/AnimationController;)Lcom/android/server/lights/view/MessageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/lights/view/MessageView;->stopAnimation()V

    .line 104
    iget-object v0, p0, Lcom/android/server/lights/AnimationController$H;->this$0:Lcom/android/server/lights/AnimationController;

    # getter for: Lcom/android/server/lights/AnimationController;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/android/server/lights/AnimationController;->access$300(Lcom/android/server/lights/AnimationController;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/lights/AnimationController$H;->this$0:Lcom/android/server/lights/AnimationController;

    # getter for: Lcom/android/server/lights/AnimationController;->mMessageView:Lcom/android/server/lights/view/MessageView;
    invoke-static {v2}, Lcom/android/server/lights/AnimationController;->access$200(Lcom/android/server/lights/AnimationController;)Lcom/android/server/lights/view/MessageView;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 105
    iget-object v0, p0, Lcom/android/server/lights/AnimationController$H;->this$0:Lcom/android/server/lights/AnimationController;

    # setter for: Lcom/android/server/lights/AnimationController;->mAddedMessageAnimationView:Z
    invoke-static {v0, v1}, Lcom/android/server/lights/AnimationController;->access$102(Lcom/android/server/lights/AnimationController;Z)Z

    .line 108
    :cond_32
    iget-object v0, p0, Lcom/android/server/lights/AnimationController$H;->this$0:Lcom/android/server/lights/AnimationController;

    # getter for: Lcom/android/server/lights/AnimationController;->mAddedMusicAnimationView:Z
    invoke-static {v0}, Lcom/android/server/lights/AnimationController;->access$400(Lcom/android/server/lights/AnimationController;)Z

    move-result v0

    if-eqz v0, :cond_5c

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_5c

    .line 109
    iget-object v0, p0, Lcom/android/server/lights/AnimationController$H;->this$0:Lcom/android/server/lights/AnimationController;

    # getter for: Lcom/android/server/lights/AnimationController;->mMusicView:Lcom/android/server/lights/view/MusicView;
    invoke-static {v0}, Lcom/android/server/lights/AnimationController;->access$500(Lcom/android/server/lights/AnimationController;)Lcom/android/server/lights/view/MusicView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/lights/view/MusicView;->stopAnimation()V

    .line 110
    iget-object v0, p0, Lcom/android/server/lights/AnimationController$H;->this$0:Lcom/android/server/lights/AnimationController;

    # getter for: Lcom/android/server/lights/AnimationController;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/android/server/lights/AnimationController;->access$300(Lcom/android/server/lights/AnimationController;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/lights/AnimationController$H;->this$0:Lcom/android/server/lights/AnimationController;

    # getter for: Lcom/android/server/lights/AnimationController;->mMusicView:Lcom/android/server/lights/view/MusicView;
    invoke-static {v2}, Lcom/android/server/lights/AnimationController;->access$500(Lcom/android/server/lights/AnimationController;)Lcom/android/server/lights/view/MusicView;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 111
    iget-object v0, p0, Lcom/android/server/lights/AnimationController$H;->this$0:Lcom/android/server/lights/AnimationController;

    # setter for: Lcom/android/server/lights/AnimationController;->mAddedMusicAnimationView:Z
    invoke-static {v0, v1}, Lcom/android/server/lights/AnimationController;->access$402(Lcom/android/server/lights/AnimationController;Z)Z

    .line 113
    :cond_5c
    iget-object v0, p0, Lcom/android/server/lights/AnimationController$H;->this$0:Lcom/android/server/lights/AnimationController;

    # getter for: Lcom/android/server/lights/AnimationController;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/lights/AnimationController;->access$000(Lcom/android/server/lights/AnimationController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_101

    .line 114
    iget-object v0, p0, Lcom/android/server/lights/AnimationController$H;->this$0:Lcom/android/server/lights/AnimationController;

    # getter for: Lcom/android/server/lights/AnimationController;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/lights/AnimationController;->access$000(Lcom/android/server/lights/AnimationController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_101

    .line 79
    :pswitch_73
    iget-object v0, p0, Lcom/android/server/lights/AnimationController$H;->this$0:Lcom/android/server/lights/AnimationController;

    # getter for: Lcom/android/server/lights/AnimationController;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/lights/AnimationController;->access$000(Lcom/android/server/lights/AnimationController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 80
    iget-object v0, p0, Lcom/android/server/lights/AnimationController$H;->this$0:Lcom/android/server/lights/AnimationController;

    # getter for: Lcom/android/server/lights/AnimationController;->mAddedMessageAnimationView:Z
    invoke-static {v0}, Lcom/android/server/lights/AnimationController;->access$100(Lcom/android/server/lights/AnimationController;)Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 81
    iget-object v0, p0, Lcom/android/server/lights/AnimationController$H;->this$0:Lcom/android/server/lights/AnimationController;

    # getter for: Lcom/android/server/lights/AnimationController;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/android/server/lights/AnimationController;->access$300(Lcom/android/server/lights/AnimationController;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/lights/AnimationController$H;->this$0:Lcom/android/server/lights/AnimationController;

    # getter for: Lcom/android/server/lights/AnimationController;->mMessageView:Lcom/android/server/lights/view/MessageView;
    invoke-static {v2}, Lcom/android/server/lights/AnimationController;->access$200(Lcom/android/server/lights/AnimationController;)Lcom/android/server/lights/view/MessageView;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 82
    iget-object v0, p0, Lcom/android/server/lights/AnimationController$H;->this$0:Lcom/android/server/lights/AnimationController;

    # setter for: Lcom/android/server/lights/AnimationController;->mAddedMessageAnimationView:Z
    invoke-static {v0, v1}, Lcom/android/server/lights/AnimationController;->access$102(Lcom/android/server/lights/AnimationController;Z)Z

    .line 85
    :cond_9a
    iget-object v0, p0, Lcom/android/server/lights/AnimationController$H;->this$0:Lcom/android/server/lights/AnimationController;

    # getter for: Lcom/android/server/lights/AnimationController;->mAddedMusicAnimationView:Z
    invoke-static {v0}, Lcom/android/server/lights/AnimationController;->access$400(Lcom/android/server/lights/AnimationController;)Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 86
    iget-object v0, p0, Lcom/android/server/lights/AnimationController$H;->this$0:Lcom/android/server/lights/AnimationController;

    # getter for: Lcom/android/server/lights/AnimationController;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/android/server/lights/AnimationController;->access$300(Lcom/android/server/lights/AnimationController;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/lights/AnimationController$H;->this$0:Lcom/android/server/lights/AnimationController;

    # getter for: Lcom/android/server/lights/AnimationController;->mMusicView:Lcom/android/server/lights/view/MusicView;
    invoke-static {v2}, Lcom/android/server/lights/AnimationController;->access$500(Lcom/android/server/lights/AnimationController;)Lcom/android/server/lights/view/MusicView;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 87
    iget-object v0, p0, Lcom/android/server/lights/AnimationController$H;->this$0:Lcom/android/server/lights/AnimationController;

    # setter for: Lcom/android/server/lights/AnimationController;->mAddedMusicAnimationView:Z
    invoke-static {v0, v1}, Lcom/android/server/lights/AnimationController;->access$402(Lcom/android/server/lights/AnimationController;Z)Z

    .line 89
    :cond_b6
    iget-object v0, p0, Lcom/android/server/lights/AnimationController$H;->this$0:Lcom/android/server/lights/AnimationController;

    # invokes: Lcom/android/server/lights/AnimationController;->getWindowParam()Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0}, Lcom/android/server/lights/AnimationController;->access$600(Lcom/android/server/lights/AnimationController;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 90
    .local v0, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_e0

    .line 91
    iget-object v1, p0, Lcom/android/server/lights/AnimationController$H;->this$0:Lcom/android/server/lights/AnimationController;

    # getter for: Lcom/android/server/lights/AnimationController;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v1}, Lcom/android/server/lights/AnimationController;->access$300(Lcom/android/server/lights/AnimationController;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/lights/AnimationController$H;->this$0:Lcom/android/server/lights/AnimationController;

    # getter for: Lcom/android/server/lights/AnimationController;->mMusicView:Lcom/android/server/lights/view/MusicView;
    invoke-static {v2}, Lcom/android/server/lights/AnimationController;->access$500(Lcom/android/server/lights/AnimationController;)Lcom/android/server/lights/view/MusicView;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    iget-object v1, p0, Lcom/android/server/lights/AnimationController$H;->this$0:Lcom/android/server/lights/AnimationController;

    # getter for: Lcom/android/server/lights/AnimationController;->mMusicView:Lcom/android/server/lights/view/MusicView;
    invoke-static {v1}, Lcom/android/server/lights/AnimationController;->access$500(Lcom/android/server/lights/AnimationController;)Lcom/android/server/lights/view/MusicView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/lights/view/MusicView;->startAnimation()V

    .line 93
    iget-object v1, p0, Lcom/android/server/lights/AnimationController$H;->this$0:Lcom/android/server/lights/AnimationController;

    # setter for: Lcom/android/server/lights/AnimationController;->mAddedMusicAnimationView:Z
    invoke-static {v1, v3}, Lcom/android/server/lights/AnimationController;->access$402(Lcom/android/server/lights/AnimationController;Z)Z

    goto :goto_101

    .line 94
    :cond_e0
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v3, :cond_101

    .line 95
    iget-object v1, p0, Lcom/android/server/lights/AnimationController$H;->this$0:Lcom/android/server/lights/AnimationController;

    # getter for: Lcom/android/server/lights/AnimationController;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v1}, Lcom/android/server/lights/AnimationController;->access$300(Lcom/android/server/lights/AnimationController;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/lights/AnimationController$H;->this$0:Lcom/android/server/lights/AnimationController;

    # getter for: Lcom/android/server/lights/AnimationController;->mMessageView:Lcom/android/server/lights/view/MessageView;
    invoke-static {v2}, Lcom/android/server/lights/AnimationController;->access$200(Lcom/android/server/lights/AnimationController;)Lcom/android/server/lights/view/MessageView;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    iget-object v1, p0, Lcom/android/server/lights/AnimationController$H;->this$0:Lcom/android/server/lights/AnimationController;

    # getter for: Lcom/android/server/lights/AnimationController;->mMessageView:Lcom/android/server/lights/view/MessageView;
    invoke-static {v1}, Lcom/android/server/lights/AnimationController;->access$200(Lcom/android/server/lights/AnimationController;)Lcom/android/server/lights/view/MessageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/lights/view/MessageView;->startAnimation()V

    .line 97
    iget-object v1, p0, Lcom/android/server/lights/AnimationController$H;->this$0:Lcom/android/server/lights/AnimationController;

    # setter for: Lcom/android/server/lights/AnimationController;->mAddedMessageAnimationView:Z
    invoke-static {v1, v3}, Lcom/android/server/lights/AnimationController;->access$102(Lcom/android/server/lights/AnimationController;Z)Z
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_101} :catch_102

    .line 123
    .end local v0    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    :cond_101
    :goto_101
    goto :goto_106

    .line 121
    :catch_102
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 124
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_106
    return-void

    nop

    :pswitch_data_108
    .packed-switch 0x1
        :pswitch_73
        :pswitch_73
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method
