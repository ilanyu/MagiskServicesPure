.class Lcom/android/server/wm/AppTransitionInjector$ScaleWallPaperAnimation;
.super Landroid/view/animation/Animation;
.source "AppTransitionInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AppTransitionInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScaleWallPaperAnimation"
.end annotation


# instance fields
.field private mEnter:Z

.field private mPivotX:F

.field private mPivotY:F


# direct methods
.method public constructor <init>(FFZ)V
    .registers 4
    .param p1, "pivotX"    # F
    .param p2, "pivotY"    # F
    .param p3, "enter"    # Z

    .line 629
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 631
    iput p1, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleWallPaperAnimation;->mPivotX:F

    .line 632
    iput p2, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleWallPaperAnimation;->mPivotY:F

    .line 633
    iput-boolean p3, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleWallPaperAnimation;->mEnter:Z

    .line 634
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 15
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .line 638
    const/high16 v0, 0x3f800000    # 1.0f

    .line 639
    .local v0, "scale":F
    iget-boolean v1, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleWallPaperAnimation;->mEnter:Z

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    if-eqz v1, :cond_4a

    .line 641
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const-wide/16 v6, 0x0

    float-to-double v8, p1

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    div-double/2addr v8, v10

    sub-double v8, v2, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    const-wide v8, 0x3fd6666666666666L    # 0.35

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-double v4, v2, v4

    double-to-float v0, v4

    .line 642
    const-string v1, "applyTransformation::"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "scale:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " percent:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :cond_4a
    float-to-double v4, v0

    cmpl-double v1, v4, v2

    if-lez v1, :cond_51

    const/high16 v0, 0x3f800000    # 1.0f

    .line 646
    :cond_51
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleWallPaperAnimation;->mPivotX:F

    iget v3, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleWallPaperAnimation;->mPivotY:F

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 647
    return-void
.end method
