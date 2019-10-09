.class Lcom/android/server/location/MetokWatcher$2;
.super Lcom/android/internal/content/PackageMonitor;
.source "MetokWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/MetokWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/MetokWatcher;


# direct methods
.method constructor <init>(Lcom/android/server/location/MetokWatcher;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/location/MetokWatcher;

    .line 216
    iput-object p1, p0, Lcom/android/server/location/MetokWatcher$2;->this$0:Lcom/android/server/location/MetokWatcher;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 230
    iget-object v0, p0, Lcom/android/server/location/MetokWatcher$2;->this$0:Lcom/android/server/location/MetokWatcher;

    # getter for: Lcom/android/server/location/MetokWatcher;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/MetokWatcher;->access$000(Lcom/android/server/location/MetokWatcher;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 231
    :try_start_7
    iget-object v1, p0, Lcom/android/server/location/MetokWatcher$2;->this$0:Lcom/android/server/location/MetokWatcher;

    # getter for: Lcom/android/server/location/MetokWatcher;->mBoundPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/location/MetokWatcher;->access$100(Lcom/android/server/location/MetokWatcher;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 232
    .local v1, "forceRebind":Z
    iget-object v2, p0, Lcom/android/server/location/MetokWatcher$2;->this$0:Lcom/android/server/location/MetokWatcher;

    const/4 v3, 0x0

    # invokes: Lcom/android/server/location/MetokWatcher;->bindBestPackageLocked(Ljava/lang/String;Z)Z
    invoke-static {v2, v3, v1}, Lcom/android/server/location/MetokWatcher;->access$200(Lcom/android/server/location/MetokWatcher;Ljava/lang/String;Z)Z

    .line 233
    .end local v1    # "forceRebind":Z
    monitor-exit v0

    .line 234
    return-void

    .line 233
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

    .line 246
    iget-object v0, p0, Lcom/android/server/location/MetokWatcher$2;->this$0:Lcom/android/server/location/MetokWatcher;

    # getter for: Lcom/android/server/location/MetokWatcher;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/MetokWatcher;->access$000(Lcom/android/server/location/MetokWatcher;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 247
    :try_start_7
    iget-object v1, p0, Lcom/android/server/location/MetokWatcher$2;->this$0:Lcom/android/server/location/MetokWatcher;

    # getter for: Lcom/android/server/location/MetokWatcher;->mBoundPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/location/MetokWatcher;->access$100(Lcom/android/server/location/MetokWatcher;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 248
    .local v1, "forceRebind":Z
    iget-object v2, p0, Lcom/android/server/location/MetokWatcher$2;->this$0:Lcom/android/server/location/MetokWatcher;

    const/4 v3, 0x0

    # invokes: Lcom/android/server/location/MetokWatcher;->bindBestPackageLocked(Ljava/lang/String;Z)Z
    invoke-static {v2, v3, v1}, Lcom/android/server/location/MetokWatcher;->access$200(Lcom/android/server/location/MetokWatcher;Ljava/lang/String;Z)Z

    .line 249
    .end local v1    # "forceRebind":Z
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_1d

    .line 250
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/content/PackageMonitor;->onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 249
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

    .line 238
    iget-object v0, p0, Lcom/android/server/location/MetokWatcher$2;->this$0:Lcom/android/server/location/MetokWatcher;

    # getter for: Lcom/android/server/location/MetokWatcher;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/MetokWatcher;->access$000(Lcom/android/server/location/MetokWatcher;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 239
    :try_start_7
    iget-object v1, p0, Lcom/android/server/location/MetokWatcher$2;->this$0:Lcom/android/server/location/MetokWatcher;

    # getter for: Lcom/android/server/location/MetokWatcher;->mBoundPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/location/MetokWatcher;->access$100(Lcom/android/server/location/MetokWatcher;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 240
    .local v1, "forceRebind":Z
    iget-object v2, p0, Lcom/android/server/location/MetokWatcher$2;->this$0:Lcom/android/server/location/MetokWatcher;

    const/4 v3, 0x0

    # invokes: Lcom/android/server/location/MetokWatcher;->bindBestPackageLocked(Ljava/lang/String;Z)Z
    invoke-static {v2, v3, v1}, Lcom/android/server/location/MetokWatcher;->access$200(Lcom/android/server/location/MetokWatcher;Ljava/lang/String;Z)Z

    .line 241
    .end local v1    # "forceRebind":Z
    monitor-exit v0

    .line 242
    return-void

    .line 241
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

    .line 222
    iget-object v0, p0, Lcom/android/server/location/MetokWatcher$2;->this$0:Lcom/android/server/location/MetokWatcher;

    # getter for: Lcom/android/server/location/MetokWatcher;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/MetokWatcher;->access$000(Lcom/android/server/location/MetokWatcher;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 223
    :try_start_7
    iget-object v1, p0, Lcom/android/server/location/MetokWatcher$2;->this$0:Lcom/android/server/location/MetokWatcher;

    # getter for: Lcom/android/server/location/MetokWatcher;->mBoundPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/location/MetokWatcher;->access$100(Lcom/android/server/location/MetokWatcher;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 224
    .local v1, "forceRebind":Z
    iget-object v2, p0, Lcom/android/server/location/MetokWatcher$2;->this$0:Lcom/android/server/location/MetokWatcher;

    const/4 v3, 0x0

    # invokes: Lcom/android/server/location/MetokWatcher;->bindBestPackageLocked(Ljava/lang/String;Z)Z
    invoke-static {v2, v3, v1}, Lcom/android/server/location/MetokWatcher;->access$200(Lcom/android/server/location/MetokWatcher;Ljava/lang/String;Z)Z

    .line 225
    .end local v1    # "forceRebind":Z
    monitor-exit v0

    .line 226
    return-void

    .line 225
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_19

    throw v1
.end method
