.class public interface abstract Lcom/android/server/backup/BackupManagerServiceInterface;
.super Ljava/lang/Object;
.source "BackupManagerServiceInterface.java"


# virtual methods
.method public abstract acknowledgeAdbBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V
.end method

.method public abstract adbBackup(Landroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;)V
.end method

.method public abstract adbRestore(Landroid/os/ParcelFileDescriptor;)V
.end method

.method public abstract agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V
.end method

.method public abstract agentDisconnected(Ljava/lang/String;)V
.end method

.method public abstract backupNow()V
.end method

.method public abstract beginFullBackup(Lcom/android/server/backup/FullBackupJob;)Z
.end method

.method public abstract beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;
.end method

.method public abstract bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;
.end method

.method public abstract cancelBackups()V
.end method

.method public abstract clearBackupData(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract dataChanged(Ljava/lang/String;)V
.end method

.method public abstract dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract endFullBackup()V
.end method

.method public abstract filterAppsEligibleForBackup([Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract fullTransportBackup([Ljava/lang/String;)V
.end method

.method public abstract generateRandomIntegerToken()I
.end method

.method public abstract getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;
.end method

.method public abstract getAvailableRestoreToken(Ljava/lang/String;)J
.end method

.method public abstract getBackupManagerBinder()Landroid/app/backup/IBackupManager;
.end method

.method public abstract getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;
.end method

.method public abstract getCurrentTransport()Ljava/lang/String;
.end method

.method public abstract getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;
.end method

.method public abstract getDataManagementLabel(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getDestinationString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getTransportWhitelist()[Ljava/lang/String;
.end method

.method public abstract hasBackupPassword()Z
.end method

.method public abstract initializeTransports([Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V
.end method

.method public abstract isAppEligibleForBackup(Ljava/lang/String;)Z
.end method

.method public abstract isBackupEnabled()Z
.end method

.method public abstract listAllTransportComponents()[Landroid/content/ComponentName;
.end method

.method public abstract listAllTransports()[Ljava/lang/String;
.end method

.method public abstract opComplete(IJ)V
.end method

.method public abstract prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V
.end method

.method public abstract requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;I)I
.end method

.method public abstract requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I
.end method

.method public abstract restoreAtInstall(Ljava/lang/String;I)V
.end method

.method public abstract selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract selectBackupTransportAsync(Landroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V
.end method

.method public abstract setAutoRestore(Z)V
.end method

.method public abstract setBackupEnabled(Z)V
.end method

.method public abstract setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract setBackupProvisioned(Z)V
.end method

.method public abstract tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V
.end method

.method public abstract unlockSystemUser()V
.end method

.method public abstract updateTransportAttributes(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
.end method

.method public abstract waitUntilOperationComplete(I)Z
.end method
