.class Lcom/android/server/content/SyncManager$4;
.super Landroid/content/BroadcastReceiver;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/content/SyncManager;

    .line 394
    iput-object p1, p0, Lcom/android/server/content/SyncManager$4;->this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 397
    iget-object v0, p0, Lcom/android/server/content/SyncManager$4;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$500(Lcom/android/server/content/SyncManager;)Z

    move-result v0

    .line 401
    .local v0, "wasConnected":Z
    iget-object v1, p0, Lcom/android/server/content/SyncManager$4;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v2, p0, Lcom/android/server/content/SyncManager$4;->this$0:Lcom/android/server/content/SyncManager;

    # invokes: Lcom/android/server/content/SyncManager;->readDataConnectionState()Z
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$600(Lcom/android/server/content/SyncManager;)Z

    move-result v2

    # setter for: Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z
    invoke-static {v1, v2}, Lcom/android/server/content/SyncManager;->access$502(Lcom/android/server/content/SyncManager;Z)Z

    .line 402
    iget-object v1, p0, Lcom/android/server/content/SyncManager$4;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z
    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$500(Lcom/android/server/content/SyncManager;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 403
    if-nez v0, :cond_33

    .line 404
    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 405
    const-string v1, "SyncManager"

    const-string v2, "Reconnection detected: clearing all backoffs"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_2b
    iget-object v1, p0, Lcom/android/server/content/SyncManager$4;->this$0:Lcom/android/server/content/SyncManager;

    const-string/jumbo v2, "network reconnect"

    # invokes: Lcom/android/server/content/SyncManager;->clearAllBackoffs(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;Ljava/lang/String;)V

    .line 411
    :cond_33
    return-void
.end method
