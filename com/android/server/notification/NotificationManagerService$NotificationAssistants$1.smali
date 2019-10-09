.class Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$1;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->onNotificationEnqueued(Lcom/android/server/notification/NotificationRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

.field final synthetic val$info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

.field final synthetic val$sbnToPost:Landroid/service/notification/StatusBarNotification;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;)V
    .registers 4
    .param p1, "this$1"    # Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    .line 6495
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$1;->this$1:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$1;->val$info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$1;->val$sbnToPost:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 6498
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$1;->this$1:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$1;->val$info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$1;->val$sbnToPost:Landroid/service/notification/StatusBarNotification;

    # invokes: Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyEnqueued(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->access$8400(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;)V

    .line 6499
    return-void
.end method
