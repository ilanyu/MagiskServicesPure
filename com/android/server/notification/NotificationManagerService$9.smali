.class Lcom/android/server/notification/NotificationManagerService$9;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Lcom/android/server/notification/GroupHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService;->getGroupHelper()Lcom/android/server/notification/GroupHelper;
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

    .line 1589
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAutoGroup(Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 1592
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1593
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/notification/NotificationManagerService;->addAutogroupKeyLocked(Ljava/lang/String;)V

    .line 1594
    monitor-exit v0

    .line 1595
    return-void

    .line 1594
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public addAutoGroupSummary(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "triggeringKey"    # Ljava/lang/String;

    .line 1606
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->createAutoGroupSummary(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->access$3000(Lcom/android/server/notification/NotificationManagerService;ILjava/lang/String;Ljava/lang/String;)V

    .line 1607
    return-void
.end method

.method public removeAutoGroup(Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 1599
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1600
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/notification/NotificationManagerService;->removeAutogroupKeyLocked(Ljava/lang/String;)V

    .line 1601
    monitor-exit v0

    .line 1602
    return-void

    .line 1601
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public removeAutoGroupSummary(ILjava/lang/String;)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .line 1611
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1612
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->clearAutogroupSummaryLocked(ILjava/lang/String;)V
    invoke-static {v1, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->access$3100(Lcom/android/server/notification/NotificationManagerService;ILjava/lang/String;)V

    .line 1613
    monitor-exit v0

    .line 1614
    return-void

    .line 1613
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
