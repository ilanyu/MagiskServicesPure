.class public Lcom/android/server/lights/interpolater/PhysicBasedInterpolator;
.super Ljava/lang/Object;
.source "PhysicBasedInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/lights/interpolater/PhysicBasedInterpolator$Builder;
    }
.end annotation


# instance fields
.field private c:F

.field private c1:F

.field private c2:F

.field private k:F

.field private m:F

.field private mInitial:F

.field private r:F

.field private w:F


# direct methods
.method private constructor <init>(FF)V
    .registers 7
    .param p1, "damping"    # F
    .param p2, "response"    # F

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/lights/interpolater/PhysicBasedInterpolator;->mInitial:F

    .line 8
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/lights/interpolater/PhysicBasedInterpolator;->m:F

    .line 14
    iget v0, p0, Lcom/android/server/lights/interpolater/PhysicBasedInterpolator;->mInitial:F

    iput v0, p0, Lcom/android/server/lights/interpolater/PhysicBasedInterpolator;->c1:F

    .line 18
    float-to-double v0, p2

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v2, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v2, p0, Lcom/android/server/lights/interpolater/PhysicBasedInterpolator;->m:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/android/server/lights/interpolater/PhysicBasedInterpolator;->k:F

    .line 19
    float-to-double v0, p1

    const-wide v2, 0x402921fb54442d18L    # 12.566370614359172

    mul-double/2addr v2, v0

    iget v0, p0, Lcom/android/server/lights/interpolater/PhysicBasedInterpolator;->m:F

    float-to-double v0, v0

    mul-double/2addr v2, v0

    float-to-double v0, p2

    div-double/2addr v2, v0

    double-to-float v0, v2

    iput v0, p0, Lcom/android/server/lights/interpolater/PhysicBasedInterpolator;->c:F

    .line 20
    iget v0, p0, Lcom/android/server/lights/interpolater/PhysicBasedInterpolator;->m:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    iget v0, p0, Lcom/android/server/lights/interpolater/PhysicBasedInterpolator;->k:F

    mul-float/2addr v1, v0

    iget v0, p0, Lcom/android/server/lights/interpolater/PhysicBasedInterpolator;->c:F

    iget v2, p0, Lcom/android/server/lights/interpolater/PhysicBasedInterpolator;->c:F

    mul-float/2addr v0, v2

    sub-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lcom/android/server/lights/interpolater/PhysicBasedInterpolator;->m:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/lights/interpolater/PhysicBasedInterpolator;->w:F

    .line 21
    iget v0, p0, Lcom/android/server/lights/interpolater/PhysicBasedInterpolator;->c:F

    div-float/2addr v0, v2

    iget v1, p0, Lcom/android/server/lights/interpolater/PhysicBasedInterpolator;->m:F

    mul-float/2addr v0, v1

    neg-float v0, v0

    iput v0, p0, Lcom/android/server/lights/interpolater/PhysicBasedInterpolator;->r:F

    .line 22
    iget v0, p0, Lcom/android/server/lights/interpolater/PhysicBasedInterpolator;->r:F

    iget v1, p0, Lcom/android/server/lights/interpolater/PhysicBasedInterpolator;->mInitial:F

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    sub-float/2addr v1, v0

    iget v0, p0, Lcom/android/server/lights/interpolater/PhysicBasedInterpolator;->w:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/android/server/lights/interpolater/PhysicBasedInterpolator;->c2:F

    .line 23
    return-void
.end method

.method synthetic constructor <init>(FFLcom/android/server/lights/interpolater/PhysicBasedInterpolator$1;)V
    .registers 4
    .param p1, "x0"    # F
    .param p2, "x1"    # F
    .param p3, "x2"    # Lcom/android/server/lights/interpolater/PhysicBasedInterpolator$1;

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/android/server/lights/interpolater/PhysicBasedInterpolator;-><init>(FF)V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 10
    .param p1, "input"    # F

    .line 27
    iget v0, p0, Lcom/android/server/lights/interpolater/PhysicBasedInterpolator;->r:F

    mul-float/2addr v0, p1

    float-to-double v0, v0

    const-wide v2, 0x4005bf0a8b145769L    # Math.E

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v2, p0, Lcom/android/server/lights/interpolater/PhysicBasedInterpolator;->c1:F

    float-to-double v2, v2

    iget v4, p0, Lcom/android/server/lights/interpolater/PhysicBasedInterpolator;->w:F

    mul-float/2addr v4, p1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/android/server/lights/interpolater/PhysicBasedInterpolator;->c2:F

    float-to-double v4, v4

    iget v6, p0, Lcom/android/server/lights/interpolater/PhysicBasedInterpolator;->w:F

    mul-float/2addr v6, p1

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method
