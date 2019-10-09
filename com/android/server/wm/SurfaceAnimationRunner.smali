.class Lcom/android/server/wm/SurfaceAnimationRunner;
.super Ljava/lang/Object;
.source "SurfaceAnimationRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/SurfaceAnimationRunner$SfValueAnimator;,
        Lcom/android/server/wm/SurfaceAnimationRunner$AnimatorFactory;,
        Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;
    }
.end annotation


# instance fields
.field private final mAnimationHandler:Landroid/animation/AnimationHandler;

.field private mAnimationStartDeferred:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mAnimatorFactory:Lcom/android/server/wm/SurfaceAnimationRunner$AnimatorFactory;

.field private mApplyScheduled:Z

.field private final mApplyTransactionRunnable:Ljava/lang/Runnable;

.field private final mCancelLock:Ljava/lang/Object;

.field mChoreographer:Landroid/view/Choreographer;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mFrameTransaction:Landroid/view/SurfaceControl$Transaction;

.field private final mLock:Ljava/lang/Object;

.field final mPendingAnimations:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;",
            ">;"
        }
    .end annotation
.end field

.field final mRunningAnimations:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 3

    .line 74
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v0}, Lcom/android/server/wm/SurfaceAnimationRunner;-><init>(Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;Lcom/android/server/wm/SurfaceAnimationRunner$AnimatorFactory;Landroid/view/SurfaceControl$Transaction;)V

    .line 75
    return-void
.end method

.method constructor <init>(Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;Lcom/android/server/wm/SurfaceAnimationRunner$AnimatorFactory;Landroid/view/SurfaceControl$Transaction;)V
    .registers 8
    .param p1, "callbackProvider"    # Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;
    .param p2, "animatorFactory"    # Lcom/android/server/wm/SurfaceAnimationRunner$AnimatorFactory;
    .param p3, "frameTransaction"    # Landroid/view/SurfaceControl$Transaction;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mLock:Ljava/lang/Object;

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mCancelLock:Ljava/lang/Object;

    .line 56
    new-instance v0, Lcom/android/server/wm/-$$Lambda$SurfaceAnimationRunner$lSzwjoKEGADoEFOzdEnwriAk0T4;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$SurfaceAnimationRunner$lSzwjoKEGADoEFOzdEnwriAk0T4;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;)V

    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mApplyTransactionRunnable:Ljava/lang/Runnable;

    .line 62
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPendingAnimations:Landroid/util/ArrayMap;

    .line 66
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mRunningAnimations:Landroid/util/ArrayMap;

    .line 80
    invoke-static {}, Lcom/android/server/wm/SurfaceAnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/-$$Lambda$SurfaceAnimationRunner$xDyZdsMrcbp64p4BQmOGPvVnSWA;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$SurfaceAnimationRunner$xDyZdsMrcbp64p4BQmOGPvVnSWA;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 82
    iput-object p3, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mFrameTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 83
    new-instance v0, Landroid/animation/AnimationHandler;

    invoke-direct {v0}, Landroid/animation/AnimationHandler;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimationHandler:Landroid/animation/AnimationHandler;

    .line 84
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimationHandler:Landroid/animation/AnimationHandler;

    if-eqz p1, :cond_44

    .line 85
    nop

    .line 84
    move-object v1, p1

    goto :goto_4b

    .line 86
    :cond_44
    new-instance v1, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;

    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mChoreographer:Landroid/view/Choreographer;

    invoke-direct {v1, v2}, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;-><init>(Landroid/view/Choreographer;)V

    .line 84
    :goto_4b
    invoke-virtual {v0, v1}, Landroid/animation/AnimationHandler;->setProvider(Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;)V

    .line 87
    if-eqz p2, :cond_53

    .line 88
    nop

    .line 89
    move-object v0, p2

    goto :goto_58

    :cond_53
    new-instance v0, Lcom/android/server/wm/-$$Lambda$SurfaceAnimationRunner$we7K92eAl3biB_bzyqbv5xCmasE;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$SurfaceAnimationRunner$we7K92eAl3biB_bzyqbv5xCmasE;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;)V

    :goto_58
    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimatorFactory:Lcom/android/server/wm/SurfaceAnimationRunner$AnimatorFactory;

    .line 90
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/SurfaceAnimationRunner;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 43
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mCancelLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/SurfaceAnimationRunner;)Landroid/view/SurfaceControl$Transaction;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 43
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mFrameTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/SurfaceAnimationRunner;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 43
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/SurfaceAnimationRunner;)Landroid/animation/AnimationHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 43
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimationHandler:Landroid/animation/AnimationHandler;

    return-object v0
.end method

.method private applyTransaction()V
    .registers 2

    .line 245
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mFrameTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->setAnimationTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 246
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mFrameTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 247
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mApplyScheduled:Z

    .line 248
    return-void
