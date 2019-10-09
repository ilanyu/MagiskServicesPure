.class public Lcom/android/server/backup/internal/RunInitializeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RunInitializeReceiver.java"


# instance fields
.field private final mBackupManagerService:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/BackupManagerService;)V
    .registers 2
    .param p1, "backupManagerService"    # Lcom/android/server/backup/BackupManagerService;

    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/server/backup/internal/RunInitializeReceiver;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 37
    return-void
.end method

.method static synthetic lambda$onReceive$0(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    .registers 2
    .param p0, "wakelock"    # Landroid/os/PowerManager$WakeLock;
    .param p1, "caller"    # Ljava/lang/String;

    .line 55
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 40
    const-string v0, "android.app.backup.intent.INIT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 41
    iget-object v0, p0, Lcom/android/server/backup/internal/RunInitializeReceiver;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 42
    :try_start_13
    iget-object v1, p0, Lcom/android/server/backup/internal/RunInitializeReceiver;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->getPendingInits()Landroid/util/ArraySet;

    move-result-object v1

    .line 44
    .local v1, "pendingInits":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Running a device init; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pending"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_6f

    .line 48
    nop

    .line 49
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 51
    .local v2, "transports":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/backup/internal/RunInitializeReceiver;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService;->clearPendingInits()V

    .line 53
    iget-object v3, p0, Lcom/android/server/backup/internal/RunInitializeReceiver;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    .line 54
    .local v3, "wakelock":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 55
    new-instance v4, Lcom/android/server/backup/internal/-$$Lambda$RunInitializeReceiver$6NFkS59RniyJ8xe_gfe6oyt63HQ;

    invoke-direct {v4, v3}, Lcom/android/server/backup/internal/-$$Lambda$RunInitializeReceiver$6NFkS59RniyJ8xe_gfe6oyt63HQ;-><init>(Landroid/os/PowerManager$WakeLock;)V

    .line 57
    .local v4, "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    new-instance v5, Lcom/android/server/backup/internal/PerformInitializeTask;

    iget-object v6, p0, Lcom/android/server/backup/internal/RunInitializeReceiver;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v2, v7, v4}, Lcom/android/server/backup/internal/PerformInitializeTask;-><init>(Lcom/android/server/backup/BackupManagerService;[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Lcom/android/server/backup/internal/OnTaskFinishedListener;)V

    .line 60
    .local v5, "task":Ljava/lang/Runnable;
    iget-object v6, p0, Lcom/android/server/backup/internal/RunInitializeReceiver;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v6}, Lcom/android/server/backup/BackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 62
    .end local v1    # "pendingInits":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v2    # "transports":[Ljava/lang/String;
    .end local v3    # "wakelock":Landroid/os/PowerManager$WakeLock;
    .end local v4    # "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    .end local v5    # "task":Ljava/lang/Runnable;
    :cond_6f
    monitor-exit v0

    goto :goto_74

    :catchall_71
    move-exception v1

    monitor-exit v0
    :try_end_73
    .catchall {:try_start_13 .. :try_end_73} :catchall_71

    throw v1

    .line 64
    :cond_74
    :goto_74
    return-void
.end method
