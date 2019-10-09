.class Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$2;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantSnoozedLocked(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

.field final synthetic val$info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

.field final synthetic val$sbnToPost:Landroid/service/notification/StatusBarNotification;

.field final synthetic val$snoozeCriterionId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V
    .registers 5
    .param p1, "this$1"    # Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    .line 6529
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$2;->this$1:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$2;->val$info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$2;->val$sbnToPost:Landroid/service/notification/StatusBarNotification;

    iput-object p4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$2;->val$snoozeCriterionId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 6532
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$2;->val$info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Landroid/service/notification/INotificationListener;

    .line 6534
    .local v0, "assistant":Landroid/service/notification/INotificationListener;
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$2;->val$sbnToPost:Landroid/service/notification/StatusBarNotification;

    invoke-direct {v1, v2}, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;-><init>(Landroid/service/notification/StatusBarNotification;)V

    .line 6537
    .local v1, "sbnHolder":Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;
    :try_start_d
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$2;->val$snoozeCriterionId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/service/notification/INotificationListener;->onNotificationSnoozedUntilContext(Landroid/service/notification/IStatusBarNotificationHolder;Ljava/lang/String;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13

    .line 6541
    goto :goto_2d

    .line 6539
    :catch_13
    move-exception v2

    .line 6540
    .local v2, "ex":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$2;->this$1:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unable to notify assistant (snoozed): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6542
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_2d
    return-void
.end method
