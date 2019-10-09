.class public Lcom/android/server/display/BackLightController;
.super Ljava/lang/Object;
.source "BackLightController.java"


# static fields
.field private static final BRIGHT_ANIMATION_DURATION:I = 0x4

.field private static final CURVE_GAMMA:F = 2.0f

.field private static final DEBUG:Z = false

.field private static final GRAY_BRIGHTNESS_RATE:I

.field private static final HIGHT_GRAY_BRIGHTNESS_LEVELS:[I

.field private static final LOW_GRAY_BRIGHTNESS_LEVELS:[I

.field private static MAX_BRIGHTNESS_SPLINE:Landroid/util/Spline; = null

.field public static final MAX_SCREEN_BRIGHTNESS:I

.field private static MIN_BRIGHTNESS_SPLINE:Landroid/util/Spline; = null

.field public static final MIN_SCREEN_BRIGHTNESS:I

.field private static final NIGHT_LIGHT_BRIGHTNESS_DEFAULT:I

.field private static final RATE_FAST_ANIMATION_DURATION:I = 0x3

.field private static final SCREEN_BRIGHTNESS_BRIGHT:I = 0x4

.field private static final SCREEN_BRIGHTNESS_DARK:I = 0x0

.field private static final SCREEN_BRIGHTNESS_DIM:I = 0x1

.field private static final SCREEN_BRIGHTNESS_LIGHT:I = 0x3

.field private static final SCREEN_BRIGHTNESS_MEDIUM:I = 0x2

.field private static final SYSTEM_RESOURCES:Landroid/content/res/Resources;

.field private static final TAG:Ljava/lang/String; = "BackLightController"

.field private static sBackLightRate:I

.field private static sGrayBrightnessFactor:F

.field private static sLastBrightness:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 18
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/BackLightController;->SYSTEM_RESOURCES:Landroid/content/res/Resources;

    .line 19
    sget-object v0, Lcom/android/server/display/BackLightController;->SYSTEM_RESOURCES:Landroid/content/res/Resources;

    .line 20
    const v1, 0x110a0016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/server/display/BackLightController;->NIGHT_LIGHT_BRIGHTNESS_DEFAULT:I

    .line 22
    sget-object v0, Lcom/android/server/display/BackLightController;->SYSTEM_RESOURCES:Landroid/content/res/Resources;

    .line 23
    const v1, 0x10e0091

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/server/display/BackLightController;->MAX_SCREEN_BRIGHTNESS:I

    .line 24
    sget-object v0, Lcom/android/server/display/BackLightController;->SYSTEM_RESOURCES:Landroid/content/res/Resources;

    .line 25
    const v1, 0x10e0092

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/server/display/BackLightController;->MIN_SCREEN_BRIGHTNESS:I

    .line 83
    :try_start_27
    sget-object v0, Lcom/android/server/display/BackLightController;->SYSTEM_RESOURCES:Landroid/content/res/Resources;

    .line 85
    const v1, 0x11090029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 84
    invoke-static {v0}, Lcom/android/server/display/BackLightController;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v0

    sget-object v2, Lcom/android/server/display/BackLightController;->SYSTEM_RESOURCES:Landroid/content/res/Resources;

    const v3, 0x1109002a

    .line 86
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/display/BackLightController;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    .line 83
    invoke-static {v0, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/BackLightController;->MAX_BRIGHTNESS_SPLINE:Landroid/util/Spline;

    .line 88
    sget-object v0, Lcom/android/server/display/BackLightController;->SYSTEM_RESOURCES:Landroid/content/res/Resources;

    .line 90
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 89
    invoke-static {v0}, Lcom/android/server/display/BackLightController;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v0

    sget-object v1, Lcom/android/server/display/BackLightController;->SYSTEM_RESOURCES:Landroid/content/res/Resources;

    const v2, 0x1109002b

    .line 91
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/display/BackLightController;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v1

    .line 88
    invoke-static {v0, v1}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/BackLightController;->MIN_BRIGHTNESS_SPLINE:Landroid/util/Spline;
    :try_end_64
    .catch Ljava/lang/IllegalArgumentException; {:try_start_27 .. :try_end_64} :catch_65

    .line 95
    goto :goto_6d

    .line 93
    :catch_65
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "BackLightController"

    const-string v2, "brightness dynamic range not support."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_6d
    sget-object v0, Lcom/android/server/display/BackLightController;->SYSTEM_RESOURCES:Landroid/content/res/Resources;

    const v1, 0x11090027

    .line 105
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    sput-object v0, Lcom/android/server/display/BackLightController;->HIGHT_GRAY_BRIGHTNESS_LEVELS:[I

    .line 106
    sget-object v0, Lcom/android/server/display/BackLightController;->SYSTEM_RESOURCES:Landroid/content/res/Resources;

    const v1, 0x11090028

    .line 107
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    sput-object v0, Lcom/android/server/display/BackLightController;->LOW_GRAY_BRIGHTNESS_LEVELS:[I

    .line 108
    sget-object v0, Lcom/android/server/display/BackLightController;->SYSTEM_RESOURCES:Landroid/content/res/Resources;

    const v1, 0x110a0034

    .line 109
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/server/display/BackLightController;->GRAY_BRIGHTNESS_RATE:I

    .line 111
    const/4 v0, -0x1

    sput v0, Lcom/android/server/display/BackLightController;->sBackLightRate:I

    .line 112
    const/high16 v1, 0x3f800000    # 1.0f

    sput v1, Lcom/android/server/display/BackLightController;->sGrayBrightnessFactor:F

    .line 113
    sput v0, Lcom/android/server/display/BackLightController;->sLastBrightness:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static adjustBackLightRate(I)I
    .registers 2
    .param p0, "inRate"    # I

    .line 180
    sget v0, Lcom/android/server/display/BackLightController;->sBackLightRate:I

    if-ltz v0, :cond_7

    .line 181
    sget v0, Lcom/android/server/display/BackLightController;->sBackLightRate:I

    return v0

    .line 183
    :cond_7
    return p0
.end method

.method static adjustBrightness(IIIZFLcom/android/server/display/DisplayPowerState;Landroid/util/Spline;)I
    .registers 12
    .param p0, "brightness"    # I
    .param p1, "minBrightness"    # I
    .param p2, "maxBrightness"    # I
    .param p3, "autoBrightnessEnabled"    # Z
    .param p4, "lux"    # F
    .param p5, "powerState"    # Lcom/android/server/display/DisplayPowerState;
    .param p6, "nitToBrightnessSpline"    # Landroid/util/Spline;

    .line 119
    if-eqz p3, :cond_42

    sget-object v0, Lcom/android/server/display/BackLightController;->MAX_BRIGHTNESS_SPLINE:Landroid/util/Spline;

    if-eqz v0, :cond_42

    sget-object v0, Lcom/android/server/display/BackLightController;->MIN_BRIGHTNESS_SPLINE:Landroid/util/Spline;

    if-eqz v0, :cond_42

    if-eqz p6, :cond_42

    .line 121
    sget-object v0, Lcom/android/server/display/BackLightController;->MAX_BRIGHTNESS_SPLINE:Landroid/util/Spline;

    .line 122
    invoke-virtual {v0, p4}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    invoke-virtual {p6, v0}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    sget v1, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 124
    .local v0, "dynamicMaxBrightness":I
    sget-object v1, Lcom/android/server/display/BackLightController;->MIN_BRIGHTNESS_SPLINE:Landroid/util/Spline;

    .line 125
    invoke-virtual {v1, p4}, Landroid/util/Spline;->interpolate(F)F

    move-result v1

    invoke-virtual {p6, v1}, Landroid/util/Spline;->interpolate(F)F

    move-result v1

    sget v2, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 128
    .local v1, "dynamicMinBrightness":I
    move v2, p0

    .line 129
    .local v2, "oldBrightness":I
    sub-int v3, v2, p1

    int-to-float v3, v3

    sub-int v4, p2, p1

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-int v4, v0, v1

    int-to-float v4, v4

    mul-float/2addr v3, v4

    .line 130
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int p0, v1, v3

    .line 145
    .end local v0    # "dynamicMaxBrightness":I
    .end local v1    # "dynamicMinBrightness":I
    .end local v2    # "oldBrightness":I
    :cond_42
    sget-boolean v0, Lmiui/os/DeviceFeature;->SUPPORT_NIGHT_LIGHT:Z

    if-eqz v0, :cond_64

    if-ne p0, p1, :cond_64

    if-eqz p3, :cond_4f

    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-nez v0, :cond_64

    .line 147
    :cond_4f
    sget v0, Lcom/android/server/display/BackLightController;->NIGHT_LIGHT_BRIGHTNESS_DEFAULT:I

    .line 148
    .local v0, "nightLightBrightness":I
    sget-boolean v1, Lmiui/os/DeviceFeature;->SUPPORT_NIGHT_LIGHT_ADJ:Z

    if-eqz v1, :cond_5f

    sget-object v1, Lcom/android/server/display/ScreenEffectService;->sScreenEffectManager:Lcom/android/server/display/ScreenEffectService$LocalService;

    if-eqz v1, :cond_5f

    .line 150
    sget-object v1, Lcom/android/server/display/ScreenEffectService;->sScreenEffectManager:Lcom/android/server/display/ScreenEffectService$LocalService;

    invoke-virtual {v1}, Lcom/android/server/display/ScreenEffectService$LocalService;->getNightLightBrightness()I

    move-result v0

    .line 152
    :cond_5f
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1

    .line 156
    .end local v0    # "nightLightBrightness":I
    :cond_64
    const/4 v0, -0x1

    if-eqz p3, :cond_8f

    sget-object v1, Lcom/android/server/display/ScreenEffectService;->sScreenEffectManager:Lcom/android/server/display/ScreenEffectService$LocalService;

    if-eqz v1, :cond_8f

    .line 157
    sget-object v1, Lcom/android/server/display/ScreenEffectService;->sScreenEffectManager:Lcom/android/server/display/ScreenEffectService$LocalService;

    invoke-virtual {v1}, Lcom/android/server/display/ScreenEffectService$LocalService;->getGrayScale()F

    move-result v1

    .line 158
    .local v1, "grayScale":F
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_8f

    .line 159
    move v2, p0

    .line 160
    .restart local v2    # "oldBrightness":I
    invoke-static {p0, p2, v1}, Lcom/android/server/display/BackLightController;->caculateBrightness(IIF)I

    move-result p0

    .line 161
    sget v3, Lcom/android/server/display/BackLightController;->sLastBrightness:I

    if-eq v3, v0, :cond_8b

    sget v3, Lcom/android/server/display/BackLightController;->sLastBrightness:I

    if-ne v3, v2, :cond_8b

    if-eq p0, v2, :cond_8b

    .line 163
    sget v3, Lcom/android/server/display/BackLightController;->GRAY_BRIGHTNESS_RATE:I

    sput v3, Lcom/android/server/display/BackLightController;->sBackLightRate:I

    goto :goto_8f

    .line 165
    :cond_8b
    sput v0, Lcom/android/server/display/BackLightController;->sBackLightRate:I

    .line 166
    sput v2, Lcom/android/server/display/BackLightController;->sLastBrightness:I

    .line 172
    .end local v1    # "grayScale":F
    .end local v2    # "oldBrightness":I
    :cond_8f
    :goto_8f
    if-nez p3, :cond_97

    sget v1, Lcom/android/server/display/BackLightController;->sBackLightRate:I

    if-eq v1, v0, :cond_97

    .line 173
    sput v0, Lcom/android/server/display/BackLightController;->sBackLightRate:I

    .line 176
    :cond_97
    return p0
.end method

.method private static caculateBrightness(IIF)I
    .registers 8
    .param p0, "brightness"    # I
    .param p1, "maxBrightness"    # I
    .param p2, "grayScale"    # F

    .line 187
    const/4 v0, -0x1

    .line 188
    .local v0, "level":I
    const v1, 0x3f19999a    # 0.6f

    cmpl-float v1, p2, v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-lez v1, :cond_64

    .line 189
    nop

    .local v2, "i":I
    :goto_c
    move v1, v2

    .end local v2    # "i":I
    .local v1, "i":I
    sget-object v2, Lcom/android/server/display/BackLightController;->HIGHT_GRAY_BRIGHTNESS_LEVELS:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1d

    .line 190
    sget-object v2, Lcom/android/server/display/BackLightController;->HIGHT_GRAY_BRIGHTNESS_LEVELS:[I

    aget v2, v2, v1

    if-ge p0, v2, :cond_1a

    .line 191
    move v0, v1

    .line 192
    goto :goto_1d

    .line 189
    :cond_1a
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_c

    .line 195
    .end local v2    # "i":I
    :cond_1d
    :goto_1d
    packed-switch v0, :pswitch_data_10a

    .line 209
    sput v3, Lcom/android/server/display/BackLightController;->sGrayBrightnessFactor:F

    .line 210
    goto/16 :goto_c0

    .line 205
    :pswitch_24
    const v1, 0x3a8893b8    # 0.001042f

    int-to-float v2, p0

    mul-float/2addr v1, v2

    const/high16 v2, 0x3fc80000    # 1.5625f

    sub-float/2addr v1, v2

    mul-float/2addr v1, p2

    const v2, 0x3ff7f62b    # 1.9372f

    const v3, 0x3a23d70a    # 6.25E-4f

    int-to-float v4, p0

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    add-float/2addr v1, v2

    sput v1, Lcom/android/server/display/BackLightController;->sGrayBrightnessFactor:F

    .line 207
    goto/16 :goto_c0

    .line 201
    :pswitch_3b
    int-to-float v1, p0

    const v2, 0x3e3b645a    # 0.183f

    mul-float/2addr v2, p2

    const v3, 0x3de11340    # 0.1099f

    sub-float/2addr v2, v3

    int-to-float v3, p1

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    int-to-float v2, p0

    div-float/2addr v1, v2

    sput v1, Lcom/android/server/display/BackLightController;->sGrayBrightnessFactor:F

    .line 203
    goto/16 :goto_c0

    .line 197
    :pswitch_4d
    const v1, 0x3ea3d70a    # 0.32f

    const v2, 0x3b0c3f3e    # 0.00214f

    int-to-float v3, p0

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    mul-float/2addr v1, p2

    const v2, 0x3aa88f00    # 0.001286f

    int-to-float v3, p0

    mul-float/2addr v2, v3

    const v3, 0x3f4e9e1b    # 0.8071f

    add-float/2addr v2, v3

    add-float/2addr v1, v2

    sput v1, Lcom/android/server/display/BackLightController;->sGrayBrightnessFactor:F

    .line 199
    goto :goto_c0

    .line 212
    :cond_64
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_be

    const v1, 0x3ecccccd    # 0.4f

    cmpg-float v1, p2, v1

    if-gez v1, :cond_be

    .line 213
    nop

    .restart local v2    # "i":I
    :goto_71
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    sget-object v2, Lcom/android/server/display/BackLightController;->LOW_GRAY_BRIGHTNESS_LEVELS:[I

    array-length v2, v2

    if-ge v1, v2, :cond_82

    .line 214
    sget-object v2, Lcom/android/server/display/BackLightController;->LOW_GRAY_BRIGHTNESS_LEVELS:[I

    aget v2, v2, v1

    if-ge p0, v2, :cond_7f

    .line 215
    move v0, v1

    .line 216
    goto :goto_82

    .line 213
    :cond_7f
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_71

    .line 219
    .end local v2    # "i":I
    :cond_82
    :goto_82
    packed-switch v0, :pswitch_data_114

    .line 232
    sput v3, Lcom/android/server/display/BackLightController;->sGrayBrightnessFactor:F

    .line 233
    goto :goto_c0

    .line 228
    :pswitch_88
    const v1, 0x3b75c28f    # 0.00375f

    int-to-float v2, p0

    mul-float/2addr v1, v2

    const/high16 v2, 0x40400000    # 3.0f

    sub-float/2addr v1, v2

    mul-float/2addr v1, p2

    const v2, 0x400ccccd    # 2.2f

    const v3, 0x3ac49ba6    # 0.0015f

    int-to-float v4, p0

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    add-float/2addr v1, v2

    sput v1, Lcom/android/server/display/BackLightController;->sGrayBrightnessFactor:F

    .line 230
    goto :goto_c0

    .line 225
    :pswitch_9e
    const v1, 0x3f933333    # 1.15f

    const/high16 v2, 0x3ec00000    # 0.375f

    mul-float/2addr v2, p2

    sub-float/2addr v1, v2

    sput v1, Lcom/android/server/display/BackLightController;->sGrayBrightnessFactor:F

    .line 226
    goto :goto_c0

    .line 221
    :pswitch_a8
    const/high16 v1, 0x3f400000    # 0.75f

    const v2, 0x3bf5c28f    # 0.0075f

    int-to-float v3, p0

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    mul-float/2addr v1, p2

    const v2, 0x3b449ba6    # 0.003f

    int-to-float v3, p0

    mul-float/2addr v2, v3

    const v3, 0x3f333333    # 0.7f

    add-float/2addr v2, v3

    add-float/2addr v1, v2

    sput v1, Lcom/android/server/display/BackLightController;->sGrayBrightnessFactor:F

    .line 223
    goto :goto_c0

    .line 236
    :cond_be
    sput v3, Lcom/android/server/display/BackLightController;->sGrayBrightnessFactor:F

    .line 240
    :goto_c0
    const-string v1, "BackLightController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " grayScale = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " level = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " factor = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/display/BackLightController;->sGrayBrightnessFactor:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " inBrightness = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " outBrightness = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v3, p0

    sget v4, Lcom/android/server/display/BackLightController;->sGrayBrightnessFactor:F

    mul-float/2addr v3, v4

    .line 243
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 240
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    int-to-float v1, p0

    sget v2, Lcom/android/server/display/BackLightController;->sGrayBrightnessFactor:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1

    nop

    :pswitch_data_10a
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_3b
        :pswitch_24
    .end packed-switch

    :pswitch_data_114
    .packed-switch 0x1
        :pswitch_a8
        :pswitch_9e
        :pswitch_88
    .end packed-switch
.end method

.method public static getCurveBrightness(IZ)I
    .registers 9
    .param p0, "brightness"    # I
    .param p1, "reduce"    # Z

    .line 35
    sget v0, Lcom/android/server/display/BackLightController;->MIN_SCREEN_BRIGHTNESS:I

    .line 36
    .local v0, "minBrightness":I
    sget v1, Lcom/android/server/display/BackLightController;->MAX_SCREEN_BRIGHTNESS:I

    .line 37
    .local v1, "maxBrightness":I
    if-eqz p1, :cond_9

    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_b

    :cond_9
    const/high16 v2, 0x3f000000    # 0.5f

    .line 38
    .local v2, "gamma":F
    :goto_b
    if-le p0, v0, :cond_2e

    if-ltz p0, :cond_15

    const/high16 v3, 0xff0000

    and-int/2addr v3, p0

    if-eqz v3, :cond_15

    goto :goto_2e

    .line 41
    :cond_15
    sub-int/2addr p0, v0

    .line 42
    sub-int/2addr v1, v0

    .line 43
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    int-to-double v5, p0

    mul-double/2addr v3, v5

    int-to-double v5, v1

    div-double/2addr v3, v5

    float-to-double v5, v2

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    int-to-double v5, v1

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    add-double/2addr v3, v5

    double-to-int v3, v3

    add-int/2addr v3, v0

    .line 45
    .end local p0    # "brightness":I
    .local v3, "brightness":I
    invoke-static {v3, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result p0

    .line 46
    .end local v3    # "brightness":I
    .restart local p0    # "brightness":I
    return p0

    .line 39
    :cond_2e
    :goto_2e
    return p0
.end method

.method private static getFloatArray(Landroid/content/res/TypedArray;)[F
    .registers 5
    .param p0, "array"    # Landroid/content/res/TypedArray;

    .line 254
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 255
    .local v0, "length":I
    new-array v1, v0, [F

    .line 256
    .local v1, "floatArray":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_14

    .line 257
    const/high16 v3, 0x7fc00000    # Float.NaN

    invoke-virtual {p0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    aput v3, v1, v2

    .line 256
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 259
    .end local v2    # "i":I
    :cond_14
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 260
    return-object v1
.end method

.method static getGrayBrightnessFactor()F
    .registers 1

    .line 250
    sget v0, Lcom/android/server/display/BackLightController;->sGrayBrightnessFactor:F

    return v0
.end method

.method static getNightLightBrightness(II)I
    .registers 3
    .param p0, "brightness"    # I
    .param p1, "minBrightness"    # I

    .line 67
    sget-boolean v0, Lmiui/os/DeviceFeature;->SUPPORT_NIGHT_LIGHT:Z

    if-eqz v0, :cond_18

    if-ne p0, p1, :cond_18

    .line 68
    sget-boolean v0, Lmiui/os/DeviceFeature;->SUPPORT_NIGHT_LIGHT_ADJ:Z

    if-eqz v0, :cond_15

    sget-object v0, Lcom/android/server/display/ScreenEffectService;->sScreenEffectManager:Lcom/android/server/display/ScreenEffectService$LocalService;

    if-eqz v0, :cond_15

    .line 70
    sget-object v0, Lcom/android/server/display/ScreenEffectService;->sScreenEffectManager:Lcom/android/server/display/ScreenEffectService$LocalService;

    invoke-virtual {v0}, Lcom/android/server/display/ScreenEffectService$LocalService;->getNightLightBrightness()I

    move-result v0

    return v0

    .line 72
    :cond_15
    sget v0, Lcom/android/server/display/BackLightController;->NIGHT_LIGHT_BRIGHTNESS_DEFAULT:I

    return v0

    .line 75
    :cond_18
    return p0
.end method

.method public static getRampRateFast(IIIZ)I
    .registers 5
    .param p0, "target"    # I
    .param p1, "current"    # I
    .param p2, "defaultRate"    # I
    .param p3, "autoBrightness"    # Z

    .line 53
    if-eqz p3, :cond_b

    sub-int v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    goto :goto_c

    :cond_b
    move v0, p2

    :goto_c
    return v0
.end method

.method public static getRampRateSlow(III)I
    .registers 4
    .param p0, "target"    # I
    .param p1, "current"    # I
    .param p2, "defaultRate"    # I

    .line 50
    if-ge p0, p1, :cond_4

    move v0, p2

    goto :goto_8

    :cond_4
    sub-int v0, p0, p1

    div-int/lit8 v0, v0, 0x4

    :goto_8
    return v0
.end method

.method static setNightLight(I)Z
    .registers 2
    .param p0, "value"    # I

    .line 57
    if-ltz p0, :cond_12

    const/high16 v0, 0xff0000

    and-int/2addr v0, p0

    if-eqz v0, :cond_12

    .line 58
    sget-object v0, Lcom/android/server/display/ScreenEffectService;->sScreenEffectManager:Lcom/android/server/display/ScreenEffectService$LocalService;

    if-eqz v0, :cond_10

    .line 59
    sget-object v0, Lcom/android/server/display/ScreenEffectService;->sScreenEffectManager:Lcom/android/server/display/ScreenEffectService$LocalService;

    invoke-virtual {v0, p0}, Lcom/android/server/display/ScreenEffectService$LocalService;->setNightLight(I)V

    .line 61
    :cond_10
    const/4 v0, 0x1

    return v0

    .line 63
    :cond_12
    const/4 v0, 0x0

    return v0
.end method
