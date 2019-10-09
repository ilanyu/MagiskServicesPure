.class Lcom/android/server/lights/view/MusicView$5;
.super Ljava/lang/Object;
.source "MusicView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    .line 259
    iput-object p1, p0, Lcom/android/server/lights/view/MusicView$5;->this$0:Lcom/android/server/lights/view/MusicView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 262
    iget-object v0, p0, Lcom/android/server/lights/view/MusicView$5;->this$0:Lcom/android/server/lights/view/MusicView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    # setter for: Lcom/android/server/lights/view/MusicView;->mCurrentColorArr:[I
    invoke-static {v0, v1}, Lcom/android/server/lights/view/MusicView;->access$702(Lcom/android/server/lights/view/MusicView;[I)[I

    .line 263
    return-void
.end method
