.class public abstract Lcom/android/server/display/BrightnessMappingStrategy;
.super Ljava/lang/Object;
.source "BrightnessMappingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;,
        Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;
    }
.end annotation


# static fields
.field private static CORRECT_BRIGHTNESS_MAX_LUX:F = 0.0f

.field private static final DEBUG:Z = false

.field private static final LUX_GRAD_SMOOTHING:F = 0.25f

.field private static final MAX_GRAD:F = 1.0f

.field private static final PLOG:Lcom/android/server/display/utils/Plog;

.field private static final TAG:Ljava/lang/String; = "BrightnessMappingStrategy"

.field private static sCorrectBrightnessGame:[F

.field private static sCorrectBrightnessVideo:[F

.field private static sGameBrightnessSpline:Landroid/util/Spline;

.field private static sGameWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sLowLuxLevels:[F

.field private static sVideoBrightnessSpline:Landroid/util/Spline;

.field private static sVideoWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mRotation:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 59
    const-string v0, "BrightnessMappingStrategy"

    invoke-static {v0}, Lcom/android/server/display/utils/Plog;->createSystemPlog(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/BrightnessMappingStrategy;->PLOG:Lcom/android/server/display/utils/Plog;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/display/BrightnessMappingStrategy;->sGameWhiteList:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/display/BrightnessMappingStrategy;->sVideoWhiteList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mRotation:I

    return-void
.end method

.method static synthetic access$000(I)F
    .registers 2
    .param p0, "x0"    # I

    .line 49
    invoke-static {p0}, Lcom/android/server/display/BrightnessMappingStrategy;->normalizeAbsoluteBrightness(I)F

    move-result v0

    return v0
.end method

.method static synthetic access$100(FFF)F
    .registers 4
    .param p0, "x0"    # F
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .line 49
    invoke-static {p0, p1, p2}, Lcom/android/server/display/BrightnessMappingStrategy;->inferAutoBrightnessAdjustment(FFF)F

    move-result v0

    return v0
.end method

.method static synthetic access$1000()F
    .registers 1

    .line 49
    sget v0, Lcom/android/server/display/BrightnessMappingStrategy;->CORRECT_BRIGHTNESS_MAX_LUX:F

    return v0
.end method

.method static synthetic access$1100([F[F)Z
    .registers 3
    .param p0, "x0"    # [F
    .param p1, "x1"    # [F

    .line 49
    invoke-static {p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->isValidMapping([F[F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200([F[FFFFF)Landroid/util/Pair;
    .registers 7
    .param p0, "x0"    # [F
    .param p1, "x1"    # [F
    .param p2, "x2"    # F
    .param p3, "x3"    # F
    .param p4, "x4"    # F
    .param p5, "x5"    # F

    .line 49
    invoke-static/range {p0 .. p5}, Lcom/android/server/display/BrightnessMappingStrategy;->getAdjustedCurve([F[FFFFF)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Landroid/util/Spline;
    .registers 1

    .line 49
    sget-object v0, Lcom/android/server/display/BrightnessMappingStrategy;->sGameBrightnessSpline:Landroid/util/Spline;

    return-object v0
.end method

.method static synthetic access$302(Landroid/util/Spline;)Landroid/util/Spline;
    .registers 1
    .param p0, "x0"    # Landroid/util/Spline;

    .line 49
    sput-object p0, Lcom/android/server/display/BrightnessMappingStrategy;->sGameBrightnessSpline:Landroid/util/Spline;

    return-object p0
.end method

.method static synthetic access$400()[F
    .registers 1

    .line 49
    sget-object v0, Lcom/android/server/display/BrightnessMappingStrategy;->sLowLuxLevels:[F

    return-object v0
.end method

.method static synthetic access$500()[F
    .registers 1

    .line 49
    sget-object v0, Lcom/android/server/display/BrightnessMappingStrategy;->sCorrectBrightnessGame:[F

    return-object v0
.end method

.method static synthetic access$600()Landroid/util/Spline;
    .registers 1

    .line 49
    sget-object v0, Lcom/android/server/display/BrightnessMappingStrategy;->sVideoBrightnessSpline:Landroid/util/Spline;

    return-object v0
.end method

.method static synthetic access$602(Landroid/util/Spline;)Landroid/util/Spline;
    .registers 1
    .param p0, "x0"    # Landroid/util/Spline;

    .line 49
    sput-object p0, Lcom/android/server/display/BrightnessMappingStrategy;->sVideoBrightnessSpline:Landroid/util/Spline;

    return-object p0
.end method

.method static synthetic access$700()[F
    .registers 1

    .line 49
    sget-object v0, Lcom/android/server/display/BrightnessMappingStrategy;->sCorrectBrightnessVideo:[F

    return-object v0
.end method

.method static synthetic access$800()Ljava/util/List;
    .registers 1

    .line 49
    sget-object v0, Lcom/android/server/display/BrightnessMappingStrategy;->sGameWhiteList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900()Ljava/util/List;
    .registers 1

    .line 49
    sget-object v0, Lcom/android/server/display/BrightnessMappingStrategy;->sVideoWhiteList:Ljava/util/List;

    return-object v0
.end method

.method public static create(Landroid/content/res/Resources;)Lcom/android/server/display/BrightnessMappingStrategy;
    .registers 14
    .param p0, "resources"    # Landroid/content/res/Resources;

    .line 75
    const v0, 0x1070013

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/display/BrightnessMappingStrategy;->getLuxLevels([I)[F

    move-result-object v0

    .line 77
    .local v0, "luxLevels":[F
    const v1, 0x1070012

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 79
    .local v1, "brightnessLevelsBacklight":[I
    const v2, 0x107000f

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    .line 81
    .local v2, "brightnessLevelsNits":[F
    const/4 v3, 0x1

    const/high16 v4, 0x1130000

    invoke-virtual {p0, v4, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v4

    .line 85
    .local v4, "autoBrightnessAdjustmentMaxGamma":F
    const v5, 0x107005d

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    sput-object v5, Lcom/android/server/display/BrightnessMappingStrategy;->sGameWhiteList:Ljava/util/List;

    .line 87
    const v5, 0x107005f

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    sput-object v5, Lcom/android/server/display/BrightnessMappingStrategy;->sVideoWhiteList:Ljava/util/List;

    .line 89
    const v5, 0x1070067

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/display/BrightnessMappingStrategy;->getLuxLevels([I)[F

    move-result-object v5

    sput-object v5, Lcom/android/server/display/BrightnessMappingStrategy;->sLowLuxLevels:[F

    .line 91
    const v5, 0x107005c

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v5

    sput-object v5, Lcom/android/server/display/BrightnessMappingStrategy;->sCorrectBrightnessGame:[F

    .line 93
    const v5, 0x107005e

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v5

    sput-object v5, Lcom/android/server/display/BrightnessMappingStrategy;->sCorrectBrightnessVideo:[F

    .line 95
    sget-object v5, Lcom/android/server/display/BrightnessMappingStrategy;->sLowLuxLevels:[F

    sget-object v6, Lcom/android/server/display/BrightnessMappingStrategy;->sLowLuxLevels:[F

    array-length v6, v6

    sub-int/2addr v6, v3

    aget v5, v5, v6

    sput v5, Lcom/android/server/display/BrightnessMappingStrategy;->CORRECT_BRIGHTNESS_MAX_LUX:F

    .line 103
    const-string/jumbo v5, "persist.vendor.max.brightness"

    const-string v6, "0"

    .line 104
    invoke-static {v5, v6}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 103
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 105
    .local v5, "maxScreenNit":F
    sget v6, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    int-to-float v6, v6

    div-float v6, v5, v6

    .line 108
    .local v6, "minScreenNit":F
    const/4 v7, 0x0

    cmpl-float v7, v5, v7

    const/4 v8, 0x0

    if-eqz v7, :cond_97

    .line 109
    const/4 v7, 0x2

    new-array v9, v7, [F

    aput v6, v9, v8

    aput v5, v9, v3

    .line 110
    .local v9, "nitsRange":[F
    new-array v7, v7, [I

    aput v3, v7, v8

    sget v10, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    aput v10, v7, v3

    .line 110
    .local v7, "backlightRange":[I
    goto :goto_a9

    .line 112
    .end local v7    # "backlightRange":[I
    .end local v9    # "nitsRange":[F
    :cond_97
    const v7, 0x1070045

    .line 113
    invoke-virtual {p0, v7}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 112
    invoke-static {v7}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v9

    .line 114
    .restart local v9    # "nitsRange":[F
    const v7, 0x1070044

    .line 115
    invoke-virtual {p0, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    .line 119
    .restart local v7    # "backlightRange":[I
    :goto_a9
    invoke-static {v9, v7}, Lcom/android/server/display/BrightnessMappingStrategy;->isValidMapping([F[I)Z

    move-result v10

    if-eqz v10, :cond_e6

    .line 120
    invoke-static {v0, v2}, Lcom/android/server/display/BrightnessMappingStrategy;->isValidMapping([F[F)Z

    move-result v10

    if-eqz v10, :cond_e6

    .line 121
    const v10, 0x10e0092

    invoke-virtual {p0, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 123
    .local v10, "minimumBacklight":I
    const v11, 0x10e0091

    invoke-virtual {p0, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    .line 125
    .local v11, "maximumBacklight":I
    aget v8, v7, v8

    if-gt v8, v10, :cond_cd

    array-length v8, v7

    sub-int/2addr v8, v3

    aget v3, v7, v8

    if-ge v3, v11, :cond_d4

    .line 127
    :cond_cd
    const-string v3, "BrightnessMappingStrategy"

    const-string v8, "Screen brightness mapping does not cover whole range of available backlight values, autobrightness functionality may be impaired."

    invoke-static {v3, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_d4
    new-instance v3, Landroid/hardware/display/BrightnessConfiguration$Builder;

    invoke-direct {v3}, Landroid/hardware/display/BrightnessConfiguration$Builder;-><init>()V

    .line 131
    .local v3, "builder":Landroid/hardware/display/BrightnessConfiguration$Builder;
    invoke-virtual {v3, v0, v2}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setCurve([F[F)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 132
    new-instance v8, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;

    invoke-virtual {v3}, Landroid/hardware/display/BrightnessConfiguration$Builder;->build()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v12

    invoke-direct {v8, v12, v9, v7, v4}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;-><init>(Landroid/hardware/display/BrightnessConfiguration;[F[IF)V

    return-object v8

    .line 134
    .end local v3    # "builder":Landroid/hardware/display/BrightnessConfiguration$Builder;
    .end local v10    # "minimumBacklight":I
    .end local v11    # "maximumBacklight":I
    :cond_e6
    invoke-static {v0, v1}, Lcom/android/server/display/BrightnessMappingStrategy;->isValidMapping([F[I)Z

    move-result v3

    if-eqz v3, :cond_f2

    .line 135
    new-instance v3, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;

    invoke-direct {v3, v0, v1, v4}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;-><init>([F[IF)V

    return-object v3

    .line 138
    :cond_f2
    const/4 v3, 0x0

    return-object v3
.end method

.method private static findInsertionPoint([FF)I
    .registers 4
    .param p0, "arr"    # [F
    .param p1, "val"    # F

    .line 337
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_e

    .line 338
    aget v1, p0, v0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_b

    .line 339
    return v0

    .line 337
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 342
    .end local v0    # "i":I
    :cond_e
    array-length v0, p0

    return v0
.end method

.method private static getAdjustedCurve([F[FFFFF)Landroid/util/Pair;
    .registers 12
    .param p0, "lux"    # [F
    .param p1, "brightness"    # [F
    .param p2, "userLux"    # F
    .param p3, "userBrightness"    # F
    .param p4, "adjustment"    # F
    .param p5, "maxGamma"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[FFFFF)",
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation

    .line 424
    move-object v0, p0

    .line 425
    .local v0, "newLux":[F
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 429
    .local v1, "newBrightness":[F
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {p4, v3, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p4

    .line 430
    neg-float v4, p4

    invoke-static {p5, v4}, Landroid/util/MathUtils;->pow(FF)F

    move-result v4

    .line 435
    .local v4, "gamma":F
    cmpl-float v2, v4, v2

    if-eqz v2, :cond_26

    .line 436
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_18
    array-length v5, v1

    if-ge v2, v5, :cond_26

    .line 437
    aget v5, v1, v2

    invoke-static {v5, v4}, Landroid/util/MathUtils;->pow(FF)F

    move-result v5

    aput v5, v1, v2

    .line 436
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 443
    .end local v2    # "i":I
    :cond_26
    cmpl-float v2, p2, v3

    if-eqz v2, :cond_38

    .line 444
    invoke-static {v0, v1, p2, p3}, Lcom/android/server/display/BrightnessMappingStrategy;->insertControlPoint([F[FFF)Landroid/util/Pair;

    move-result-object v2

    .line 446
    .local v2, "curve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, [F

    .line 447
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v1, v3

    check-cast v1, [F

    .line 455
    .end local v2    # "curve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    :cond_38
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2
.end method

.method private static getFloatArray(Landroid/content/res/TypedArray;)[F
    .registers 5
    .param p0, "array"    # Landroid/content/res/TypedArray;

    .line 152
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 153
    .local v0, "N":I
    new-array v1, v0, [F

    .line 154
    .local v1, "vals":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_14

    .line 155
    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {p0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    aput v3, v1, v2

    .line 154
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 157
    .end local v2    # "i":I
    :cond_14
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 158
    return-object v1
.end method

.method private static getLuxLevels([I)[F
    .registers 5
    .param p0, "lux"    # [I

    .line 144
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [F

    .line 145
    .local v0, "levels":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_13

    .line 146
    add-int/lit8 v2, v1, 0x1

    aget v3, p0, v1

    int-to-float v3, v3

    aput v3, v0, v2

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 148
    .end local v1    # "i":I
    :cond_13
    return-object v0
.end method

.method private static inferAutoBrightnessAdjustment(FFF)F
    .registers 8
    .param p0, "maxGamma"    # F
    .param p1, "desiredBrightness"    # F
    .param p2, "currentBrightness"    # F

    .line 394
    const/4 v0, 0x0

    .line 395
    .local v0, "adjustment":F
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 398
    .local v1, "gamma":F
    const v2, 0x3dcccccd    # 0.1f

    cmpg-float v2, p2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-lez v2, :cond_39

    const v2, 0x3f666666    # 0.9f

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_14

    goto :goto_39

    .line 401
    :cond_14
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-nez v2, :cond_1c

    .line 402
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_3b

    .line 404
    :cond_1c
    cmpl-float v2, p1, v3

    if-nez v2, :cond_23

    .line 405
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_3b

    .line 408
    :cond_23
    invoke-static {p1}, Landroid/util/MathUtils;->log(F)F

    move-result v2

    invoke-static {p2}, Landroid/util/MathUtils;->log(F)F

    move-result v4

    div-float v1, v2, v4

    .line 410
    invoke-static {v1}, Landroid/util/MathUtils;->log(F)F

    move-result v2

    neg-float v2, v2

    invoke-static {p0}, Landroid/util/MathUtils;->log(F)F

    move-result v4

    div-float v0, v2, v4

    goto :goto_3b

    .line 399
    :cond_39
    :goto_39
    sub-float v0, p1, p2

    .line 412
    :goto_3b
    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v0, v2, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    .line 419
    return v0
.end method

.method private static insertControlPoint([F[FFF)Landroid/util/Pair;
    .registers 9
    .param p0, "luxLevels"    # [F
    .param p1, "brightnessLevels"    # [F
    .param p2, "lux"    # F
    .param p3, "brightness"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[FFF)",
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation

    .line 303
    invoke-static {p0, p2}, Lcom/android/server/display/BrightnessMappingStrategy;->findInsertionPoint([FF)I

    move-result v0

    .line 306
    .local v0, "idx":I
    array-length v1, p0

    if-ne v0, v1, :cond_1a

    .line 307
    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 308
    .local v1, "newLuxLevels":[F
    array-length v2, p1

    add-int/lit8 v2, v2, 0x1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    .line 309
    .local v2, "newBrightnessLevels":[F
    aput p2, v1, v0

    .line 310
    aput p3, v2, v0

    goto :goto_4d

    .line 311
    .end local v1    # "newLuxLevels":[F
    .end local v2    # "newBrightnessLevels":[F
    :cond_1a
    aget v1, p0, v0

    cmpl-float v1, v1, p2

    if-nez v1, :cond_2d

    .line 312
    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 313
    .restart local v1    # "newLuxLevels":[F
    array-length v2, p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    .line 314
    .restart local v2    # "newBrightnessLevels":[F
    aput p3, v2, v0

    goto :goto_4d

    .line 316
    .end local v1    # "newLuxLevels":[F
    .end local v2    # "newBrightnessLevels":[F
    :cond_2d
    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    .line 317
    .restart local v1    # "newLuxLevels":[F
    add-int/lit8 v2, v0, 0x1

    array-length v3, p0

    sub-int/2addr v3, v0

    invoke-static {v1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 318
    aput p2, v1, v0

    .line 319
    array-length v2, p1

    add-int/lit8 v2, v2, 0x1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    .line 320
    .restart local v2    # "newBrightnessLevels":[F
    add-int/lit8 v3, v0, 0x1

    array-length v4, p1

    sub-int/2addr v4, v0

    invoke-static {v2, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 322
    aput p3, v2, v0

    .line 326
    :goto_4d
    invoke-static {v1, v2, v0}, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->smoothNewCurve([F[FI)V

    .line 327
    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    return-object v3
.end method

.method private static isValidMapping([F[F)Z
    .registers 9
    .param p0, "x"    # [F
    .param p1, "y"    # [F

    .line 162
    const/4 v0, 0x0

    if-eqz p0, :cond_5b

    if-eqz p1, :cond_5b

    array-length v1, p0

    if-eqz v1, :cond_5b

    array-length v1, p1

    if-nez v1, :cond_c

    goto :goto_5b

    .line 165
    :cond_c
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_11

    .line 166
    return v0

    .line 168
    :cond_11
    array-length v1, p0

    .line 169
    .local v1, "N":I
    aget v2, p0, v0

    .line 170
    .local v2, "prevX":F
    aget v3, p1, v0

    .line 171
    .local v3, "prevY":F
    const/4 v4, 0x0

    cmpg-float v5, v2, v4

    if-ltz v5, :cond_5a

    cmpg-float v4, v3, v4

    if-ltz v4, :cond_5a

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_5a

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_2c

    goto :goto_5a

    .line 174
    :cond_2c
    const/4 v4, 0x1

    move v5, v3

    move v3, v2

    move v2, v4

    .local v2, "i":I
    .local v3, "prevX":F
    .local v5, "prevY":F
    :goto_30
    if-ge v2, v1, :cond_59

    .line 175
    aget v6, p0, v2

    cmpl-float v6, v3, v6

    if-gez v6, :cond_58

    aget v6, p1, v2

    cmpl-float v6, v5, v6

    if-lez v6, :cond_3f

    goto :goto_58

    .line 178
    :cond_3f
    aget v6, p0, v2

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_57

    aget v6, p1, v2

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_50

    goto :goto_57

    .line 181
    :cond_50
    aget v3, p0, v2

    .line 182
    aget v5, p1, v2

    .line 174
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 179
    :cond_57
    :goto_57
    return v0

    .line 176
    :cond_58
    :goto_58
    return v0

    .line 184
    .end local v2    # "i":I
    :cond_59
    return v4

    .line 172
    .end local v5    # "prevY":F
    .local v2, "prevX":F
    .local v3, "prevY":F
    :cond_5a
    :goto_5a
    return v0

    .line 163
    .end local v1    # "N":I
    .end local v2    # "prevX":F
    .end local v3    # "prevY":F
    :cond_5b
    :goto_5b
    return v0
.end method

.method private static isValidMapping([F[I)Z
    .registers 9
    .param p0, "x"    # [F
    .param p1, "y"    # [I

    .line 188
    const/4 v0, 0x0

    if-eqz p0, :cond_48

    if-eqz p1, :cond_48

    array-length v1, p0

    if-eqz v1, :cond_48

    array-length v1, p1

    if-nez v1, :cond_c

    goto :goto_48

    .line 191
    :cond_c
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_11

    .line 192
    return v0

    .line 194
    :cond_11
    array-length v1, p0

    .line 195
    .local v1, "N":I
    aget v2, p0, v0

    .line 196
    .local v2, "prevX":F
    aget v3, p1, v0

    .line 197
    .local v3, "prevY":I
    const/4 v4, 0x0

    cmpg-float v4, v2, v4

    if-ltz v4, :cond_47

    if-ltz v3, :cond_47

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_24

    goto :goto_47

    .line 200
    :cond_24
    const/4 v4, 0x1

    move v5, v3

    move v3, v2

    move v2, v4

    .local v2, "i":I
    .local v3, "prevX":F
    .local v5, "prevY":I
    :goto_28
    if-ge v2, v1, :cond_46

    .line 201
    aget v6, p0, v2

    cmpl-float v6, v3, v6

    if-gez v6, :cond_45

    aget v6, p1, v2

    if-le v5, v6, :cond_35

    goto :goto_45

    .line 204
    :cond_35
    aget v6, p0, v2

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 205
    return v0

    .line 207
    :cond_3e
    aget v3, p0, v2

    .line 208
    aget v5, p1, v2

    .line 200
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 202
    :cond_45
    :goto_45
    return v0

    .line 210
    .end local v2    # "i":I
    :cond_46
    return v4

    .line 198
    .end local v5    # "prevY":I
    .local v2, "prevX":F
    .local v3, "prevY":I
    :cond_47
    :goto_47
    return v0

    .line 189
    .end local v1    # "N":I
    .end local v2    # "prevX":F
    .end local v3    # "prevY":I
    :cond_48
    :goto_48
    return v0
.end method

.method private static normalizeAbsoluteBrightness(I)F
    .registers 3
    .param p0, "brightness"    # I

    .line 296
    sget v0, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/util/MathUtils;->constrain(III)I

    move-result p0

    .line 298
    int-to-float v0, p0

    sget v1, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private static permissibleRatio(FF)F
    .registers 4
    .param p0, "currLux"    # F
    .param p1, "prevLux"    # F

    .line 387
    const/high16 v0, 0x3e800000    # 0.25f

    add-float v1, p0, v0

    .line 388
    invoke-static {v1}, Landroid/util/MathUtils;->log(F)F

    move-result v1

    add-float/2addr v0, p1

    .line 389
    invoke-static {v0}, Landroid/util/MathUtils;->log(F)F

    move-result v0

    sub-float/2addr v1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    .line 387
    invoke-static {v0}, Landroid/util/MathUtils;->exp(F)F

    move-result v0

    return v0
.end method

.method private static smoothCurve([F[FI)V
    .registers 11
    .param p0, "lux"    # [F
    .param p1, "brightness"    # [F
    .param p2, "idx"    # I

    .line 349
    aget v0, p0, p2

    .line 350
    .local v0, "prevLux":F
    aget v1, p1, p2

    .line 352
    .local v1, "prevBrightness":F
    add-int/lit8 v2, p2, 0x1

    .local v2, "i":I
    :goto_6
    array-length v3, p0

    if-ge v2, v3, :cond_22

    .line 353
    aget v3, p0, v2

    .line 354
    .local v3, "currLux":F
    aget v4, p1, v2

    .line 355
    .local v4, "currBrightness":F
    invoke-static {v3, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->permissibleRatio(FF)F

    move-result v5

    mul-float/2addr v5, v1

    .line 356
    .local v5, "maxBrightness":F
    invoke-static {v4, v1, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v6

    .line 358
    .local v6, "newBrightness":F
    cmpl-float v7, v6, v4

    if-nez v7, :cond_1b

    .line 359
    goto :goto_22

    .line 361
    :cond_1b
    move v0, v3

    .line 362
    move v1, v6

    .line 363
    aput v6, p1, v2

    .line 352
    .end local v3    # "currLux":F
    .end local v4    # "currBrightness":F
    .end local v5    # "maxBrightness":F
    .end local v6    # "newBrightness":F
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 366
    .end local v2    # "i":I
    :cond_22
    :goto_22
    aget v0, p0, p2

    .line 367
    aget v1, p1, p2

    .line 368
    add-int/lit8 v2, p2, -0x1

    .restart local v2    # "i":I
    :goto_28
    if-ltz v2, :cond_43

    .line 369
    aget v3, p0, v2

    .line 370
    .restart local v3    # "currLux":F
    aget v4, p1, v2

    .line 371
    .restart local v4    # "currBrightness":F
    invoke-static {v3, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->permissibleRatio(FF)F

    move-result v5

    mul-float/2addr v5, v1

    .line 372
    .local v5, "minBrightness":F
    invoke-static {v4, v5, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v6

    .line 374
    .restart local v6    # "newBrightness":F
    cmpl-float v7, v6, v4

    if-nez v7, :cond_3c

    .line 375
    goto :goto_43

    .line 377
    :cond_3c
    move v0, v3

    .line 378
    move v1, v6

    .line 379
    aput v6, p1, v2

    .line 368
    .end local v3    # "currLux":F
    .end local v4    # "currBrightness":F
    .end local v5    # "minBrightness":F
    .end local v6    # "newBrightness":F
    add-int/lit8 v2, v2, -0x1

    goto :goto_28

    .line 384
    .end local v2    # "i":I
    :cond_43
    :goto_43
    return-void
.end method


# virtual methods
.method public abstract addUserDataPoint(FF)V
.end method

.method public abstract clearUserDataPoints()V
.end method

.method public abstract convertToNits(I)F
.end method

.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract getAutoBrightnessAdjustment()F
.end method

.method public abstract getBrightness(F)F
.end method

.method public abstract getBrightness(FLjava/lang/String;)F
.end method

.method public abstract getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;
.end method

.method public abstract getNitToBrightnessSpline()Landroid/util/Spline;
.end method

.method public abstract hasUserDataPoints()Z
.end method

.method public abstract isDefaultConfig()Z
.end method

.method public abstract setAutoBrightnessAdjustment(F)Z
.end method

.method public abstract setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Z
.end method
