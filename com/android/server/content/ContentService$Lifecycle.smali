.class public Lcom/android/server/content/ContentService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "ContentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/ContentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# instance fields
.field private mService:Lcom/android/server/content/ContentService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 90
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 91
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3
    .param p1, "phase"    # I

    .line 103
    iget-object v0, p0, Lcom/android/server/content/ContentService$Lifecycle;->mService:Lcom/android/server/content/ContentService;

    invoke-virtual {v0, p1}, Lcom/android/server/content/ContentService;->onBootPhase(I)V

    .line 104
    return-void
.end method

.method public onCleanupUser(I)V
    .registers 4
    .param p1, "userHandle"    # I

    .line 124
    iget-object v0, p0, Lcom/android/server/content/ContentService$Lifecycle;->mService:Lcom/android/server/content/ContentService;

    # getter for: Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/content/ContentService;->access$000(Lcom/android/server/content/ContentService;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 125
    :try_start_7
    iget-object v1, p0, Lcom/android/server/content/ContentService$Lifecycle;->mService:Lcom/android/server/content/ContentService;

    # getter for: Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/content/ContentService;->access$000(Lcom/android/server/content/ContentService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 126
    monitor-exit v0

    .line 127
    return-void

    .line 126
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public onStart()V
    .registers 4

    .line 96
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    move v0, v1

    .line 97
    .local v0, "factoryTest":Z
    new-instance v1, Lcom/android/server/content/ContentService;

    invoke-virtual {p0}, Lcom/android/server/content/ContentService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/server/content/ContentService;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/android/server/content/ContentService$Lifecycle;->mService:Lcom/android/server/content/ContentService;

    .line 98
    const-string v1, "content"

    iget-object v2, p0, Lcom/android/server/content/ContentService$Lifecycle;->mService:Lcom/android/server/content/ContentService;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/content/ContentService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 99
    return-void
.end method

.method public onStartUser(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .line 109
    iget-object v0, p0, Lcom/android/server/content/ContentService$Lifecycle;->mService:Lcom/android/server/content/ContentService;

    invoke-virtual {v0, p1}, Lcom/android/server/content/ContentService;->onStartUser(I)V

    .line 110
    return-void
.end method

.method public onStopUser(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .line 119
    iget-object v0, p0, Lcom/android/server/content/ContentService$Lifecycle;->mService:Lcom/android/server/content/ContentService;

    invoke-virtual {v0, p1}, Lcom/android/server/content/ContentService;->onStopUser(I)V

    .line 120
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .line 114
    iget-object v0, p0, Lcom/android/server/content/ContentService$Lifecycle;->mService:Lcom/android/server/content/ContentService;

    invoke-virtual {v0, p1}, Lcom/android/server/content/ContentService;->onUnlockUser(I)V

    .line 115
    return-void
.end method
