.class Lcom/android/server/content/SyncManager$13;
.super Landroid/database/ContentObserver;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/content/SyncManager;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/SyncManager;

.field final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/content/SyncManager;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 726
    iput-object p1, p0, Lcom/android/server/content/SyncManager$13;->this$0:Lcom/android/server/content/SyncManager;

    iput-object p3, p0, Lcom/android/server/content/SyncManager$13;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .param p1, "selfChange"    # Z

    .line 728
    iget-object v0, p0, Lcom/android/server/content/SyncManager$13;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v1, p0, Lcom/android/server/content/SyncManager$13;->this$0:Lcom/android/server/content/SyncManager;

    # invokes: Lcom/android/server/content/SyncManager;->isDeviceProvisioned()Z
    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$1700(Lcom/android/server/content/SyncManager;)Z

    move-result v1

    # |= operator for: Lcom/android/server/content/SyncManager;->mProvisioned:Z
    invoke-static {v0, v1}, Lcom/android/server/content/SyncManager;->access$1676(Lcom/android/server/content/SyncManager;I)Z

    .line 729
    iget-object v0, p0, Lcom/android/server/content/SyncManager$13;->this$0:Lcom/android/server/content/SyncManager;

    # getter for: Lcom/android/server/content/SyncManager;->mProvisioned:Z
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$1600(Lcom/android/server/content/SyncManager;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 730
    iget-object v0, p0, Lcom/android/server/content/SyncManager$13;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v0}, Lcom/android/server/content/SyncManager$SyncHandler;->onDeviceProvisioned()V

    .line 731
    iget-object v0, p0, Lcom/android/server/content/SyncManager$13;->val$resolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 733
    :cond_1f
    return-void
.end method
