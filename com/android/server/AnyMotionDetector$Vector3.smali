.class public final Lcom/android/server/AnyMotionDetector$Vector3;
.super Ljava/lang/Object;
.source "AnyMotionDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AnyMotionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Vector3"
.end annotation


# instance fields
.field public timeMillisSinceBoot:J

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>(JFFF)V
    .registers 6
    .param p1, "timeMillisSinceBoot"    # J
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "z"    # F

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 371
    iput-wide p1, p0, Lcom/android/server/AnyMotionDetector$Vector3;->timeMillisSinceBoot:J

    .line 372
    iput p3, p0, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    .line 373
    iput p4, p0, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    .line 374
    iput p5, p0, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    .line 375
    return-void
.end method


# virtual methods
.method public angleBetween(Lcom/android/server/AnyMotionDetector$Vector3;)F
    .registers 7
    .param p1, "other"    # Lcom/android/server/AnyMotionDetector$Vector3;

    .line 394
    invoke-virtual {p0, p1}, Lcom/android/server/AnyMotionDetector$Vector3;->cross(Lcom/android/server/AnyMotionDetector$Vector3;)Lcom/android/server/AnyMotionDetector$Vector3;

    move-result-object v0

    .line 395
    .local v0, "crossVector":Lcom/android/server/AnyMotionDetector$Vector3;
    nop

    .line 396
    invoke-virtual {v0}, Lcom/android/server/AnyMotionDetector$Vector3;->norm()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p0, p1}, Lcom/android/server/AnyMotionDetector$Vector3;->dotProduct(Lcom/android/server/AnyMotionDetector$Vector3;)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    .line 395
    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 397
    .local v1, "degrees":F
    const-string v2, "AnyMotionDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "angleBetween: this = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/AnyMotionDetector$Vector3;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", other = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    invoke-virtual {p1}, Lcom/android/server/AnyMotionDetector$Vector3;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", degrees = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 397
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    return v1
.end method

.method public cross(Lcom/android/server/AnyMotionDetector$Vector3;)Lcom/android/server/AnyMotionDetector$Vector3;
    .registers 10
    .param p1, "v"    # Lcom/android/server/AnyMotionDetector$Vector3;

    .line 403
    new-instance v6, Lcom/android/server/AnyMotionDetector$Vector3;

    iget-wide v1, p1, Lcom/android/server/AnyMotionDetector$Vector3;->timeMillisSinceBoot:J

    iget v0, p0, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    iget v3, p1, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    iget v4, p1, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    mul-float/2addr v3, v4

    sub-float v3, v0, v3

    iget v0, p0, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    iget v4, p1, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    mul-float/2addr v0, v4

    iget v4, p0, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    iget v5, p1, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    mul-float/2addr v4, v5

    sub-float v4, v0, v4

    iget v0, p0, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    iget v5, p1, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    mul-float/2addr v0, v5

    iget v5, p0, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    iget v7, p1, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    mul-float/2addr v5, v7

    sub-float v5, v0, v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AnyMotionDetector$Vector3;-><init>(JFFF)V

    return-object v6
.end method

.method public dotProduct(Lcom/android/server/AnyMotionDetector$Vector3;)F
    .registers 5
    .param p1, "v"    # Lcom/android/server/AnyMotionDetector$Vector3;

    .line 421
    iget v0, p0, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    iget v1, p1, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    iget v2, p1, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    iget v2, p1, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public minus(Lcom/android/server/AnyMotionDetector$Vector3;)Lcom/android/server/AnyMotionDetector$Vector3;
    .registers 9
    .param p1, "v"    # Lcom/android/server/AnyMotionDetector$Vector3;

    .line 433
    new-instance v6, Lcom/android/server/AnyMotionDetector$Vector3;

    iget-wide v1, p1, Lcom/android/server/AnyMotionDetector$Vector3;->timeMillisSinceBoot:J

    iget v0, p0, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    iget v3, p1, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    sub-float v3, v0, v3

    iget v0, p0, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    iget v4, p1, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    sub-float v4, v0, v4

    iget v0, p0, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    iget v5, p1, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    sub-float v5, v0, v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AnyMotionDetector$Vector3;-><init>(JFFF)V

    return-object v6
.end method

.method public norm()F
    .registers 3

    .line 378
    invoke-virtual {p0, p0}, Lcom/android/server/AnyMotionDetector$Vector3;->dotProduct(Lcom/android/server/AnyMotionDetector$Vector3;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public normalized()Lcom/android/server/AnyMotionDetector$Vector3;
    .registers 9

    .line 382
    invoke-virtual {p0}, Lcom/android/server/AnyMotionDetector$Vector3;->norm()F

    move-result v0

    .line 383
    .local v0, "mag":F
    new-instance v7, Lcom/android/server/AnyMotionDetector$Vector3;

    iget-wide v2, p0, Lcom/android/server/AnyMotionDetector$Vector3;->timeMillisSinceBoot:J

    iget v1, p0, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    div-float v4, v1, v0

    iget v1, p0, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    div-float v5, v1, v0

    iget v1, p0, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    div-float v6, v1, v0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/AnyMotionDetector$Vector3;-><init>(JFFF)V

    return-object v7
.end method

.method public plus(Lcom/android/server/AnyMotionDetector$Vector3;)Lcom/android/server/AnyMotionDetector$Vector3;
    .registers 9
    .param p1, "v"    # Lcom/android/server/AnyMotionDetector$Vector3;

    .line 429
    new-instance v6, Lcom/android/server/AnyMotionDetector$Vector3;

    iget-wide v1, p1, Lcom/android/server/AnyMotionDetector$Vector3;->timeMillisSinceBoot:J

    iget v0, p0, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    iget v3, p1, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    add-float/2addr v3, v0

    iget v0, p0, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    iget v4, p1, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    add-float/2addr v4, v0

    iget v0, p0, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    iget v5, p1, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    add-float/2addr v5, v0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AnyMotionDetector$Vector3;-><init>(JFFF)V

    return-object v6
.end method

.method public times(F)Lcom/android/server/AnyMotionDetector$Vector3;
    .registers 9
    .param p1, "val"    # F

    .line 425
    new-instance v6, Lcom/android/server/AnyMotionDetector$Vector3;

    iget-wide v1, p0, Lcom/android/server/AnyMotionDetector$Vector3;->timeMillisSinceBoot:J

    iget v0, p0, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    mul-float v3, v0, p1

    iget v0, p0, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    mul-float v4, v0, p1

    iget v0, p0, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    mul-float v5, v0, p1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AnyMotionDetector$Vector3;-><init>(JFFF)V

    return-object v6
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 412
    const-string v0, ""

    .line 413
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "timeMillisSinceBoot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/AnyMotionDetector$Vector3;->timeMillisSinceBoot:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " | x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", z="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 417
    return-object v0
.end method
