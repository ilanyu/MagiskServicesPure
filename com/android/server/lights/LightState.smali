.class public Lcom/android/server/lights/LightState;
.super Ljava/lang/Object;
.source "LightState.java"


# instance fields
.field public brightnessMode:I

.field public callingPackage:Ljava/lang/String;

.field public colorARGB:I

.field public flashMode:I

.field public mAddedTime:J

.field public mId:I

.field public offMS:I

.field public onMS:I

.field public styleType:I


# direct methods
.method public constructor <init>(IIIII)V
    .registers 6
    .param p1, "colorARGB"    # I
    .param p2, "flashMode"    # I
    .param p3, "onMS"    # I
    .param p4, "offMS"    # I
    .param p5, "brightnessMode"    # I

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/android/server/lights/LightState;->colorARGB:I

    .line 22
    iput p2, p0, Lcom/android/server/lights/LightState;->flashMode:I

    .line 23
    iput p3, p0, Lcom/android/server/lights/LightState;->onMS:I

    .line 24
    iput p4, p0, Lcom/android/server/lights/LightState;->offMS:I

    .line 25
    iput p5, p0, Lcom/android/server/lights/LightState;->brightnessMode:I

    .line 26
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .registers 9
    .param p1, "mId"    # I
    .param p2, "colorARGB"    # I
    .param p3, "flashMode"    # I
    .param p4, "onMS"    # I
    .param p5, "offMS"    # I
    .param p6, "brightnessMode"    # I

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/lights/LightState;->mAddedTime:J

    .line 30
    iput p1, p0, Lcom/android/server/lights/LightState;->mId:I

    .line 31
    iput p2, p0, Lcom/android/server/lights/LightState;->colorARGB:I

    .line 32
    iput p3, p0, Lcom/android/server/lights/LightState;->flashMode:I

    .line 33
    iput p4, p0, Lcom/android/server/lights/LightState;->onMS:I

    .line 34
    iput p5, p0, Lcom/android/server/lights/LightState;->offMS:I

    .line 35
    iput p6, p0, Lcom/android/server/lights/LightState;->brightnessMode:I

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "styleType"    # I

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/lights/LightState;->mAddedTime:J

    .line 40
    iput p2, p0, Lcom/android/server/lights/LightState;->styleType:I

    .line 41
    iput-object p1, p0, Lcom/android/server/lights/LightState;->callingPackage:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    .line 46
    new-instance v0, Landroid/icu/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 47
    .local v0, "formatter":Landroid/icu/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/server/lights/LightState;->mAddedTime:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "date":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .local v2, "builder":Ljava/lang/StringBuilder;
    const-string v3, ", mAddedTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-object v3, p0, Lcom/android/server/lights/LightState;->callingPackage:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_32

    .line 51
    const-string v3, ", callingPackage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/lights/LightState;->callingPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    :cond_32
    iget v3, p0, Lcom/android/server/lights/LightState;->mId:I

    if-eqz v3, :cond_40

    const-string v3, ", mId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/lights/LightState;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    :cond_40
    iget v3, p0, Lcom/android/server/lights/LightState;->styleType:I

    if-eqz v3, :cond_4e

    const-string v3, ", mLastLightStyle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/lights/LightState;->styleType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    :cond_4e
    iget v3, p0, Lcom/android/server/lights/LightState;->colorARGB:I

    if-eqz v3, :cond_5c

    const-string v3, ", colorARGB="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/lights/LightState;->colorARGB:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    :cond_5c
    iget v3, p0, Lcom/android/server/lights/LightState;->onMS:I

    if-eqz v3, :cond_6a

    const-string v3, ", onMS="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/lights/LightState;->onMS:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    :cond_6a
    iget v3, p0, Lcom/android/server/lights/LightState;->offMS:I

    if-eqz v3, :cond_78

    const-string v3, ", offMS="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/lights/LightState;->offMS:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    :cond_78
    iget v3, p0, Lcom/android/server/lights/LightState;->flashMode:I

    if-eqz v3, :cond_86

    const-string v3, ", flashMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/lights/LightState;->flashMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    :cond_86
    iget v3, p0, Lcom/android/server/lights/LightState;->brightnessMode:I

    if-eqz v3, :cond_94

    const-string v3, ", brightnessMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/lights/LightState;->brightnessMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    :cond_94
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
