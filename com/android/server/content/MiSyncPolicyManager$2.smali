.class Lcom/android/server/content/MiSyncPolicyManager$2;
.super Ljava/lang/Object;
.source "MiSyncPolicyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/content/MiSyncPolicyManager;->handleMasterWifiOnlyChanged(Lcom/android/server/content/SyncManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$syncManager:Lcom/android/server/content/SyncManager;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager;)V
    .registers 2

    .line 64
    iput-object p1, p0, Lcom/android/server/content/MiSyncPolicyManager$2;->val$syncManager:Lcom/android/server/content/SyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/android/server/content/MiSyncPolicyManager$2;->val$syncManager:Lcom/android/server/content/SyncManager;

    # invokes: Lcom/android/server/content/MiSyncPolicyManager;->rescheduleAllSyncsH(Lcom/android/server/content/SyncManager;)V
    invoke-static {v0}, Lcom/android/server/content/MiSyncPolicyManager;->access$000(Lcom/android/server/content/SyncManager;)V

    .line 68
    return-void
.end method