.end method

.method private applyTransformation(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;Landroid/view/SurfaceControl$Transaction;J)V
    .registers 7
    .param p1, "a"    # Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;
    .param p2, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p3, "currentPlayTime"    # J

    .line 224
    iget-object v0, p1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mAnimSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    invoke-interface {v0}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->needsEarlyWakeup()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 225
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->setEarlyWakeup()Landroid/view/SurfaceControl$Transaction;

    .line 227
    :cond_b
    iget-object v0, p1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mAnimSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    iget-object v1, p1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mLeash:Landroid/view/SurfaceControl;

    invoke-interface {v0, p2, v1, p3, p4}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->apply(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;J)V

    .line 228
    return-void
.end method

.method public static synthetic lambda$9Wa9MhcrSX12liOouHtYXEkDU60(Lcom/android/server/wm/SurfaceAnimationRunner;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/SurfaceAnimationRunner;->startAnimations(J)V

    return-void
.end method

.method public static synthetic lambda$lSzwjoKEGADoEFOzdEnwriAk0T4(Lcom/android/server/wm/SurfaceAnimationRunner;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/SurfaceAnimationRunner;->applyTransaction()V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/wm/SurfaceAnimationRunner;)V
    .registers 2

    .line 80
    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mChoreographer:Landroid/view/Choreographer;

    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/android/server/wm/SurfaceAnimationRunner;)Landroid/animation/ValueAnimator;
    .registers 2

    .line 89
    new-instance v0, Lcom/android/server/wm/SurfaceAnimationRunner$SfValueAnimator;

    invoke-direct {v0, p0}, Lcom/android/server/wm/SurfaceAnimationRunner$SfValueAnimator;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;)V

    return-object v0
.end method

.method public static synthetic lambda$onAnimationCancelled$2(Lcom/android/server/wm/SurfaceAnimationRunner;Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)V
    .registers 3
    .param p1, "anim"    # Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    .line 147
    iget-object v0, p1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 148
    invoke-direct {p0}, Lcom/android/server/wm/SurfaceAnimationRunner;->applyTransaction()V

    .line 149
    return-void
.end method

.method public static synthetic lambda$startAnimationLocked$3(Lcom/android/server/wm/SurfaceAnimationRunner;Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .registers 10
    .param p1, "a"    # Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;
    .param p2, "anim"    # Landroid/animation/ValueAnimator;
    .param p3, "animation"    # Landroid/animation/ValueAnimator;

    .line 170
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mCancelLock:Ljava/lang/Object;

    monitor-enter v0

    .line 171
    :try_start_3
    # getter for: Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mCancelled:Z
    invoke-static {p1}, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->access$000(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 172
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v1

    .line 173
    .local v1, "duration":J
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v3

    .line 174
    .local v3, "currentPlayTime":J
    cmp-long v5, v3, v1

    if-lez v5, :cond_16

    .line 175
    move-wide v3, v1

    .line 177
    :cond_16
    iget-object v5, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mFrameTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0, p1, v5, v3, v4}, Lcom/android/server/wm/SurfaceAnimationRunner;->applyTransformation(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;Landroid/view/SurfaceControl$Transaction;J)V

    .line 179
    .end local v1    # "duration":J
    .end local v3    # "currentPlayTime":J
    :cond_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_20

    .line 182
    invoke-direct {p0}, Lcom/android/server/wm/SurfaceAnimationRunner;->scheduleApplyTransaction()V

    .line 183
    return-void

    .line 179
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v1
.end method

.method private scheduleApplyTransaction()V
    .registers 5

    .line 237
    iget-boolean v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mApplyScheduled:Z

    if-nez v0, :cond_10

    .line 238
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mApplyTransactionRunnable:Ljava/lang/Runnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mApplyScheduled:Z

    .line 242
    :cond_10
    return-void
.end method

.method private startAnimationLocked(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)V
    .registers 7
    .param p1, "a"    # Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimatorFactory:Lcom/android/server/wm/SurfaceAnimationRunner$AnimatorFactory;

    invoke-interface {v0}, Lcom/android/server/wm/SurfaceAnimationRunner$AnimatorFactory;->makeAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 167
    .local v0, "anim":Landroid/animation/ValueAnimator;
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->overrideDurationScale(F)V

    .line 168
    iget-object v1, p1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mAnimSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    invoke-interface {v1}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 169
    new-instance v1, Lcom/android/server/wm/-$$Lambda$SurfaceAnimationRunner$puhYAP5tF0mSSJva-eUz59HnrkA;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/wm/-$$Lambda$SurfaceAnimationRunner$puhYAP5tF0mSSJva-eUz59HnrkA;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 185
    new-instance v1, Lcom/android/server/wm/SurfaceAnimationRunner$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/SurfaceAnimationRunner$1;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 209
    iput-object v0, p1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mAnim:Landroid/animation/ValueAnimator;

    .line 210
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mRunningAnimations:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 213
    iget-object v1, p1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mAnimSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    invoke-interface {v1}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->canSkipFirstFrame()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 215
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v1}, Landroid/view/Choreographer;->getFrameIntervalNanos()J

    move-result-wide v1

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 220
    :cond_45
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v1}, Landroid/view/Choreographer;->getFrameTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->doAnimationFrame(J)Z

    .line 221
    return-void
