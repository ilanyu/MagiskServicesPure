.class Lcom/android/server/wm/AppTransitionInjector$ScaleYAnimation;
.super Landroid/view/animation/Animation;
.source "AppTransitionInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AppTransitionInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScaleYAnimation"
.end annotation


# instance fields
.field private mFromY:F

.field private mPivotY:F

.field private mToY:F


# direct methods
.method public constructor <init>(FF)V
    .registers 4
    .param p1, "fromY"    # F
    .param p2, "toY"    # F

    .line 691
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 692
    iput p1, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleYAnimation;->mFromY:F

    .line 693
    iput p2, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleYAnimation;->mToY:F

    .line 694
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleYAnimation;->mPivotY:F

    .line 695
    return-void
.end method

.method public constructor <init>(FFF)V
    .registers 4
    .param p1, "fromY"    # F
    .param p2, "toY"    # F
    .param p3, "pivotY"    # F

    .line 697
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 698
    iput p1, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleYAnimation;->mFromY:F

    .line 699
    iput p2, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleYAnimation;->mToY:F

    .line 700
    iput p3, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleYAnimation;->mPivotY:F

    .line 701
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 9
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .line 705
    const/high16 v0, 0x3f800000    # 1.0f

    .line 706
    .local v0, "sy":F
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransitionInjector$ScaleYAnimation;->getScaleFactor()F

    move-result v1

    .line 708
    .local v1, "scale":F
    iget v2, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleYAnimation;->mFromY:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_14

    iget v2, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleYAnimation;->mToY:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1e

    .line 709
    :cond_14
    iget v2, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleYAnimation;->mFromY:F

    iget v4, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleYAnimation;->mToY:F

    iget v5, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleYAnimation;->mFromY:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    add-float v0, v2, v4

    .line 712
    :cond_1e
    iget v2, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleYAnimation;->mPivotY:F

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-nez v2, :cond_2d

    .line 713
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_37

    .line 715
    :cond_2d
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    iget v5, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleYAnimation;->mPivotY:F

    mul-float/2addr v5, v1

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 717
    :goto_37
    return-void
.end method
