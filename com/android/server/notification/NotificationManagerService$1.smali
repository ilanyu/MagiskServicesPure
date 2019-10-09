.class Lcom/android/server/notification/NotificationManagerService$1;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Lcom/android/server/notification/NotificationDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 675
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearEffects()V
    .registers 4

    .line 807
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 808
    :try_start_3
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v1, :cond_e

    const-string v1, "NotificationService"

    const-string v2, "clearEffects"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :cond_e
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->clearSoundLocked()V
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$600(Lcom/android/server/notification/NotificationManagerService;)V

    .line 810
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->clearVibrateLocked()V
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$700(Lcom/android/server/notification/NotificationManagerService;)V

    .line 811
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->clearLightsLocked()V
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$800(Lcom/android/server/notification/NotificationManagerService;)V

    .line 812
    monitor-exit v0

    .line 813
    return-void

    .line 812
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public onClearAll(III)V
    .registers 12
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "userId"    # I

    .line 707
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 708
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/notification/NotificationManagerService;->cancelAllLocked(IIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V

    .line 710
    monitor-exit v0

    .line 711
    return-void

    .line 710
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public onNotificationActionClick(IILjava/lang/String;ILcom/android/internal/statusbar/NotificationVisibility;)V
    .registers 21
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "actionIndex"    # I
    .param p5, "nv"    # Lcom/android/internal/statusbar/NotificationVisibility;

    move-object v1, p0

    move-object/from16 v9, p3

    .line 750
    move-object/from16 v10, p5

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->exitIdle()V
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$500(Lcom/android/server/notification/NotificationManagerService;)V

    .line 751
    sget-object v11, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v11

    .line 752
    :try_start_d
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    .line 753
    .local v0, "r":Lcom/android/server/notification/NotificationRecord;
    if-nez v0, :cond_31

    .line 754
    const-string v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No notification with key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    monitor-exit v11

    return-void

    .line 757
    :cond_31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-wide v12, v2

    .line 758
    .local v12, "now":J
    invoke-virtual {v0, v12, v13}, Lcom/android/server/notification/NotificationRecord;->getLogMaker(J)Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v3, 0x81

    .line 759
    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v2

    const/4 v3, 0x4

    .line 760
    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v2
    :try_end_45
    .catchall {:try_start_d .. :try_end_45} :catchall_86

    .line 761
    move/from16 v14, p4

    :try_start_47
    invoke-virtual {v2, v14}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v3, 0x31e

    iget v4, v10, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    .line 762
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v3, 0x573

    iget v4, v10, Lcom/android/internal/statusbar/NotificationVisibility;->count:I

    .line 763
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 758
    invoke-static {v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 764
    nop

    .line 765
    invoke-virtual {v0, v12, v13}, Lcom/android/server/notification/NotificationRecord;->getLifespanMs(J)I

    move-result v4

    invoke-virtual {v0, v12, v13}, Lcom/android/server/notification/NotificationRecord;->getFreshnessMs(J)I

    move-result v5

    invoke-virtual {v0, v12, v13}, Lcom/android/server/notification/NotificationRecord;->getExposureMs(J)I

    move-result v6

    iget v7, v10, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    iget v8, v10, Lcom/android/internal/statusbar/NotificationVisibility;->count:I

    .line 764
    move-object v2, v9

    move v3, v14

    invoke-static/range {v2 .. v8}, Lcom/android/server/EventLogTags;->writeNotificationActionClicked(Ljava/lang/String;IIIIII)V

    .line 767
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/statusbar/NotificationVisibility;->recycle()V

    .line 768
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/notification/NotificationManagerService;->reportUserInteraction(Lcom/android/server/notification/NotificationRecord;)V

    .line 769
    .end local v0    # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v12    # "now":J
    monitor-exit v11

    .line 770
    return-void

    .line 769
    :catchall_86
    move-exception v0

    move/from16 v14, p4

    :goto_89
    monitor-exit v11
    :try_end_8a
    .catchall {:try_start_47 .. :try_end_8a} :catchall_8b

    throw v0

    :catchall_8b
    move-exception v0

    goto :goto_89
.end method

.method public onNotificationClear(IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/android/internal/statusbar/NotificationVisibility;)V
    .registers 30
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "id"    # I
    .param p6, "userId"    # I
    .param p7, "key"    # Ljava/lang/String;
    .param p8, "dismissalSurface"    # I
    .param p9, "nv"    # Lcom/android/internal/statusbar/NotificationVisibility;

    move-object/from16 v1, p0

    .line 777
    move-object/from16 v2, p9

    sget-object v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v3

    .line 778
    :try_start_7
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_45

    move-object/from16 v4, p7

    :try_start_d
    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_43

    .line 779
    .local v0, "r":Lcom/android/server/notification/NotificationRecord;
    if-eqz v0, :cond_1b

    .line 780
    move/from16 v5, p8

    :try_start_17
    invoke-virtual {v0, v5}, Lcom/android/server/notification/NotificationRecord;->recordDismissalSurface(I)V

    .end local v0    # "r":Lcom/android/server/notification/NotificationRecord;
    goto :goto_1d

    .line 782
    :cond_1b
    move/from16 v5, p8

    :goto_1d
    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_4c

    .line 783
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v12, 0x0

    const/16 v13, 0x42

    const/4 v14, 0x1

    const/16 v16, 0x2

    iget v0, v2, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    iget v3, v2, Lcom/android/internal/statusbar/NotificationVisibility;->count:I

    const/16 v19, 0x0

    move/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    move/from16 v15, p6

    move/from16 v17, v0

    move/from16 v18, v3

    invoke-virtual/range {v6 .. v19}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 786
    invoke-virtual/range {p9 .. p9}, Lcom/android/internal/statusbar/NotificationVisibility;->recycle()V

    .line 787
    return-void

    .line 782
    :catchall_43
    move-exception v0

    goto :goto_48

    :catchall_45
    move-exception v0

    move-object/from16 v4, p7

    :goto_48
    move/from16 v5, p8

    :goto_4a
    :try_start_4a
    monitor-exit v3
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_4c

    throw v0

    :catchall_4c
    move-exception v0

    goto :goto_4a
.end method

.method public onNotificationClick(IILjava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V
    .registers 32
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "nv"    # Lcom/android/internal/statusbar/NotificationVisibility;

    move-object/from16 v1, p0

    move-object/from16 v8, p3

    .line 715
    move-object/from16 v9, p4

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->exitIdle()V
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$500(Lcom/android/server/notification/NotificationManagerService;)V

    .line 716
    sget-object v10, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v10

    .line 717
    :try_start_e
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    .line 718
    .local v0, "r":Lcom/android/server/notification/NotificationRecord;
    if-nez v0, :cond_32

    .line 719
    const-string v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No notification with key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    monitor-exit v10

    return-void

    .line 722
    :cond_32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-wide v11, v2

    .line 723
    .local v11, "now":J
    invoke-virtual {v0, v11, v12}, Lcom/android/server/notification/NotificationRecord;->getLogMaker(J)Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v3, 0x80

    .line 724
    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v2

    const/4 v3, 0x4

    .line 725
    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v3, 0x31e

    iget v4, v9, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    .line 726
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v3, 0x573

    iget v4, v9, Lcom/android/internal/statusbar/NotificationVisibility;->count:I

    .line 727
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 723
    invoke-static {v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 728
    nop

    .line 729
    invoke-virtual {v0, v11, v12}, Lcom/android/server/notification/NotificationRecord;->getLifespanMs(J)I

    move-result v3

    invoke-virtual {v0, v11, v12}, Lcom/android/server/notification/NotificationRecord;->getFreshnessMs(J)I

    move-result v4

    invoke-virtual {v0, v11, v12}, Lcom/android/server/notification/NotificationRecord;->getExposureMs(J)I

    move-result v5

    iget v6, v9, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    iget v7, v9, Lcom/android/internal/statusbar/NotificationVisibility;->count:I

    .line 728
    move-object v2, v8

    invoke-static/range {v2 .. v7}, Lcom/android/server/EventLogTags;->writeNotificationClicked(Ljava/lang/String;IIIII)V

    .line 733
    iget-object v2, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 734
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3
    :try_end_82
    .catchall {:try_start_e .. :try_end_82} :catchall_be

    .line 733
    move/from16 v4, p1

    move/from16 v5, p2

    :try_start_86
    invoke-static {v4, v5, v2, v3}, Lcom/android/server/notification/NotificationManagerServiceInjector;->onNotificationClick(IILjava/lang/String;Landroid/app/Notification;)V

    .line 737
    iget-object v2, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 738
    .local v2, "sbn":Landroid/service/notification/StatusBarNotification;
    iget-object v13, v1, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v17

    .line 739
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v18

    const/16 v19, 0x10

    const/16 v20, 0x40

    const/16 v21, 0x0

    .line 740
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v22

    const/16 v23, 0x1

    iget v3, v9, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    iget v6, v9, Lcom/android/internal/statusbar/NotificationVisibility;->count:I

    const/16 v26, 0x0

    .line 738
    move v14, v4

    move v15, v5

    move/from16 v24, v3

    move/from16 v25, v6

    invoke-virtual/range {v13 .. v26}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 742
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/statusbar/NotificationVisibility;->recycle()V

    .line 743
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v3, v0}, Lcom/android/server/notification/NotificationManagerService;->reportUserInteraction(Lcom/android/server/notification/NotificationRecord;)V

    .line 744
    .end local v0    # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v2    # "sbn":Landroid/service/notification/StatusBarNotification;
    .end local v11    # "now":J
    monitor-exit v10

    .line 745
    return-void

    .line 744
    :catchall_be
    move-exception v0

    move/from16 v4, p1

    move/from16 v5, p2

    :goto_c3
    monitor-exit v10
    :try_end_c4
    .catchall {:try_start_86 .. :try_end_c4} :catchall_c5

    throw v0

    :catchall_c5
    move-exception v0

    goto :goto_c3
.end method

.method public onNotificationDirectReplied(Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .line 889
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->exitIdle()V
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$500(Lcom/android/server/notification/NotificationManagerService;)V

    .line 890
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 891
    :try_start_8
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    .line 892
    .local v1, "r":Lcom/android/server/notification/NotificationRecord;
    if-eqz v1, :cond_1c

    .line 893
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->recordDirectReplied()V

    .line 894
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/notification/NotificationManagerService;->reportUserInteraction(Lcom/android/server/notification/NotificationRecord;)V

    .line 896
    .end local v1    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_1c
    monitor-exit v0

    .line 897
    return-void

    .line 896
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public onNotificationError(IILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    .registers 23
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "id"    # I
    .param p6, "uid"    # I
    .param p7, "initialPid"    # I
    .param p8, "message"    # Ljava/lang/String;
    .param p9, "userId"    # I

    .line 818
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x0

    move v2, p1

    move v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v10, p9

    invoke-virtual/range {v1 .. v12}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 820
    return-void
.end method

.method public onNotificationExpansionChanged(Ljava/lang/String;ZZ)V
    .registers 14
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userAction"    # Z
    .param p3, "expanded"    # Z

    .line 866
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 867
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    .line 868
    .local v1, "r":Lcom/android/server/notification/NotificationRecord;
    if-eqz v1, :cond_4c

    .line 869
    iget-object v2, v1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-virtual {v2, p2, p3}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->onExpansionChanged(ZZ)V

    .line 870
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 871
    .local v2, "now":J
    if-eqz p2, :cond_31

    .line 872
    invoke-virtual {v1, v2, v3}, Lcom/android/server/notification/NotificationRecord;->getLogMaker(J)Landroid/metrics/LogMaker;

    move-result-object v4

    const/16 v5, 0x80

    .line 873
    invoke-virtual {v4, v5}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v4

    .line 874
    if-eqz p3, :cond_28

    const/4 v5, 0x3

    goto :goto_2a

    .line 875
    :cond_28
    const/16 v5, 0xe

    .line 874
    :goto_2a
    invoke-virtual {v4, v5}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v4

    .line 872
    invoke-static {v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 877
    :cond_31
    if-eqz p3, :cond_38

    if-eqz p2, :cond_38

    .line 878
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->recordExpanded()V

    .line 880
    :cond_38
    nop

    .line 881
    nop

    .line 882
    invoke-virtual {v1, v2, v3}, Lcom/android/server/notification/NotificationRecord;->getLifespanMs(J)I

    move-result v7

    invoke-virtual {v1, v2, v3}, Lcom/android/server/notification/NotificationRecord;->getFreshnessMs(J)I

    move-result v8

    invoke-virtual {v1, v2, v3}, Lcom/android/server/notification/NotificationRecord;->getExposureMs(J)I

    move-result v9

    .line 880
    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v4 .. v9}, Lcom/android/server/EventLogTags;->writeNotificationExpansion(Ljava/lang/String;IIIII)V

    .line 884
    .end local v1    # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v2    # "now":J
    :cond_4c
    monitor-exit v0

    .line 885
    return-void

    .line 884
    :catchall_4e
    move-exception v1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_4e

    throw v1
.end method

.method public onNotificationSettingsViewed(Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 926
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 927
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    .line 928
    .local v1, "r":Lcom/android/server/notification/NotificationRecord;
    if-eqz v1, :cond_12

    .line 929
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->recordViewedSettings()V

    .line 931
    .end local v1    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_12
    monitor-exit v0

    .line 932
    return-void

    .line 931
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public onNotificationSmartRepliesAdded(Ljava/lang/String;I)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "replyCount"    # I

    .line 901
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 902
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    .line 903
    .local v1, "r":Lcom/android/server/notification/NotificationRecord;
    if-eqz v1, :cond_12

    .line 904
    invoke-virtual {v1, p2}, Lcom/android/server/notification/NotificationRecord;->setNumSmartRepliesAdded(I)V

    .line 906
    .end local v1    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_12
    monitor-exit v0

    .line 907
    return-void

    .line 906
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public onNotificationSmartReplySent(Ljava/lang/String;I)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "replyIndex"    # I

    .line 911
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 912
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    .line 913
    .local v1, "r":Lcom/android/server/notification/NotificationRecord;
    if-eqz v1, :cond_2b

    .line 914
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v3, 0x567

    .line 915
    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 916
    invoke-virtual {v2, p2}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 917
    .local v2, "logMaker":Landroid/metrics/LogMaker;
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$900(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/internal/logging/MetricsLogger;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 919
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v3, v1}, Lcom/android/server/notification/NotificationManagerService;->reportUserInteraction(Lcom/android/server/notification/NotificationRecord;)V

    .line 921
    .end local v1    # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v2    # "logMaker":Landroid/metrics/LogMaker;
    :cond_2b
    monitor-exit v0

    .line 922
    return-void

    .line 921
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V
    .registers 13
    .param p1, "newlyVisibleKeys"    # [Lcom/android/internal/statusbar/NotificationVisibility;
    .param p2, "noLongerVisibleKeys"    # [Lcom/android/internal/statusbar/NotificationVisibility;

    .line 825
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 826
    :try_start_3
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    if-ge v3, v1, :cond_83

    aget-object v4, p1, v3

    .line 827
    .local v4, "nv":Lcom/android/internal/statusbar/NotificationVisibility;
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    iget-object v6, v4, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 828
    .local v5, "r":Lcom/android/server/notification/NotificationRecord;
    if-nez v5, :cond_19

    .end local v4    # "nv":Lcom/android/internal/statusbar/NotificationVisibility;
    .end local v5    # "r":Lcom/android/server/notification/NotificationRecord;
    goto :goto_80

    .line 829
    .restart local v4    # "nv":Lcom/android/internal/statusbar/NotificationVisibility;
    .restart local v5    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_19
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->isSeen()Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_71

    .line 831
    sget-boolean v6, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v6, :cond_3c

    const-string v6, "NotificationService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Marking notification as visible "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v4, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    :cond_3c
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v6, v5}, Lcom/android/server/notification/NotificationManagerService;->reportSeen(Lcom/android/server/notification/NotificationRecord;)V

    .line 836
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getNumSmartRepliesAdded()I

    move-result v6

    if-lez v6, :cond_71

    .line 837
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->hasSeenSmartReplies()Z

    move-result v6

    if-nez v6, :cond_71

    .line 838
    invoke-virtual {v5, v7}, Lcom/android/server/notification/NotificationRecord;->setSeenSmartReplies(Z)V

    .line 839
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object v6

    const/16 v8, 0x566

    .line 840
    invoke-virtual {v6, v8}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v6

    const/16 v8, 0x568

    .line 842
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getNumSmartRepliesAdded()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 841
    invoke-virtual {v6, v8, v9}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v6

    .line 843
    .local v6, "logMaker":Landroid/metrics/LogMaker;
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;
    invoke-static {v8}, Lcom/android/server/notification/NotificationManagerService;->access$900(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/internal/logging/MetricsLogger;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 846
    .end local v6    # "logMaker":Landroid/metrics/LogMaker;
    :cond_71
    iget v6, v4, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    iget v8, v4, Lcom/android/internal/statusbar/NotificationVisibility;->count:I

    invoke-virtual {v5, v7, v6, v8}, Lcom/android/server/notification/NotificationRecord;->setVisibility(ZII)V

    .line 847
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v6, v5}, Lcom/android/server/notification/NotificationManagerService;->maybeRecordInterruptionLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 848
    invoke-virtual {v4}, Lcom/android/internal/statusbar/NotificationVisibility;->recycle()V

    .line 826
    .end local v4    # "nv":Lcom/android/internal/statusbar/NotificationVisibility;
    .end local v5    # "r":Lcom/android/server/notification/NotificationRecord;
    :goto_80
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 854
    :cond_83
    array-length v1, p2

    move v3, v2

    :goto_85
    if-ge v3, v1, :cond_a5

    aget-object v4, p2, v3

    .line 855
    .restart local v4    # "nv":Lcom/android/internal/statusbar/NotificationVisibility;
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    iget-object v6, v4, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 856
    .restart local v5    # "r":Lcom/android/server/notification/NotificationRecord;
    if-nez v5, :cond_98

    .end local v4    # "nv":Lcom/android/internal/statusbar/NotificationVisibility;
    .end local v5    # "r":Lcom/android/server/notification/NotificationRecord;
    goto :goto_a2

    .line 857
    .restart local v4    # "nv":Lcom/android/internal/statusbar/NotificationVisibility;
    .restart local v5    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_98
    iget v6, v4, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    iget v7, v4, Lcom/android/internal/statusbar/NotificationVisibility;->count:I

    invoke-virtual {v5, v2, v6, v7}, Lcom/android/server/notification/NotificationRecord;->setVisibility(ZII)V

    .line 858
    invoke-virtual {v4}, Lcom/android/internal/statusbar/NotificationVisibility;->recycle()V

    .line 854
    .end local v4    # "nv":Lcom/android/internal/statusbar/NotificationVisibility;
    .end local v5    # "r":Lcom/android/server/notification/NotificationRecord;
    :goto_a2
    add-int/lit8 v3, v3, 0x1

    goto :goto_85

    .line 860
    :cond_a5
    monitor-exit v0

    .line 861
    return-void

    .line 860
    :catchall_a7
    move-exception v1

    monitor-exit v0
    :try_end_a9
    .catchall {:try_start_3 .. :try_end_a9} :catchall_a7

    throw v1
.end method

.method public onPanelHidden()V
    .registers 3

    .line 801
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x7f

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 802
    invoke-static {}, Lcom/android/server/EventLogTags;->writeNotificationPanelHidden()V

    .line 803
    return-void
.end method

.method public onPanelRevealed(ZI)V
    .registers 5
    .param p1, "clearEffects"    # Z
    .param p2, "items"    # I

    .line 791
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x7f

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 792
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "note_load"

    invoke-static {v0, v1, p2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 793
    invoke-static {p2}, Lcom/android/server/EventLogTags;->writeNotificationPanelRevealed(I)V

    .line 794
    if-eqz p1, :cond_1f

    .line 795
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$1;->clearEffects()V

    .line 797
    :cond_1f
    return-void
.end method

.method public onSetDisabled(I)V
    .registers 7
    .param p1, "status"    # I

    .line 679
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 680
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/high16 v2, 0x40000

    and-int/2addr v2, p1

    if-eqz v2, :cond_c

    const/4 v2, 0x1

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :goto_d
    # setter for: Lcom/android/server/notification/NotificationManagerService;->mDisableNotificationEffects:Z
    invoke-static {v1, v2}, Lcom/android/server/notification/NotificationManagerService;->access$302(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 682
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v2, 0x0

    # invokes: Lcom/android/server/notification/NotificationManagerService;->disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/server/notification/NotificationManagerService;->access$400(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4d

    .line 684
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_4f

    .line 686
    .local v1, "identity":J
    :try_start_1d
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v3

    .line 687
    .local v3, "player":Landroid/media/IRingtonePlayer;
    if-eqz v3, :cond_2a

    .line 688
    invoke-interface {v3}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_2a} :catch_33
    .catchall {:try_start_1d .. :try_end_2a} :catchall_2e

    .line 692
    .end local v3    # "player":Landroid/media/IRingtonePlayer;
    :cond_2a
    :try_start_2a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_37

    :catchall_2e
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 690
    :catch_33
    move-exception v3

    .line 692
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 693
    :goto_37
    nop

    .line 695
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_3c
    .catchall {:try_start_2a .. :try_end_3c} :catchall_4f

    move-wide v1, v3

    .line 697
    :try_start_3d
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v3}, Landroid/os/Vibrator;->cancel()V
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_48

    .line 699
    :try_start_44
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 700
    goto :goto_4d

    .line 699
    :catchall_48
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 702
    .end local v1    # "identity":J
    :cond_4d
    :goto_4d
    monitor-exit v0

    .line 703
    return-void

    .line 702
    :catchall_4f
    move-exception v1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_44 .. :try_end_51} :catchall_4f

    throw v1
.end method
