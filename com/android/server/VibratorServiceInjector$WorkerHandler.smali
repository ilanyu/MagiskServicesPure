.class Lcom/android/server/VibratorServiceInjector$WorkerHandler;
.super Landroid/os/Handler;
.source "VibratorServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WorkerHandler"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 2
    .param p1, "looper"    # Landroid/os/Looper;

    .line 291
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 292
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .param p1, "msg"    # Landroid/os/Message;

    .line 296
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_bc

    goto/16 :goto_ba

    .line 341
    :pswitch_7
    # invokes: Lcom/android/server/VibratorServiceInjector;->updateSettings()V
    invoke-static {}, Lcom/android/server/VibratorServiceInjector;->access$400()V

    goto/16 :goto_ba

    .line 327
    :pswitch_c
    # getter for: Lcom/android/server/VibratorServiceInjector;->sLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/VibratorServiceInjector;->access$500()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 328
    :try_start_11
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/VibratorServiceInjector$VibrationInfo;

    .line 329
    .local v1, "vibInfo":Lcom/android/server/VibratorServiceInjector$VibrationInfo;
    # getter for: Lcom/android/server/VibratorServiceInjector;->sVibrationsCollection:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/VibratorServiceInjector;->access$1200()Ljava/util/Map;

    move-result-object v2

    # getter for: Lcom/android/server/VibratorServiceInjector$VibrationInfo;->mOpPkg:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/VibratorServiceInjector$VibrationInfo;->access$1100(Lcom/android/server/VibratorServiceInjector$VibrationInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    .line 330
    .local v2, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/VibratorServiceInjector$VibrationInfo;>;"
    if-nez v2, :cond_36

    .line 331
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    move-object v2, v3

    .line 332
    # getter for: Lcom/android/server/VibratorServiceInjector;->sVibrationsCollection:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/VibratorServiceInjector;->access$1200()Ljava/util/Map;

    move-result-object v3

    # getter for: Lcom/android/server/VibratorServiceInjector$VibrationInfo;->mOpPkg:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/VibratorServiceInjector$VibrationInfo;->access$1100(Lcom/android/server/VibratorServiceInjector$VibrationInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    :cond_36
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v3

    # getter for: Lcom/android/server/VibratorServiceInjector;->sVibrationsLimitPerPkg:I
    invoke-static {}, Lcom/android/server/VibratorServiceInjector;->access$1300()I

    move-result v4

    if-le v3, v4, :cond_43

    .line 335
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 337
    :cond_43
    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 338
    monitor-exit v0

    goto/16 :goto_ba

    .line 339
    .end local v1    # "vibInfo":Lcom/android/server/VibratorServiceInjector$VibrationInfo;
    .end local v2    # "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/VibratorServiceInjector$VibrationInfo;>;"
    :catchall_49
    move-exception v1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_11 .. :try_end_4b} :catchall_49

    throw v1

    .line 316
    :pswitch_4c
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 317
    .local v0, "uid":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 318
    .local v1, "foregroundActivities":Z
    # getter for: Lcom/android/server/VibratorServiceInjector;->sLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/VibratorServiceInjector;->access$500()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 319
    if-eqz v1, :cond_6b

    .line 320
    :try_start_5d
    # getter for: Lcom/android/server/VibratorServiceInjector;->sForegroundUids:Ljava/util/Set;
    invoke-static {}, Lcom/android/server/VibratorServiceInjector;->access$1000()Ljava/util/Set;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_76

    .line 325
    :catchall_69
    move-exception v3

    goto :goto_78

    .line 322
    :cond_6b
    # getter for: Lcom/android/server/VibratorServiceInjector;->sForegroundUids:Ljava/util/Set;
    invoke-static {}, Lcom/android/server/VibratorServiceInjector;->access$1000()Ljava/util/Set;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 324
    :goto_76
    monitor-exit v2

    goto :goto_ba

    .line 325
    :goto_78
    monitor-exit v2
    :try_end_79
    .catchall {:try_start_5d .. :try_end_79} :catchall_69

    throw v3

    .line 312
    .end local v0    # "uid":I
    .end local v1    # "foregroundActivities":Z
    :pswitch_7a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/service/notification/StatusBarNotification;

    .line 313
    .local v0, "sbn":Landroid/service/notification/StatusBarNotification;
    # invokes: Lcom/android/server/VibratorServiceInjector$NotificationVibrationController;->onNotificationPost(Landroid/service/notification/StatusBarNotification;)V
    invoke-static {v0}, Lcom/android/server/VibratorServiceInjector$NotificationVibrationController;->access$900(Landroid/service/notification/StatusBarNotification;)V

    .line 314
    goto :goto_ba

    .line 298
    .end local v0    # "sbn":Landroid/service/notification/StatusBarNotification;
    :pswitch_82
    # getter for: Lcom/android/server/VibratorServiceInjector;->sLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/VibratorServiceInjector;->access$500()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 300
    :try_start_87
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 301
    .local v1, "pkg":Ljava/lang/String;
    # getter for: Lcom/android/server/VibratorServiceInjector;->sNotificationVibrationInfos:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/VibratorServiceInjector;->access$600()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;

    .line 302
    .local v2, "info":Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;->isValid:Z

    .line 303
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;->lastNotificationVibrationTime:J

    .line 304
    # getter for: Lcom/android/server/VibratorServiceInjector;->sVibratorService:Lcom/android/server/VibratorService;
    invoke-static {}, Lcom/android/server/VibratorServiceInjector;->access$800()Lcom/android/server/VibratorService;

    move-result-object v5

    iget v6, v2, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;->uid:I

    iget-object v7, v2, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;->pkg:Ljava/lang/String;

    iget-object v8, v2, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;->effect:Landroid/os/VibrationEffect;

    iget v9, v2, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;->usageHint:I

    iget-object v10, v2, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;->token:Landroid/os/IBinder;

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/VibratorService;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;ILandroid/os/IBinder;)V
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_af} :catch_b2
    .catchall {:try_start_87 .. :try_end_af} :catchall_b0

    .line 308
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v2    # "info":Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;
    goto :goto_b6

    .line 310
    :catchall_b0
    move-exception v1

    goto :goto_b8

    .line 306
    :catch_b2
    move-exception v1

    .line 307
    .local v1, "e":Ljava/lang/Exception;
    :try_start_b3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 309
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_b6
    monitor-exit v0

    goto :goto_ba

    .line 310
    :goto_b8
    monitor-exit v0
    :try_end_b9
    .catchall {:try_start_b3 .. :try_end_b9} :catchall_b0

    throw v1

    .line 344
    :goto_ba
    return-void

    nop

    :pswitch_data_bc
    .packed-switch 0x1
        :pswitch_82
        :pswitch_7a
        :pswitch_4c
        :pswitch_c
        :pswitch_7
    .end packed-switch
.end method
