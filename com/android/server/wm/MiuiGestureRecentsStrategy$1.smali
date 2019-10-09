.class Lcom/android/server/wm/MiuiGestureRecentsStrategy$1;
.super Ljava/lang/Object;
.source "MiuiGestureRecentsStrategy.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MiuiGestureRecentsStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/MiuiGestureRecentsStrategy;


# direct methods
.method constructor <init>(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    .line 70
    iput-object p1, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$1;->this$0:Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 118
    # getter for: Lcom/android/server/wm/MiuiGestureRecentsStrategy;->DEBUG:Z
    invoke-static {}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->access$000()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 119
    const-string v0, "MiuiGestureRecentsStrategy"

    const-string v1, "Cancel go recents animation"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_d
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 92
    :try_start_0
    # getter for: Lcom/android/server/wm/MiuiGestureRecentsStrategy;->DEBUG:Z
    invoke-static {}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->access$000()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 93
    const-string v0, "MiuiGestureRecentsStrategy"

    const-string v1, "go recents animation end"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$1;->this$0:Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    # getter for: Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mAppTokenStartFromRecents:Lcom/android/server/wm/AppWindowToken;
    invoke-static {v0}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->access$300(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 97
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$1;->this$0:Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    # getter for: Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mGestureController:Lcom/android/server/wm/MiuiGestureController;
    invoke-static {v0}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->access$200(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)Lcom/android/server/wm/MiuiGestureController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiGestureController;->notifySkipAppTransition()V

    .line 99
    :cond_1e
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$1;->this$0:Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    # getter for: Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mGestureController:Lcom/android/server/wm/MiuiGestureController;
    invoke-static {v0}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->access$200(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)Lcom/android/server/wm/MiuiGestureController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiGestureController;->notifyGestureAnimationEnd()V

    .line 100
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$1;->this$0:Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    # getter for: Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mGestureController:Lcom/android/server/wm/MiuiGestureController;
    invoke-static {v0}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->access$200(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)Lcom/android/server/wm/MiuiGestureController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MiuiGestureController;->notifyGestureFinish(Z)V

    .line 102
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$1;->this$0:Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    # getter for: Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mAnimationHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->access$400(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 103
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$1;->this$0:Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    # getter for: Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mAnimationHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->access$400(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 105
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$1;->this$0:Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    # getter for: Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mAnimationHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->access$400(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 106
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$1;->this$0:Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    # getter for: Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mAnimationHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->access$400(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5b} :catch_5c

    .line 113
    goto :goto_79

    .line 107
    :catch_5c
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MiuiGestureRecentsStrategy"

    const-string/jumbo v2, "recents animation end exception"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$1;->this$0:Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    # getter for: Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mResetCallback:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->access$500(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_76

    .line 110
    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$1;->this$0:Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    # getter for: Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mResetCallback:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->access$500(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 112
    :cond_76
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 114
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_79
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 87
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 74
    :try_start_0
    # getter for: Lcom/android/server/wm/MiuiGestureRecentsStrategy;->DEBUG:Z
    invoke-static {}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->access$000()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 75
    const-string v0, "MiuiGestureRecentsStrategy"

    const-string/jumbo v1, "start go RecentsAnimation"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$1;->this$0:Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    sget-object v1, Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;->STATUS_GO_RECENTS_ANIMATING:Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;

    # setter for: Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mAnimationStatus:Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;
    invoke-static {v0, v1}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->access$102(Lcom/android/server/wm/MiuiGestureRecentsStrategy;Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;)Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;

    .line 78
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$1;->this$0:Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    # getter for: Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mGestureController:Lcom/android/server/wm/MiuiGestureController;
    invoke-static {v0}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->access$200(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)Lcom/android/server/wm/MiuiGestureController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiGestureController;->notifyGestureAnimationStart()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 82
    goto :goto_2b

    .line 79
    :catch_1f
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MiuiGestureRecentsStrategy"

    const-string/jumbo v2, "start go recents animation exception"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2b
    return-void
.end method
