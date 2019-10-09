.class public Lcom/android/server/backup/internal/RunBackupReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RunBackupReceiver.java"


# instance fields
.field private backupManagerService:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/BackupManagerService;)V
    .registers 2
    .param p1, "backupManagerService"    # Lcom/android/server/backup/BackupManagerService;

    .line 38
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 40
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 43
    const-string v0, "android.app.backup.intent.RUN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 44
    iget-object v0, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 45
    :try_start_13
    iget-object v1, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->getPendingInits()Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_b7

    if-lez v1, :cond_41

    .line 52
    :try_start_1f
    iget-object v1, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 53
    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->getRunInitIntent()Landroid/app/PendingIntent;

    move-result-object v2

    .line 52
    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 54
    iget-object v1, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->getRunInitIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_37
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1f .. :try_end_37} :catch_38
    .catchall {:try_start_1f .. :try_end_37} :catchall_b7

    goto :goto_40

    .line 55
    :catch_38
    move-exception v1

    .line 56
    .local v1, "ce":Landroid/app/PendingIntent$CanceledException;
    :try_start_39
    const-string v2, "BackupManagerService"

    const-string v3, "Run init intent cancelled"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .end local v1    # "ce":Landroid/app/PendingIntent$CanceledException;
    :goto_40
    goto :goto_b5

    .line 62
    :cond_41
    iget-object v1, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_8b

    iget-object v1, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->isProvisioned()Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 63
    iget-object v1, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->isBackupRunning()Z

    move-result v1

    if-nez v1, :cond_83

    .line 65
    const-string v1, "BackupManagerService"

    const-string v2, "Running a backup pass"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v1, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->setBackupRunning(Z)V

    .line 71
    iget-object v1, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 73
    iget-object v1, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 75
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 76
    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_b5

    .line 77
    :cond_83
    const-string v1, "BackupManagerService"

    const-string v2, "Backup time but one already running"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b5

    .line 80
    :cond_8b
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Backup pass but e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService;->isEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " p="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 81
    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService;->isProvisioned()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :goto_b5
    monitor-exit v0

    goto :goto_ba

    :catchall_b7
    move-exception v1

    monitor-exit v0
    :try_end_b9
    .catchall {:try_start_39 .. :try_end_b9} :catchall_b7

    throw v1

    .line 86
    :cond_ba
    :goto_ba
    return-void
.end method
