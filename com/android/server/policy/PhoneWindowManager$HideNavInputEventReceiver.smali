.class final Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "HideNavInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 4706
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 4707
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 4708
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;I)V
    .registers 12
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "displayId"    # I

    .line 4712
    const/4 v0, 0x0

    .line 4714
    .local v0, "handled":Z
    :try_start_1
    instance-of v1, p1, Landroid/view/MotionEvent;

    if-eqz v1, :cond_6e

    .line 4715
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_6e

    .line 4716
    move-object v1, p1

    check-cast v1, Landroid/view/MotionEvent;

    .line 4717
    .local v1, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_6e

    .line 4719
    const/4 v2, 0x0

    .line 4720
    .local v2, "changed":Z
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_73

    .line 4721
    :try_start_20
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    if-nez v4, :cond_2b

    .line 4722
    monitor-exit v3
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_6b

    .line 4754
    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 4722
    return-void

    .line 4729
    :cond_2b
    :try_start_2b
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    or-int/lit8 v4, v4, 0x2

    or-int/lit8 v4, v4, 0x1

    or-int/lit8 v4, v4, 0x4

    .line 4733
    .local v4, "newVal":I
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    if-eq v5, v4, :cond_40

    .line 4734
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iput v4, v5, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    .line 4735
    const/4 v2, 0x1

    .line 4740
    :cond_40
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    or-int/lit8 v4, v5, 0x2

    .line 4742
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    if-eq v5, v4, :cond_60

    .line 4743
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iput v4, v5, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    .line 4744
    const/4 v2, 0x1

    .line 4745
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mClearHideNavigationFlag:Ljava/lang/Runnable;
    invoke-static {v6}, Lcom/android/server/policy/PhoneWindowManager;->access$3700(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/Runnable;

    move-result-object v6

    const-wide/16 v7, 0x3e8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4747
    .end local v4    # "newVal":I
    :cond_60
    monitor-exit v3
    :try_end_61
    .catchall {:try_start_2b .. :try_end_61} :catchall_6b

    .line 4748
    if-eqz v2, :cond_6e

    .line 4749
    :try_start_63
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->reevaluateStatusBarVisibility()V
    :try_end_6a
    .catchall {:try_start_63 .. :try_end_6a} :catchall_73

    .end local v1    # "motionEvent":Landroid/view/MotionEvent;
    .end local v2    # "changed":Z
    goto :goto_6e

    .line 4747
    .restart local v1    # "motionEvent":Landroid/view/MotionEvent;
    .restart local v2    # "changed":Z
    :catchall_6b
    move-exception v4

    :try_start_6c
    monitor-exit v3
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    :try_start_6d
    throw v4
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_73

    .line 4754
    .end local v1    # "motionEvent":Landroid/view/MotionEvent;
    .end local v2    # "changed":Z
    :cond_6e
    :goto_6e
    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 4755
    nop

    .line 4756
    return-void

    .line 4754
    :catchall_73
    move-exception v1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v1
.end method
