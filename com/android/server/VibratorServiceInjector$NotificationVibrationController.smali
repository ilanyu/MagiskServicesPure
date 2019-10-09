.class Lcom/android/server/VibratorServiceInjector$NotificationVibrationController;
.super Ljava/lang/Object;
.source "VibratorServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotificationVibrationController"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300(ILjava/lang/String;Landroid/os/VibrationEffect;ILandroid/os/IBinder;)Landroid/os/VibrationEffect;
    .registers 6
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/os/VibrationEffect;
    .param p3, "x3"    # I
    .param p4, "x4"    # Landroid/os/IBinder;

    .line 214
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/VibratorServiceInjector$NotificationVibrationController;->filterNotificationVibrate(ILjava/lang/String;Landroid/os/VibrationEffect;ILandroid/os/IBinder;)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Landroid/service/notification/StatusBarNotification;)V
    .registers 1
    .param p0, "x0"    # Landroid/service/notification/StatusBarNotification;

    .line 214
    invoke-static {p0}, Lcom/android/server/VibratorServiceInjector$NotificationVibrationController;->onNotificationPost(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method private static adjustVibrationEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect;
    .registers 12
    .param p0, "effect"    # Landroid/os/VibrationEffect;

    .line 269
    instance-of v0, p0, Landroid/os/VibrationEffect$Waveform;

    if-eqz v0, :cond_3a

    .line 270
    move-object v0, p0

    check-cast v0, Landroid/os/VibrationEffect$Waveform;

    .line 271
    .local v0, "waveform":Landroid/os/VibrationEffect$Waveform;
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Waveform;->getTimings()[J

    move-result-object v1

    .line 272
    .local v1, "timings":[J
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Waveform;->getAmplitudes()[I

    move-result-object v2

    .line 273
    .local v2, "amplitudes":[I
    array-length v3, v1

    const/4 v4, 0x2

    if-le v3, v4, :cond_3a

    array-length v3, v2

    if-le v3, v4, :cond_3a

    .line 274
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Waveform;->getRepeatIndex()I

    move-result v3

    .line 275
    .local v3, "repeat":I
    new-instance v5, Landroid/os/VibrationEffect$Waveform;

    new-array v6, v4, [J

    const/4 v7, 0x0

    aget-wide v8, v1, v7

    aput-wide v8, v6, v7

    const/4 v8, 0x1

    aget-wide v9, v1, v8

    aput-wide v9, v6, v8

    new-array v4, v4, [I

    aget v9, v2, v7

    aput v9, v4, v7

    aget v9, v2, v8

    aput v9, v4, v8

    .line 276
    if-le v3, v8, :cond_35

    goto :goto_36

    :cond_35
    move v7, v3

    :goto_36
    invoke-direct {v5, v6, v4, v7}, Landroid/os/VibrationEffect$Waveform;-><init>([J[II)V

    move-object p0, v5

    .line 279
    .end local v0    # "waveform":Landroid/os/VibrationEffect$Waveform;
    .end local v1    # "timings":[J
    .end local v2    # "amplitudes":[I
    .end local v3    # "repeat":I
    :cond_3a
    return-object p0
.end method

.method private static filterNotificationVibrate(ILjava/lang/String;Landroid/os/VibrationEffect;ILandroid/os/IBinder;)Landroid/os/VibrationEffect;
    .registers 14
    .param p0, "uid"    # I
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "effect"    # Landroid/os/VibrationEffect;
    .param p3, "usageHint"    # I
    .param p4, "token"    # Landroid/os/IBinder;

    .line 235
    # getter for: Lcom/android/server/VibratorServiceInjector;->sLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/VibratorServiceInjector;->access$500()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 236
    :try_start_5
    # getter for: Lcom/android/server/VibratorServiceInjector;->sNotificationVibrationInfos:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/VibratorServiceInjector;->access$600()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;

    .line 237
    .local v1, "info":Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;
    const/4 v2, 0x0

    if-nez v1, :cond_1f

    .line 238
    new-instance v3, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;

    invoke-direct {v3, v2}, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;-><init>(Lcom/android/server/VibratorServiceInjector$1;)V

    move-object v1, v3

    .line 239
    # getter for: Lcom/android/server/VibratorServiceInjector;->sNotificationVibrationInfos:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/VibratorServiceInjector;->access$600()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    :cond_1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;->lastVibrationTime:J

    .line 243
    invoke-static {v1}, Lcom/android/server/VibratorServiceInjector$NotificationVibrationController;->isNotificationVibrate(Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4f

    .line 245
    iget-boolean v3, v1, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;->isTooOften:Z

    if-eqz v3, :cond_4a

    .line 246
    const-string v3, "VibratorServiceInjector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'s notification vibrate too often, skip"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iput-boolean v4, v1, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;->isValid:Z

    .line 248
    monitor-exit v0

    return-object v2

    .line 250
    :cond_4a
    invoke-static {p2}, Lcom/android/server/VibratorServiceInjector$NotificationVibrationController;->adjustVibrationEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect;

    move-result-object v3

    move-object p2, v3

    .line 253
    :cond_4f
    iget-boolean v3, v1, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;->isValid:Z

    if-eqz v3, :cond_57

    .line 254
    iput-boolean v4, v1, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;->isValid:Z

    .line 255
    monitor-exit v0

    return-object p2

    .line 257
    :cond_57
    move-object v3, v1

    move v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move-object v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;->fillVibrationInfo(ILjava/lang/String;Landroid/os/VibrationEffect;ILandroid/os/IBinder;)V

    .line 258
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 259
    .local v3, "m":Landroid/os/Message;
    iget-object v4, v1, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;->pkg:Ljava/lang/String;

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 260
    const/4 v4, 0x1

    iput v4, v3, Landroid/os/Message;->what:I

    .line 261
    # getter for: Lcom/android/server/VibratorServiceInjector;->sWorkerHandler:Lcom/android/server/VibratorServiceInjector$WorkerHandler;
    invoke-static {}, Lcom/android/server/VibratorServiceInjector;->access$000()Lcom/android/server/VibratorServiceInjector$WorkerHandler;

    move-result-object v4

    const-wide/16 v5, 0x4b

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/server/VibratorServiceInjector$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 263
    monitor-exit v0

    return-object v2

    .line 264
    .end local v1    # "info":Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;
    .end local v3    # "m":Landroid/os/Message;
    :catchall_76
    move-exception v1

    monitor-exit v0
    :try_end_78
    .catchall {:try_start_5 .. :try_end_78} :catchall_76

    throw v1
.end method

.method private static isNotificationVibrate(Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;)Z
    .registers 5
    .param p0, "info"    # Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;

    .line 283
    iget-wide v0, p0, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;->lastVibrationTime:J

    iget-wide v2, p0, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;->lastNotificationTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x2bc

    cmp-long v0, v0, v2

    if-gez v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method private static onNotificationPost(Landroid/service/notification/StatusBarNotification;)V
    .registers 9
    .param p0, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 216
    # getter for: Lcom/android/server/VibratorServiceInjector;->sLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/VibratorServiceInjector;->access$500()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 217
    :try_start_5
    # getter for: Lcom/android/server/VibratorServiceInjector;->sNotificationVibrationInfos:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/VibratorServiceInjector;->access$600()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;

    .line 218
    .local v1, "info":Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;
    if-nez v1, :cond_27

    .line 219
    new-instance v2, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;-><init>(Lcom/android/server/VibratorServiceInjector$1;)V

    move-object v1, v2

    .line 220
    # getter for: Lcom/android/server/VibratorServiceInjector;->sNotificationVibrationInfos:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/VibratorServiceInjector;->access$600()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :cond_27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 223
    .local v2, "now":J
    iput-wide v2, v1, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;->lastNotificationTime:J

    .line 224
    iget-wide v4, v1, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;->lastNotificationVibrationTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3a98

    cmp-long v4, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-gtz v4, :cond_3b

    move v4, v6

    goto :goto_3c

    :cond_3b
    move v4, v5

    :goto_3c
    iput-boolean v4, v1, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;->isTooOften:Z

    .line 225
    invoke-static {v1}, Lcom/android/server/VibratorServiceInjector$NotificationVibrationController;->isNotificationVibrate(Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;)Z

    move-result v4

    if-eqz v4, :cond_6d

    iget-boolean v4, v1, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;->isTooOften:Z

    if-eqz v4, :cond_6d

    .line 226
    iput-boolean v5, v1, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;->isValid:Z

    .line 227
    # getter for: Lcom/android/server/VibratorServiceInjector;->sWorkerHandler:Lcom/android/server/VibratorServiceInjector$WorkerHandler;
    invoke-static {}, Lcom/android/server/VibratorServiceInjector;->access$000()Lcom/android/server/VibratorServiceInjector$WorkerHandler;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v6, v5}, Lcom/android/server/VibratorServiceInjector$WorkerHandler;->removeMessages(ILjava/lang/Object;)V

    .line 228
    const-string v4, "VibratorServiceInjector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'s notification vibrate too often, skip"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    .end local v1    # "info":Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;
    .end local v2    # "now":J
    :cond_6d
    monitor-exit v0

    .line 231
    return-void

    .line 230
    :catchall_6f
    move-exception v1

    monitor-exit v0
    :try_end_71
    .catchall {:try_start_5 .. :try_end_71} :catchall_6f

    throw v1
.end method
