.class Lcom/android/server/power/PowerManagerServiceInjector$2;
.super Ljava/lang/Object;
.source "PowerManagerServiceInjector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 115
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 10
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 99
    # getter for: Lcom/android/server/power/PowerManagerServiceInjector;->sLightSensorEnabled:Z
    invoke-static {}, Lcom/android/server/power/PowerManagerServiceInjector;->access$200()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 100
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 101
    .local v0, "time":J
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    .line 102
    .local v2, "lux":F
    # getter for: Lcom/android/server/power/PowerManagerServiceInjector;->sStartLightSensorTime:J
    invoke-static {}, Lcom/android/server/power/PowerManagerServiceInjector;->access$300()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1d

    .line 103
    # setter for: Lcom/android/server/power/PowerManagerServiceInjector;->sStartLightSensorTime:J
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerServiceInjector;->access$302(J)J

    goto :goto_2b

    .line 104
    :cond_1d
    # getter for: Lcom/android/server/power/PowerManagerServiceInjector;->sStartLightSensorTime:J
    invoke-static {}, Lcom/android/server/power/PowerManagerServiceInjector;->access$300()J

    move-result-wide v4

    const-wide/16 v6, 0x7d0

    add-long/2addr v4, v6

    cmp-long v4, v0, v4

    if-ltz v4, :cond_2b

    .line 105
    invoke-static {v3}, Lcom/android/server/power/PowerManagerServiceInjector;->setLightSensorEnabled(Z)V

    .line 107
    :cond_2b
    :goto_2b
    const-string v3, "PowerManagerServiceInjector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sLightSensorListener, lux= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", time="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .end local v0    # "time":J
    .end local v2    # "lux":F
    :cond_4a
    return-void
.end method
