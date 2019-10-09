.class Lcom/android/server/wm/AppTransitionInjector$ActivityTranstionInterpolator;
.super Ljava/lang/Object;
.source "AppTransitionInjector.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AppTransitionInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityTranstionInterpolator"
.end annotation


# static fields
.field private static c:F

.field private static c1:F

.field private static c2:F

.field private static initial:F

.field private static k:F

.field private static m:F

.field private static mDamping:F

.field private static mResponse:F

.field private static r:F

.field private static w:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 562
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/android/server/wm/AppTransitionInjector$ActivityTranstionInterpolator;->mDamping:F

    .line 563
    sput v0, Lcom/android/server/wm/AppTransitionInjector$ActivityTranstionInterpolator;->mResponse:F

    .line 564
    sput v0, Lcom/android/server/wm/AppTransitionInjector$ActivityTranstionInterpolator;->initial:F

    .line 565
    sput v0, Lcom/android/server/wm/AppTransitionInjector$ActivityTranstionInterpolator;->m:F

    .line 566
    sput v0, Lcom/android/server/wm/AppTransitionInjector$ActivityTranstionInterpolator;->k:F

    .line 567
    sput v0, Lcom/android/server/wm/AppTransitionInjector$ActivityTranstionInterpolator;->c:F

    .line 568
    sput v0, Lcom/android/server/wm/AppTransitionInjector$ActivityTranstionInterpolator;->w:F

    .line 569
    sput v0, Lcom/android/server/wm/AppTransitionInjector$ActivityTranstionInterpolator;->r:F

    .line 570
    sput v0, Lcom/android/server/wm/AppTransitionInjector$ActivityTranstionInterpolator;->c1:F

    .line 571
    sput v0, Lcom/android/server/wm/AppTransitionInjector$ActivityTranstionInterpolator;->c2:F

    return-void
.end method

.method public constructor <init>(FF)V
    .registers 7
    .param p1, "response"    # F
    .param p2, "damping"    # F

    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 573
    sput p2, Lcom/android/server/wm/AppTransitionInjector$ActivityTranstionInterpolator;->mDamping:F

    .line 574
    sput p1, Lcom/android/server/wm/AppTransitionInjector$ActivityTranstionInterpolator;->mResponse:F

    .line 575
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/android/server/wm/AppTransitionInjector$ActivityTranstionInterpolator;->initial:F

    .line 576
    sget v0, Lcom/android/server/wm/AppTransitionInjector$ActivityTranstionInterpolator;->mResponse:F

    float-to-double v0, v0

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v2, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sget v2, Lcom/android/server/wm/AppTransitionInjector$ActivityTranstionInterpolator;->m:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/android/server/wm/AppTransitionInjector$ActivityTranstionInterpolator;->k:F

    .line 577
    sget v0, Lcom/android/server/wm/AppTransitionInjector$ActivityTranstionInterpolator;->mDamping:F

    float-to-double v0, v0

    const-wide v2, 0x402921fb54442d18L    # 12.566370614359172

    mul-double/2addr v2, v0

    sget v0, Lcom/android/server/wm/AppTransitionInjector$ActivityTranstionInterpolator;->m:F

    float-to-double v0, v0

    mul-double/2addr v2, v0

    sget v0, Lcom/android/server/wm/AppTransitionInjector$ActivityTranstionInterpolator;->mResponse:F

    float-to-double v0, v0

    div-double/2addr v2, v0

    double-to-float v0, v2

    sput v0, Lcom/android/server/wm/AppTransitionInjector$ActivityTranstionInterpolator;->c:F

    .line 578
    sget v0, Lcom/android/server/wm/AppTransitionInjector$ActivityTranstionInterpolator;->m:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    sget v0, Lcom/android/server/wm/AppTransitionInjector$ActivityTranstionInterpolator;->k:F

    mul-float/2addr v1, v0

    sget v0, Lcom/android/server/wm/AppTransitionInjector$ActivityTranstionInterpolator;->c:F

    sget v2, Lcom/android/server/wm/AppTransitionInjector$ActivityTranstionInterpolator;->c:F

    mul-float/2addr v0, v2

    sub-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    sget v1, Lcom/android/server/wm/AppTransitionInjector$ActivityTranstionInterpolator;->m:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    sput v0, Lcom/android/server/wm/AppTransitionInjector$ActivityTranstionInterpolator;->w:F

    .line 579
    sget v0, Lcom/android/server/wm/AppTransitionInjector$ActivityTranstionInterpolator;->c:F

    div-float/2addr v0, v2

    sget v1, Lcom/android/server/wm/AppTransitionInjector$ActivityTranstionInterpolator;->m:F

    mul-float/2addr v0, v1

    neg-float v0, v0

    sput v0, Lcom/android/server/wm/AppTransitionInjector$ActivityTranstionInterpolator;->r:F

    .line 580
    sget v0, Lcom/android/server/wm/AppTransitionInjector$ActivityTranstionInterpolator;->initial:F

    sput v0, Lcom/android/server/wm/AppTransitionInjector$ActivityTranstionInterpolator;->c1:F

    .line 581
    sget v0, Lcom/android/server/wm/AppTransitionInjector$ActivityTranstionInterpolator;->r:F

    sget v1, Lcom/android/server/wm/AppTransitionInjector$ActivityTranstionInterpolator;->initial:F

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    sub-float/2addr v1, v0

    sget v0, Lcom/android/server/wm/AppTransitionInjector$ActivityTranstionInterpolator;->w:F

    div-float/2addr v1, v0

    sput v1, Lcom/android/server/wm/AppTransitionInjector$ActivityTranstionInterpolator;->c2:F

    .line 582
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 10
    .param p1, "input"    # F

    .line 586
    sget v0, Lcom/android/server/wm/AppTransitionInjector$ActivityTranstionInterpolator;->r:F

    mul-float/2addr v0, p1

    float-to-double v0, v0

    const-wide v2, 0x4005bf0a8b145769L    # Math.E

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sget v2, Lcom/android/server/wm/AppTransitionInjector$ActivityTranstionInterpolator;->c1:F

    float-to-double v2, v2

    sget v4, Lcom/android/server/wm/AppTransitionInjector$ActivityTranstionInterpolator;->w:F

    mul-float/2addr v4, p1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    sget v4, Lcom/android/server/wm/AppTransitionInjector$ActivityTranstionInterpolator;->c2:F

    float-to-double v4, v4

    sget v6, Lcom/android/server/wm/AppTransitionInjector$ActivityTranstionInterpolator;->w:F

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
