.class public Lcom/android/server/backup/internal/ProvisionedObserver;
.super Landroid/database/ContentObserver;
.source "ProvisionedObserver.java"


# instance fields
.field private backupManagerService:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/Handler;)V
    .registers 3
    .param p1, "backupManagerService"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 35
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 36
    iput-object p1, p0, Lcom/android/server/backup/internal/ProvisionedObserver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 37
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 8
    .param p1, "selfChange"    # Z

    .line 40
    iget-object v0, p0, Lcom/android/server/backup/internal/ProvisionedObserver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->isProvisioned()Z

    move-result v0

    .line 41
    .local v0, "wasProvisioned":Z
    iget-object v1, p0, Lcom/android/server/backup/internal/ProvisionedObserver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->deviceIsProvisioned()Z

    move-result v1

    .line 43
    .local v1, "isProvisioned":Z
    iget-object v2, p0, Lcom/android/server/backup/internal/ProvisionedObserver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    if-nez v0, :cond_15

    if-eqz v1, :cond_13

    goto :goto_15

    :cond_13
    const/4 v3, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v3, 0x1

    :goto_16
    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->setProvisioned(Z)V

    .line 49
    iget-object v2, p0, Lcom/android/server/backup/internal/ProvisionedObserver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 50
    :try_start_20
    iget-object v3, p0, Lcom/android/server/backup/internal/ProvisionedObserver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService;->isProvisioned()Z

    move-result v3

    if-eqz v3, :cond_48

    if-nez v0, :cond_48

    iget-object v3, p0, Lcom/android/server/backup/internal/ProvisionedObserver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 51
    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 56
    iget-object v3, p0, Lcom/android/server/backup/internal/ProvisionedObserver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/backup/internal/ProvisionedObserver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 57
    invoke-virtual {v4}, Lcom/android/server/backup/BackupManagerService;->getConstants()Lcom/android/server/backup/BackupManagerConstants;

    move-result-object v4

    .line 56
    invoke-static {v3, v4}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(Landroid/content/Context;Lcom/android/server/backup/BackupManagerConstants;)V

    .line 58
    iget-object v3, p0, Lcom/android/server/backup/internal/ProvisionedObserver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 60
    :cond_48
    monitor-exit v2

    .line 61
    return-void

    .line 60
    :catchall_4a
    move-exception v3

    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_20 .. :try_end_4c} :catchall_4a

    throw v3
.end method
