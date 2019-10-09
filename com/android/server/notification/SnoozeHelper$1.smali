.class Lcom/android/server/notification/SnoozeHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "SnoozeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/SnoozeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/SnoozeHelper;


# direct methods
.method constructor <init>(Lcom/android/server/notification/SnoozeHelper;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/notification/SnoozeHelper;

    .line 372
    iput-object p1, p0, Lcom/android/server/notification/SnoozeHelper$1;->this$0:Lcom/android/server/notification/SnoozeHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 375
    # getter for: Lcom/android/server/notification/SnoozeHelper;->DEBUG:Z
    invoke-static {}, Lcom/android/server/notification/SnoozeHelper;->access$000()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 376
    const-string v0, "SnoozeHelper"

    const-string v1, "Reposting notification"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_d
    # getter for: Lcom/android/server/notification/SnoozeHelper;->REPOST_ACTION:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/notification/SnoozeHelper;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 380
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->getHandler()Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v0

    new-instance v1, Lcom/android/server/notification/SnoozeHelper$1$1;

    invoke-direct {v1, p0, p2}, Lcom/android/server/notification/SnoozeHelper$1$1;-><init>(Lcom/android/server/notification/SnoozeHelper$1;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 391
    :cond_27
    return-void
.end method
