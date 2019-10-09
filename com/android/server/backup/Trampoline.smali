.class public Lcom/android/server/backup/Trampoline;
.super Landroid/app/backup/IBackupManager$Stub;
.source "Trampoline.java"


# static fields
.field static final BACKUP_DISABLE_PROPERTY:Ljava/lang/String; = "ro.backup.disable"

.field static final BACKUP_SUPPRESS_FILENAME:Ljava/lang/String; = "backup-suppress"

.field static final DEBUG_TRAMPOLINE:Z = false

.field static final TAG:Ljava/lang/String; = "BackupManagerService"


# instance fields
.field final mContext:Landroid/content/Context;

.field final mGlobalDisable:Z

.field private mHandlerThread:Landroid/os/HandlerThread;

.field volatile mService:Lcom/android/server/backup/BackupManagerServiceInterface;

.field final mSuppressFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 83
    invoke-direct {p0}, Landroid/app/backup/IBackupManager$Stub;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/android/server/backup/Trampoline;->mContext:Landroid/content/Context;

    .line 85
    invoke-virtual {p0}, Lcom/android/server/backup/Trampoline;->isBackupDisabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/backup/Trampoline;->mGlobalDisable:Z

    .line 86
    invoke-virtual {p0}, Lcom/android/server/backup/Trampoline;->getSuppressFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/Trampoline;->mSuppressFile:Ljava/io/File;

    .line 87
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mSuppressFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 88
    return-void
.end method

.method public static synthetic lambda$unlockSystemUser$0(Lcom/android/server/backup/Trampoline;)V
    .registers 5

    .line 134
    const-string v0, "backup init"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/backup/Trampoline;->initialize(I)V

    .line 136
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 138
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 139
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unlocking system user; mService="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    if-eqz v0, :cond_2d

    .line 141
    invoke-interface {v0}, Lcom/android/server/backup/BackupManagerServiceInterface;->unlockSystemUser()V

    .line 143
    :cond_2d
    return-void
.end method


# virtual methods
.method public acknowledgeFullBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V
    .registers 13
    .param p1, "token"    # I
    .param p2, "allow"    # Z
    .param p3, "curPassword"    # Ljava/lang/String;
    .param p4, "encryptionPassword"    # Ljava/lang/String;
    .param p5, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 331
    iget-object v6, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 332
    .local v6, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v6, :cond_d

    .line 333
    move-object v0, v6

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/server/backup/BackupManagerServiceInterface;->acknowledgeAdbBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 336
    :cond_d
    return-void
.end method

.method public adbBackup(Landroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;)V
    .registers 24
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "includeApks"    # Z
    .param p3, "includeObbs"    # Z
    .param p4, "includeShared"    # Z
    .param p5, "doWidgets"    # Z
    .param p6, "allApps"    # Z
    .param p7, "allIncludesSystem"    # Z
    .param p8, "doCompress"    # Z
    .param p9, "doKeyValue"    # Z
    .param p10, "packageNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 304
    move-object v0, p0

    iget-object v12, v0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 305
    .local v12, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v12, :cond_1b

    .line 306
    move-object v1, v12

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    invoke-interface/range {v1 .. v11}, Lcom/android/server/backup/BackupManagerServiceInterface;->adbBackup(Landroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;)V

    .line 309
    :cond_1b
    return-void
.end method

.method public adbRestore(Landroid/os/ParcelFileDescriptor;)V
    .registers 3
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 322
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_7

    .line 323
    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->adbRestore(Landroid/os/ParcelFileDescriptor;)V

    .line 325
    :cond_7
    return-void
.end method

.method public agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "agent"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 228
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_7

    .line 229
    invoke-interface {v0, p1, p2}, Lcom/android/server/backup/BackupManagerServiceInterface;->agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 231
    :cond_7
    return-void
.end method

