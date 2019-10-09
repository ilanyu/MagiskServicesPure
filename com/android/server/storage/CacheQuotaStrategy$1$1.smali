.class Lcom/android/server/storage/CacheQuotaStrategy$1$1;
.super Ljava/lang/Object;
.source "CacheQuotaStrategy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/storage/CacheQuotaStrategy$1;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/storage/CacheQuotaStrategy$1;

.field final synthetic val$service:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/storage/CacheQuotaStrategy$1;Landroid/os/IBinder;)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/server/storage/CacheQuotaStrategy$1;

    .line 132
    iput-object p1, p0, Lcom/android/server/storage/CacheQuotaStrategy$1$1;->this$1:Lcom/android/server/storage/CacheQuotaStrategy$1;

    iput-object p2, p0, Lcom/android/server/storage/CacheQuotaStrategy$1$1;->val$service:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 135
    iget-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy$1$1;->this$1:Lcom/android/server/storage/CacheQuotaStrategy$1;

    iget-object v0, v0, Lcom/android/server/storage/CacheQuotaStrategy$1;->this$0:Lcom/android/server/storage/CacheQuotaStrategy;

    # getter for: Lcom/android/server/storage/CacheQuotaStrategy;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/storage/CacheQuotaStrategy;->access$000(Lcom/android/server/storage/CacheQuotaStrategy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 136
    :try_start_9
    iget-object v1, p0, Lcom/android/server/storage/CacheQuotaStrategy$1$1;->this$1:Lcom/android/server/storage/CacheQuotaStrategy$1;

    iget-object v1, v1, Lcom/android/server/storage/CacheQuotaStrategy$1;->this$0:Lcom/android/server/storage/CacheQuotaStrategy;

    iget-object v2, p0, Lcom/android/server/storage/CacheQuotaStrategy$1$1;->val$service:Landroid/os/IBinder;

    invoke-static {v2}, Landroid/app/usage/ICacheQuotaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/ICacheQuotaService;

    move-result-object v2

    # setter for: Lcom/android/server/storage/CacheQuotaStrategy;->mRemoteService:Landroid/app/usage/ICacheQuotaService;
    invoke-static {v1, v2}, Lcom/android/server/storage/CacheQuotaStrategy;->access$102(Lcom/android/server/storage/CacheQuotaStrategy;Landroid/app/usage/ICacheQuotaService;)Landroid/app/usage/ICacheQuotaService;

    .line 137
    iget-object v1, p0, Lcom/android/server/storage/CacheQuotaStrategy$1$1;->this$1:Lcom/android/server/storage/CacheQuotaStrategy$1;

    iget-object v1, v1, Lcom/android/server/storage/CacheQuotaStrategy$1;->this$0:Lcom/android/server/storage/CacheQuotaStrategy;

    # invokes: Lcom/android/server/storage/CacheQuotaStrategy;->getUnfulfilledRequests()Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/storage/CacheQuotaStrategy;->access$200(Lcom/android/server/storage/CacheQuotaStrategy;)Ljava/util/List;

    move-result-object v1

    .line 138
    .local v1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/CacheQuotaHint;>;"
    new-instance v2, Landroid/os/RemoteCallback;

    iget-object v3, p0, Lcom/android/server/storage/CacheQuotaStrategy$1$1;->this$1:Lcom/android/server/storage/CacheQuotaStrategy$1;

    iget-object v3, v3, Lcom/android/server/storage/CacheQuotaStrategy$1;->this$0:Lcom/android/server/storage/CacheQuotaStrategy;

    invoke-direct {v2, v3}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V
    :try_end_27
    .catchall {:try_start_9 .. :try_end_27} :catchall_3d

    .line 141
    .local v2, "remoteCallback":Landroid/os/RemoteCallback;
    :try_start_27
    iget-object v3, p0, Lcom/android/server/storage/CacheQuotaStrategy$1$1;->this$1:Lcom/android/server/storage/CacheQuotaStrategy$1;

    iget-object v3, v3, Lcom/android/server/storage/CacheQuotaStrategy$1;->this$0:Lcom/android/server/storage/CacheQuotaStrategy;

    # getter for: Lcom/android/server/storage/CacheQuotaStrategy;->mRemoteService:Landroid/app/usage/ICacheQuotaService;
    invoke-static {v3}, Lcom/android/server/storage/CacheQuotaStrategy;->access$100(Lcom/android/server/storage/CacheQuotaStrategy;)Landroid/app/usage/ICacheQuotaService;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Landroid/app/usage/ICacheQuotaService;->computeCacheQuotaHints(Landroid/os/RemoteCallback;Ljava/util/List;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_32} :catch_33
    .catchall {:try_start_27 .. :try_end_32} :catchall_3d

    .line 146
    goto :goto_3b

    .line 142
    :catch_33
    move-exception v3

    .line 143
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_34
    const-string v4, "CacheQuotaStrategy"

    const-string v5, "Remote exception occurred while trying to get cache quota"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    .end local v1    # "requests":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/CacheQuotaHint;>;"
    .end local v2    # "remoteCallback":Landroid/os/RemoteCallback;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :goto_3b
    monitor-exit v0

    .line 148
    return-void

    .line 147
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_34 .. :try_end_3f} :catchall_3d

    throw v1
.end method
