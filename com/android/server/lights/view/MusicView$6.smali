.class Lcom/android/server/lights/view/MusicView$6;
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

    .line 266
    iput-object p1, p0, Lcom/android/server/lights/view/MusicView$6;->this$0:Lcom/android/server/lights/view/MusicView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 7
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 269
    iget-object v0, p0, Lcom/android/server/lights/view/MusicView$6;->this$0:Lcom/android/server/lights/view/MusicView;

    iget-object v1, p0, Lcom/android/server/lights/view/MusicView$6;->this$0:Lcom/android/server/lights/view/MusicView;

    # getter for: Lcom/android/server/lights/view/MusicView;->mCurrentColor:I
    invoke-static {v1}, Lcom/android/server/lights/view/MusicView;->access$800(Lcom/android/server/lights/view/MusicView;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    rem-int/lit8 v1, v1, 0x6

    # setter for: Lcom/android/server/lights/view/MusicView;->mCurrentColor:I
    invoke-static {v0, v1}, Lcom/android/server/lights/view/MusicView;->access$802(Lcom/android/server/lights/view/MusicView;I)I

    .line 270
    iget-object v0, p0, Lcom/android/server/lights/view/MusicView$6;->this$0:Lcom/android/server/lights/view/MusicView;

    # getter for: Lcom/android/server/lights/view/MusicView;->mColorAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/android/server/lights/view/MusicView;->access$600(Lcom/android/server/lights/view/MusicView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/lights/view/MusicView$6;->this$0:Lcom/android/server/lights/view/MusicView;

    # getter for: Lcom/android/server/lights/view/MusicView;->colrArray:[[I
    invoke-static {v3}, Lcom/android/server/lights/view/MusicView;->access$900(Lcom/android/server/lights/view/MusicView;)[[I

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/lights/view/MusicView$6;->this$0:Lcom/android/server/lights/view/MusicView;

    # getter for: Lcom/android/server/lights/view/MusicView;->mCurrentColor:I
    invoke-static {v4}, Lcom/android/server/lights/view/MusicView;->access$800(Lcom/android/server/lights/view/MusicView;)I

    move-result v4

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aput-object v3, v1, v4

    iget-object v3, p0, Lcom/android/server/lights/view/MusicView$6;->this$0:Lcom/android/server/lights/view/MusicView;

    # getter for: Lcom/android/server/lights/view/MusicView;->colrArray:[[I
    invoke-static {v3}, Lcom/android/server/lights/view/MusicView;->access$900(Lcom/android/server/lights/view/MusicView;)[[I

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/lights/view/MusicView$6;->this$0:Lcom/android/server/lights/view/MusicView;

    # getter for: Lcom/android/server/lights/view/MusicView;->mCurrentColor:I
    invoke-static {v4}, Lcom/android/server/lights/view/MusicView;->access$800(Lcom/android/server/lights/view/MusicView;)I

    move-result v4

    add-int/2addr v4, v2

    rem-int/lit8 v4, v4, 0x6

    aget-object v3, v3, v4

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 271
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 272
    return-void
.end method
