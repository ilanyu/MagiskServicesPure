.class Lcom/android/server/display/AutomaticBrightnessControllerInjector$1;
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

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 252
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 8
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 238
    # getter for: Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sProximitySensorEnabled:Z
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->access$000()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 239
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 240
    .local v0, "time":J
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    .line 241
    .local v2, "distance":F
    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    const/4 v5, 0x1

    if-ltz v4, :cond_1f

    # getter for: Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sProximityThreshold:F
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->access$100()F

    move-result v4

    cmpg-float v4, v2, v4

    if-gez v4, :cond_1f

    move v4, v5

    goto :goto_20

    :cond_1f
    move v4, v3

    .line 242
    .local v4, "positive":Z
    :goto_20
    if-eqz v4, :cond_26

    .line 243
    # setter for: Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sProximity:I
    invoke-static {v5}, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->access$202(I)I

    goto :goto_29

    .line 245
    :cond_26
    # setter for: Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sProximity:I
    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->access$202(I)I

    .line 247
    .end local v0    # "time":J
    .end local v2    # "distance":F
    .end local v4    # "positive":Z
    :cond_29
    :goto_29
    return-void
.end method
