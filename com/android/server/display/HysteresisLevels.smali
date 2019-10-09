.class final Lcom/android/server/display/HysteresisLevels;
.super Ljava/lang/Object;
.source "HysteresisLevels.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_BRIGHTENING_HYSTERESIS:F = 0.1f

.field private static final DEFAULT_DARKENING_HYSTERESIS:F = 0.2f

.field private static final TAG:Ljava/lang/String; = "HysteresisLevels"


# instance fields
.field private final mBrightLevels:[F

.field private final mDarkLevels:[F

.field private final mLuxLevels:[F


# direct methods
.method public constructor <init>([I[I[I)V
    .registers 6
    .param p1, "brightLevels"    # [I
    .param p2, "darkLevels"    # [I
    .param p3, "luxLevels"    # [I

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_24

    array-length v0, p2

    array-length v1, p3

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_24

    .line 56
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/HysteresisLevels;->setArrayFormat([IF)[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/HysteresisLevels;->mBrightLevels:[F

    .line 58
    const/high16 v1, 0x447a0000    # 1000.0f

    invoke-direct {p0, p2, v1}, Lcom/android/server/display/HysteresisLevels;->setArrayFormat([IF)[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/HysteresisLevels;->mDarkLevels:[F

    .line 59
    invoke-direct {p0, p3, v0}, Lcom/android/server/display/HysteresisLevels;->setArrayFormat([IF)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/HysteresisLevels;->mLuxLevels:[F

    .line 60
    return-void

    .line 52
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mismatch between hysteresis array lengths."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getReferenceLevel(F[F)F
    .registers 5
    .param p1, "lux"    # F
    .param p2, "referenceLevels"    # [F

    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, "index":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/HysteresisLevels;->mLuxLevels:[F

    array-length v1, v1

    if-le v1, v0, :cond_11

    iget-object v1, p0, Lcom/android/server/display/HysteresisLevels;->mLuxLevels:[F

    aget v1, v1, v0

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_11

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 100
    :cond_11
    aget v1, p2, v0

    return v1
.end method

.method private setArrayFormat([IF)[F
    .registers 6
    .param p1, "configArray"    # [I
    .param p2, "divideFactor"    # F

    .line 107
    array-length v0, p1

    new-array v0, v0, [F

    .line 108
    .local v0, "levelArray":[F
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_4
    array-length v2, v0

    if-le v2, v1, :cond_10

    .line 109
    aget v2, p1, v1

    int-to-float v2, v2

    div-float/2addr v2, p2

    aput v2, v0, v1

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 111
    .end local v1    # "index":I
    :cond_10
    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 115
    const-string v0, "HysteresisLevels"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightLevels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/HysteresisLevels;->mBrightLevels:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDarkLevels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/HysteresisLevels;->mDarkLevels:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLuxLevels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/HysteresisLevels;->mLuxLevels:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public getBrighteningThreshold(F)F
    .registers 4
    .param p1, "lux"    # F

    .line 66
    iget-object v0, p0, Lcom/android/server/display/HysteresisLevels;->mBrightLevels:[F

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/HysteresisLevels;->getReferenceLevel(F[F)F

    move-result v0

    .line 69
    .local v0, "brightConstant":F
    add-float v1, p1, v0

    .line 75
    .local v1, "brightThreshold":F
    return v1
.end method

.method public getDarkeningThreshold(F)F
    .registers 4
    .param p1, "lux"    # F

    .line 82
    iget-object v0, p0, Lcom/android/server/display/HysteresisLevels;->mDarkLevels:[F

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/HysteresisLevels;->getReferenceLevel(F[F)F

    move-result v0

    .line 83
    .local v0, "darkConstant":F
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    .line 88
    .local v1, "darkThreshold":F
    return v1
.end method
