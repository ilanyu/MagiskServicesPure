.class Lcom/android/server/content/MiSyncPolicyManager$1;
.super Landroid/database/ContentObserver;
.source "MiSyncPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/content/MiSyncPolicyManager;->registerSyncSettingsObserver(Landroid/content/Context;Lcom/android/server/content/SyncManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$syncManager:Lcom/android/server/content/SyncManager;


# direct methods
.method constructor <init>(Landroid/os/Handler;Lcom/android/server/content/SyncManager;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Handler;

    .line 25
    iput-object p2, p0, Lcom/android/server/content/MiSyncPolicyManager$1;->val$syncManager:Lcom/android/server/content/SyncManager;

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .param p1, "selfChange"    # Z

    .line 28
    iget-object v0, p0, Lcom/android/server/content/MiSyncPolicyManager$1;->val$syncManager:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/MiSyncPolicyManager;->handleMasterWifiOnlyChanged(Lcom/android/server/content/SyncManager;)V

    .line 29
    return-void
.end method
