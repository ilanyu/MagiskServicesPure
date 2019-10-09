.class Lcom/android/server/lights/view/MusicView$2;
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

    .line 205
    iput-object p1, p0, Lcom/android/server/lights/view/MusicView$2;->this$0:Lcom/android/server/lights/view/MusicView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 9
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 208
    iget-object v0, p0, Lcom/android/server/lights/view/MusicView$2;->this$0:Lcom/android/server/lights/view/MusicView;

    # getter for: Lcom/android/server/lights/view/MusicView;->yAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/android/server/lights/view/MusicView;->access$100(Lcom/android/server/lights/view/MusicView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/16 v2, 0x4b0

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide v5, 0x408f400000000000L    # 1000.0

    mul-double/2addr v3, v5

    double-to-int v3, v3

    add-int/2addr v2, v3

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 209
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 210
    return-void
.end method
