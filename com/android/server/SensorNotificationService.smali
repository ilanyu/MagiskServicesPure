.class public Lcom/android/server/SensorNotificationService;
.super Lcom/android/server/SystemService;
.source "SensorNotificationService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Landroid/location/LocationListener;


# static fields
.field private static final DBG:Z = false

.field private static final KM_IN_M:J = 0x3e8L

.field private static final LOCATION_MIN_DISTANCE:J = 0x186a0L

.field private static final LOCATION_MIN_TIME:J = 0x1b7740L

.field private static final MILLIS_2010_1_1:J = 0x125ea667180L

.field private static final MINUTE_IN_MS:J = 0xea60L

.field private static final PROPERTY_USE_MOCKED_LOCATION:Ljava/lang/String; = "sensor.notification.use_mocked"

.field private static final TAG:Ljava/lang/String; = "SensorNotificationService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLocalGeomagneticFieldUpdateTime:J

.field private mLocationManager:Landroid/location/LocationManager;

.field private mMetaSensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 64
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 61
    const-wide/32 v0, -0x1b7740

    iput-wide v0, p0, Lcom/android/server/SensorNotificationService;->mLocalGeomagneticFieldUpdateTime:J

    .line 65
    iput-object p1, p0, Lcom/android/server/SensorNotificationService;->mContext:Landroid/content/Context;

    .line 66
    return-void
.end method

.method private broadcastDynamicSensorChanged()V
    .registers 4

    .line 101
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DYNAMIC_SENSOR_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 103
    iget-object v1, p0, Lcom/android/server/SensorNotificationService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 105
    return-void
.end method

.method private useMockedLocation()Z
    .registers 4

    .line 170
    const-string v0, "false"

    const-string/jumbo v1, "sensor.notification.use_mocked"

    const-string v2, "false"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 161
    return-void
.end method

.method public onBootPhase(I)V
    .registers 9
    .param p1, "phase"    # I

    .line 73
    const/16 v0, 0x258

    if-ne p1, v0, :cond_28

    .line 74
    iget-object v0, p0, Lcom/android/server/SensorNotificationService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/SensorNotificationService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 75
    iget-object v0, p0, Lcom/android/server/SensorNotificationService;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SensorNotificationService;->mMetaSensor:Landroid/hardware/Sensor;

    .line 76
    iget-object v0, p0, Lcom/android/server/SensorNotificationService;->mMetaSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_20

    goto :goto_28

    .line 79
    :cond_20
    iget-object v0, p0, Lcom/android/server/SensorNotificationService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/SensorNotificationService;->mMetaSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 84
    :cond_28
    :goto_28
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_4d

    .line 86
    iget-object v0, p0, Lcom/android/server/SensorNotificationService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "location"

    .line 87
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/server/SensorNotificationService;->mLocationManager:Landroid/location/LocationManager;

    .line 88
    iget-object v0, p0, Lcom/android/server/SensorNotificationService;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_3e

    goto :goto_4d

    .line 91
    :cond_3e
    iget-object v1, p0, Lcom/android/server/SensorNotificationService;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v2, "passive"

    const-wide/32 v3, 0x1b7740

    const v5, 0x47c35000    # 100000.0f

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 98
    :cond_4d
    :goto_4d
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 15
    .param p1, "location"    # Landroid/location/Location;

    .line 123
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_13

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_13

    .line 124
    return-void

    .line 128
    :cond_13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/SensorNotificationService;->mLocalGeomagneticFieldUpdateTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-gez v0, :cond_22

    .line 129
    return-void

    .line 132
    :cond_22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 135
    .local v7, "time":J
    invoke-direct {p0}, Lcom/android/server/SensorNotificationService;->useMockedLocation()Z

    move-result v0

    invoke-virtual {p1}, Landroid/location/Location;->isFromMockProvider()Z

    move-result v1

    if-eq v0, v1, :cond_8d

    const-wide v0, 0x125ea667180L

    cmp-long v0, v7, v0

    if-gez v0, :cond_3a

    goto :goto_8d

    .line 139
    :cond_3a
    new-instance v0, Landroid/hardware/GeomagneticField;

    .line 140
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    double-to-float v2, v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    double-to-float v3, v3

    .line 141
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    double-to-float v4, v4

    move-object v1, v0

    move-wide v5, v7

    invoke-direct/range {v1 .. v6}, Landroid/hardware/GeomagneticField;-><init>(FFFJ)V

    .line 147
    .local v0, "field":Landroid/hardware/GeomagneticField;
    nop

    .line 148
    :try_start_51
    invoke-virtual {v0}, Landroid/hardware/GeomagneticField;->getFieldStrength()F

    move-result v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    .line 149
    invoke-virtual {v0}, Landroid/hardware/GeomagneticField;->getDeclination()F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide v9, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v9

    double-to-float v2, v2

    .line 150
    invoke-virtual {v0}, Landroid/hardware/GeomagneticField;->getInclination()F

    move-result v3

    float-to-double v11, v3

    mul-double/2addr v11, v4

    div-double/2addr v11, v9

    double-to-float v3, v11

    .line 147
    invoke-static {v1, v2, v3}, Landroid/hardware/SensorAdditionalInfo;->createLocalGeomagneticField(FFF)Landroid/hardware/SensorAdditionalInfo;

    move-result-object v1

    .line 151
    .local v1, "info":Landroid/hardware/SensorAdditionalInfo;
    if-eqz v1, :cond_83

    .line 152
    iget-object v2, p0, Lcom/android/server/SensorNotificationService;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v1}, Landroid/hardware/SensorManager;->setOperationParameter(Landroid/hardware/SensorAdditionalInfo;)Z

    .line 153
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/SensorNotificationService;->mLocalGeomagneticFieldUpdateTime:J
    :try_end_83
    .catch Ljava/lang/IllegalArgumentException; {:try_start_51 .. :try_end_83} :catch_84

    .line 157
    .end local v1    # "info":Landroid/hardware/SensorAdditionalInfo;
    :cond_83
    goto :goto_8c

    .line 155
    :catch_84
    move-exception v1

    .line 156
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "SensorNotificationService"

    const-string v3, "Invalid local geomagnetic field, ignore."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_8c
    return-void

    .line 136
    .end local v0    # "field":Landroid/hardware/GeomagneticField;
    :cond_8d
    :goto_8d
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .line 167
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .line 165
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 109
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v1, p0, Lcom/android/server/SensorNotificationService;->mMetaSensor:Landroid/hardware/Sensor;

    if-ne v0, v1, :cond_9

    .line 110
    invoke-direct {p0}, Lcom/android/server/SensorNotificationService;->broadcastDynamicSensorChanged()V

    .line 112
    :cond_9
    return-void
.end method

.method public onStart()V
    .registers 2

    .line 69
    const-class v0, Lcom/android/server/SensorNotificationService;

    invoke-static {v0, p0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 163
    return-void
.end method