.method public agentDisconnected(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 236
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_7

    .line 237
    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->agentDisconnected(Ljava/lang/String;)V

    .line 239
    :cond_7
    return-void
.end method

.method public backupNow()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 294
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_7

    .line 295
    invoke-interface {v0}, Lcom/android/server/backup/BackupManagerServiceInterface;->backupNow()V

    .line 297
    :cond_7
    return-void
.end method

.method beginFullBackup(Lcom/android/server/backup/FullBackupJob;)Z
    .registers 4
    .param p1, "scheduledJob"    # Lcom/android/server/backup/FullBackupJob;

    .line 495
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 496
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->beginFullBackup(Lcom/android/server/backup/FullBackupJob;)Z

    move-result v1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method public beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "transportID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 432
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 433
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_9

    invoke-interface {v0, p1, p2}, Lcom/android/server/backup/BackupManagerServiceInterface;->beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return-object v1
.end method

.method protected binderGetCallingUid()I
    .registers 2

    .line 95
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method public cancelBackups()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 474
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 475
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_7

    .line 476
    invoke-interface {v0}, Lcom/android/server/backup/BackupManagerServiceInterface;->cancelBackups()V

    .line 478
    :cond_7
    return-void
.end method

.method public clearBackupData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "transportName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 220
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_7

    .line 221
    invoke-interface {v0, p1, p2}, Lcom/android/server/backup/BackupManagerServiceInterface;->clearBackupData(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :cond_7
    return-void
.end method

.method protected createBackupManagerService()Lcom/android/server/backup/BackupManagerServiceInterface;
    .registers 3

    .line 104
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/backup/Trampoline;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-static {v0, p0, v1}, Lcom/android/server/backup/BackupManagerService;->create(Landroid/content/Context;Lcom/android/server/backup/Trampoline;Landroid/os/HandlerThread;)Lcom/android/server/backup/BackupManagerService;

    move-result-object v0

    return-object v0
.end method

.method public dataChanged(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 202
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_7

    .line 203
    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->dataChanged(Ljava/lang/String;)V

    .line 205
    :cond_7
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 482
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mContext:Landroid/content/Context;

    const-string v1, "BackupManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 484
    :cond_b
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 485
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_13

    .line 486
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerServiceInterface;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_18

    .line 488
    :cond_13
    const-string v1, "Inactive"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 490
    :goto_18
    return-void
.end method

.method endFullBackup()V
    .registers 2

    .line 500
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 501
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_7

    .line 502
    invoke-interface {v0}, Lcom/android/server/backup/BackupManagerServiceInterface;->endFullBackup()V

    .line 504
    :cond_7
    return-void
.end method

.method public filterAppsEligibleForBackup([Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p1, "packages"    # [Ljava/lang/String;

    .line 458
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 459
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->filterAppsEligibleForBackup([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return-object v1
.end method

.method public fullTransportBackup([Ljava/lang/String;)V
    .registers 3
    .param p1, "packageNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 314
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_7

    .line 315
    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->fullTransportBackup([Ljava/lang/String;)V

    .line 317
    :cond_7
    return-void
.end method

.method public getAvailableRestoreToken(Ljava/lang/String;)J
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 446
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 447
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->getAvailableRestoreToken(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_b

    :cond_9
    const-wide/16 v1, 0x0

    :goto_b
    return-wide v1
.end method

.method public getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .param p1, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 407
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 408
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return-object v1
.end method

.method public getCurrentTransport()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 340
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 341
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/android/server/backup/BackupManagerServiceInterface;->getCurrentTransport()Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return-object v1
.end method

.method public getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .param p1, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 419
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 420
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return-object v1
.end method

.method public getDataManagementLabel(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 425
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 426
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->getDataManagementLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return-object v1
.end method

.method public getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 413
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 414
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return-object v1
.end method

.method protected getSuppressFile()Ljava/io/File;
    .registers 5

    .line 99
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "backup"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "backup-suppress"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getTransportWhitelist()[Ljava/lang/String;
    .registers 3

    .line 358
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 359
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/android/server/backup/BackupManagerServiceInterface;->getTransportWhitelist()[Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return-object v1
.end method

.method public hasBackupPassword()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 288
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/android/server/backup/BackupManagerServiceInterface;->hasBackupPassword()Z

    move-result v1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method public initialize(I)V
    .registers 5
    .param p1, "whichUser"    # I

    .line 111
    if-nez p1, :cond_39

    .line 113
    iget-boolean v0, p0, Lcom/android/server/backup/Trampoline;->mGlobalDisable:Z

    if-eqz v0, :cond_e

    .line 114
    const-string v0, "BackupManagerService"

    const-string v1, "Backup/restore not supported"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void

    .line 118
    :cond_e
    monitor-enter p0

    .line 119
    :try_start_f
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mSuppressFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 120
    invoke-virtual {p0}, Lcom/android/server/backup/Trampoline;->createBackupManagerService()Lcom/android/server/backup/BackupManagerServiceInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    goto :goto_34

    .line 122
    :cond_1e
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Backup inactive in user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :goto_34
    monitor-exit p0

    goto :goto_39

    :catchall_36
    move-exception v0

    monitor-exit p0
    :try_end_38
    .catchall {:try_start_f .. :try_end_38} :catchall_36

    throw v0

    .line 126
    :cond_39
    :goto_39
    return-void
.end method

.method public initializeTransports([Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V
    .registers 4
    .param p1, "transportNames"    # [Ljava/lang/String;
    .param p2, "observer"    # Landroid/app/backup/IBackupObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 211
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_7

    .line 212
    invoke-interface {v0, p1, p2}, Lcom/android/server/backup/BackupManagerServiceInterface;->initializeTransports([Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V

    .line 214
    :cond_7
    return-void
.end method

.method public isAppEligibleForBackup(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 452
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 453
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->isAppEligibleForBackup(Ljava/lang/String;)Z

    move-result v1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method protected isBackupDisabled()Z
    .registers 3

    .line 91
    const-string/jumbo v0, "ro.backup.disable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isBackupEnabled()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 276
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/android/server/backup/BackupManagerServiceInterface;->isBackupEnabled()Z

    move-result v1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method public isBackupServiceActive(I)Z
    .registers 4
    .param p1, "userHandle"    # I

    .line 191
    const/4 v0, 0x0

    if-nez p1, :cond_f

    .line 192
    monitor-enter p0

    .line 193
    :try_start_4
    iget-object v1, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    nop

    :cond_a
    monitor-exit p0

    return v0

    .line 194
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_c

    throw v0

    .line 196
    :cond_f
    return v0
.end method

.method public listAllTransportComponents()[Landroid/content/ComponentName;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 352
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 353
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/android/server/backup/BackupManagerServiceInterface;->listAllTransportComponents()[Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return-object v1
.end method

.method public listAllTransports()[Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 346
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 347
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/android/server/backup/BackupManagerServiceInterface;->listAllTransports()[Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return-object v1
.end method

.method public opComplete(IJ)V
    .registers 5
    .param p1, "token"    # I
    .param p2, "result"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 438
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 439
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_7

    .line 440
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerServiceInterface;->opComplete(IJ)V

    .line 442
    :cond_7
    return-void
.end method

.method public requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I
    .registers 7
    .param p1, "packages"    # [Ljava/lang/String;
    .param p2, "observer"    # Landroid/app/backup/IBackupObserver;
    .param p3, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 465
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 466
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-nez v0, :cond_7

    .line 467
    const/16 v1, -0x7d1

    return v1

    .line 469
    :cond_7
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/backup/BackupManagerServiceInterface;->requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I

    move-result v1

    return v1
.end method

.method public restoreAtInstall(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 244
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_7

    .line 245
    invoke-interface {v0, p1, p2}, Lcom/android/server/backup/BackupManagerServiceInterface;->restoreAtInstall(Ljava/lang/String;I)V

    .line 247
    :cond_7
    return-void
.end method

.method public selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 384
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 385
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return-object v1
.end method

.method public selectBackupTransportAsync(Landroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V
    .registers 5
    .param p1, "transport"    # Landroid/content/ComponentName;
    .param p2, "listener"    # Landroid/app/backup/ISelectBackupTransportCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 392
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_8

    .line 393
    invoke-interface {v0, p1, p2}, Lcom/android/server/backup/BackupManagerServiceInterface;->selectBackupTransportAsync(Landroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V

    goto :goto_11

    .line 395
    :cond_8
    if-eqz p2, :cond_11

    .line 397
    const/16 v1, -0x7d1

    :try_start_c
    invoke-interface {p2, v1}, Landroid/app/backup/ISelectBackupTransportCallback;->onFailure(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    .line 400
    goto :goto_11

    .line 398
    :catch_10
    move-exception v1

    .line 403
    :cond_11
    :goto_11
    return-void
.end method

.method public setAutoRestore(Z)V
    .registers 3
    .param p1, "doAutoRestore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 260
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_7

    .line 261
    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->setAutoRestore(Z)V

    .line 263
    :cond_7
    return-void
.end method

.method public setBackupEnabled(Z)V
    .registers 3
    .param p1, "isEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 252
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_7

    .line 253
    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->setBackupEnabled(Z)V

    .line 255
    :cond_7
    return-void
.end method

.method public setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "currentPw"    # Ljava/lang/String;
    .param p2, "newPw"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 282
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_9

    invoke-interface {v0, p1, p2}, Lcom/android/server/backup/BackupManagerServiceInterface;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method public setBackupProvisioned(Z)V
    .registers 3
    .param p1, "isProvisioned"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 268
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_7

    .line 269
    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->setBackupProvisioned(Z)V

    .line 271
    :cond_7
    return-void
.end method

.method public setBackupServiceActive(IZ)V
    .registers 7
    .param p1, "userHandle"    # I
    .param p2, "makeActive"    # Z

    .line 148
    invoke-virtual {p0}, Lcom/android/server/backup/Trampoline;->binderGetCallingUid()I

    move-result v0

    .line 149
    .local v0, "caller":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_13

    if-nez v0, :cond_b

    goto :goto_13

    .line 151
    :cond_b
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "No permission to configure backup activity"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 154
    :cond_13
    :goto_13
    iget-boolean v1, p0, Lcom/android/server/backup/Trampoline;->mGlobalDisable:Z

    if-eqz v1, :cond_1f

    .line 155
    const-string v1, "BackupManagerService"

    const-string v2, "Backup/restore not supported"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void

    .line 159
    :cond_1f
    if-nez p1, :cond_71

    .line 160
    monitor-enter p0

    .line 161
    :try_start_22
    invoke-virtual {p0, p1}, Lcom/android/server/backup/Trampoline;->isBackupServiceActive(I)Z

    move-result v1

    if-eq p2, v1, :cond_6c

    .line 162
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Making backup "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    if-eqz p2, :cond_39

    const-string v3, ""

    goto :goto_3b

    :cond_39
    const-string v3, "in"

    :goto_3b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "active in user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 162
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    if-eqz p2, :cond_5b

    .line 165
    invoke-virtual {p0}, Lcom/android/server/backup/Trampoline;->createBackupManagerService()Lcom/android/server/backup/BackupManagerServiceInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 166
    iget-object v1, p0, Lcom/android/server/backup/Trampoline;->mSuppressFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_6c

    .line 168
    :cond_5b
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;
    :try_end_5e
    .catchall {:try_start_22 .. :try_end_5e} :catchall_6e

    .line 170
    :try_start_5e
    iget-object v1, p0, Lcom/android/server/backup/Trampoline;->mSuppressFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_63} :catch_64
    .catchall {:try_start_5e .. :try_end_63} :catchall_6e

    .line 173
    goto :goto_6c

    .line 171
    :catch_64
    move-exception v1

    .line 172
    .local v1, "e":Ljava/io/IOException;
    :try_start_65
    const-string v2, "BackupManagerService"

    const-string v3, "Unable to persist backup service inactivity"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .end local v1    # "e":Ljava/io/IOException;
    :cond_6c
    :goto_6c
    monitor-exit p0

    goto :goto_71

    :catchall_6e
    move-exception v1

    monitor-exit p0
    :try_end_70
    .catchall {:try_start_65 .. :try_end_70} :catchall_6e

    throw v1

    .line 178
    :cond_71
    :goto_71
    return-void
.end method

.method unlockSystemUser()V
    .registers 4

    .line 129
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "backup"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/backup/Trampoline;->mHandlerThread:Landroid/os/HandlerThread;

    .line 130
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 132
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/backup/Trampoline;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 133
    .local v0, "h":Landroid/os/Handler;
    new-instance v1, Lcom/android/server/backup/-$$Lambda$Trampoline$zhmxdOntlNYAyF3FWA7uhVoZeFI;

    invoke-direct {v1, p0}, Lcom/android/server/backup/-$$Lambda$Trampoline$zhmxdOntlNYAyF3FWA7uhVoZeFI;-><init>(Lcom/android/server/backup/Trampoline;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 144
    return-void
.end method

.method public updateTransportAttributes(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    .registers 15
    .param p1, "transportComponent"    # Landroid/content/ComponentName;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "configurationIntent"    # Landroid/content/Intent;
    .param p4, "currentDestinationString"    # Ljava/lang/String;
    .param p5, "dataManagementIntent"    # Landroid/content/Intent;
    .param p6, "dataManagementLabel"    # Ljava/lang/String;

    .line 370
    iget-object v7, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 371
    .local v7, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v7, :cond_e

    .line 372
    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/server/backup/BackupManagerServiceInterface;->updateTransportAttributes(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    .line 380
    :cond_e
    return-void
.end method
