.class Lcom/android/server/wm/AppTransitionInjector$ScaleXAnimation;
.super Landroid/view/animation/Animation;
.source "AppTransitionInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AppTransitionInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScaleXAnimation"
.end annotation


# instance fields
.field private mFromX:F

.field private mPivotX:F

.field private mToX:F


# direct methods
.method public constructor <init>(FF)V
    .registers 4
    .param p1, "fromX"    # F
    .param p2, "toX"    # F

    .line 657
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 658
    iput p1, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleXAnimation;->mFromX:F

    .line 659
    iput p2, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleXAnimation;->mToX:F

    .line 660
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleXAnimation;->mPivotX:F

    .line 661
    return-void
.end method

.method public constructor <init>(FFF)V
    .registers 4
    .param p1, "fromX"    # F
    .param p2, "toX"    # F
    .param p3, "pivotX"    # F

    .line 663
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 664
    iput p1, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleXAnimation;->mFromX:F

    .line 665
    iput p2, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleXAnimation;->mToX:F

    .line 666
    iput p3, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleXAnimation;->mPivotX:F

    .line 667
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 9
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .line 671
    const/high16 v0, 0x3f800000    # 1.0f

    .line 672
    .local v0, "sx":F
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransitionInjector$ScaleXAnimation;->getScaleFactor()F

    move-result v1

    .line 674
    .local v1, "scale":F
    iget v2, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleXAnimation;->mFromX:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_14

    iget v2, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleXAnimation;->mToX:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1e

    .line 675
    :cond_14
    iget v2, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleXAnimation;->mFromX:F

    iget v4, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleXAnimation;->mToX:F

    iget v5, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleXAnimation;->mFromX:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    add-float v0, v2, v4

    .line 678
    :cond_1e
    iget v2, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleXAnimation;->mPivotX:F

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-nez v2, :cond_2d

    .line 679
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_37

    .line 681
    :cond_2d
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    iget v5, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleXAnimation;->mPivotX:F

    mul-float/2addr v5, v1

    invoke-virtual {v2, v0, v3, v5, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 683
    :goto_37
    return-void
.end method
