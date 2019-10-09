.class final Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;
.super Landroid/animation/ValueAnimator;
.source "BoundsAnimationController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/BoundsAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "BoundsAnimator"
.end annotation


# instance fields
.field private final mFrom:Landroid/graphics/Rect;

.field private final mFrozenTaskHeight:I

.field private final mFrozenTaskWidth:I

.field private mMoveFromFullscreen:Z

.field private mMoveToFullscreen:Z

.field private mPrevSchedulePipModeChangedState:I

.field private final mResumeRunnable:Ljava/lang/Runnable;

.field private mSchedulePipModeChangedState:I

.field private mSkipAnimationEnd:Z

.field private mSkipFinalResize:Z

.field private final mTarget:Lcom/android/server/wm/BoundsAnimationTarget;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpTaskBounds:Landroid/graphics/Rect;

.field private final mTo:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/android/server/wm/BoundsAnimationController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/BoundsAnimationController;Lcom/android/server/wm/BoundsAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZ)V
    .registers 10
    .param p1, "this$0"    # Lcom/android/server/wm/BoundsAnimationController;
    .param p2, "target"    # Lcom/android/server/wm/BoundsAnimationTarget;
    .param p3, "from"    # Landroid/graphics/Rect;
    .param p4, "to"    # Landroid/graphics/Rect;
    .param p5, "schedulePipModeChangedState"    # I
    .param p6, "prevShedulePipModeChangedState"    # I
    .param p7, "moveFromFullscreen"    # Z
    .param p8, "moveToFullscreen"    # Z

    .line 183
    iput-object p1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->this$0:Lcom/android/server/wm/BoundsAnimationController;

    .line 184
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 144
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    .line 145
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    .line 146
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    .line 147
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTmpTaskBounds:Landroid/graphics/Rect;

    .line 175
    new-instance v0, Lcom/android/server/wm/-$$Lambda$BoundsAnimationController$BoundsAnimator$eIPNx9WcD7moTPCByy2XhPMSdCs;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$BoundsAnimationController$BoundsAnimator$eIPNx9WcD7moTPCByy2XhPMSdCs;-><init>(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)V

    iput-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mResumeRunnable:Ljava/lang/Runnable;

    .line 185
    iput-object p2, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTarget:Lcom/android/server/wm/BoundsAnimationTarget;

    .line 186
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 187
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    invoke-virtual {v0, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 188
    iput p5, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mSchedulePipModeChangedState:I

    .line 189
    iput p6, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mPrevSchedulePipModeChangedState:I

    .line 190
    iput-boolean p7, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mMoveFromFullscreen:Z

    .line 191
    iput-boolean p8, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mMoveToFullscreen:Z

    .line 192
    invoke-virtual {p0, p0}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 193
    invoke-virtual {p0, p0}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 199
    invoke-virtual {p0}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->animatingToLargerSize()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 200
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrozenTaskWidth:I

    .line 201
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrozenTaskHeight:I

    goto :goto_69

    .line 203
    :cond_59
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrozenTaskWidth:I

    .line 204
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrozenTaskHeight:I

    .line 206
    :goto_69
    return-void
.end method

.method static synthetic access$700(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;

    .line 140
    iget-boolean v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mMoveToFullscreen:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;

    .line 140
    iget-boolean v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mMoveFromFullscreen:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;

    .line 140
    iget v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mSchedulePipModeChangedState:I

    return v0
.end method

.method private cancelAndCallAnimationEnd()V
    .registers 2

    .line 353
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mSkipAnimationEnd:Z

    .line 354
    invoke-super {p0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 355
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)V
    .registers 1

    .line 177
    invoke-virtual {p0}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->resume()V

    .line 178
    return-void
.end method


# virtual methods
.method animatingToLargerSize()Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 377
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int/2addr v1, v2

    if-gt v0, v1, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0
.end method

.method public cancel()V
    .registers 2

    .line 360
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mSkipAnimationEnd:Z

    .line 361
    invoke-super {p0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 362
    return-void
.end method

.method public getAnimationHandler()Landroid/animation/AnimationHandler;
    .registers 2

    .line 387
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->this$0:Lcom/android/server/wm/BoundsAnimationController;

    # getter for: Lcom/android/server/wm/BoundsAnimationController;->mAnimationHandler:Landroid/animation/AnimationHandler;
    invoke-static {v0}, Lcom/android/server/wm/BoundsAnimationController;->access$600(Lcom/android/server/wm/BoundsAnimationController;)Landroid/animation/AnimationHandler;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 388
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->this$0:Lcom/android/server/wm/BoundsAnimationController;

    # getter for: Lcom/android/server/wm/BoundsAnimationController;->mAnimationHandler:Landroid/animation/AnimationHandler;
    invoke-static {v0}, Lcom/android/server/wm/BoundsAnimationController;->access$600(Lcom/android/server/wm/BoundsAnimationController;)Landroid/animation/AnimationHandler;

    move-result-object v0

    return-object v0

    .line 390
    :cond_f
    invoke-super {p0}, Landroid/animation/ValueAnimator;->getAnimationHandler()Landroid/animation/AnimationHandler;

    move-result-object v0

    return-object v0
.end method

.method isAnimatingTo(Landroid/graphics/Rect;)Z
    .registers 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 368
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mSkipFinalResize:Z

    .line 348
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mMoveToFullscreen:Z

    .line 349
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 319
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->this$0:Lcom/android/server/wm/BoundsAnimationController;

    # getter for: Lcom/android/server/wm/BoundsAnimationController;->mAppTransition:Lcom/android/server/wm/AppTransition;
    invoke-static {v0}, Lcom/android/server/wm/BoundsAnimationController;->access$500(Lcom/android/server/wm/BoundsAnimationController;)Lcom/android/server/wm/AppTransition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->this$0:Lcom/android/server/wm/BoundsAnimationController;

    # getter for: Lcom/android/server/wm/BoundsAnimationController;->mFinishAnimationAfterTransition:Z
    invoke-static {v0}, Lcom/android/server/wm/BoundsAnimationController;->access$000(Lcom/android/server/wm/BoundsAnimationController;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 320
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->this$0:Lcom/android/server/wm/BoundsAnimationController;

    # setter for: Lcom/android/server/wm/BoundsAnimationController;->mFinishAnimationAfterTransition:Z
    invoke-static {v0, v1}, Lcom/android/server/wm/BoundsAnimationController;->access$002(Lcom/android/server/wm/BoundsAnimationController;Z)Z

    .line 321
    return-void

    .line 324
    :cond_1b
    iget-boolean v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mSkipAnimationEnd:Z

    if-nez v0, :cond_35

    .line 330
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTarget:Lcom/android/server/wm/BoundsAnimationTarget;

    iget v2, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mSchedulePipModeChangedState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_27

    goto :goto_28

    :cond_27
    const/4 v1, 0x0

    .line 331
    :goto_28
    iget-boolean v2, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mSkipFinalResize:Z

    if-nez v2, :cond_2f

    iget-object v2, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    goto :goto_30

    :cond_2f
    const/4 v2, 0x0

    :goto_30
    iget-boolean v3, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mMoveToFullscreen:Z

    .line 330
    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/wm/BoundsAnimationTarget;->onAnimationEnd(ZLandroid/graphics/Rect;Z)V

    .line 336
    :cond_35
    invoke-virtual {p0, p0}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 337
    invoke-virtual {p0, p0}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 338
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->this$0:Lcom/android/server/wm/BoundsAnimationController;

    # getter for: Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;
    invoke-static {v0}, Lcom/android/server/wm/BoundsAnimationController;->access$200(Lcom/android/server/wm/BoundsAnimationController;)Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTarget:Lcom/android/server/wm/BoundsAnimationTarget;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->this$0:Lcom/android/server/wm/BoundsAnimationController;

    # invokes: Lcom/android/server/wm/BoundsAnimationController;->updateBooster()V
    invoke-static {v0}, Lcom/android/server/wm/BoundsAnimationController;->access$400(Lcom/android/server/wm/BoundsAnimationController;)V

    .line 342
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 383
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 9
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 213
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->this$0:Lcom/android/server/wm/BoundsAnimationController;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/wm/BoundsAnimationController;->mFinishAnimationAfterTransition:Z
    invoke-static {v0, v1}, Lcom/android/server/wm/BoundsAnimationController;->access$002(Lcom/android/server/wm/BoundsAnimationController;Z)Z

    .line 214
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrozenTaskWidth:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrozenTaskHeight:I

    add-int/2addr v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 219
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->this$0:Lcom/android/server/wm/BoundsAnimationController;

    # invokes: Lcom/android/server/wm/BoundsAnimationController;->updateBooster()V
    invoke-static {v0}, Lcom/android/server/wm/BoundsAnimationController;->access$400(Lcom/android/server/wm/BoundsAnimationController;)V

    .line 224
    iget v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mPrevSchedulePipModeChangedState:I

    const/4 v2, 0x1

    if-nez v0, :cond_46

    .line 225
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTarget:Lcom/android/server/wm/BoundsAnimationTarget;

    iget v3, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mSchedulePipModeChangedState:I

    if-ne v3, v2, :cond_32

    goto :goto_33

    :cond_32
    move v2, v1

    :goto_33
    invoke-interface {v0, v2, v1}, Lcom/android/server/wm/BoundsAnimationTarget;->onAnimationStart(ZZ)V

    .line 230
    iget-boolean v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mMoveFromFullscreen:Z

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTarget:Lcom/android/server/wm/BoundsAnimationTarget;

    invoke-interface {v0}, Lcom/android/server/wm/BoundsAnimationTarget;->shouldDeferStartOnMoveToFullscreen()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 231
    invoke-virtual {p0}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->pause()V

    goto :goto_54

    .line 233
    :cond_46
    iget v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mPrevSchedulePipModeChangedState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_54

    iget v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mSchedulePipModeChangedState:I

    if-ne v0, v2, :cond_54

    .line 239
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTarget:Lcom/android/server/wm/BoundsAnimationTarget;

    invoke-interface {v0, v2, v2}, Lcom/android/server/wm/BoundsAnimationTarget;->onAnimationStart(ZZ)V

    .line 245
    :cond_54
    :goto_54
    invoke-virtual {p0}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->animatingToLargerSize()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 246
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTarget:Lcom/android/server/wm/BoundsAnimationTarget;

    iget-object v1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    invoke-interface {v0, v1, v2}, Lcom/android/server/wm/BoundsAnimationTarget;->setPinnedStackSize(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 253
    iget-boolean v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mMoveToFullscreen:Z

    if-eqz v0, :cond_6a

    .line 254
    invoke-virtual {p0}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->pause()V

    .line 257
    :cond_6a
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 10
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 275
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 276
    .local v0, "value":F
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    .line 277
    .local v1, "remains":F
    iget-object v2, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    iget-object v4, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 278
    iget-object v2, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    iget-object v5, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v3, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 279
    iget-object v2, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    iget-object v5, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v3, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 280
    iget-object v2, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    iget-object v5, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v3, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 285
    iget-object v2, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTmpTaskBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrozenTaskWidth:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrozenTaskHeight:I

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 288
    iget-object v2, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTarget:Lcom/android/server/wm/BoundsAnimationTarget;

    iget-object v3, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTmpTaskBounds:Landroid/graphics/Rect;

    invoke-interface {v2, v3, v4}, Lcom/android/server/wm/BoundsAnimationTarget;->setPinnedStackSize(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_8d

    .line 296
    iget v2, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mSchedulePipModeChangedState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8a

    .line 297
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mSchedulePipModeChangedState:I

    .line 302
    :cond_8a
    invoke-direct {p0}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->cancelAndCallAnimationEnd()V

    .line 304
    :cond_8d
    return-void
.end method

.method public pause()V
    .registers 5

    .line 262
    invoke-super {p0}, Landroid/animation/ValueAnimator;->pause()V

    .line 263
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->this$0:Lcom/android/server/wm/BoundsAnimationController;

    # getter for: Lcom/android/server/wm/BoundsAnimationController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/wm/BoundsAnimationController;->access$100(Lcom/android/server/wm/BoundsAnimationController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mResumeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1a9

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 264
    return-void
.end method

.method public resume()V
    .registers 3

    .line 269
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->this$0:Lcom/android/server/wm/BoundsAnimationController;

    # getter for: Lcom/android/server/wm/BoundsAnimationController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/wm/BoundsAnimationController;->access$100(Lcom/android/server/wm/BoundsAnimationController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mResumeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 270
    invoke-super {p0}, Landroid/animation/ValueAnimator;->resume()V

    .line 271
    return-void
.end method
