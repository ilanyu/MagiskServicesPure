.class Lcom/android/server/wm/AppTransitionInjector$ScaleTaskAnimation;
.super Landroid/view/animation/Animation;
.source "AppTransitionInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AppTransitionInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScaleTaskAnimation"
.end annotation


# instance fields
.field private mEnter:Z

.field private mFromX:F

.field private mFromY:F

.field private mPivotX:F

.field private mPivotY:F

.field private mToX:F

.field private mToY:F


# direct methods
.method public constructor <init>(FFFFFFZ)V
    .registers 8
    .param p1, "fromX"    # F
    .param p2, "toX"    # F
    .param p3, "fromY"    # F
    .param p4, "toY"    # F
    .param p5, "pivotX"    # F
    .param p6, "pivotY"    # F
    .param p7, "enter"    # Z

    .line 599
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 600
    iput p1, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleTaskAnimation;->mFromX:F

    .line 601
    iput p2, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleTaskAnimation;->mToX:F

    .line 602
    iput p3, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleTaskAnimation;->mFromY:F

    .line 603
    iput p4, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleTaskAnimation;->mToY:F

    .line 604
    iput p5, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleTaskAnimation;->mPivotX:F

    .line 605
    iput p6, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleTaskAnimation;->mPivotY:F

    .line 606
    iput-boolean p7, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleTaskAnimation;->mEnter:Z

    .line 607
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 15
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .line 611
    const/high16 v0, 0x3f800000    # 1.0f

    .line 612
    .local v0, "scale":F
    iget-boolean v1, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleTaskAnimation;->mEnter:Z

    const-wide v2, 0x3fed70a3d70a3d71L    # 0.92

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    const-wide v6, 0x3fb47ae147ae147bL    # 0.08

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    if-eqz v1, :cond_22

    .line 613
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    float-to-double v10, v1

    mul-double/2addr v6, v10

    mul-double/2addr v6, v4

    sub-double v4, v8, v6

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    double-to-float v0, v1

    goto :goto_2c

    .line 615
    :cond_22
    float-to-double v10, p1

    mul-double/2addr v6, v10

    mul-double/2addr v6, v4

    sub-double v4, v8, v6

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    double-to-float v0, v1

    .line 617
    :goto_2c
    float-to-double v1, v0

    cmpl-double v1, v1, v8

    if-lez v1, :cond_33

    const/high16 v0, 0x3f800000    # 1.0f

    .line 618
    :cond_33
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleTaskAnimation;->mPivotX:F

    iget v3, p0, Lcom/android/server/wm/AppTransitionInjector$ScaleTaskAnimation;->mPivotY:F

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 619
    return-void
.end method
