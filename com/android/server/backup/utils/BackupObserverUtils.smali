.class public Lcom/android/server/backup/utils/BackupObserverUtils;
.super Ljava/lang/Object;
.source "BackupObserverUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V
    .registers 5
    .param p0, "observer"    # Landroid/app/backup/IBackupObserver;
    .param p1, "status"    # I

    .line 70
    if-eqz p0, :cond_e

    .line 72
    :try_start_2
    invoke-interface {p0, p1}, Landroid/app/backup/IBackupObserver;->backupFinished(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    .line 77
    goto :goto_e

    .line 73
    :catch_6
    move-exception v0

    .line 75
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "Backup observer went away: backupFinished"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_e
    :goto_e
    return-void
.end method

.method public static sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V
    .registers 6
    .param p0, "observer"    # Landroid/app/backup/IBackupObserver;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "status"    # I

    .line 54
    if-eqz p0, :cond_e

    .line 56
    :try_start_2
    invoke-interface {p0, p1, p2}, Landroid/app/backup/IBackupObserver;->onResult(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    .line 61
    goto :goto_e

    .line 57
    :catch_6
    move-exception v0

    .line 59
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "Backup observer went away: onResult"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_e
    :goto_e
    return-void
.end method

.method public static sendBackupOnUpdate(Landroid/app/backup/IBackupObserver;Ljava/lang/String;Landroid/app/backup/BackupProgress;)V
    .registers 6
    .param p0, "observer"    # Landroid/app/backup/IBackupObserver;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "progress"    # Landroid/app/backup/BackupProgress;

    .line 37
    if-eqz p0, :cond_e

    .line 39
    :try_start_2
    invoke-interface {p0, p1, p2}, Landroid/app/backup/IBackupObserver;->onUpdate(Ljava/lang/String;Landroid/app/backup/BackupProgress;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    .line 44
    goto :goto_e

    .line 40
    :catch_6
    move-exception v0

    .line 42
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "Backup observer went away: onUpdate"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_e
    :goto_e
    return-void
.end method
