.class Lcom/android/server/wm/SurfaceAnimationRunner$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SurfaceAnimationRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/SurfaceAnimationRunner;->startAnimationLocked(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/SurfaceAnimationRunner;

.field final synthetic val$a:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;


# direct methods
.method constructor <init>(Lcom/android/server/wm/SurfaceAnimationRunner;Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 185
    iput-object p1, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->this$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    iput-object p2, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->val$a:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 197
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->this$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    # getter for: Lcom/android/server/wm/SurfaceAnimationRunner;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/wm/SurfaceAnimationRunner;->access$300(Lcom/android/server/wm/SurfaceAnimationRunner;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 198
    :try_start_7
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->this$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    iget-object v1, v1, Lcom/android/server/wm/SurfaceAnimationRunner;->mRunningAnimations:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->val$a:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    iget-object v2, v2, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->this$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    # getter for: Lcom/android/server/wm/SurfaceAnimationRunner;->mCancelLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/wm/SurfaceAnimationRunner;->access$100(Lcom/android/server/wm/SurfaceAnimationRunner;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_32

    .line 200
    :try_start_19
    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->val$a:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    # getter for: Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mCancelled:Z
    invoke-static {v2}, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->access$000(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 203
    invoke-static {}, Lcom/android/server/AnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->val$a:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    iget-object v3, v3, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mFinishCallback:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 205
    :cond_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_19 .. :try_end_2d} :catchall_2f

    .line 206
    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_32

    .line 207
    return-void

    .line 205
    :catchall_2f
    move-exception v2

    :try_start_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    :try_start_31
    throw v2

    .line 206
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 188
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->this$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    # getter for: Lcom/android/server/wm/SurfaceAnimationRunner;->mCancelLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/wm/SurfaceAnimationRunner;->access$100(Lcom/android/server/wm/SurfaceAnimationRunner;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 189
    :try_start_7
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->val$a:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    # getter for: Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mCancelled:Z
    invoke-static {v1}, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->access$000(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 190
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->this$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    # getter for: Lcom/android/server/wm/SurfaceAnimationRunner;->mFrameTransaction:Landroid/view/SurfaceControl$Transaction;
    invoke-static {v1}, Lcom/android/server/wm/SurfaceAnimationRunner;->access$200(Lcom/android/server/wm/SurfaceAnimationRunner;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->val$a:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    iget-object v2, v2, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 192
    :cond_1c
    monitor-exit v0

    .line 193
    return-void

    .line 192
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_1e

    throw v1
.end method
