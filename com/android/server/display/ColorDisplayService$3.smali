.class Lcom/android/server/display/ColorDisplayService$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ColorDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/ColorDisplayService;->applyTint(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsCancelled:Z

.field final synthetic this$0:Lcom/android/server/display/ColorDisplayService;

.field final synthetic val$dtm:Lcom/android/server/display/DisplayTransformManager;

.field final synthetic val$to:[F


# direct methods
.method constructor <init>(Lcom/android/server/display/ColorDisplayService;Lcom/android/server/display/DisplayTransformManager;[F)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/display/ColorDisplayService;

    .line 357
    iput-object p1, p0, Lcom/android/server/display/ColorDisplayService$3;->this$0:Lcom/android/server/display/ColorDisplayService;

    iput-object p2, p0, Lcom/android/server/display/ColorDisplayService$3;->val$dtm:Lcom/android/server/display/DisplayTransformManager;

    iput-object p3, p0, Lcom/android/server/display/ColorDisplayService$3;->val$to:[F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 363
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/ColorDisplayService$3;->mIsCancelled:Z

    .line 364
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 368
    iget-boolean v0, p0, Lcom/android/server/display/ColorDisplayService$3;->mIsCancelled:Z

    if-nez v0, :cond_d

    .line 372
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService$3;->val$dtm:Lcom/android/server/display/DisplayTransformManager;

    const/16 v1, 0x64

    iget-object v2, p0, Lcom/android/server/display/ColorDisplayService$3;->val$to:[F

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 374
    :cond_d
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService$3;->this$0:Lcom/android/server/display/ColorDisplayService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/display/ColorDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0, v1}, Lcom/android/server/display/ColorDisplayService;->access$602(Lcom/android/server/display/ColorDisplayService;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 375
    return-void
.end method
