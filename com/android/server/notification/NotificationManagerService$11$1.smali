.class Lcom/android/server/notification/NotificationManagerService$11$1;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService$11;->removeForegroundServiceFlagFromNotification(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/notification/NotificationManagerService$11;

.field final synthetic val$notificationId:I

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService$11;Ljava/lang/String;II)V
    .registers 5
    .param p1, "this$1"    # Lcom/android/server/notification/NotificationManagerService$11;

    .line 4001
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$11$1;->this$1:Lcom/android/server/notification/NotificationManagerService$11;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$11$1;->val$pkg:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$11$1;->val$notificationId:I

    iput p4, p0, Lcom/android/server/notification/NotificationManagerService$11$1;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 4004
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4005
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11$1;->this$1:Lcom/android/server/notification/NotificationManagerService$11;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11$1;->this$1:Lcom/android/server/notification/NotificationManagerService$11;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11$1;->val$pkg:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/notification/NotificationManagerService$11$1;->val$notificationId:I

    iget v5, p0, Lcom/android/server/notification/NotificationManagerService$11$1;->val$userId:I

    # invokes: Lcom/android/server/notification/NotificationManagerService$11;->removeForegroundServiceFlagByListLocked(Ljava/util/ArrayList;Ljava/lang/String;II)V
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/notification/NotificationManagerService$11;->access$5800(Lcom/android/server/notification/NotificationManagerService$11;Ljava/util/ArrayList;Ljava/lang/String;II)V

    .line 4007
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11$1;->this$1:Lcom/android/server/notification/NotificationManagerService$11;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11$1;->this$1:Lcom/android/server/notification/NotificationManagerService$11;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11$1;->val$pkg:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/notification/NotificationManagerService$11$1;->val$notificationId:I

    iget v5, p0, Lcom/android/server/notification/NotificationManagerService$11$1;->val$userId:I

    # invokes: Lcom/android/server/notification/NotificationManagerService$11;->removeForegroundServiceFlagByListLocked(Ljava/util/ArrayList;Ljava/lang/String;II)V
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/notification/NotificationManagerService$11;->access$5800(Lcom/android/server/notification/NotificationManagerService$11;Ljava/util/ArrayList;Ljava/lang/String;II)V

    .line 4009
    monitor-exit v0

    .line 4010
    return-void

    .line 4009
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method
