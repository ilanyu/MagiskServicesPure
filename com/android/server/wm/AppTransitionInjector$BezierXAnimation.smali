.class Lcom/android/server/wm/AppTransitionInjector$BezierXAnimation;
.super Landroid/view/animation/Animation;
.source "AppTransitionInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AppTransitionInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BezierXAnimation"
.end annotation


# instance fields
.field private mEndX:F

.field private mFromX:F

.field private mInertiaX:F

.field private mPivotX:F

.field private mStartX:F

.field private mToX:F

.field private mWidth:I


# direct methods
.method public constructor <init>(FFFFFLandroid/graphics/Point;I)V
    .registers 14
    .param p1, "fromX"    # F
    .param p2, "toX"    # F
    .param p3, "pivotX"    # F
    .param p4, "startX"    # F
    .param p5, "endX"    # F
    .param p6, "inertia"    # Landroid/graphics/Point;
    .param p7, "width"    # I

    .line 735
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 736
    iput p4, p0, Lcom/android/server/wm/AppTransitionInjector$BezierXAnimation;->mStartX:F

    .line 737
    iput p5, p0, Lcom/android/server/wm/AppTransitionInjector$BezierXAnimation;->mEndX:F

    .line 738
    float-to-double v0, p4

    iget v2, p6, Landroid/graphics/Point;->x:I

    int-to-double v2, v2

    const-wide v4, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v4, v2

    add-double/2addr v0, v4

    double-to-float v0, v0

    iput v0, p0, Lcom/android/server/wm/AppTransitionInjector$BezierXAnimation;->mInertiaX:F

    .line 739
    iput p1, p0, Lcom/android/server/wm/AppTransitionInjector$BezierXAnimation;->mFromX:F

    .line 740
    iput p2, p0, Lcom/android/server/wm/AppTransitionInjector$BezierXAnimation;->mToX:F

    .line 741
    iput p3, p0, Lcom/android/server/wm/AppTransitionInjector$BezierXAnimation;->mPivotX:F

    .line 742
    iput p7, p0, Lcom/android/server/wm/AppTransitionInjector$BezierXAnimation;->mWidth:I

    .line 743
    return-void
.end method

.method public constructor <init>(FFFFLandroid/graphics/Point;I)V
    .registers 15
    .param p1, "fromX"    # F
    .param p2, "toX"    # F
    .param p3, "startX"    # F
    .param p4, "endX"    # F
    .param p5, "inertia"    # Landroid/graphics/Point;
    .param p6, "width"    # I

    .line 731
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/AppTransitionInjector$BezierXAnimation;-><init>(FFFFFLandroid/graphics/Point;I)V

    .line 732
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 14
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .line 747
    const/high16 v0, 0x3f800000    # 1.0f

    .line 748
    .local v0, "sx":F
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransitionInjector$BezierXAnimation;->getScaleFactor()F

    move-result v1

    .line 750
    .local v1, "scale":F
    iget v2, p0, Lcom/android/server/wm/AppTransitionInjector$BezierXAnimation;->mFromX:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_14

    iget v2, p0, Lcom/android/server/wm/AppTransitionInjector$BezierXAnimation;->mToX:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1e

    .line 751
    :cond_14
    iget v2, p0, Lcom/android/server/wm/AppTransitionInjector$BezierXAnimation;->mFromX:F

    iget v4, p0, Lcom/android/server/wm/AppTransitionInjector$BezierXAnimation;->mToX:F

    iget v5, p0, Lcom/android/server/wm/AppTransitionInjector$BezierXAnimation;->mFromX:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    add-float v0, v2, v4

    .line 754
    :cond_1e
    iget v2, p0, Lcom/android/server/wm/AppTransitionInjector$BezierXAnimation;->mPivotX:F

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-nez v2, :cond_2d

    .line 755
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_37

    .line 757
    :cond_2d
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    iget v5, p0, Lcom/android/server/wm/AppTransitionInjector$BezierXAnimation;->mPivotX:F

    mul-float/2addr v5, v1

    invoke-virtual {v2, v0, v3, v5, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 760
    :goto_37
    sub-float v2, v3, p1

    float-to-double v5, v2

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    iget v2, p0, Lcom/android/server/wm/AppTransitionInjector$BezierXAnimation;->mStartX:F

    float-to-double v9, v2

    mul-double/2addr v5, v9

    float-to-double v9, p1

    .line 761
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    iget v2, p0, Lcom/android/server/wm/AppTransitionInjector$BezierXAnimation;->mEndX:F

    float-to-double v9, v2

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v7, v2, p1

    sub-float/2addr v3, p1

    mul-float/2addr v7, v3

    iget v3, p0, Lcom/android/server/wm/AppTransitionInjector$BezierXAnimation;->mInertiaX:F

    mul-float/2addr v7, v3

    float-to-double v7, v7

    add-double/2addr v5, v7

    .line 763
    .local v5, "targetX":D
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    double-to-float v7, v5

    iget v8, p0, Lcom/android/server/wm/AppTransitionInjector$BezierXAnimation;->mWidth:I

    int-to-float v8, v8

    mul-float/2addr v8, v0

    div-float/2addr v8, v2

    sub-float/2addr v7, v8

    invoke-virtual {v3, v7, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 764
    return-void
.end method
