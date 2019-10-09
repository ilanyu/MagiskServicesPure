.class Lcom/android/server/notification/NotificationManagerService$11;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Lcom/android/server/notification/NotificationManagerInternal;


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

    .line 3983
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/server/notification/NotificationManagerService$11;Ljava/util/ArrayList;Ljava/lang/String;II)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService$11;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 3983
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService$11;->removeForegroundServiceFlagByListLocked(Ljava/util/ArrayList;Ljava/lang/String;II)V

    return-void
.end method

.method private removeForegroundServiceFlagByListLocked(Ljava/util/ArrayList;Ljava/lang/String;II)V
    .registers 11
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "notificationId"    # I
    .param p4, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 4018
    .local p1, "notificationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    # invokes: Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;
    invoke-static/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService;->access$5900(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    .line 4020
    .local v0, "r":Lcom/android/server/notification/NotificationRecord;
    if-nez v0, :cond_e

    .line 4021
    return-void

    .line 4023
    :cond_e
    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 4028
    .local v1, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget v3, v0, Lcom/android/server/notification/NotificationRecord;->mOriginalFlags:I

    and-int/lit8 v3, v3, -0x41

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 4030
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1000(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/android/server/notification/RankingHelper;->sort(Ljava/util/ArrayList;)V

    .line 4031
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v2

    invoke-virtual {v2, v0, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyPostedLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)V

    .line 4032
    return-void
.end method


# virtual methods
.method public enqueueInterceptNotifications(Ljava/lang/String;II)V
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "callingPid"    # I
    .param p3, "userId"    # I

    .line 4038
    return-void
.end method

.method public enqueueNotification(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;I)V
    .registers 19
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "id"    # I
    .param p7, "notification"    # Landroid/app/Notification;
    .param p8, "userId"    # I

    .line 3993
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/notification/NotificationManagerService;->enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;I)V

    .line 3995
    return-void
.end method

.method public getNotificationChannel(Ljava/lang/String;ILjava/lang/String;)Landroid/app/NotificationChannel;
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "channelId"    # Ljava/lang/String;

    .line 3987
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1000(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/server/notification/RankingHelper;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v0

    return-object v0
.end method

.method public removeForegroundServiceFlagFromNotification(Ljava/lang/String;II)V
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "notificationId"    # I
    .param p3, "userId"    # I

    .line 4000
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystem()V
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$3500(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4001
    # getter for: Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$1800()Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v0

    new-instance v1, Lcom/android/server/notification/NotificationManagerService$11$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService$11$1;-><init>(Lcom/android/server/notification/NotificationManagerService$11;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 4012
    return-void
.end method
