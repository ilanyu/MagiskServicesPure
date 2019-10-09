.class public Lcom/android/server/backup/restore/ActiveRestoreSession;
.super Landroid/app/backup/IRestoreSession$Stub;
.source "ActiveRestoreSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RestoreSession"


# instance fields
.field private final mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

.field mEnded:Z

.field private final mPackageName:Ljava/lang/String;

.field public mRestoreSets:[Landroid/app/backup/RestoreSet;

.field mTimedOut:Z

.field private final mTransportManager:Lcom/android/server/backup/TransportManager;

.field private final mTransportName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "backupManagerService"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "transportName"    # Ljava/lang/String;

    .line 65
    invoke-direct {p0}, Landroid/app/backup/IRestoreSession$Stub;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mEnded:Z

    .line 60
    iput-boolean v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTimedOut:Z

    .line 66
    iput-object p1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 67
    iput-object p2, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Lcom/android/server/backup/BackupManagerService;->getTransportManager()Lcom/android/server/backup/TransportManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 69
    iput-object p3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    .line 70
    return-void
.end method

.method static synthetic lambda$getAvailableRestoreSets$0(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportClient;Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    .registers 4
    .param p0, "transportManager"    # Lcom/android/server/backup/TransportManager;
    .param p1, "transportClient"    # Lcom/android/server/backup/transport/TransportClient;
    .param p2, "wakelock"    # Landroid/os/PowerManager$WakeLock;
    .param p3, "caller"    # Ljava/lang/String;

    .line 116
    invoke-virtual {p0, p1, p3}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 118
    return-void
.end method

.method static synthetic lambda$restoreAll$1(Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLcom/android/server/backup/transport/TransportClient;Lcom/android/server/backup/internal/OnTaskFinishedListener;)Lcom/android/server/backup/params/RestoreParams;
    .registers 12
    .param p0, "observer"    # Landroid/app/backup/IRestoreObserver;
    .param p1, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p2, "token"    # J
    .param p4, "transportClient"    # Lcom/android/server/backup/transport/TransportClient;
    .param p5, "listener"    # Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 174
    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/backup/params/RestoreParams;->createForRestoreAll(Lcom/android/server/backup/transport/TransportClient;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLcom/android/server/backup/internal/OnTaskFinishedListener;)Lcom/android/server/backup/params/RestoreParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$restorePackage$3(Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;Lcom/android/server/backup/transport/TransportClient;Lcom/android/server/backup/internal/OnTaskFinishedListener;)Lcom/android/server/backup/params/RestoreParams;
    .registers 14
    .param p0, "observer"    # Landroid/app/backup/IRestoreObserver;
    .param p1, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p2, "token"    # J
    .param p4, "app"    # Landroid/content/pm/PackageInfo;
    .param p5, "transportClient"    # Lcom/android/server/backup/transport/TransportClient;
    .param p6, "listener"    # Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 353
    move-object v0, p5

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/android/server/backup/params/RestoreParams;->createForSinglePackage(Lcom/android/server/backup/transport/TransportClient;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;Lcom/android/server/backup/internal/OnTaskFinishedListener;)Lcom/android/server/backup/params/RestoreParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$restoreSome$2(Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;J[Ljava/lang/String;Lcom/android/server/backup/transport/TransportClient;Lcom/android/server/backup/internal/OnTaskFinishedListener;)Lcom/android/server/backup/params/RestoreParams;
    .registers 16
    .param p0, "observer"    # Landroid/app/backup/IRestoreObserver;
    .param p1, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p2, "token"    # J
    .param p4, "packages"    # [Ljava/lang/String;
    .param p5, "transportClient"    # Lcom/android/server/backup/transport/TransportClient;
    .param p6, "listener"    # Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 261
    array-length v0, p4

    const/4 v1, 0x1

    if-le v0, v1, :cond_6

    move v6, v1

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    move v6, v0

    :goto_8
    move-object v0, p5

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/android/server/backup/params/RestoreParams;->createForRestoreSome(Lcom/android/server/backup/transport/TransportClient;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;J[Ljava/lang/String;ZLcom/android/server/backup/internal/OnTaskFinishedListener;)Lcom/android/server/backup/params/RestoreParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$sendRestoreToHandlerLocked$4(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportClient;Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    .registers 4
    .param p0, "transportManager"    # Lcom/android/server/backup/TransportManager;
    .param p1, "transportClient"    # Lcom/android/server/backup/transport/TransportClient;
    .param p2, "wakelock"    # Landroid/os/PowerManager$WakeLock;
    .param p3, "caller"    # Ljava/lang/String;

    .line 396
    invoke-virtual {p0, p1, p3}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    .line 397
    invoke-virtual {p2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 398
    return-void
.end method

.method private sendRestoreToHandlerLocked(Ljava/util/function/BiFunction;Ljava/lang/String;)I
    .registers 10
    .param p2, "callerLogString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "Lcom/android/server/backup/transport/TransportClient;",
            "Lcom/android/server/backup/internal/OnTaskFinishedListener;",
            "Lcom/android/server/backup/params/RestoreParams;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 376
    .local p1, "restoreParamsBuilder":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Lcom/android/server/backup/transport/TransportClient;Lcom/android/server/backup/internal/OnTaskFinishedListener;Lcom/android/server/backup/params/RestoreParams;>;"
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportManager:Lcom/android/server/backup/TransportManager;

    iget-object v1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    .line 377
    invoke-virtual {v0, v1, p2}, Lcom/android/server/backup/TransportManager;->getTransportClient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v0

    .line 378
    .local v0, "transportClient":Lcom/android/server/backup/transport/TransportClient;
    if-nez v0, :cond_29

    .line 379
    const-string v1, "RestoreSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transport "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " got unregistered"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const/4 v1, -0x1

    return v1

    .line 384
    :cond_29
    iget-object v1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v1

    .line 385
    .local v1, "backupHandler":Landroid/os/Handler;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 387
    iget-object v2, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 388
    .local v2, "wakelock":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 394
    iget-object v3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 395
    .local v3, "transportManager":Lcom/android/server/backup/TransportManager;
    new-instance v4, Lcom/android/server/backup/restore/-$$Lambda$ActiveRestoreSession$0QlkHke0fYNRb0nGuyNs6WmyPDM;

    .local v4, "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    invoke-direct {v4, v3, v0, v2}, Lcom/android/server/backup/restore/-$$Lambda$ActiveRestoreSession$0QlkHke0fYNRb0nGuyNs6WmyPDM;-><init>(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportClient;Landroid/os/PowerManager$WakeLock;)V

    .line 399
    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 400
    .local v5, "msg":Landroid/os/Message;
    invoke-interface {p1, v0, v4}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 401
    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 402
    const/4 v6, 0x0

    return v6
.end method


# virtual methods
.method public declared-synchronized endRestoreSession()V
    .registers 4

    monitor-enter p0

    .line 430
    :try_start_1
    const-string v0, "RestoreSession"

    const-string v1, "endRestoreSession"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-boolean v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTimedOut:Z

    if-eqz v0, :cond_15

    .line 434
    const-string v0, "RestoreSession"

    const-string v1, "Session already timed out"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_33

    .line 435
    monitor-exit p0

    return-void

    .line 438
    :cond_15
    :try_start_15
    iget-boolean v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mEnded:Z

    if-nez v0, :cond_2b

    .line 442
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;

    iget-object v2, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {v1, p0, v2, p0}, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;-><init>(Lcom/android/server/backup/restore/ActiveRestoreSession;Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/restore/ActiveRestoreSession;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_29
    .catchall {:try_start_15 .. :try_end_29} :catchall_33

    .line 444
    monitor-exit p0

    return-void

    .line 439
    :cond_2b
    :try_start_2b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Restore session already ended"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_33

    .line 429
    :catchall_33
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/backup/restore/ActiveRestoreSession;
    throw v0
.end method

.method public declared-synchronized getAvailableRestoreSets(Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;)I
    .registers 19
    .param p1, "observer"    # Landroid/app/backup/IRestoreObserver;
    .param p2, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;

    move-object/from16 v7, p0

    monitor-enter p0

    .line 79
    :try_start_3
    iget-object v0, v7, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.BACKUP"

    const-string v2, "getAvailableRestoreSets"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    if-eqz p1, :cond_a3

    .line 86
    iget-boolean v0, v7, Lcom/android/server/backup/restore/ActiveRestoreSession;->mEnded:Z

    if-nez v0, :cond_9b

    .line 90
    iget-boolean v0, v7, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTimedOut:Z

    const/4 v8, -0x1

    if-eqz v0, :cond_24

    .line 91
    const-string v0, "RestoreSession"

    const-string v1, "Session already timed out"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_ab

    .line 92
    monitor-exit p0

    return v8

    .line 95
    :cond_24
    :try_start_24
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_ab

    move-wide v9, v0

    .line 97
    .local v9, "oldId":J
    :try_start_29
    iget-object v0, v7, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportManager:Lcom/android/server/backup/TransportManager;

    iget-object v1, v7, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    const-string v2, "RestoreSession.getAvailableRestoreSets()"

    .line 98
    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/TransportManager;->getTransportClient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v0

    .line 100
    .local v0, "transportClient":Lcom/android/server/backup/transport/TransportClient;
    if-nez v0, :cond_42

    .line 101
    const-string v1, "RestoreSession"

    const-string v2, "Null transport client getting restore sets"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_3c} :catch_88
    .catchall {:try_start_29 .. :try_end_3c} :catchall_86

    .line 102
    nop

    .line 128
    :try_start_3d
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_ab

    .line 102
    monitor-exit p0

    return v8

    .line 108
    :cond_42
    :try_start_42
    iget-object v1, v7, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 110
    iget-object v1, v7, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    move-object v11, v1

    .line 111
    .local v11, "wakelock":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 114
    iget-object v1, v7, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportManager:Lcom/android/server/backup/TransportManager;

    move-object v12, v1

    .line 115
    .local v12, "transportManager":Lcom/android/server/backup/TransportManager;
    new-instance v6, Lcom/android/server/backup/restore/-$$Lambda$ActiveRestoreSession$0wzV_GqtA0thM1WxLthNBKD3Ygw;

    invoke-direct {v6, v12, v0, v11}, Lcom/android/server/backup/restore/-$$Lambda$ActiveRestoreSession$0wzV_GqtA0thM1WxLthNBKD3Ygw;-><init>(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportClient;Landroid/os/PowerManager$WakeLock;)V

    .line 119
    .local v6, "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    iget-object v1, v7, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v13

    const/4 v14, 0x6

    new-instance v5, Lcom/android/server/backup/params/RestoreGetSetsParams;

    move-object v1, v5

    move-object v2, v0

    move-object v3, v7

    move-object/from16 v4, p1

    move-object v8, v5

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/backup/params/RestoreGetSetsParams;-><init>(Lcom/android/server/backup/transport/TransportClient;Lcom/android/server/backup/restore/ActiveRestoreSession;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;)V

    invoke-virtual {v13, v14, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 122
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, v7, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_80} :catch_88
    .catchall {:try_start_42 .. :try_end_80} :catchall_86

    .line 123
    const/4 v2, 0x0

    .line 128
    :try_start_81
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_ab

    .line 123
    monitor-exit p0

    return v2

    .line 128
    .end local v0    # "transportClient":Lcom/android/server/backup/transport/TransportClient;
    .end local v1    # "msg":Landroid/os/Message;
    .end local v6    # "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    .end local v11    # "wakelock":Landroid/os/PowerManager$WakeLock;
    .end local v12    # "transportManager":Lcom/android/server/backup/TransportManager;
    :catchall_86
    move-exception v0

    goto :goto_97

    .line 124
    :catch_88
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    :try_start_89
    const-string v1, "RestoreSession"

    const-string v2, "Error in getAvailableRestoreSets"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_90
    .catchall {:try_start_89 .. :try_end_90} :catchall_86

    .line 126
    nop

    .line 128
    :try_start_91
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_94
    .catchall {:try_start_91 .. :try_end_94} :catchall_ab

    .line 126
    monitor-exit p0

    const/4 v1, -0x1

    return v1

    .line 128
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_97
    :try_start_97
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 87
    .end local v9    # "oldId":J
    :cond_9b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Restore session already ended"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_a3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Observer must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_ab
    .catchall {:try_start_97 .. :try_end_ab} :catchall_ab

    .line 78
    .end local p1    # "observer":Landroid/app/backup/IRestoreObserver;
    .end local p2    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :catchall_ab
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/backup/restore/ActiveRestoreSession;
    throw v0
.end method

.method public markTimedOut()V
    .registers 2

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTimedOut:Z

    .line 74
    return-void
.end method

.method public declared-synchronized restoreAll(JLandroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;)I
    .registers 11
    .param p1, "token"    # J
    .param p3, "observer"    # Landroid/app/backup/IRestoreObserver;
    .param p4, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;

    monitor-enter p0

    .line 134
    :try_start_1
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "performRestore"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v0, "RestoreSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restoreAll token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " observer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-boolean v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mEnded:Z

    if-nez v0, :cond_e0

    .line 147
    iget-boolean v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTimedOut:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_44

    .line 148
    const-string v0, "RestoreSession"

    const-string v2, "Session already timed out"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_e8

    .line 149
    monitor-exit p0

    return v1

    .line 152
    :cond_44
    :try_start_44
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    if-nez v0, :cond_51

    .line 153
    const-string v0, "RestoreSession"

    const-string v2, "Ignoring restoreAll() with no restore set"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_44 .. :try_end_4f} :catchall_e8

    .line 154
    monitor-exit p0

    return v1

    .line 157
    :cond_51
    :try_start_51
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_5e

    .line 158
    const-string v0, "RestoreSession"

    const-string v2, "Ignoring restoreAll() on single-package session"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catchall {:try_start_51 .. :try_end_5c} :catchall_e8

    .line 159
    monitor-exit p0

    return v1

    .line 162
    :cond_5e
    :try_start_5e
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportManager:Lcom/android/server/backup/TransportManager;

    iget-object v2, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/server/backup/TransportManager;->isTransportRegistered(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_87

    .line 163
    const-string v0, "RestoreSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transport "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not registered"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85
    .catchall {:try_start_5e .. :try_end_85} :catchall_e8

    .line 164
    monitor-exit p0

    return v1

    .line 167
    :cond_87
    :try_start_87
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_8e
    .catchall {:try_start_87 .. :try_end_8e} :catchall_e8

    .line 168
    const/4 v2, 0x0

    .line 168
    .local v2, "i":I
    :goto_8f
    :try_start_8f
    iget-object v3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    array-length v3, v3

    if-ge v2, v3, :cond_bb

    .line 169
    iget-object v3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    aget-object v3, v3, v2

    iget-wide v3, v3, Landroid/app/backup/RestoreSet;->token:J

    cmp-long v3, p1, v3

    if-nez v3, :cond_b8

    .line 170
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_a2
    .catchall {:try_start_8f .. :try_end_a2} :catchall_dd

    .line 172
    .local v3, "oldId":J
    :try_start_a2
    new-instance v1, Lcom/android/server/backup/restore/-$$Lambda$ActiveRestoreSession$iPMdVI7x_J8xmayWzH6Euhd5674;

    invoke-direct {v1, p3, p4, p1, p2}, Lcom/android/server/backup/restore/-$$Lambda$ActiveRestoreSession$iPMdVI7x_J8xmayWzH6Euhd5674;-><init>(Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;J)V

    const-string v5, "RestoreSession.restoreAll()"

    invoke-direct {p0, v1, v5}, Lcom/android/server/backup/restore/ActiveRestoreSession;->sendRestoreToHandlerLocked(Ljava/util/function/BiFunction;Ljava/lang/String;)I

    move-result v1
    :try_end_ad
    .catchall {:try_start_a2 .. :try_end_ad} :catchall_b3

    .line 182
    :try_start_ad
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_b1
    .catchall {:try_start_ad .. :try_end_b1} :catchall_dd

    .line 172
    monitor-exit p0

    return v1

    .line 182
    :catchall_b3
    move-exception v1

    :try_start_b4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 168
    .end local v3    # "oldId":J
    :cond_b8
    add-int/lit8 v2, v2, 0x1

    goto :goto_8f

    .line 186
    .end local v2    # "i":I
    :cond_bb
    monitor-exit v0
    :try_end_bc
    .catchall {:try_start_b4 .. :try_end_bc} :catchall_dd

    .line 188
    :try_start_bc
    const-string v0, "RestoreSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restore token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_db
    .catchall {:try_start_bc .. :try_end_db} :catchall_e8

    .line 189
    monitor-exit p0

    return v1

    .line 186
    :catchall_dd
    move-exception v1

    :try_start_de
    monitor-exit v0
    :try_end_df
    .catchall {:try_start_de .. :try_end_df} :catchall_dd

    :try_start_df
    throw v1

    .line 144
    :cond_e0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Restore session already ended"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e8
    .catchall {:try_start_df .. :try_end_e8} :catchall_e8

    .line 133
    .end local p1    # "token":J
    .end local p3    # "observer":Landroid/app/backup/IRestoreObserver;
    .end local p4    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :catchall_e8
    move-exception p1

    monitor-exit p0

    .line 133
    .end local p0    # "this":Lcom/android/server/backup/restore/ActiveRestoreSession;
    throw p1
.end method

.method public declared-synchronized restorePackage(Ljava/lang/String;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;)I
    .registers 22
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/app/backup/IRestoreObserver;
    .param p3, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    monitor-enter p0

    .line 284
    :try_start_5
    const-string v0, "RestoreSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restorePackage pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " obs="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "monitor="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-boolean v0, v1, Lcom/android/server/backup/restore/ActiveRestoreSession;->mEnded:Z

    if-nez v0, :cond_17f

    .line 292
    iget-boolean v0, v1, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTimedOut:Z

    const/4 v3, -0x1

    if-eqz v0, :cond_43

    .line 293
    const-string v0, "RestoreSession"

    const-string v5, "Session already timed out"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_5 .. :try_end_41} :catchall_187

    .line 294
    monitor-exit p0

    return v3

    .line 297
    :cond_43
    :try_start_43
    iget-object v0, v1, Lcom/android/server/backup/restore/ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_71

    .line 298
    iget-object v0, v1, Lcom/android/server/backup/restore/ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    .line 299
    const-string v0, "RestoreSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring attempt to restore pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " on session for package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/backup/restore/ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catchall {:try_start_43 .. :try_end_6f} :catchall_187

    .line 301
    monitor-exit p0

    return v3

    .line 307
    :cond_71
    :try_start_71
    iget-object v0, v1, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_7c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_71 .. :try_end_7c} :catch_166
    .catchall {:try_start_71 .. :try_end_7c} :catchall_187

    move-object v12, v0

    .line 311
    .local v12, "app":Landroid/content/pm/PackageInfo;
    nop

    .line 310
    nop

    .line 315
    :try_start_7f
    iget-object v0, v1, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "android.permission.BACKUP"

    .line 317
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 315
    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    move v13, v0

    .line 318
    .local v13, "perm":I
    if-ne v13, v3, :cond_cc

    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 319
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    if-ne v0, v5, :cond_a1

    goto :goto_cc

    .line 320
    :cond_a1
    const-string v0, "RestoreSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restorePackage: bad packageName="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " or calling uid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 320
    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    new-instance v0, Ljava/lang/SecurityException;

    const-string v3, "No permission to restore other packages"

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_cc
    :goto_cc
    iget-object v0, v1, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportManager:Lcom/android/server/backup/TransportManager;

    iget-object v5, v1, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/android/server/backup/TransportManager;->isTransportRegistered(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f5

    .line 326
    const-string v0, "RestoreSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Transport "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " not registered"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f3
    .catchall {:try_start_7f .. :try_end_f3} :catchall_187

    .line 327
    monitor-exit p0

    return v3

    .line 331
    :cond_f5
    :try_start_f5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_f9
    .catchall {:try_start_f5 .. :try_end_f9} :catchall_187

    move-wide v14, v5

    .line 335
    .local v14, "oldId":J
    :try_start_fa
    iget-object v0, v1, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService;->getAvailableRestoreToken(Ljava/lang/String;)J

    move-result-wide v5

    move-wide v8, v5

    .line 337
    .local v8, "token":J
    const-string v0, "RestoreSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "restorePackage pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 337
    invoke-static {v0, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const-wide/16 v5, 0x0

    cmp-long v0, v8, v5

    if-nez v0, :cond_137

    .line 346
    const-string v0, "RestoreSession"

    const-string v5, "No data available for this package; not restoring"

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_131
    .catchall {:try_start_fa .. :try_end_131} :catchall_161

    .line 348
    nop

    .line 362
    :try_start_132
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_135
    .catchall {:try_start_132 .. :try_end_135} :catchall_187

    .line 348
    monitor-exit p0

    return v3

    .line 351
    :cond_137
    :try_start_137
    new-instance v0, Lcom/android/server/backup/restore/-$$Lambda$ActiveRestoreSession$tb1mCMujBEuhHsxQ6tX_mYJVCII;

    move-object v5, v0

    move-object v6, v4

    move-object v7, v11

    move-wide/from16 v16, v8

    .line 351
    .end local v8    # "token":J
    .local v16, "token":J
    move-object v10, v12

    invoke-direct/range {v5 .. v10}, Lcom/android/server/backup/restore/-$$Lambda$ActiveRestoreSession$tb1mCMujBEuhHsxQ6tX_mYJVCII;-><init>(Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RestoreSession.restorePackage("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/android/server/backup/restore/ActiveRestoreSession;->sendRestoreToHandlerLocked(Ljava/util/function/BiFunction;Ljava/lang/String;)I

    move-result v0
    :try_end_15c
    .catchall {:try_start_137 .. :try_end_15c} :catchall_161

    .line 362
    :try_start_15c
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_15f
    .catchall {:try_start_15c .. :try_end_15f} :catchall_187

    .line 351
    monitor-exit p0

    return v0

    .line 362
    .end local v16    # "token":J
    :catchall_161
    move-exception v0

    :try_start_162
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 308
    .end local v12    # "app":Landroid/content/pm/PackageInfo;
    .end local v13    # "perm":I
    .end local v14    # "oldId":J
    :catch_166
    move-exception v0

    .line 309
    .local v0, "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "RestoreSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Asked to restore nonexistent pkg "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17d
    .catchall {:try_start_162 .. :try_end_17d} :catchall_187

    .line 310
    monitor-exit p0

    return v3

    .line 289
    .end local v0    # "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_17f
    :try_start_17f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Restore session already ended"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_187
    .catchall {:try_start_17f .. :try_end_187} :catchall_187

    .line 283
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "observer":Landroid/app/backup/IRestoreObserver;
    .end local p3    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :catchall_187
    move-exception v0

    monitor-exit p0

    .line 283
    .end local p0    # "this":Lcom/android/server/backup/restore/ActiveRestoreSession;
    throw v0
.end method

.method public declared-synchronized restoreSome(JLandroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;[Ljava/lang/String;)I
    .registers 19
    .param p1, "token"    # J
    .param p3, "observer"    # Landroid/app/backup/IRestoreObserver;
    .param p4, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p5, "packages"    # [Ljava/lang/String;

    move-object v1, p0

    move-object/from16 v8, p5

    monitor-enter p0

    .line 195
    :try_start_4
    iget-object v0, v1, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.BACKUP"

    const-string/jumbo v3, "performRestore"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 201
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "restoreSome token="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    const-string v2, " observer="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    const-string v2, " monitor="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    if-nez p4, :cond_40

    .line 207
    const-string/jumbo v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_47

    .line 209
    :cond_40
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    :goto_47
    const-string v2, " packages="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    const/4 v2, 0x0

    if-nez v8, :cond_56

    .line 213
    const-string/jumbo v3, "null"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_77

    .line 215
    :cond_56
    const/16 v3, 0x7b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 216
    const/4 v3, 0x1

    .line 217
    .local v3, "first":Z
    array-length v4, v8

    move v5, v3

    move v3, v2

    .line 217
    .end local v3    # "first":Z
    .local v5, "first":Z
    :goto_5f
    if-ge v3, v4, :cond_72

    aget-object v6, v8, v3

    .line 218
    .local v6, "s":Ljava/lang/String;
    if-nez v5, :cond_6b

    .line 219
    const-string v7, ", "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6c

    .line 221
    :cond_6b
    const/4 v5, 0x0

    .line 223
    :goto_6c
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .end local v6    # "s":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_5f

    .line 225
    :cond_72
    const/16 v3, 0x7d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 227
    .end local v5    # "first":Z
    :goto_77
    const-string v3, "RestoreSession"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    .end local v0    # "b":Ljava/lang/StringBuilder;
    iget-boolean v0, v1, Lcom/android/server/backup/restore/ActiveRestoreSession;->mEnded:Z

    if-nez v0, :cond_14c

    .line 234
    iget-boolean v0, v1, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTimedOut:Z

    const/4 v3, -0x1

    if-eqz v0, :cond_92

    .line 235
    const-string v0, "RestoreSession"

    const-string v2, "Session already timed out"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_90
    .catchall {:try_start_4 .. :try_end_90} :catchall_154

    .line 236
    monitor-exit p0

    return v3

    .line 239
    :cond_92
    :try_start_92
    iget-object v0, v1, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    if-nez v0, :cond_9f

    .line 240
    const-string v0, "RestoreSession"

    const-string v2, "Ignoring restoreAll() with no restore set"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9d
    .catchall {:try_start_92 .. :try_end_9d} :catchall_154

    .line 241
    monitor-exit p0

    return v3

    .line 244
    :cond_9f
    :try_start_9f
    iget-object v0, v1, Lcom/android/server/backup/restore/ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_ac

    .line 245
    const-string v0, "RestoreSession"

    const-string v2, "Ignoring restoreAll() on single-package session"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_aa
    .catchall {:try_start_9f .. :try_end_aa} :catchall_154

    .line 246
    monitor-exit p0

    return v3

    .line 249
    :cond_ac
    :try_start_ac
    iget-object v0, v1, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportManager:Lcom/android/server/backup/TransportManager;

    iget-object v4, v1, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/android/server/backup/TransportManager;->isTransportRegistered(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d5

    .line 250
    const-string v0, "RestoreSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transport "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not registered"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d3
    .catchall {:try_start_ac .. :try_end_d3} :catchall_154

    .line 251
    monitor-exit p0

    return v3

    .line 254
    :cond_d5
    :try_start_d5
    iget-object v0, v1, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9
    :try_end_dc
    .catchall {:try_start_d5 .. :try_end_dc} :catchall_154

    .line 255
    nop

    .line 255
    .local v2, "i":I
    :goto_dd
    move v10, v2

    .line 255
    .end local v2    # "i":I
    .local v10, "i":I
    :try_start_de
    iget-object v0, v1, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    array-length v0, v0

    if-ge v10, v0, :cond_127

    .line 256
    iget-object v0, v1, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    aget-object v0, v0, v10

    iget-wide v4, v0, Landroid/app/backup/RestoreSet;->token:J

    cmp-long v0, p1, v4

    if-nez v0, :cond_124

    .line 257
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_f1
    .catchall {:try_start_de .. :try_end_f1} :catchall_149

    move-wide v11, v2

    .line 259
    .local v11, "oldId":J
    :try_start_f2
    new-instance v0, Lcom/android/server/backup/restore/-$$Lambda$ActiveRestoreSession$amDGbcwA180LGcZKUosvhspMk2E;

    move-object v2, v0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide v5, p1

    move-object v7, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/server/backup/restore/-$$Lambda$ActiveRestoreSession$amDGbcwA180LGcZKUosvhspMk2E;-><init>(Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;J[Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RestoreSession.restoreSome("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " packages)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/server/backup/restore/ActiveRestoreSession;->sendRestoreToHandlerLocked(Ljava/util/function/BiFunction;Ljava/lang/String;)I

    move-result v0
    :try_end_119
    .catchall {:try_start_f2 .. :try_end_119} :catchall_11f

    .line 271
    :try_start_119
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v9
    :try_end_11d
    .catchall {:try_start_119 .. :try_end_11d} :catchall_149

    .line 259
    monitor-exit p0

    return v0

    .line 271
    :catchall_11f
    move-exception v0

    :try_start_120
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 255
    .end local v11    # "oldId":J
    :cond_124
    add-int/lit8 v2, v10, 0x1

    .line 255
    .end local v10    # "i":I
    .restart local v2    # "i":I
    goto :goto_dd

    .line 275
    .end local v2    # "i":I
    :cond_127
    monitor-exit v9
    :try_end_128
    .catchall {:try_start_120 .. :try_end_128} :catchall_149

    .line 277
    :try_start_128
    const-string v0, "RestoreSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restore token "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not found"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_147
    .catchall {:try_start_128 .. :try_end_147} :catchall_154

    .line 278
    monitor-exit p0

    return v3

    .line 275
    :catchall_149
    move-exception v0

    :try_start_14a
    monitor-exit v9
    :try_end_14b
    .catchall {:try_start_14a .. :try_end_14b} :catchall_149

    :try_start_14b
    throw v0

    .line 231
    :cond_14c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Restore session already ended"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_154
    .catchall {:try_start_14b .. :try_end_154} :catchall_154

    .line 194
    .end local p1    # "token":J
    .end local p3    # "observer":Landroid/app/backup/IRestoreObserver;
    .end local p4    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .end local p5    # "packages":[Ljava/lang/String;
    :catchall_154
    move-exception v0

    monitor-exit p0

    .line 194
    .end local p0    # "this":Lcom/android/server/backup/restore/ActiveRestoreSession;
    throw v0
.end method

.method public setRestoreSets([Landroid/app/backup/RestoreSet;)V
    .registers 2
    .param p1, "restoreSets"    # [Landroid/app/backup/RestoreSet;

    .line 367
    iput-object p1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    .line 368
    return-void
.end method
