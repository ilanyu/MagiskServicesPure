.class Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;
.super Lcom/android/server/display/BrightnessMappingStrategy;
.source "BrightnessMappingStrategy.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/BrightnessMappingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PhysicalMappingStrategy"
.end annotation


# instance fields
.field private mAutoBrightnessAdjustment:F

.field private mBacklightToNitsSpline:Landroid/util/Spline;

.field private mBrightnessSpline:Landroid/util/Spline;

.field private mConfig:Landroid/hardware/display/BrightnessConfiguration;

.field private final mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

.field private mMaxGamma:F

.field private final mNitsToBacklightSpline:Landroid/util/Spline;

.field private mUserBrightness:F

.field private mUserLux:F


# direct methods
.method public constructor <init>(Landroid/hardware/display/BrightnessConfiguration;[F[IF)V
    .registers 9
    .param p1, "config"    # Landroid/hardware/display/BrightnessConfiguration;
    .param p2, "nits"    # [F
    .param p3, "backlight"    # [I
    .param p4, "maxGamma"    # F

    .line 666
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy;-><init>()V

    .line 667
    array-length v0, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    array-length v0, p3

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    :goto_e
    const-string v3, "Nits and backlight arrays must not be empty!"

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 669
    array-length v0, p2

    array-length v3, p3

    if-ne v0, v3, :cond_18

    goto :goto_19

    :cond_18
    move v1, v2

    :goto_19
    const-string v0, "Nits and backlight arrays must be the same length!"

    invoke-static {v1, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 671
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    const-string/jumbo v1, "nits"

    const/4 v3, 0x0

    invoke-static {p2, v3, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    .line 673
    sget v0, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    const-string v1, "backlight"

    invoke-static {p3, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([IIILjava/lang/String;)[I

    .line 676
    iput p4, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mMaxGamma:F

    .line 677
    iput v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 678
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    .line 679
    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserBrightness:F

    .line 682
    array-length v0, p2

    .line 683
    .local v0, "N":I
    new-array v1, v0, [F

    .line 684
    .local v1, "normalizedBacklight":[F
    nop

    .line 684
    .local v2, "i":I
    :goto_40
    if-ge v2, v0, :cond_4d

    .line 685
    aget v3, p3, v2

    # invokes: Lcom/android/server/display/BrightnessMappingStrategy;->normalizeAbsoluteBrightness(I)F
    invoke-static {v3}, Lcom/android/server/display/BrightnessMappingStrategy;->access$000(I)F

    move-result v3

    aput v3, v1, v2

    .line 684
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    .line 693
    .end local v2    # "i":I
    :cond_4d
    invoke-static {p2, v1}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBacklightSpline:Landroid/util/Spline;

    .line 695
    invoke-static {v1, p2}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBacklightToNitsSpline:Landroid/util/Spline;

    .line 697
    # getter for: Lcom/android/server/display/BrightnessMappingStrategy;->sLowLuxLevels:[F
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$400()[F

    move-result-object v2

    # getter for: Lcom/android/server/display/BrightnessMappingStrategy;->sCorrectBrightnessGame:[F
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$500()[F

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->getCorrectSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    # setter for: Lcom/android/server/display/BrightnessMappingStrategy;->sGameBrightnessSpline:Landroid/util/Spline;
    invoke-static {v2}, Lcom/android/server/display/BrightnessMappingStrategy;->access$302(Landroid/util/Spline;)Landroid/util/Spline;

    .line 698
    # getter for: Lcom/android/server/display/BrightnessMappingStrategy;->sLowLuxLevels:[F
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$400()[F

    move-result-object v2

    # getter for: Lcom/android/server/display/BrightnessMappingStrategy;->sCorrectBrightnessVideo:[F
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$700()[F

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->getCorrectSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    # setter for: Lcom/android/server/display/BrightnessMappingStrategy;->sVideoBrightnessSpline:Landroid/util/Spline;
    invoke-static {v2}, Lcom/android/server/display/BrightnessMappingStrategy;->access$602(Landroid/util/Spline;)Landroid/util/Spline;

    .line 701
    iput-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 705
    iput-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 706
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->computeSpline()V

    .line 707
    return-void
.end method

.method private computeSpline()V
    .registers 12

    .line 840
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    move-result-object v0

    .line 841
    .local v0, "defaultCurve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [F

    .line 842
    .local v1, "defaultLux":[F
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, [F

    .line 843
    .local v8, "defaultNits":[F
    array-length v2, v8

    new-array v9, v2, [F

    .line 844
    .local v9, "defaultBacklight":[F
    const/4 v10, 0x0

    move v2, v10

    .local v2, "i":I
    :goto_14
    array-length v3, v9

    if-ge v2, v3, :cond_24

    .line 845
    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBacklightSpline:Landroid/util/Spline;

    aget v4, v8, v2

    invoke-virtual {v3, v4}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    aput v3, v9, v2

    .line 844
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 847
    .end local v2    # "i":I
    :cond_24
    iget v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    iget v5, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserBrightness:F

    iget v6, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    iget v7, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mMaxGamma:F

    move-object v2, v1

    move-object v3, v9

    # invokes: Lcom/android/server/display/BrightnessMappingStrategy;->getAdjustedCurve([F[FFFFF)Landroid/util/Pair;
    invoke-static/range {v2 .. v7}, Lcom/android/server/display/BrightnessMappingStrategy;->access$200([F[FFFFF)Landroid/util/Pair;

    move-result-object v2

    .line 849
    .local v2, "curve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, [F

    .line 850
    .local v3, "lux":[F
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, [F

    .line 851
    .local v4, "backlight":[F
    array-length v5, v4

    new-array v5, v5, [F

    .line 852
    .local v5, "nits":[F
    nop

    .local v10, "i":I
    :goto_3e
    move v6, v10

    .end local v10    # "i":I
    .local v6, "i":I
    array-length v7, v5

    if-ge v6, v7, :cond_4f

    .line 853
    iget-object v7, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBacklightToNitsSpline:Landroid/util/Spline;

    aget v10, v4, v6

    invoke-virtual {v7, v10}, Landroid/util/Spline;->interpolate(F)F

    move-result v7

    aput v7, v5, v6

    .line 852
    add-int/lit8 v10, v6, 0x1

    .end local v6    # "i":I
    .restart local v10    # "i":I
    goto :goto_3e

    .line 855
    .end local v10    # "i":I
    :cond_4f
    invoke-static {v3, v5}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessSpline:Landroid/util/Spline;

    .line 856
    return-void
.end method

.method private correctBrightness(FFLjava/lang/String;)F
    .registers 6
    .param p1, "lux"    # F
    .param p2, "brightness"    # F
    .param p3, "packageName"    # Ljava/lang/String;

    .line 866
    # getter for: Lcom/android/server/display/BrightnessMappingStrategy;->sGameBrightnessSpline:Landroid/util/Spline;
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$300()Landroid/util/Spline;

    move-result-object v0

    if-eqz v0, :cond_19

    # getter for: Lcom/android/server/display/BrightnessMappingStrategy;->sGameWhiteList:Ljava/util/List;
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$800()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 867
    # getter for: Lcom/android/server/display/BrightnessMappingStrategy;->sGameBrightnessSpline:Landroid/util/Spline;
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$300()Landroid/util/Spline;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->getCorrectBrightness(FFLandroid/util/Spline;)F

    move-result v0

    return v0

    .line 869
    :cond_19
    # getter for: Lcom/android/server/display/BrightnessMappingStrategy;->sVideoBrightnessSpline:Landroid/util/Spline;
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$600()Landroid/util/Spline;

    move-result-object v0

    if-eqz v0, :cond_3c

    # getter for: Lcom/android/server/display/BrightnessMappingStrategy;->sVideoWhiteList:Ljava/util/List;
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$900()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mRotation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_33

    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mRotation:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3c

    .line 871
    :cond_33
    # getter for: Lcom/android/server/display/BrightnessMappingStrategy;->sVideoBrightnessSpline:Landroid/util/Spline;
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$600()Landroid/util/Spline;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->getCorrectBrightness(FFLandroid/util/Spline;)F

    move-result v0

    return v0

    .line 873
    :cond_3c
    return p2
.end method

.method private getCorrectBrightness(FFLandroid/util/Spline;)F
    .registers 6
    .param p1, "lux"    # F
    .param p2, "brightness"    # F
    .param p3, "correctSpline"    # Landroid/util/Spline;

    .line 877
    # getter for: Lcom/android/server/display/BrightnessMappingStrategy;->CORRECT_BRIGHTNESS_MAX_LUX:F
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$1000()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_13

    .line 878
    invoke-virtual {p3, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    .line 879
    .local v0, "nit":F
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBacklightSpline:Landroid/util/Spline;

    invoke-virtual {v1, v0}, Landroid/util/Spline;->interpolate(F)F

    move-result p2

    .line 880
    return p2

    .line 882
    .end local v0    # "nit":F
    :cond_13
    return p2
.end method

.method private getCorrectSpline([F[F)Landroid/util/Spline;
    .registers 7
    .param p1, "lux"    # [F
    .param p2, "brightness"    # [F

    .line 886
    # invokes: Lcom/android/server/display/BrightnessMappingStrategy;->isValidMapping([F[F)Z
    invoke-static {p1, p2}, Lcom/android/server/display/BrightnessMappingStrategy;->access$1100([F[F)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 887
    array-length v0, p2

    new-array v0, v0, [F

    .line 888
    .local v0, "nit":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    array-length v2, p2

    if-ge v1, v2, :cond_1a

    .line 889
    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBacklightToNitsSpline:Landroid/util/Spline;

    aget v3, p2, v1

    invoke-virtual {v2, v3}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    aput v2, v0, v1

    .line 888
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 891
    .end local v1    # "i":I
    :cond_1a
    invoke-static {p1, v0}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v1

    return-object v1

    .line 894
    .end local v0    # "nit":[F
    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method private getUnadjustedBrightness(F)F
    .registers 6
    .param p1, "lux"    # F

    .line 859
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    move-result-object v0

    .line 860
    .local v0, "curve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [F

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [F

    invoke-static {v1, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v1

    .line 861
    .local v1, "spline":Landroid/util/Spline;
    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBacklightSpline:Landroid/util/Spline;

    invoke-virtual {v1, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    return v2
.end method


# virtual methods
.method public addUserDataPoint(FF)V
    .registers 5
    .param p1, "lux"    # F
    .param p2, "brightness"    # F

    .line 774
    invoke-direct {p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->getUnadjustedBrightness(F)F

    move-result v0

    .line 776
    .local v0, "unadjustedBrightness":F
    invoke-static {p1, p2, v0}, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->updateUnadjustedBrightness(FFF)V

    .line 784
    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mMaxGamma:F

    # invokes: Lcom/android/server/display/BrightnessMappingStrategy;->inferAutoBrightnessAdjustment(FFF)F
    invoke-static {v1, p2, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->access$100(FFF)F

    move-result v1

    .line 791
    .local v1, "adjustment":F
    iput v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 792
    iput p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    .line 793
    iput p2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserBrightness:F

    .line 794
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->computeSpline()V

    .line 795
    return-void
.end method

.method public clearUserDataPoints()V
    .registers 3

    .line 799
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_12

    .line 805
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 806
    iput v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    .line 807
    iput v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserBrightness:F

    .line 808
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->computeSpline()V

    .line 810
    :cond_12
    return-void
.end method

.method public convertToNits(I)F
    .registers 4
    .param p1, "backlight"    # I

    .line 769
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBacklightToNitsSpline:Landroid/util/Spline;

    # invokes: Lcom/android/server/display/BrightnessMappingStrategy;->normalizeAbsoluteBrightness(I)F
    invoke-static {p1}, Lcom/android/server/display/BrightnessMappingStrategy;->access$000(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 829
    const-string v0, "PhysicalMappingStrategy"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 831
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mNitsToBacklightSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBacklightSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 833
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMaxGamma="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mMaxGamma:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUserLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUserBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 837
    return-void
.end method

.method public getAutoBrightnessAdjustment()F
    .registers 2

    .line 748
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    return v0
.end method

.method public getBrightness(F)F
    .registers 4
    .param p1, "lux"    # F

    .line 727
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    .line 728
    .local v0, "nits":F
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBacklightSpline:Landroid/util/Spline;

    invoke-virtual {v1, v0}, Landroid/util/Spline;->interpolate(F)F

    move-result v1

    .line 729
    .local v1, "backlight":F
    return v1
.end method

.method public getBrightness(FLjava/lang/String;)F
    .registers 7
    .param p1, "lux"    # F
    .param p2, "packageName"    # Ljava/lang/String;

    .line 735
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    .line 736
    .local v0, "nits":F
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBacklightSpline:Landroid/util/Spline;

    invoke-virtual {v1, v0}, Landroid/util/Spline;->interpolate(F)F

    move-result v1

    .line 737
    .local v1, "backlight":F
    iget v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_18

    .line 738
    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->correctBrightness(FFLjava/lang/String;)F

    move-result v1

    .line 742
    :cond_18
    return v1
.end method

.method public getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;
    .registers 2

    .line 824
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    return-object v0
.end method

.method public getNitToBrightnessSpline()Landroid/util/Spline;
    .registers 2

    .line 639
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBacklightSpline:Landroid/util/Spline;

    return-object v0
.end method

.method public hasUserDataPoints()Z
    .registers 3

    .line 814
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

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
    .registers 3

    .line 819
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0, v1}, Landroid/hardware/display/BrightnessConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setAutoBrightnessAdjustment(F)Z
    .registers 4
    .param p1, "adjustment"    # F

    .line 753
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p1

    .line 754
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_10

    .line 755
    const/4 v0, 0x0

    return v0

    .line 762
    :cond_10
    iput p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 763
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->computeSpline()V

    .line 764
    const/4 v0, 0x1

    return v0
.end method

.method public setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Z
    .registers 3
    .param p1, "config"    # Landroid/hardware/display/BrightnessConfiguration;

    .line 711
    if-nez p1, :cond_4

    .line 712
    iget-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 714
    :cond_4
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {p1, v0}, Landroid/hardware/display/BrightnessConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 715
    const/4 v0, 0x0

    return v0

    .line 720
    :cond_e
    iput-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 721
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->computeSpline()V

    .line 722
    const/4 v0, 0x1

    return v0
.end method