.end method

.method private startAnimations(J)V
    .registers 5
    .param p1, "frameTimeNanos"    # J

    .line 231
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 232
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/wm/SurfaceAnimationRunner;->startPendingAnimationsLocked()V

    .line 233
    monitor-exit v0

    .line 234
    return-void

    .line 233
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private startPendingAnimationsLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPendingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 157
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPendingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    invoke-direct {p0, v1}, Lcom/android/server/wm/SurfaceAnimationRunner;->startAnimationLocked(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)V

    .line 156
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 159
    .end local v0    # "i":I
    :cond_18
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPendingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 160
    return-void
.end method


# virtual methods
.method continueStartingAnimations()V
    .registers 4

    .line 110
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 111
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimationStartDeferred:Z

    .line 112
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPendingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    .line 113
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mChoreographer:Landroid/view/Choreographer;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$SurfaceAnimationRunner$9Wa9MhcrSX12liOouHtYXEkDU60;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$SurfaceAnimationRunner$9Wa9MhcrSX12liOouHtYXEkDU60;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;)V

    invoke-virtual {v1, v2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 115
    :cond_18
    monitor-exit v0

    .line 116
    return-void

    .line 115
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method deferStartingAnimations()V
    .registers 3

    .line 99
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 100
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimationStartDeferred:Z

    .line 101
    monitor-exit v0

    .line 102
    return-void

    .line 101
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method onAnimationCancelled(Landroid/view/SurfaceControl;)V
    .registers 6
    .param p1, "leash"    # Landroid/view/SurfaceControl;

    .line 135
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPendingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 137
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPendingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    monitor-exit v0

    return-void

    .line 140
    :cond_12
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mRunningAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    .line 141
    .local v1, "anim":Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;
    if-eqz v1, :cond_39

    .line 142
    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mRunningAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mCancelLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_3b

    .line 144
    const/4 v3, 0x1

    :try_start_25
    # setter for: Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mCancelled:Z
    invoke-static {v1, v3}, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->access$002(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;Z)Z

    .line 145
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_36

    .line 146
    :try_start_29
    invoke-static {}, Lcom/android/server/wm/SurfaceAnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/wm/-$$Lambda$SurfaceAnimationRunner$SGOilG6qRe0XTsTJRQqQKhta0pA;

    invoke-direct {v3, p0, v1}, Lcom/android/server/wm/-$$Lambda$SurfaceAnimationRunner$SGOilG6qRe0XTsTJRQqQKhta0pA;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_35
    .catchall {:try_start_29 .. :try_end_35} :catchall_3b

    .end local v1    # "anim":Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;
    goto :goto_39

    .line 145
    .restart local v1    # "anim":Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;
    :catchall_36
    move-exception v3

    :try_start_37
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    :try_start_38
    throw v3

    .line 151
    .end local v1    # "anim":Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;
    :cond_39
    :goto_39
    monitor-exit v0

    .line 152
    return-void

    .line 151
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method startAnimation(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;)V
    .registers 9
    .param p1, "a"    # Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;
    .param p2, "animationLeash"    # Landroid/view/SurfaceControl;
    .param p3, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p4, "finishCallback"    # Ljava/lang/Runnable;

    .line 120
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    :try_start_3
    new-instance v1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    invoke-direct {v1, p1, p2, p4}, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Landroid/view/SurfaceControl;Ljava/lang/Runnable;)V

    .line 123
    .local v1, "runningAnim":Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;
    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPendingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-boolean v2, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimationStartDeferred:Z

    if-nez v2, :cond_1b

    .line 125
    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mChoreographer:Landroid/view/Choreographer;

    new-instance v3, Lcom/android/server/wm/-$$Lambda$SurfaceAnimationRunner$9Wa9MhcrSX12liOouHtYXEkDU60;

    invoke-direct {v3, p0}, Lcom/android/server/wm/-$$Lambda$SurfaceAnimationRunner$9Wa9MhcrSX12liOouHtYXEkDU60;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;)V

    invoke-virtual {v2, v3}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 130
    :cond_1b
    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, p3, v2, v3}, Lcom/android/server/wm/SurfaceAnimationRunner;->applyTransformation(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;Landroid/view/SurfaceControl$Transaction;J)V

    .line 131
    .end local v1    # "runningAnim":Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;
    monitor-exit v0

    .line 132
    return-void

    .line 131
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method
