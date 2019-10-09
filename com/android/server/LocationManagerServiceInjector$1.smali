.class Lcom/android/server/LocationManagerServiceInjector$1;
.super Landroid/location/ILocationPolicyListener$Stub;
.source "LocationManagerServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 329
    invoke-direct {p0}, Landroid/location/ILocationPolicyListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRestrictBackgroundChanged(Z)V
    .registers 5
    .param p1, "restrictBackground"    # Z

    .line 343
    # getter for: Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRestrictBackgroundChanged(restrictBackground="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    # getter for: Lcom/android/server/LocationManagerServiceInjector;->sLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 345
    :try_start_23
    # setter for: Lcom/android/server/LocationManagerServiceInjector;->sRestrictBackgroundAll:Z
    invoke-static {p1}, Lcom/android/server/LocationManagerServiceInjector;->access$402(Z)Z

    .line 346
    monitor-exit v0

    .line 347
    return-void

    .line 346
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public onUidRulesChanged(II)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "uidRules"    # I

    .line 332
    # getter for: Lcom/android/server/LocationManagerServiceInjector;->sLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 333
    :try_start_5
    # getter for: Lcom/android/server/LocationManagerServiceInjector;->sUidRules:Landroid/util/SparseIntArray;
    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->access$100()Landroid/util/SparseIntArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 334
    .local v1, "oldRules":I
    if-ne v1, p2, :cond_12

    monitor-exit v0

    return-void

    .line 336
    :cond_12
    # getter for: Lcom/android/server/LocationManagerServiceInjector;->sUidRules:Landroid/util/SparseIntArray;
    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->access$100()Landroid/util/SparseIntArray;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 337
    .end local v1    # "oldRules":I
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1e

    .line 338
    # invokes: Lcom/android/server/LocationManagerServiceInjector;->checkCurrentLocationRequest(II)V
    invoke-static {p1, p2}, Lcom/android/server/LocationManagerServiceInjector;->access$200(II)V

    .line 339
    return-void

    .line 337
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1
.end method
