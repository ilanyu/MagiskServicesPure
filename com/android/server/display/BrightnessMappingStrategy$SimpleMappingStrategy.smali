.class Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;
.super Lcom/android/server/display/BrightnessMappingStrategy;
.source "BrightnessMappingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/BrightnessMappingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleMappingStrategy"
.end annotation


# instance fields
.field private mAutoBrightnessAdjustment:F

.field private final mBrightness:[F

.field private final mLux:[F

.field private mMaxGamma:F

.field private mSpline:Landroid/util/Spline;

.field private mUserBrightness:F

.field private mUserLux:F


# direct methods
.method public constructor <init>([F[IF)V
    .registers 9
    .param p1, "lux"    # [F
    .param p2, "brightness"    # [I
    .param p3, "maxGamma"    # F

    .line 482
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy;-><init>()V

    .line 483
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    array-length v0, p2

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    :goto_e
    const-string v3, "Lux and brightness arrays must not be empty!"

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 485
    array-length v0, p1

    array-length v3, p2

    if-ne v0, v3, :cond_18

    goto :goto_19

    :cond_18
    move v1, v2

    :goto_19
    const-string v0, "Lux and brightness arrays must be the same length!"

    invoke-static {v1, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 487
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    const-string/jumbo v1, "lux"

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    .line 488
    const v0, 0x7fffffff

    const-string v1, "brightness"

    invoke-static {p2, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([IIILjava/lang/String;)[I

    .line 491
    array-length v0, p2

    .line 492
    .local v0, "N":I
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLux:[F

    .line 493
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mBrightness:[F

    .line 494
    nop

    .line 494
    .local v2, "i":I
    :goto_3a
    move v1, v2

    .line 494
    .end local v2    # "i":I
    .local v1, "i":I
    if-ge v1, v0, :cond_50

    .line 495
    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLux:[F

    aget v4, p1, v1

    aput v4, v2, v1

    .line 496
    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mBrightness:[F

    aget v4, p2, v1

    # invokes: Lcom/android/server/display/BrightnessMappingStrategy;->normalizeAbsoluteBrightness(I)F
    invoke-static {v4}, Lcom/android/server/display/BrightnessMappingStrategy;->access$000(I)F

    move-result v4

    aput v4, v2, v1

    .line 494
    add-int/lit8 v2, v1, 0x1

    .line 494
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_3a

    .line 499
    .end local v2    # "i":I
    :cond_50
    iput p3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mMaxGamma:F

    .line 500
    iput v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 501
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserLux:F

    .line 502
    iput v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserBrightness:F

    .line 506
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->computeSpline()V

    .line 507
    return-void
.end method

.method private computeSpline()V
    .registers 7

    .line 618
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLux:[F

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mBrightness:[F

    iget v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserLux:F

    iget v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserBrightness:F

    iget v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    iget v5, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mMaxGamma:F

    # invokes: Lcom/android/server/display/BrightnessMappingStrategy;->getAdjustedCurve([F[FFFFF)Landroid/util/Pair;
    invoke-static/range {v0 .. v5}, Lcom/android/server/display/BrightnessMappingStrategy;->access$200([F[FFFFF)Landroid/util/Pair;

    move-result-object v0

    .line 620
    .local v0, "curve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [F

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [F

    invoke-static {v1, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mSpline:Landroid/util/Spline;

    .line 621
    return-void
.end method

.method private getUnadjustedBrightness(F)F
    .registers 4
    .param p1, "lux"    # F

    .line 624
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLux:[F

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mBrightness:[F

    invoke-static {v0, v1}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    .line 625
    .local v0, "spline":Landroid/util/Spline;
    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v1

    return v1
.end method


# virtual methods
.method public addUserDataPoint(FF)V
    .registers 5
    .param p1, "lux"    # F
    .param p2, "brightness"    # F

    .line 554
    invoke-direct {p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->getUnadjustedBrightness(F)F

    move-result v0

    .line 556
    .local v0, "unadjustedBrightness":F
    invoke-static {p1, p2, v0}, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->updateUnadjustedBrightness(FFF)V

    .line 564
    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mMaxGamma:F

    # invokes: Lcom/android/server/display/BrightnessMappingStrategy;->inferAutoBrightnessAdjustment(FFF)F
    invoke-static {v1, p2, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->access$100(FFF)F

    move-result v1

    .line 571
    .local v1, "adjustment":F
    iput v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 572
    iput p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserLux:F

    .line 573
    iput p2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserBrightness:F

    .line 574
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->computeSpline()V

    .line 575
    return-void
.end method

.method public clearUserDataPoints()V
    .registers 3

    .line 579
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserLux:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_12

    .line 585
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 586
    iput v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserLux:F

    .line 587
    iput v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserBrightness:F

    .line 588
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->computeSpline()V

    .line 590
    :cond_12
    return-void
.end method

.method public convertToNits(I)F
    .registers 3
    .param p1, "backlight"    # I

    .line 549
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 609
    const-string v0, "SimpleMappingStrategy"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMaxGamma="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mMaxGamma:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUserLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUserBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 615
    return-void
.end method

.method public getAutoBrightnessAdjustment()F
    .registers 2

    .line 528
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    return v0
.end method

.method public getBrightness(F)F
    .registers 3
    .param p1, "lux"    # F

    .line 516
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mSpline:Landroid/util/Spline;

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    return v0
.end method

.method public getBrightness(FLjava/lang/String;)F
    .registers 4
    .param p1, "lux"    # F
    .param p2, "packageName"    # Ljava/lang/String;

    .line 522
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mSpline:Landroid/util/Spline;

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    return v0
.end method

.method public getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;
    .registers 2

    .line 604
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNitToBrightnessSpline()Landroid/util/Spline;
    .registers 2

    .line 468
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasUserDataPoints()Z
    .registers 3

    .line 594
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserLux:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isDefaultConfig()Z
    .registers 2

    .line 599
    const/4 v0, 0x1

    return v0
.end method

.method public setAutoBrightnessAdjustment(F)Z
    .registers 4
    .param p1, "adjustment"    # F

    .line 533
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p1

    .line 534
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_10

    .line 535
    const/4 v0, 0x0

    return v0

    .line 542
    :cond_10
    iput p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 543
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->computeSpline()V

    .line 544
    const/4 v0, 0x1

    return v0
.end method

.method public setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Z
    .registers 3
    .param p1, "config"    # Landroid/hardware/display/BrightnessConfiguration;

    .line 511
    const/4 v0, 0x0

    return v0
.end method
