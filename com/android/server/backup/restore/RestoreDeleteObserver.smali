.class public Lcom/android/server/backup/restore/RestoreDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "RestoreDeleteObserver.java"


# instance fields
.field private final mDone:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mDone"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/RestoreDeleteObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/android/server/backup/restore/RestoreDeleteObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 65
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/restore/RestoreDeleteObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 66
    iget-object v1, p0, Lcom/android/server/backup/restore/RestoreDeleteObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 67
    monitor-exit v0

    .line 68
    return-void

    .line 67
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public reset()V
    .registers 4

    .line 43
    iget-object v0, p0, Lcom/android/server/backup/restore/RestoreDeleteObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 44
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/restore/RestoreDeleteObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 45
    monitor-exit v0

    .line 46
    return-void

    .line 45
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public waitForCompletion()V
    .registers 3

    .line 52
    iget-object v0, p0, Lcom/android/server/backup/restore/RestoreDeleteObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 53
    :goto_3
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/restore/RestoreDeleteObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_15

    if-nez v1, :cond_13

    .line 55
    :try_start_b
    iget-object v1, p0, Lcom/android/server/backup/restore/RestoreDeleteObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_10} :catch_11
    .catchall {:try_start_b .. :try_end_10} :catchall_15

    goto :goto_12

    .line 56
    :catch_11
    move-exception v1

    .line 57
    :goto_12
    goto :goto_3

    .line 59
    :cond_13
    :try_start_13
    monitor-exit v0

    .line 60
    return-void

    .line 59
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_15

    throw v1
.end method
