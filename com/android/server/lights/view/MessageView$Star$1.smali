.class Lcom/android/server/lights/view/MessageView$Star$1;
.super Ljava/lang/Object;
.source "MessageView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/lights/view/MessageView$Star;->boom()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/lights/view/MessageView$Star;


# direct methods
.method constructor <init>(Lcom/android/server/lights/view/MessageView$Star;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/lights/view/MessageView$Star;

    .line 364
    iput-object p1, p0, Lcom/android/server/lights/view/MessageView$Star$1;->this$1:Lcom/android/server/lights/view/MessageView$Star;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 11
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 367
    iget-object v0, p0, Lcom/android/server/lights/view/MessageView$Star$1;->this$1:Lcom/android/server/lights/view/MessageView$Star;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    # setter for: Lcom/android/server/lights/view/MessageView$Star;->prop:[F
    invoke-static {v0, v1}, Lcom/android/server/lights/view/MessageView$Star;->access$202(Lcom/android/server/lights/view/MessageView$Star;[F)[F

    .line 368
    iget-object v0, p0, Lcom/android/server/lights/view/MessageView$Star$1;->this$1:Lcom/android/server/lights/view/MessageView$Star;

    # getter for: Lcom/android/server/lights/view/MessageView$Star;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Lcom/android/server/lights/view/MessageView$Star;->access$900(Lcom/android/server/lights/view/MessageView$Star;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/lights/view/MessageView$Star$1;->this$1:Lcom/android/server/lights/view/MessageView$Star;

    # getter for: Lcom/android/server/lights/view/MessageView$Star;->prop:[F
    invoke-static {v1}, Lcom/android/server/lights/view/MessageView$Star;->access$200(Lcom/android/server/lights/view/MessageView$Star;)[F

    move-result-object v1

    const/4 v2, 0x3

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/server/lights/view/MessageView$Star$1;->this$1:Lcom/android/server/lights/view/MessageView$Star;

    # getter for: Lcom/android/server/lights/view/MessageView$Star;->prop:[F
    invoke-static {v2}, Lcom/android/server/lights/view/MessageView$Star;->access$200(Lcom/android/server/lights/view/MessageView$Star;)[F

    move-result-object v2

    const/4 v3, 0x4

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 369
    iget-object v0, p0, Lcom/android/server/lights/view/MessageView$Star$1;->this$1:Lcom/android/server/lights/view/MessageView$Star;

    iget-object v1, p0, Lcom/android/server/lights/view/MessageView$Star$1;->this$1:Lcom/android/server/lights/view/MessageView$Star;

    # getter for: Lcom/android/server/lights/view/MessageView$Star;->mStarBitmapOri:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/server/lights/view/MessageView$Star;->access$1000(Lcom/android/server/lights/view/MessageView$Star;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/lights/view/MessageView$Star$1;->this$1:Lcom/android/server/lights/view/MessageView$Star;

    # getter for: Lcom/android/server/lights/view/MessageView$Star;->mStarBitmapOri:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/server/lights/view/MessageView$Star;->access$1000(Lcom/android/server/lights/view/MessageView$Star;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v1, p0, Lcom/android/server/lights/view/MessageView$Star$1;->this$1:Lcom/android/server/lights/view/MessageView$Star;

    .line 370
    # getter for: Lcom/android/server/lights/view/MessageView$Star;->mStarBitmapOri:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/server/lights/view/MessageView$Star;->access$1000(Lcom/android/server/lights/view/MessageView$Star;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iget-object v1, p0, Lcom/android/server/lights/view/MessageView$Star$1;->this$1:Lcom/android/server/lights/view/MessageView$Star;

    # getter for: Lcom/android/server/lights/view/MessageView$Star;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v1}, Lcom/android/server/lights/view/MessageView$Star;->access$900(Lcom/android/server/lights/view/MessageView$Star;)Landroid/graphics/Matrix;

    move-result-object v7

    .line 369
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    # setter for: Lcom/android/server/lights/view/MessageView$Star;->mStarBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/android/server/lights/view/MessageView$Star;->access$302(Lcom/android/server/lights/view/MessageView$Star;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 371
    return-void
.end method
