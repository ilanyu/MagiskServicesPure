.class Lcom/android/server/notification/SnoozeHelper$1$1;
.super Ljava/lang/Object;
.source "SnoozeHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/SnoozeHelper$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/notification/SnoozeHelper$1;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/server/notification/SnoozeHelper$1;Landroid/content/Intent;)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/server/notification/SnoozeHelper$1;

    .line 380
    iput-object p1, p0, Lcom/android/server/notification/SnoozeHelper$1$1;->this$1:Lcom/android/server/notification/SnoozeHelper$1;

    iput-object p2, p0, Lcom/android/server/notification/SnoozeHelper$1$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 383
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 384
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper$1$1;->this$1:Lcom/android/server/notification/SnoozeHelper$1;

    iget-object v1, v1, Lcom/android/server/notification/SnoozeHelper$1;->this$0:Lcom/android/server/notification/SnoozeHelper;

    iget-object v2, p0, Lcom/android/server/notification/SnoozeHelper$1$1;->val$intent:Landroid/content/Intent;

    const-string/jumbo v3, "key"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/notification/SnoozeHelper$1$1;->val$intent:Landroid/content/Intent;

    const-string/jumbo v4, "userId"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/notification/SnoozeHelper;->repost(Ljava/lang/String;I)V

    .line 386
    monitor-exit v0

    .line 387
    return-void

    .line 386
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method
