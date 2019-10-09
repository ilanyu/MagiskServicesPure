.class Lcom/android/server/content/SyncManager$SyncHandler$1;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/content/SyncManager$SyncHandler;->checkIfDeviceReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/content/SyncManager$SyncHandler;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager$SyncHandler;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/content/SyncManager$SyncHandler;

    .line 2966
    iput-object p1, p0, Lcom/android/server/content/SyncManager$SyncHandler$1;->this$1:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 2972
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler$1;->this$1:Lcom/android/server/content/SyncManager$SyncHandler;

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-virtual {v0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    .line 2973
    .local v0, "allPendingSyncs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    if-nez v0, :cond_b

    return-void

    .line 2974
    :cond_b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncOperation;

    .line 2975
    .local v2, "sync":Lcom/android/server/content/SyncOperation;
    if-nez v2, :cond_1e

    .end local v2    # "sync":Lcom/android/server/content/SyncOperation;
    goto :goto_f

    .line 2976
    .restart local v2    # "sync":Lcom/android/server/content/SyncOperation;
    :cond_1e
    iget-boolean v3, v2, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v3, :cond_23

    .end local v2    # "sync":Lcom/android/server/content/SyncOperation;
    goto :goto_f

    .line 2977
    .restart local v2    # "sync":Lcom/android/server/content/SyncOperation;
    :cond_23
    iget-boolean v3, v2, Lcom/android/server/content/SyncOperation;->miuiInitPeriodicFixed:Z

    if-eqz v3, :cond_28

    .line 2978
    goto :goto_f

    .line 2980
    :cond_28
    iget-object v3, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    if-eqz v3, :cond_f

    iget-object v3, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    if-eqz v3, :cond_f

    const-string v3, "com.xiaomi"

    iget-object v4, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 2982
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    .line 2983
    goto :goto_f

    .line 2985
    :cond_41
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler$1;->this$1:Lcom/android/server/content/SyncManager$SyncHandler;

    iget-object v3, v3, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-virtual {v3}, Lcom/android/server/content/SyncManager;->getJobScheduler()Landroid/app/job/JobScheduler;

    move-result-object v3

    .line 2986
    .local v3, "j":Landroid/app/job/JobScheduler;
    if-eqz v3, :cond_50

    iget v4, v2, Lcom/android/server/content/SyncOperation;->jobId:I

    invoke-virtual {v3, v4}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 2987
    .end local v2    # "sync":Lcom/android/server/content/SyncOperation;
    .end local v3    # "j":Landroid/app/job/JobScheduler;
    :cond_50
    goto :goto_f

    .line 2988
    :cond_51
    return-void
.end method
