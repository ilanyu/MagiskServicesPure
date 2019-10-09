.class Lcom/android/server/lights/view/MusicView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MusicView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/lights/view/MusicView;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/lights/view/MusicView;


# direct methods
.method constructor <init>(Lcom/android/server/lights/view/MusicView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/lights/view/MusicView;

    .line 238
    iput-object p1, p0, Lcom/android/server/lights/view/MusicView$4;->this$0:Lcom/android/server/lights/view/MusicView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 247
    iget-object v0, p0, Lcom/android/server/lights/view/MusicView$4;->this$0:Lcom/android/server/lights/view/MusicView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/lights/view/MusicView;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/android/server/lights/view/MusicView$4;->this$0:Lcom/android/server/lights/view/MusicView;

    # getter for: Lcom/android/server/lights/view/MusicView;->mColorAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/android/server/lights/view/MusicView;->access$600(Lcom/android/server/lights/view/MusicView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 249
    iget-object v0, p0, Lcom/android/server/lights/view/MusicView$4;->this$0:Lcom/android/server/lights/view/MusicView;

    # getter for: Lcom/android/server/lights/view/MusicView;->yAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/android/server/lights/view/MusicView;->access$100(Lcom/android/server/lights/view/MusicView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 250
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 251
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 8
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 241
    iget-object v0, p0, Lcom/android/server/lights/view/MusicView$4;->this$0:Lcom/android/server/lights/view/MusicView;

    # getter for: Lcom/android/server/lights/view/MusicView;->xAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/android/server/lights/view/MusicView;->access$500(Lcom/android/server/lights/view/MusicView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x406e000000000000L    # 240.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4054000000000000L    # 80.0

    add-double/2addr v2, v4

    double-to-int v2, v2

    const/16 v3, 0x7d4

    rsub-int v2, v2, 0x7d4

    const/4 v4, 0x0

    aput v2, v1, v4

    const/4 v2, 0x1

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 242
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 243
    return-void
.end method
