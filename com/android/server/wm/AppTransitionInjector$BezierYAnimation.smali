.class Lcom/android/server/wm/AppTransitionInjector$BezierYAnimation;
.super Landroid/view/animation/Animation;
.source "AppTransitionInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AppTransitionInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BezierYAnimation"
.end annotation


# instance fields
.field private mEndY:F

.field private mFromY:F

.field private mHeight:I

.field private mInertiaY:F

.field private mPivotY:F

.field private mStartY:F

.field private mToY:F


# direct methods
.method public constructor <init>(FFFFFLandroid/graphics/Point;I)V
    .registers 14
    .param p1, "fromY"    # F
    .param p2, "toY"    # F
    .param p3, "pivotY"    # F
    .param p4, "startY"    # F
    .param p5, "endY"    # F
    .param p6, "inertia"    # Landroid/graphics/Point;
    .param p7, "height"    # I

    .line 782
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 783
    iput p1, p0, Lcom/android/server/wm/AppTransitionInjector$BezierYAnimation;->mFromY:F

    .line 784
    iput p2, p0, Lcom/android/server/wm/AppTransitionInjector$BezierYAnimation;->mToY:F

    .line 785
    iput p3, p0, Lcom/android/server/wm/AppTransitionInjector$BezierYAnimation;->mPivotY:F

    .line 786
    iput p4, p0, Lcom/android/server/wm/AppTransitionInjector$BezierYAnimation;->mStartY:F

    .line 787
    iput p5, p0, Lcom/android/server/wm/AppTransitionInjector$BezierYAnimation;->mEndY:F

    .line 788
    float-to-double v0, p4

    iget v2, p6, Landroid/graphics/Point;->y:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v4, v2

    add-double/2addr v0, v4

    double-to-float v0, v0

    iput v0, p0, Lcom/android/server/wm/AppTransitionInjector$BezierYAnimation;->mInertiaY:F

    .line 789
    iput p7, p0, Lcom/android/server/wm/AppTransitionInjector$BezierYAnimation;->mHeight:I

    .line 790
    return-void
.end method

.method public constructor <init>(FFFFLandroid/graphics/Point;I)V
    .registers 15
    .param p1, "fromY"    # F
    .param p2, "toY"    # F
    .param p3, "startY"    # F
    .param p4, "endY"    # F
    .param p5, "inertia"    # Landroid/graphics/Point;
    .param p6, "height"    # I

    .line 778
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/AppTransitionInjector$BezierYAnimation;-><init>(FFFFFLandroid/graphics/Point;I)V

    .line 779
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 14
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .line 794
    const/high16 v0, 0x3f800000    # 1.0f

    .line 795
    .local v0, "sy":F
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransitionInjector$BezierYAnimation;->getScaleFactor()F

    move-result v1

    .line 797
    .local v1, "scale":F
    iget v2, p0, Lcom/android/server/wm/AppTransitionInjector$BezierYAnimation;->mFromY:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_14

    iget v2, p0, Lcom/android/server/wm/AppTransitionInjector$BezierYAnimation;->mToY:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1e

    .line 798
    :cond_14
    iget v2, p0, Lcom/android/server/wm/AppTransitionInjector$BezierYAnimation;->mFromY:F

    iget v4, p0, Lcom/android/server/wm/AppTransitionInjector$BezierYAnimation;->mToY:F

    iget v5, p0, Lcom/android/server/wm/AppTransitionInjector$BezierYAnimation;->mFromY:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    add-float v0, v2, v4

    .line 801
    :cond_1e
    iget v2, p0, Lcom/android/server/wm/AppTransitionInjector$BezierYAnimation;->mPivotY:F

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-nez v2, :cond_2d

    .line 802
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_37

    .line 804
    :cond_2d
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    iget v5, p0, Lcom/android/server/wm/AppTransitionInjector$BezierYAnimation;->mPivotY:F

    mul-float/2addr v5, v1

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 807
    :goto_37
    sub-float v2, v3, p1

    float-to-double v5, v2

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    iget v2, p0, Lcom/android/server/wm/AppTransitionInjector$BezierYAnimation;->mStartY:F

    float-to-double v9, v2

    mul-double/2addr v5, v9

    float-to-double v9, p1

    .line 808
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    iget v2, p0, Lcom/android/server/wm/AppTransitionInjector$BezierYAnimation;->mEndY:F

    float-to-double v9, v2

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    sub-float/2addr v3, p1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v3, v2

    mul-float/2addr v3, p1

    iget v7, p0, Lcom/android/server/wm/AppTransitionInjector$BezierYAnimation;->mInertiaY:F

    mul-float/2addr v3, v7

    float-to-double v7, v3

    add-double/2addr v5, v7

    .line 811
    .local v5, "targetY":D
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    double-to-float v7, v5

    iget v8, p0, Lcom/android/server/wm/AppTransitionInjector$BezierYAnimation;->mHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v0

    div-float/2addr v8, v2

    sub-float/2addr v7, v8

    invoke-virtual {v3, v4, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 813
    return-void
.end method
