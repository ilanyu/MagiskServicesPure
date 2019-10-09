.class Lcom/android/server/AppOpsService$1;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppOpsService;


# direct methods
.method constructor <init>(Lcom/android/server/AppOpsService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/AppOpsService;

    .line 238
    iput-object p1, p0, Lcom/android/server/AppOpsService$1;->this$0:Lcom/android/server/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 240
    iget-object v0, p0, Lcom/android/server/AppOpsService$1;->this$0:Lcom/android/server/AppOpsService;

    monitor-enter v0

    .line 241
    :try_start_3
    iget-object v1, p0, Lcom/android/server/AppOpsService$1;->this$0:Lcom/android/server/AppOpsService;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    .line 242
    iget-object v1, p0, Lcom/android/server/AppOpsService$1;->this$0:Lcom/android/server/AppOpsService;

    iput-boolean v2, v1, Lcom/android/server/AppOpsService;->mFastWriteScheduled:Z

    .line 243
    new-instance v1, Lcom/android/server/AppOpsService$1$1;

    invoke-direct {v1, p0}, Lcom/android/server/AppOpsService$1$1;-><init>(Lcom/android/server/AppOpsService$1;)V

    .line 249
    .local v1, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 250
    .end local v1    # "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    monitor-exit v0

    .line 251
    return-void

    .line 250
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method
