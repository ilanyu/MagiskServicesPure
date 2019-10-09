.class public Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EnqueueNotificationRunnable"
.end annotation


# instance fields
.field private final r:Lcom/android/server/notification/NotificationRecord;

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;

.field private final userId:I


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;ILcom/android/server/notification/NotificationRecord;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p2, "userId"    # I
    .param p3, "r"    # Lcom/android/server/notification/NotificationRecord;

    .line 4405
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4406
    iput p2, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->userId:I

    .line 4407
    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    .line 4408
    return-void
.end method


# virtual methods
.method public run()V
    .registers 18

    .line 4412
    move-object/from16 v1, p0

    sget-object v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4413
    :try_start_5
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4414
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v0, v3}, Lcom/android/server/notification/NotificationManagerService;->scheduleTimeoutLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 4416
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    iget-object v0, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 4417
    .local v0, "n":Landroid/service/notification/StatusBarNotification;
    sget-boolean v3, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v3, :cond_37

    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EnqueueNotificationRunnable.run for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4418
    :cond_37
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 4419
    .local v3, "old":Lcom/android/server/notification/NotificationRecord;
    if-eqz v3, :cond_4c

    .line 4421
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v4, v3}, Lcom/android/server/notification/NotificationRecord;->copyRankingInformation(Lcom/android/server/notification/NotificationRecord;)V

    .line 4424
    :cond_4c
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v4

    .line 4425
    .local v4, "callingUid":I
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v5

    move v13, v5

    .line 4426
    .local v13, "callingPid":I
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    move-object v14, v5

    .line 4427
    .local v14, "notification":Landroid/app/Notification;
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object v15, v5

    .line 4428
    .local v15, "pkg":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v8

    .line 4429
    .local v8, "id":I
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v9

    .line 4433
    .local v9, "tag":Ljava/lang/String;
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->handleGroupedNotificationLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V
    invoke-static {v5, v6, v3, v4, v13}, Lcom/android/server/notification/NotificationManagerService;->access$6200(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V

    .line 4436
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v5

    if-eqz v5, :cond_8d

    invoke-virtual {v14}, Landroid/app/Notification;->isGroupChild()Z

    move-result v5

    if-eqz v5, :cond_8d

    .line 4437
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;
    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->access$3900(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/SnoozeHelper;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v6

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v15, v6, v7}, Lcom/android/server/notification/SnoozeHelper;->repostGroupSummary(Ljava/lang/String;ILjava/lang/String;)V

    .line 4442
    :cond_8d
    const-string v5, "com.android.providers.downloads"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9e

    const-string v5, "DownloadManager"

    const/4 v6, 0x2

    .line 4443
    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_b2

    .line 4444
    :cond_9e
    const/4 v5, 0x0

    .line 4445
    .local v5, "enqueueStatus":I
    if-eqz v3, :cond_a2

    .line 4446
    const/4 v5, 0x1

    .line 4448
    .end local v5    # "enqueueStatus":I
    .local v16, "enqueueStatus":I
    :cond_a2
    move/from16 v16, v5

    iget v10, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->userId:I

    .line 4449
    invoke-virtual {v14}, Landroid/app/Notification;->toString()Ljava/lang/String;

    move-result-object v11

    .line 4448
    move v5, v4

    move v6, v13

    move-object v7, v15

    move/from16 v12, v16

    invoke-static/range {v5 .. v12}, Lcom/android/server/EventLogTags;->writeNotificationEnqueue(IILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    .line 4453
    .end local v16    # "enqueueStatus":I
    :cond_b2
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;
    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->access$1000(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v5, v6}, Lcom/android/server/notification/RankingHelper;->extractSignals(Lcom/android/server/notification/NotificationRecord;)V

    .line 4456
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;
    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->access$2400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_eb

    .line 4457
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;
    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->access$2400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v5, v6}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->onNotificationEnqueued(Lcom/android/server/notification/NotificationRecord;)V

    .line 4458
    # getter for: Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$1800()Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v5

    new-instance v6, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;

    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v10, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v10}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v7, v10}, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    const-wide/16 v10, 0x64

    invoke-virtual {v5, v6, v10, v11}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_ff

    .line 4461
    :cond_eb
    # getter for: Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$1800()Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v5

    new-instance v6, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;

    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v10, v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v10}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v7, v10}, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 4463
    .end local v0    # "n":Landroid/service/notification/StatusBarNotification;
    .end local v3    # "old":Lcom/android/server/notification/NotificationRecord;
    .end local v4    # "callingUid":I
    .end local v8    # "id":I
    .end local v9    # "tag":Ljava/lang/String;
    .end local v13    # "callingPid":I
    .end local v14    # "notification":Landroid/app/Notification;
    .end local v15    # "pkg":Ljava/lang/String;
    :goto_ff
    monitor-exit v2

    .line 4464
    return-void

    .line 4463
    :catchall_101
    move-exception v0

    monitor-exit v2
    :try_end_103
    .catchall {:try_start_5 .. :try_end_103} :catchall_101

    throw v0
.end method
