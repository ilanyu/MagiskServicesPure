.class public final Lcom/android/server/twilight/TwilightService;
.super Lcom/android/server/SystemService;
.source "TwilightService.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;
.implements Landroid/os/Handler$Callback;
.implements Landroid/location/LocationListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final MSG_START_LISTENING:I = 0x1

.field private static final MSG_STOP_LISTENING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TwilightService"


# instance fields
.field protected mAlarmManager:Landroid/app/AlarmManager;

.field private mBootCompleted:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHasListeners:Z

.field protected mLastLocation:Landroid/location/Location;

.field protected mLastTwilightState:Lcom/android/server/twilight/TwilightState;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mListeners"
    .end annotation
.end field

.field private final mListeners:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mListeners"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/twilight/TwilightListener;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationManager:Landroid/location/LocationManager;

.field private mTimeChangedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 57
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mHandler:Landroid/os/Handler;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/twilight/TwilightService;

    .line 48
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/twilight/TwilightService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/twilight/TwilightService;

    .line 48
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/twilight/TwilightService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/twilight/TwilightService;

    .line 48
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->updateTwilightState()V

    return-void
.end method

.method private static calculateTwilightState(Landroid/location/Location;J)Lcom/android/server/twilight/TwilightState;
    .registers 13
    .param p0, "location"    # Landroid/location/Location;
    .param p1, "timeMillis"    # J

    .line 284
    if-nez p0, :cond_4

    .line 285
    const/4 v0, 0x0

    return-object v0

    .line 288
    :cond_4
    new-instance v0, Landroid/icu/impl/CalendarAstronomer;

    .line 289
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/impl/CalendarAstronomer;-><init>(DD)V

    .line 291
    .local v0, "ca":Landroid/icu/impl/CalendarAstronomer;
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v1

    .line 292
    .local v1, "noon":Landroid/icu/util/Calendar;
    invoke-virtual {v1, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 293
    const/16 v2, 0xb

    const/16 v3, 0xc

    invoke-virtual {v1, v2, v3}, Landroid/icu/util/Calendar;->set(II)V

    .line 294
    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/icu/util/Calendar;->set(II)V

    .line 295
    const/16 v3, 0xd

    invoke-virtual {v1, v3, v2}, Landroid/icu/util/Calendar;->set(II)V

    .line 296
    const/16 v3, 0xe

    invoke-virtual {v1, v3, v2}, Landroid/icu/util/Calendar;->set(II)V

    .line 297
    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    .line 299
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J

    move-result-wide v4

    .line 300
    .local v4, "sunriseTimeMillis":J
    invoke-virtual {v0, v2}, Landroid/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J

    move-result-wide v6

    .line 302
    .local v6, "sunsetTimeMillis":J
    cmp-long v8, v6, p1

    const/4 v9, 0x5

    if-gez v8, :cond_51

    .line 303
    invoke-virtual {v1, v9, v3}, Landroid/icu/util/Calendar;->add(II)V

    .line 304
    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    .line 305
    invoke-virtual {v0, v3}, Landroid/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J

    move-result-wide v4

    goto :goto_64

    .line 306
    :cond_51
    cmp-long v3, v4, p1

    if-lez v3, :cond_64

    .line 307
    const/4 v3, -0x1

    invoke-virtual {v1, v9, v3}, Landroid/icu/util/Calendar;->add(II)V

    .line 308
    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    .line 309
    invoke-virtual {v0, v2}, Landroid/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J

    move-result-wide v6

    .line 312
    :cond_64
    :goto_64
    new-instance v2, Lcom/android/server/twilight/TwilightState;

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/android/server/twilight/TwilightState;-><init>(JJ)V

    return-object v2
.end method

.method private startListening()V
    .registers 4

    .line 154
    const-string v0, "TwilightService"

    const-string/jumbo v1, "startListening"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    .line 158
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    .line 157
    const/4 v2, 0x0

    invoke-virtual {v0, v2, p0, v1}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 161
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_47

    .line 162
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 163
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "network"

    .line 164
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    .line 163
    invoke-virtual {v0, v1, p0, v2}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V

    goto :goto_47

    .line 165
    :cond_32
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 166
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    .line 167
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    .line 166
    invoke-virtual {v0, v1, p0, v2}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 172
    :cond_47
    :goto_47
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_67

    .line 173
    new-instance v0, Lcom/android/server/twilight/TwilightService$2;

    invoke-direct {v0, p0}, Lcom/android/server/twilight/TwilightService$2;-><init>(Lcom/android/server/twilight/TwilightService;)V

    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 181
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 182
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 187
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_67
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->updateTwilightState()V

    .line 188
    return-void
.end method

.method private stopListening()V
    .registers 4

    .line 191
    const-string v0, "TwilightService"

    const-string/jumbo v1, "stopListening"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 194
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 195
    iput-object v1, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 198
    :cond_18
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLastTwilightState:Lcom/android/server/twilight/TwilightState;

    if-eqz v0, :cond_21

    .line 199
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 202
    :cond_21
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 203
    iput-object v1, p0, Lcom/android/server/twilight/TwilightService;->mLastLocation:Landroid/location/Location;

    .line 204
    return-void
.end method

.method private updateTwilightState()V
    .registers 14

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 209
    .local v0, "currentTimeMillis":J
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mLastLocation:Landroid/location/Location;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mLastLocation:Landroid/location/Location;

    goto :goto_11

    .line 210
    :cond_b
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v2}, Landroid/location/LocationManager;->getLastLocation()Landroid/location/Location;

    move-result-object v2

    .line 211
    .local v2, "location":Landroid/location/Location;
    :goto_11
    invoke-static {v2, v0, v1}, Lcom/android/server/twilight/TwilightService;->calculateTwilightState(Landroid/location/Location;J)Lcom/android/server/twilight/TwilightState;

    move-result-object v3

    .line 217
    .local v3, "state":Lcom/android/server/twilight/TwilightState;
    iget-object v4, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 218
    :try_start_18
    iget-object v5, p0, Lcom/android/server/twilight/TwilightService;->mLastTwilightState:Lcom/android/server/twilight/TwilightState;

    invoke-static {v5, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_47

    .line 219
    iput-object v3, p0, Lcom/android/server/twilight/TwilightService;->mLastTwilightState:Lcom/android/server/twilight/TwilightState;

    .line 221
    iget-object v5, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "i":I
    :goto_2a
    if-ltz v5, :cond_47

    .line 222
    iget-object v6, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/twilight/TwilightListener;

    .line 223
    .local v6, "listener":Lcom/android/server/twilight/TwilightListener;
    iget-object v7, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Handler;

    .line 224
    .local v7, "handler":Landroid/os/Handler;
    new-instance v8, Lcom/android/server/twilight/TwilightService$3;

    invoke-direct {v8, p0, v6, v3}, Lcom/android/server/twilight/TwilightService$3;-><init>(Lcom/android/server/twilight/TwilightService;Lcom/android/server/twilight/TwilightListener;Lcom/android/server/twilight/TwilightState;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 221
    .end local v6    # "listener":Lcom/android/server/twilight/TwilightListener;
    .end local v7    # "handler":Landroid/os/Handler;
    add-int/lit8 v5, v5, -0x1

    goto :goto_2a

    .line 232
    .end local v5    # "i":I
    :cond_47
    monitor-exit v4
    :try_end_48
    .catchall {:try_start_18 .. :try_end_48} :catchall_67

    .line 235
    if-eqz v3, :cond_66

    .line 236
    invoke-virtual {v3}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v4

    if-eqz v4, :cond_56

    .line 237
    invoke-virtual {v3}, Lcom/android/server/twilight/TwilightState;->sunriseTimeMillis()J

    move-result-wide v4

    :goto_54
    move-wide v8, v4

    goto :goto_5b

    :cond_56
    invoke-virtual {v3}, Lcom/android/server/twilight/TwilightState;->sunsetTimeMillis()J

    move-result-wide v4

    goto :goto_54

    .line 238
    .local v8, "triggerAtMillis":J
    :goto_5b
    iget-object v6, p0, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v7, 0x1

    const-string v10, "TwilightService"

    iget-object v12, p0, Lcom/android/server/twilight/TwilightService;->mHandler:Landroid/os/Handler;

    move-object v11, p0

    invoke-virtual/range {v6 .. v12}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 240
    .end local v8    # "triggerAtMillis":J
    :cond_66
    return-void

    .line 232
    :catchall_67
    move-exception v5

    :try_start_68
    monitor-exit v4
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    throw v5
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 132
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_24

    .line 150
    return v1

    .line 142
    :pswitch_8
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    if-eqz v0, :cond_15

    .line 143
    iput-boolean v1, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    .line 144
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService;->mBootCompleted:Z

    if-eqz v0, :cond_15

    .line 145
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->stopListening()V

    .line 148
    :cond_15
    return v2

    .line 134
    :pswitch_16
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    if-nez v0, :cond_23

    .line 135
    iput-boolean v2, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    .line 136
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService;->mBootCompleted:Z

    if-eqz v0, :cond_23

    .line 137
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->startListening()V

    .line 140
    :cond_23
    return v2

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_16
        :pswitch_8
    .end packed-switch
.end method

.method public onAlarm()V
    .registers 3

    .line 244
    const-string v0, "TwilightService"

    const-string/jumbo v1, "onAlarm"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->updateTwilightState()V

    .line 246
    return-void
.end method

.method public onBootPhase(I)V
    .registers 4
    .param p1, "phase"    # I

    .line 118
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_27

    .line 119
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 120
    .local v0, "c":Landroid/content/Context;
    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 121
    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    .line 123
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/twilight/TwilightService;->mBootCompleted:Z

    .line 124
    iget-boolean v1, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    if-eqz v1, :cond_27

    .line 125
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->startListening()V

    .line 128
    .end local v0    # "c":Landroid/content/Context;
    :cond_27
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 6
    .param p1, "location"    # Landroid/location/Location;

    .line 253
    if-eqz p1, :cond_4c

    .line 254
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_14

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_4c

    .line 255
    :cond_14
    const-string v0, "TwilightService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLocationChanged: provider="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " accuracy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 255
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iput-object p1, p0, Lcom/android/server/twilight/TwilightService;->mLastLocation:Landroid/location/Location;

    .line 260
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->updateTwilightState()V

    .line 262
    :cond_4c
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .line 274
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .line 270
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 81
    const-class v0, Lcom/android/server/twilight/TwilightManager;

    new-instance v1, Lcom/android/server/twilight/TwilightService$1;

    invoke-direct {v1, p0}, Lcom/android/server/twilight/TwilightService$1;-><init>(Lcom/android/server/twilight/TwilightService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/twilight/TwilightService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 114
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 266
    return-void
.end method
