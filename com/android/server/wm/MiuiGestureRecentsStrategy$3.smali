.class Lcom/android/server/wm/MiuiGestureRecentsStrategy$3;
.super Ljava/lang/Object;
.source "MiuiGestureRecentsStrategy.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/MiuiGestureRecentsStrategy;->handleRestartFromRecentsAnimation()V
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

    .line 386
    iput-object p1, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$3;->this$0:Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 406
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 397
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$3;->this$0:Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    # getter for: Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mResetCallback:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->access$500(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 398
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$3;->this$0:Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    # getter for: Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mResetCallback:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->access$500(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 400
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$3;->this$0:Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    # getter for: Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mGestureController:Lcom/android/server/wm/MiuiGestureController;
    invoke-static {v0}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->access$200(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)Lcom/android/server/wm/MiuiGestureController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MiuiGestureController;->setKeepWallpaperShowing(Z)V

    .line 401
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$3;->this$0:Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    # invokes: Lcom/android/server/wm/MiuiGestureRecentsStrategy;->resetAllStatus()V
    invoke-static {v0}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->access$1000(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)V

    .line 402
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 393
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 389
    return-void
.end method
