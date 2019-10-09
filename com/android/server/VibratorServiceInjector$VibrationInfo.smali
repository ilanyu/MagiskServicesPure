.class Lcom/android/server/VibratorServiceInjector$VibrationInfo;
.super Ljava/lang/Object;
.source "VibratorServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VibrationInfo"
.end annotation


# instance fields
.field private final mAddedTime:J

.field private final mEffect:Landroid/os/VibrationEffect;

.field private final mForeground:Z

.field private final mOpPkg:Ljava/lang/String;

.field private final mUid:I

.field private final mUsageHint:I


# direct methods
.method public constructor <init>(Landroid/os/VibrationEffect;IILjava/lang/String;Z)V
    .registers 8
    .param p1, "effect"    # Landroid/os/VibrationEffect;
    .param p2, "usageHint"    # I
    .param p3, "uid"    # I
    .param p4, "opPkg"    # Ljava/lang/String;
    .param p5, "isForeground"    # Z

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/VibratorServiceInjector$VibrationInfo;->mAddedTime:J

    .line 362
    iput-object p1, p0, Lcom/android/server/VibratorServiceInjector$VibrationInfo;->mEffect:Landroid/os/VibrationEffect;

    .line 363
    iput p2, p0, Lcom/android/server/VibratorServiceInjector$VibrationInfo;->mUsageHint:I

    .line 364
    iput p3, p0, Lcom/android/server/VibratorServiceInjector$VibrationInfo;->mUid:I

    .line 365
    iput-object p4, p0, Lcom/android/server/VibratorServiceInjector$VibrationInfo;->mOpPkg:Ljava/lang/String;

    .line 366
    iput-boolean p5, p0, Lcom/android/server/VibratorServiceInjector$VibrationInfo;->mForeground:Z

    .line 367
    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/VibratorServiceInjector$VibrationInfo;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorServiceInjector$VibrationInfo;

    .line 351
    iget-object v0, p0, Lcom/android/server/VibratorServiceInjector$VibrationInfo;->mOpPkg:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    .line 371
    new-instance v0, Landroid/icu/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 372
    .local v0, "formatter":Landroid/icu/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/server/VibratorServiceInjector$VibrationInfo;->mAddedTime:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 373
    .local v1, "date":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", mAddedTime: "

    .line 374
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", effect: "

    .line 376
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/VibratorServiceInjector$VibrationInfo;->mEffect:Landroid/os/VibrationEffect;

    .line 377
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", usageHint: "

    .line 378
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/VibratorServiceInjector$VibrationInfo;->mUsageHint:I

    .line 379
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uid: "

    .line 380
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/VibratorServiceInjector$VibrationInfo;->mUid:I

    .line 381
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", opPkg: "

    .line 382
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/VibratorServiceInjector$VibrationInfo;->mOpPkg:Ljava/lang/String;

    .line 383
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", foreground: "

    .line 384
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/VibratorServiceInjector$VibrationInfo;->mForeground:Z

    .line 385
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 373
    return-object v2
.end method
