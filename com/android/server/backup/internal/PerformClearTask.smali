.class public Lcom/android/server/backup/internal/PerformClearTask;
.super Ljava/lang/Object;
.source "PerformClearTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

.field private final mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

.field private final mPackage:Landroid/content/pm/PackageInfo;

.field private final mTransportClient:Lcom/android/server/backup/transport/TransportClient;

.field private final mTransportManager:Lcom/android/server/backup/TransportManager;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/transport/TransportClient;Landroid/content/pm/PackageInfo;Lcom/android/server/backup/internal/OnTaskFinishedListener;)V
    .registers 6
    .param p1, "backupManagerService"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "transportClient"    # Lcom/android/server/backup/transport/TransportClient;
    .param p3, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p4, "listener"    # Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/server/backup/internal/PerformClearTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 42
    invoke-virtual {p1}, Lcom/android/server/backup/BackupManagerService;->getTransportManager()Lcom/android/server/backup/TransportManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/internal/PerformClearTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 43
    iput-object p2, p0, Lcom/android/server/backup/internal/PerformClearTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    .line 44
    iput-object p3, p0, Lcom/android/server/backup/internal/PerformClearTask;->mPackage:Landroid/content/pm/PackageInfo;

    .line 45
    iput-object p4, p0, Lcom/android/server/backup/internal/PerformClearTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 46
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 49
    const-string v0, "PerformClearTask.run()"

    .line 50
    .local v0, "callerLogString":Ljava/lang/String;
    const/4 v1, 0x0

    .line 53
    .local v1, "transport":Lcom/android/internal/backup/IBackupTransport;
    :try_start_3
    iget-object v2, p0, Lcom/android/server/backup/internal/PerformClearTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    iget-object v3, p0, Lcom/android/server/backup/internal/PerformClearTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    .line 54
    invoke-virtual {v3}, Lcom/android/server/backup/transport/TransportClient;->getTransportComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/backup/TransportManager;->getTransportDirName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "transportDirName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/backup/internal/PerformClearTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/BackupManagerService;->getBaseStateDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 56
    .local v3, "stateDir":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/backup/internal/PerformClearTask;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 57
    .local v4, "stateFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 59
    iget-object v5, p0, Lcom/android/server/backup/internal/PerformClearTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    invoke-virtual {v5, v0}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v5

    move-object v1, v5

    .line 62
    iget-object v5, p0, Lcom/android/server/backup/internal/PerformClearTask;->mPackage:Landroid/content/pm/PackageInfo;

    invoke-interface {v1, v5}, Lcom/android/internal/backup/IBackupTransport;->clearBackupData(Landroid/content/pm/PackageInfo;)I
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_32} :catch_43
    .catchall {:try_start_3 .. :try_end_32} :catchall_41

    .line 66
    .end local v2    # "transportDirName":Ljava/lang/String;
    .end local v3    # "stateDir":Ljava/io/File;
    .end local v4    # "stateFile":Ljava/io/File;
    if-eqz v1, :cond_89

    .line 69
    :try_start_34
    invoke-interface {v1}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_37} :catch_38

    goto :goto_6d

    .line 70
    :catch_38
    move-exception v2

    .line 72
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_76

    .line 66
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_41
    move-exception v2

    goto :goto_99

    .line 63
    :catch_43
    move-exception v2

    .line 64
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_44
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Transport threw clearing data for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/backup/internal/PerformClearTask;->mPackage:Landroid/content/pm/PackageInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catchall {:try_start_44 .. :try_end_68} :catchall_41

    .line 66
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_89

    .line 69
    :try_start_6a
    invoke-interface {v1}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6d} :catch_6e

    .line 73
    :goto_6d
    goto :goto_89

    .line 70
    :catch_6e
    move-exception v2

    .line 72
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_76
    const-string v5, "Unable to mark clear operation finished: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_89
    :goto_89
    iget-object v2, p0, Lcom/android/server/backup/internal/PerformClearTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    invoke-interface {v2, v0}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 77
    iget-object v2, p0, Lcom/android/server/backup/internal/PerformClearTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 78
    nop

    .line 79
    return-void

    .line 66
    :goto_99
    if-eqz v1, :cond_ba

    .line 69
    :try_start_9b
    invoke-interface {v1}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_9e} :catch_9f

    .line 73
    goto :goto_ba

    .line 70
    :catch_9f
    move-exception v3

    .line 72
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to mark clear operation finished: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BackupManagerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_ba
    :goto_ba
    iget-object v3, p0, Lcom/android/server/backup/internal/PerformClearTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    invoke-interface {v3, v0}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 77
    iget-object v3, p0, Lcom/android/server/backup/internal/PerformClearTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v2
.end method
