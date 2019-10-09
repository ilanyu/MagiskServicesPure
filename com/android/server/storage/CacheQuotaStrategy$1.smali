.class Lcom/android/server/storage/CacheQuotaStrategy$1;
.super Ljava/lang/Object;
.source "CacheQuotaStrategy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/storage/CacheQuotaStrategy;->createServiceConnection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/storage/CacheQuotaStrategy;


# direct methods
.method constructor <init>(Lcom/android/server/storage/CacheQuotaStrategy;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/storage/CacheQuotaStrategy;

    .line 128
    iput-object p1, p0, Lcom/android/server/storage/CacheQuotaStrategy$1;->this$0:Lcom/android/server/storage/CacheQuotaStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 132
    new-instance v0, Lcom/android/server/storage/CacheQuotaStrategy$1$1;

    invoke-direct {v0, p0, p2}, Lcom/android/server/storage/CacheQuotaStrategy$1$1;-><init>(Lcom/android/server/storage/CacheQuotaStrategy$1;Landroid/os/IBinder;)V

    .line 150
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 151
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 156
    iget-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy$1;->this$0:Lcom/android/server/storage/CacheQuotaStrategy;

    # getter for: Lcom/android/server/storage/CacheQuotaStrategy;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/storage/CacheQuotaStrategy;->access$000(Lcom/android/server/storage/CacheQuotaStrategy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 157
    :try_start_7
    iget-object v1, p0, Lcom/android/server/storage/CacheQuotaStrategy$1;->this$0:Lcom/android/server/storage/CacheQuotaStrategy;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/storage/CacheQuotaStrategy;->mRemoteService:Landroid/app/usage/ICacheQuotaService;
    invoke-static {v1, v2}, Lcom/android/server/storage/CacheQuotaStrategy;->access$102(Lcom/android/server/storage/CacheQuotaStrategy;Landroid/app/usage/ICacheQuotaService;)Landroid/app/usage/ICacheQuotaService;

    .line 158
    monitor-exit v0

    .line 159
    return-void

    .line 158
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method
