.class Lcom/android/server/ServiceWatcher$2;
.super Lcom/android/internal/content/PackageMonitor;
.source "ServiceWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ServiceWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ServiceWatcher;


# direct methods
.method constructor <init>(Lcom/android/server/ServiceWatcher;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ServiceWatcher;

    .line 329
    iput-object p1, p0, Lcom/android/server/ServiceWatcher$2;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 343
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$2;->this$0:Lcom/android/server/ServiceWatcher;

    # getter for: Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->access$000(Lcom/android/server/ServiceWatcher;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 344
    :try_start_7
    iget-object v1, p0, Lcom/android/server/ServiceWatcher$2;->this$0:Lcom/android/server/ServiceWatcher;

    # getter for: Lcom/android/server/ServiceWatcher;->mBoundPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/ServiceWatcher;->access$100(Lcom/android/server/ServiceWatcher;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 345
    .local v1, "forceRebind":Z
    iget-object v2, p0, Lcom/android/server/ServiceWatcher$2;->this$0:Lcom/android/server/ServiceWatcher;

    const/4 v3, 0x0

    # invokes: Lcom/android/server/ServiceWatcher;->bindBestPackageLocked(Ljava/lang/String;Z)Z
    invoke-static {v2, v3, v1}, Lcom/android/server/ServiceWatcher;->access$200(Lcom/android/server/ServiceWatcher;Ljava/lang/String;Z)Z

    .line 346
    .end local v1    # "forceRebind":Z
    monitor-exit v0

    .line 347
    return-void

    .line 346
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "components"    # [Ljava/lang/String;

    .line 359
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$2;->this$0:Lcom/android/server/ServiceWatcher;

    # getter for: Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->access$000(Lcom/android/server/ServiceWatcher;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 360
    :try_start_7
    iget-object v1, p0, Lcom/android/server/ServiceWatcher$2;->this$0:Lcom/android/server/ServiceWatcher;

    # getter for: Lcom/android/server/ServiceWatcher;->mBoundPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/ServiceWatcher;->access$100(Lcom/android/server/ServiceWatcher;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 361
    .local v1, "forceRebind":Z
    iget-object v2, p0, Lcom/android/server/ServiceWatcher$2;->this$0:Lcom/android/server/ServiceWatcher;

    const/4 v3, 0x0

    # invokes: Lcom/android/server/ServiceWatcher;->bindBestPackageLocked(Ljava/lang/String;Z)Z
    invoke-static {v2, v3, v1}, Lcom/android/server/ServiceWatcher;->access$200(Lcom/android/server/ServiceWatcher;Ljava/lang/String;Z)Z

    .line 362
    .end local v1    # "forceRebind":Z
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_1d

    .line 363
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/content/PackageMonitor;->onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 362
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 351
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$2;->this$0:Lcom/android/server/ServiceWatcher;

    # getter for: Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->access$000(Lcom/android/server/ServiceWatcher;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 352
    :try_start_7
    iget-object v1, p0, Lcom/android/server/ServiceWatcher$2;->this$0:Lcom/android/server/ServiceWatcher;

    # getter for: Lcom/android/server/ServiceWatcher;->mBoundPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/ServiceWatcher;->access$100(Lcom/android/server/ServiceWatcher;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 353
    .local v1, "forceRebind":Z
    iget-object v2, p0, Lcom/android/server/ServiceWatcher$2;->this$0:Lcom/android/server/ServiceWatcher;

    const/4 v3, 0x0

    # invokes: Lcom/android/server/ServiceWatcher;->bindBestPackageLocked(Ljava/lang/String;Z)Z
    invoke-static {v2, v3, v1}, Lcom/android/server/ServiceWatcher;->access$200(Lcom/android/server/ServiceWatcher;Ljava/lang/String;Z)Z

    .line 354
    .end local v1    # "forceRebind":Z
    monitor-exit v0

    .line 355
    return-void

    .line 354
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 335
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$2;->this$0:Lcom/android/server/ServiceWatcher;

    # getter for: Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->access$000(Lcom/android/server/ServiceWatcher;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 336
    :try_start_7
    iget-object v1, p0, Lcom/android/server/ServiceWatcher$2;->this$0:Lcom/android/server/ServiceWatcher;

    # getter for: Lcom/android/server/ServiceWatcher;->mBoundPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/ServiceWatcher;->access$100(Lcom/android/server/ServiceWatcher;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 337
    .local v1, "forceRebind":Z
    iget-object v2, p0, Lcom/android/server/ServiceWatcher$2;->this$0:Lcom/android/server/ServiceWatcher;

    const/4 v3, 0x0

    # invokes: Lcom/android/server/ServiceWatcher;->bindBestPackageLocked(Ljava/lang/String;Z)Z
    invoke-static {v2, v3, v1}, Lcom/android/server/ServiceWatcher;->access$200(Lcom/android/server/ServiceWatcher;Ljava/lang/String;Z)Z

    .line 338
    .end local v1    # "forceRebind":Z
    monitor-exit v0

    .line 339
    return-void

    .line 338
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_19

    throw v1
.end method
