.class Lcom/android/server/display/AutomaticBrightnessControllerInjector$2;
.super Ljava/lang/Object;
.source "AutomaticBrightnessControllerInjector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessControllerInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 287
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 15
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 258
    # getter for: Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAccSensorEnabled:Z
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->access$300()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 259
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 260
    .local v0, "values":[F
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 261
    .local v1, "ax":F
    const/4 v2, 0x1

    aget v2, v0, v2

    .line 262
    .local v2, "ay":F
    const/4 v3, 0x2

    aget v3, v0, v3

    .line 263
    .local v3, "az":F
    mul-float v4, v1, v1

    mul-float v5, v2, v2

    add-float/2addr v4, v5

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 264
    .local v4, "g":D
    float-to-double v6, v3

    div-double/2addr v6, v4

    .line 265
    .local v6, "cos":D
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v8, v6, v8

    if-lez v8, :cond_29

    .line 266
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    goto :goto_31

    .line 267
    :cond_29
    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    cmpg-double v8, v6, v8

    if-gez v8, :cond_31

    .line 268
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    .line 270
    :cond_31
    :goto_31
    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v8

    const-wide v10, 0x4066800000000000L    # 180.0

    mul-double/2addr v8, v10

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v8, v10

    .line 271
    .local v8, "angle":D
    double-to-float v10, v8

    # setter for: Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAngleXY2Horizon:F
    invoke-static {v10}, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->access$402(F)F

    .line 272
    # getter for: Lcom/android/server/display/AutomaticBrightnessControllerInjector;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->access$500()Z

    move-result v10

    if-eqz v10, :cond_8d

    .line 273
    const-string v10, "AutomaticBrightnessControllerInjector"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Auto-brightness acc: x="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v12, ", y="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v12, ", z="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v12, ", xyz="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v12, ", angle="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v12, ", angle_xy2horizon"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    # getter for: Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAngleXY2Horizon:F
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->access$400()F

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 273
    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .end local v0    # "values":[F
    .end local v1    # "ax":F
    .end local v2    # "ay":F
    .end local v3    # "az":F
    .end local v4    # "g":D
    .end local v6    # "cos":D
    .end local v8    # "angle":D
    :cond_8d
    return-void
.end method
