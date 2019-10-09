.class Lcom/android/server/content/SyncManager$2;
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

    .line 329
    iput-object p1, p0, Lcom/android/server/content/SyncManager$2;->this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 332
    iget-object v0, p0, Lcom/android/server/content/SyncManager$2;->this$0:Lcom/android/server/content/SyncManager;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/content/SyncManager;->mBootCompleted:Z
    invoke-static {v0, v1}, Lcom/android/server/content/SyncManager;->access$202(Lcom/android/server/content/SyncManager;Z)Z

    .line 334
    iget-object v0, p0, Lcom/android/server/content/SyncManager$2;->this$0:Lcom/android/server/content/SyncManager;

    # invokes: Lcom/android/server/content/SyncManager;->verifyJobScheduler()V
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$300(Lcom/android/server/content/SyncManager;)V

    .line 335
    iget-object v0, p0, Lcom/android/server/content/SyncManager$2;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v0}, Lcom/android/server/content/SyncManager$SyncHandler;->onBootCompleted()V

    .line 336
    return-void
.end method
