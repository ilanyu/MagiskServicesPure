.class public Lcom/android/server/backup/internal/BackupHandler;
.super Landroid/os/Handler;
.source "BackupHandler.java"


# static fields
.field public static final MSG_BACKUP_OPERATION_TIMEOUT:I = 0x11

.field public static final MSG_BACKUP_RESTORE_STEP:I = 0x14

.field public static final MSG_FULL_CONFIRMATION_TIMEOUT:I = 0x9

.field public static final MSG_OP_COMPLETE:I = 0x15

.field public static final MSG_REQUEST_BACKUP:I = 0xf

.field public static final MSG_RESTORE_OPERATION_TIMEOUT:I = 0x12

.field public static final MSG_RESTORE_SESSION_TIMEOUT:I = 0x8

.field public static final MSG_RETRY_CLEAR:I = 0xc

.field public static final MSG_RETRY_INIT:I = 0xb

.field public static final MSG_RUN_ADB_BACKUP:I = 0x2

.field public static final MSG_RUN_ADB_RESTORE:I = 0xa

.field public static final MSG_RUN_BACKUP:I = 0x1

.field public static final MSG_RUN_CLEAR:I = 0x4

.field public static final MSG_RUN_FULL_TRANSPORT_BACKUP:I = 0xe

.field public static final MSG_RUN_GET_RESTORE_SETS:I = 0x6

.field public static final MSG_RUN_RESTORE:I = 0x3

.field public static final MSG_SCHEDULE_BACKUP_PACKAGE:I = 0x10

.field public static final MSG_WIDGET_BROADCAST:I = 0xd


# instance fields
.field private final backupManagerService:Lcom/android/server/backup/BackupManagerService;

.field private final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/Looper;)V
    .registers 5
    .param p1, "backupManagerService"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 88
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 89
    iput-object p1, p0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 90
    nop

    .line 91
    invoke-virtual {p1}, Lcom/android/server/backup/BackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object v0

    const-string v1, "Timeout parameters cannot be null"

    .line 90
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object v0, p0, Lcom/android/server/backup/internal/BackupHandler;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 93
    return-void
.end method

.method static synthetic lambda$handleMessage$0(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V
    .registers 3
    .param p0, "transportManager"    # Lcom/android/server/backup/TransportManager;
    .param p1, "transportClient"    # Lcom/android/server/backup/transport/TransportClient;
    .param p2, "caller"    # Ljava/lang/String;

    .line 156
    nop

    .line 157
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    .line 156
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 26
    .param p1, "msg"    # Landroid/os/Message;

    move-object/from16 v1, p0

    .line 97
    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getTransportManager()Lcom/android/server/backup/TransportManager;

    move-result-object v3

    .line 98
    .local v3, "transportManager":Lcom/android/server/backup/TransportManager;
    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v4, 0x1

    const/16 v5, 0x14

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_4bc

    :pswitch_13
    goto/16 :goto_4b9

    .line 202
    :pswitch_15
    :try_start_15
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 204
    .local v0, "taskWithResult":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/backup/BackupRestoreTask;Ljava/lang/Long;>;"
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/backup/BackupRestoreTask;

    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Lcom/android/server/backup/BackupRestoreTask;->operationComplete(J)V
    :try_end_28
    .catch Ljava/lang/ClassCastException; {:try_start_15 .. :try_end_28} :catch_2a

    .line 207
    .end local v0    # "taskWithResult":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/backup/BackupRestoreTask;Ljava/lang/Long;>;"
    goto/16 :goto_4b9

    .line 205
    :catch_2a
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid completion in flight, obj="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .end local v0    # "e":Ljava/lang/ClassCastException;
    goto/16 :goto_4b9

    .line 189
    :pswitch_45
    :try_start_45
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/BackupRestoreTask;

    .line 193
    .local v0, "task":Lcom/android/server/backup/BackupRestoreTask;
    invoke-interface {v0}, Lcom/android/server/backup/BackupRestoreTask;->execute()V
    :try_end_4c
    .catch Ljava/lang/ClassCastException; {:try_start_45 .. :try_end_4c} :catch_4e

    .line 196
    .end local v0    # "task":Lcom/android/server/backup/BackupRestoreTask;
    goto/16 :goto_4b9

    .line 194
    :catch_4e
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid backup/restore task in flight, obj="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .end local v0    # "e":Ljava/lang/ClassCastException;
    goto/16 :goto_4b9

    .line 340
    :pswitch_69
    const-string v0, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timeout message received for token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget v4, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v4, v6}, Lcom/android/server/backup/BackupManagerService;->handleCancel(IZ)V

    .line 342
    goto/16 :goto_4b9

    .line 419
    :pswitch_8e
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 423
    .local v0, "pkgName":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v4, v0}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    .line 424
    goto/16 :goto_4b9

    .line 397
    .end local v0    # "pkgName":Ljava/lang/String;
    :pswitch_99
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/params/BackupParams;

    .line 401
    .local v0, "params":Lcom/android/server/backup/params/BackupParams;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 402
    .local v6, "kvQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/internal/BackupRequest;>;"
    iget-object v7, v0, Lcom/android/server/backup/params/BackupParams;->kvPackages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_a8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_bd

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 403
    .local v8, "packageName":Ljava/lang/String;
    new-instance v9, Lcom/android/server/backup/internal/BackupRequest;

    invoke-direct {v9, v8}, Lcom/android/server/backup/internal/BackupRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    .end local v8    # "packageName":Ljava/lang/String;
    goto :goto_a8

    .line 405
    :cond_bd
    iget-object v7, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v7, v4}, Lcom/android/server/backup/BackupManagerService;->setBackupRunning(Z)V

    .line 406
    iget-object v4, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 408
    new-instance v4, Lcom/android/server/backup/internal/PerformBackupTask;

    iget-object v8, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v9, v0, Lcom/android/server/backup/params/BackupParams;->transportClient:Lcom/android/server/backup/transport/TransportClient;

    iget-object v10, v0, Lcom/android/server/backup/params/BackupParams;->dirName:Ljava/lang/String;

    const/4 v12, 0x0

    iget-object v13, v0, Lcom/android/server/backup/params/BackupParams;->observer:Landroid/app/backup/IBackupObserver;

    iget-object v14, v0, Lcom/android/server/backup/params/BackupParams;->monitor:Landroid/app/backup/IBackupManagerMonitor;

    iget-object v15, v0, Lcom/android/server/backup/params/BackupParams;->listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    iget-object v11, v0, Lcom/android/server/backup/params/BackupParams;->fullPackages:Ljava/util/ArrayList;

    const/16 v17, 0x1

    iget-boolean v7, v0, Lcom/android/server/backup/params/BackupParams;->nonIncrementalBackup:Z

    move/from16 v18, v7

    move-object v7, v4

    move-object/from16 v16, v11

    move-object v11, v6

    invoke-direct/range {v7 .. v18}, Lcom/android/server/backup/internal/PerformBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/server/backup/DataChangedJournal;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;Ljava/util/List;ZZ)V

    .line 413
    .local v4, "pbt":Lcom/android/server/backup/internal/PerformBackupTask;
    invoke-virtual {v1, v5, v4}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 414
    .local v5, "pbtMessage":Landroid/os/Message;
    invoke-virtual {v1, v5}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 415
    goto/16 :goto_4b9

    .line 226
    .end local v0    # "params":Lcom/android/server/backup/params/BackupParams;
    .end local v4    # "pbt":Lcom/android/server/backup/internal/PerformBackupTask;
    .end local v5    # "pbtMessage":Landroid/os/Message;
    .end local v6    # "kvQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/internal/BackupRequest;>;"
    :pswitch_f2
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 227
    .local v0, "task":Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    new-instance v4, Ljava/lang/Thread;

    const-string/jumbo v5, "transport-backup"

    invoke-direct {v4, v0, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 228
    goto/16 :goto_4b9

    .line 391
    .end local v0    # "task":Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    :pswitch_103
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 392
    .local v0, "intent":Landroid/content/Intent;
    iget-object v4, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/BackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 393
    goto/16 :goto_4b9

    .line 294
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_114
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/params/ClearRetryParams;

    .line 295
    .local v0, "params":Lcom/android/server/backup/params/ClearRetryParams;
    iget-object v4, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v0, Lcom/android/server/backup/params/ClearRetryParams;->transportName:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/backup/params/ClearRetryParams;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/backup/BackupManagerService;->clearBackupData(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    goto/16 :goto_4b9

    .line 271
    .end local v0    # "params":Lcom/android/server/backup/params/ClearRetryParams;
    :pswitch_123
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/params/AdbRestoreParams;

    .line 272
    .local v0, "params":Lcom/android/server/backup/params/AdbRestoreParams;
    new-instance v11, Lcom/android/server/backup/restore/PerformAdbRestoreTask;

    iget-object v5, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v6, v0, Lcom/android/server/backup/params/AdbRestoreParams;->fd:Landroid/os/ParcelFileDescriptor;

    iget-object v7, v0, Lcom/android/server/backup/params/AdbRestoreParams;->curPassword:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/server/backup/params/AdbRestoreParams;->encryptPassword:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/server/backup/params/AdbRestoreParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    iget-object v10, v0, Lcom/android/server/backup/params/AdbRestoreParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 276
    .local v4, "task":Lcom/android/server/backup/restore/PerformAdbRestoreTask;
    new-instance v5, Ljava/lang/Thread;

    const-string v6, "adb-restore"

    invoke-direct {v5, v4, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 277
    goto/16 :goto_4b9

    .line 363
    .end local v0    # "params":Lcom/android/server/backup/params/AdbRestoreParams;
    .end local v4    # "task":Lcom/android/server/backup/restore/PerformAdbRestoreTask;
    :pswitch_145
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getAdbBackupRestoreConfirmations()Landroid/util/SparseArray;

    move-result-object v4

    monitor-enter v4

    .line 364
    :try_start_14c
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getAdbBackupRestoreConfirmations()Landroid/util/SparseArray;

    move-result-object v0

    iget v5, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/params/AdbParams;

    move-object v5, v0

    .line 366
    .local v5, "params":Lcom/android/server/backup/params/AdbParams;
    if-eqz v5, :cond_180

    .line 367
    const-string v0, "BackupManagerService"

    const-string v6, "Full backup/restore timed out waiting for user confirmation"

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/backup/BackupManagerService;->signalAdbBackupRestoreCompletion(Lcom/android/server/backup/params/AdbParams;)V

    .line 373
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getAdbBackupRestoreConfirmations()Landroid/util/SparseArray;

    move-result-object v0

    iget v6, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->delete(I)V

    .line 376
    iget-object v0, v5, Lcom/android/server/backup/params/AdbParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;
    :try_end_176
    .catchall {:try_start_14c .. :try_end_176} :catchall_19b

    if-eqz v0, :cond_198

    .line 378
    :try_start_178
    iget-object v0, v5, Lcom/android/server/backup/params/AdbParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v0}, Landroid/app/backup/IFullBackupRestoreObserver;->onTimeout()V
    :try_end_17d
    .catch Landroid/os/RemoteException; {:try_start_178 .. :try_end_17d} :catch_17e
    .catchall {:try_start_178 .. :try_end_17d} :catchall_19b

    goto :goto_17f

    .line 379
    :catch_17e
    move-exception v0

    .line 381
    .end local v5    # "params":Lcom/android/server/backup/params/AdbParams;
    :goto_17f
    goto :goto_198

    .line 384
    .restart local v5    # "params":Lcom/android/server/backup/params/AdbParams;
    :cond_180
    :try_start_180
    const-string v0, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "couldn\'t find params for token "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    .end local v5    # "params":Lcom/android/server/backup/params/AdbParams;
    :cond_198
    :goto_198
    monitor-exit v4

    .line 387
    goto/16 :goto_4b9

    .line 386
    :catchall_19b
    move-exception v0

    monitor-exit v4
    :try_end_19d
    .catchall {:try_start_180 .. :try_end_19d} :catchall_19b

    throw v0

    .line 346
    :pswitch_19e
    iget-object v4, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    monitor-enter v4

    .line 347
    :try_start_1a1
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getActiveRestoreSession()Lcom/android/server/backup/restore/ActiveRestoreSession;

    move-result-object v0

    if-eqz v0, :cond_1d2

    .line 352
    const-string v0, "BackupManagerService"

    const-string v5, "Restore session timed out; aborting"

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getActiveRestoreSession()Lcom/android/server/backup/restore/ActiveRestoreSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/restore/ActiveRestoreSession;->markTimedOut()V

    .line 354
    new-instance v0, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;

    iget-object v5, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/BackupManagerService;->getActiveRestoreSession()Lcom/android/server/backup/restore/ActiveRestoreSession;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v7, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 356
    invoke-virtual {v7}, Lcom/android/server/backup/BackupManagerService;->getActiveRestoreSession()Lcom/android/server/backup/restore/ActiveRestoreSession;

    move-result-object v7

    invoke-direct {v0, v5, v6, v7}, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;-><init>(Lcom/android/server/backup/restore/ActiveRestoreSession;Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/restore/ActiveRestoreSession;)V

    .line 354
    invoke-virtual {v1, v0}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z

    .line 358
    :cond_1d2
    monitor-exit v4

    .line 359
    goto/16 :goto_4b9

    .line 358
    :catchall_1d5
    move-exception v0

    monitor-exit v4
    :try_end_1d7
    .catchall {:try_start_1a1 .. :try_end_1d7} :catchall_1d5

    throw v0

    .line 301
    :pswitch_1d8
    const/4 v4, 0x0

    .line 302
    .local v4, "sets":[Landroid/app/backup/RestoreSet;
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/android/server/backup/params/RestoreGetSetsParams;

    .line 303
    .local v5, "params":Lcom/android/server/backup/params/RestoreGetSetsParams;
    const-string v0, "BH/MSG_RUN_GET_RESTORE_SETS"

    move-object v7, v0

    .line 305
    .local v7, "callerLogString":Ljava/lang/String;
    const/16 v8, 0x8

    :try_start_1e3
    iget-object v0, v5, Lcom/android/server/backup/params/RestoreGetSetsParams;->transportClient:Lcom/android/server/backup/transport/TransportClient;

    .line 306
    invoke-virtual {v0, v7}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    move-object v9, v0

    .line 307
    .local v9, "transport":Lcom/android/internal/backup/IBackupTransport;
    invoke-interface {v9}, Lcom/android/internal/backup/IBackupTransport;->getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;

    move-result-object v0

    move-object v4, v0

    .line 309
    iget-object v10, v5, Lcom/android/server/backup/params/RestoreGetSetsParams;->session:Lcom/android/server/backup/restore/ActiveRestoreSession;

    monitor-enter v10
    :try_end_1f2
    .catch Ljava/lang/Exception; {:try_start_1e3 .. :try_end_1f2} :catch_249
    .catchall {:try_start_1e3 .. :try_end_1f2} :catchall_245

    .line 310
    :try_start_1f2
    iget-object v0, v5, Lcom/android/server/backup/params/RestoreGetSetsParams;->session:Lcom/android/server/backup/restore/ActiveRestoreSession;

    invoke-virtual {v0, v4}, Lcom/android/server/backup/restore/ActiveRestoreSession;->setRestoreSets([Landroid/app/backup/RestoreSet;)V

    .line 311
    monitor-exit v10
    :try_end_1f8
    .catchall {:try_start_1f2 .. :try_end_1f8} :catchall_242

    .line 312
    if-nez v4, :cond_201

    .line 313
    const/16 v0, 0xb0f

    :try_start_1fc
    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_201
    .catch Ljava/lang/Exception; {:try_start_1fc .. :try_end_201} :catch_249
    .catchall {:try_start_1fc .. :try_end_201} :catchall_245

    .line 318
    .end local v9    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :cond_201
    iget-object v0, v5, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    if-eqz v0, :cond_230

    .line 320
    :try_start_205
    iget-object v0, v5, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    invoke-interface {v0, v4}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_20a
    .catch Landroid/os/RemoteException; {:try_start_205 .. :try_end_20a} :catch_227
    .catch Ljava/lang/Exception; {:try_start_205 .. :try_end_20a} :catch_20b

    goto :goto_22f

    .line 323
    :catch_20b
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    :goto_213
    const-string v10, "Restore observer threw: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_230

    .line 321
    :catch_227
    move-exception v0

    .line 322
    .local v0, "re":Landroid/os/RemoteException;
    const-string v6, "BackupManagerService"

    const-string v9, "Unable to report listing to observer"

    invoke-static {v6, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_22f
    nop

    .line 329
    :cond_230
    :goto_230
    invoke-virtual {v1, v8}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V

    .line 330
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 331
    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreAgentTimeoutMillis()J

    move-result-wide v9

    .line 330
    invoke-virtual {v1, v8, v9, v10}, Lcom/android/server/backup/internal/BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 333
    iget-object v0, v5, Lcom/android/server/backup/params/RestoreGetSetsParams;->listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    invoke-interface {v0, v7}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 334
    goto :goto_280

    .line 311
    .restart local v9    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catchall_242
    move-exception v0

    :try_start_243
    monitor-exit v10
    :try_end_244
    .catchall {:try_start_243 .. :try_end_244} :catchall_242

    :try_start_244
    throw v0
    :try_end_245
    .catch Ljava/lang/Exception; {:try_start_244 .. :try_end_245} :catch_249
    .catchall {:try_start_244 .. :try_end_245} :catchall_245

    .line 318
    .end local v9    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catchall_245
    move-exception v0

    move-object v6, v4

    move-object v4, v0

    goto :goto_282

    .line 315
    :catch_249
    move-exception v0

    .line 316
    .local v0, "e":Ljava/lang/Exception;
    :try_start_24a
    const-string v6, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error from transport getting set list: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_264
    .catchall {:try_start_24a .. :try_end_264} :catchall_245

    .line 318
    .end local v0    # "e":Ljava/lang/Exception;
    iget-object v0, v5, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    if-eqz v0, :cond_230

    .line 320
    :try_start_268
    iget-object v0, v5, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    invoke-interface {v0, v4}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_26d
    .catch Landroid/os/RemoteException; {:try_start_268 .. :try_end_26d} :catch_277
    .catch Ljava/lang/Exception; {:try_start_268 .. :try_end_26d} :catch_26e

    goto :goto_22f

    .line 323
    :catch_26e
    move-exception v0

    .line 324
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v6, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_213

    .line 321
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_277
    move-exception v0

    .line 322
    .local v0, "re":Landroid/os/RemoteException;
    const-string v6, "BackupManagerService"

    const-string v9, "Unable to report listing to observer"

    invoke-static {v6, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    .end local v0    # "re":Landroid/os/RemoteException;
    goto :goto_22f

    .line 335
    :goto_280
    goto/16 :goto_4b9

    .line 318
    .end local v4    # "sets":[Landroid/app/backup/RestoreSet;
    .local v6, "sets":[Landroid/app/backup/RestoreSet;
    :goto_282
    iget-object v0, v5, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    if-eqz v0, :cond_2b1

    .line 320
    :try_start_286
    iget-object v0, v5, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    invoke-interface {v0, v6}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_28b
    .catch Landroid/os/RemoteException; {:try_start_286 .. :try_end_28b} :catch_2a8
    .catch Ljava/lang/Exception; {:try_start_286 .. :try_end_28b} :catch_28c

    goto :goto_2b0

    .line 323
    :catch_28c
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Restore observer threw: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "BackupManagerService"

    invoke-static {v10, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_2b1

    .line 321
    :catch_2a8
    move-exception v0

    .line 322
    .local v0, "re":Landroid/os/RemoteException;
    const-string v9, "BackupManagerService"

    const-string v10, "Unable to report listing to observer"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_2b0
    nop

    .line 329
    :cond_2b1
    :goto_2b1
    invoke-virtual {v1, v8}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V

    .line 330
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 331
    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreAgentTimeoutMillis()J

    move-result-wide v9

    .line 330
    invoke-virtual {v1, v8, v9, v10}, Lcom/android/server/backup/internal/BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 333
    iget-object v0, v5, Lcom/android/server/backup/params/RestoreGetSetsParams;->listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    invoke-interface {v0, v7}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    throw v4

    .line 281
    .end local v5    # "params":Lcom/android/server/backup/params/RestoreGetSetsParams;
    .end local v6    # "sets":[Landroid/app/backup/RestoreSet;
    .end local v7    # "callerLogString":Ljava/lang/String;
    :pswitch_2c3
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/params/ClearParams;

    .line 282
    .local v0, "params":Lcom/android/server/backup/params/ClearParams;
    new-instance v4, Lcom/android/server/backup/internal/PerformClearTask;

    iget-object v5, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v6, v0, Lcom/android/server/backup/params/ClearParams;->transportClient:Lcom/android/server/backup/transport/TransportClient;

    iget-object v7, v0, Lcom/android/server/backup/params/ClearParams;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v8, v0, Lcom/android/server/backup/params/ClearParams;->listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/server/backup/internal/PerformClearTask;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/transport/TransportClient;Landroid/content/pm/PackageInfo;Lcom/android/server/backup/internal/OnTaskFinishedListener;)V

    .line 288
    .local v4, "task":Ljava/lang/Runnable;
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 289
    goto/16 :goto_4b9

    .line 232
    .end local v0    # "params":Lcom/android/server/backup/params/ClearParams;
    .end local v4    # "task":Ljava/lang/Runnable;
    :pswitch_2d9
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lcom/android/server/backup/params/RestoreParams;

    .line 233
    .local v6, "params":Lcom/android/server/backup/params/RestoreParams;
    const-string v0, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MSG_RUN_RESTORE observer="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Lcom/android/server/backup/params/RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    new-instance v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v9, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v10, v6, Lcom/android/server/backup/params/RestoreParams;->transportClient:Lcom/android/server/backup/transport/TransportClient;

    iget-object v11, v6, Lcom/android/server/backup/params/RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    iget-object v12, v6, Lcom/android/server/backup/params/RestoreParams;->monitor:Landroid/app/backup/IBackupManagerMonitor;

    iget-wide v13, v6, Lcom/android/server/backup/params/RestoreParams;->token:J

    iget-object v15, v6, Lcom/android/server/backup/params/RestoreParams;->packageInfo:Landroid/content/pm/PackageInfo;

    iget v7, v6, Lcom/android/server/backup/params/RestoreParams;->pmToken:I

    iget-boolean v8, v6, Lcom/android/server/backup/params/RestoreParams;->isSystemRestore:Z

    iget-object v5, v6, Lcom/android/server/backup/params/RestoreParams;->filterSet:[Ljava/lang/String;

    iget-object v4, v6, Lcom/android/server/backup/params/RestoreParams;->listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    move/from16 v17, v8

    move-object v8, v0

    move/from16 v16, v7

    move-object/from16 v18, v5

    move-object/from16 v19, v4

    invoke-direct/range {v8 .. v19}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/transport/TransportClient;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;IZ[Ljava/lang/String;Lcom/android/server/backup/internal/OnTaskFinishedListener;)V

    move-object v4, v0

    .line 248
    .local v4, "task":Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getPendingRestores()Ljava/util/Queue;

    move-result-object v5

    monitor-enter v5

    .line 249
    :try_start_320
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->isRestoreInProgress()Z

    move-result v0

    if-eqz v0, :cond_339

    .line 251
    const-string v0, "BackupManagerService"

    const-string v7, "Restore in progress, queueing."

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getPendingRestores()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_34f

    .line 258
    :cond_339
    const-string v0, "BackupManagerService"

    const-string v7, "Starting restore."

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/android/server/backup/BackupManagerService;->setRestoreInProgress(Z)V

    .line 261
    const/16 v0, 0x14

    invoke-virtual {v1, v0, v4}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 262
    .local v0, "restoreMsg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 264
    .end local v0    # "restoreMsg":Landroid/os/Message;
    :goto_34f
    monitor-exit v5

    .line 265
    goto/16 :goto_4b9

    .line 264
    :catchall_352
    move-exception v0

    monitor-exit v5
    :try_end_354
    .catchall {:try_start_320 .. :try_end_354} :catchall_352

    throw v0

    .line 214
    .end local v4    # "task":Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;
    .end local v6    # "params":Lcom/android/server/backup/params/RestoreParams;
    :pswitch_355
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/params/AdbBackupParams;

    .line 215
    .local v0, "params":Lcom/android/server/backup/params/AdbBackupParams;
    new-instance v20, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;

    iget-object v5, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v6, v0, Lcom/android/server/backup/params/AdbBackupParams;->fd:Landroid/os/ParcelFileDescriptor;

    iget-object v7, v0, Lcom/android/server/backup/params/AdbBackupParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    iget-boolean v8, v0, Lcom/android/server/backup/params/AdbBackupParams;->includeApks:Z

    iget-boolean v9, v0, Lcom/android/server/backup/params/AdbBackupParams;->includeObbs:Z

    iget-boolean v10, v0, Lcom/android/server/backup/params/AdbBackupParams;->includeShared:Z

    iget-boolean v11, v0, Lcom/android/server/backup/params/AdbBackupParams;->doWidgets:Z

    iget-object v12, v0, Lcom/android/server/backup/params/AdbBackupParams;->curPassword:Ljava/lang/String;

    iget-object v13, v0, Lcom/android/server/backup/params/AdbBackupParams;->encryptPassword:Ljava/lang/String;

    iget-boolean v14, v0, Lcom/android/server/backup/params/AdbBackupParams;->allApps:Z

    iget-boolean v15, v0, Lcom/android/server/backup/params/AdbBackupParams;->includeSystem:Z

    iget-boolean v4, v0, Lcom/android/server/backup/params/AdbBackupParams;->doCompress:Z

    iget-boolean v2, v0, Lcom/android/server/backup/params/AdbBackupParams;->includeKeyValue:Z

    move-object/from16 v22, v3

    iget-object v3, v0, Lcom/android/server/backup/params/AdbBackupParams;->packages:[Ljava/lang/String;

    .end local v3    # "transportManager":Lcom/android/server/backup/TransportManager;
    .local v22, "transportManager":Lcom/android/server/backup/TransportManager;
    iget-object v1, v0, Lcom/android/server/backup/params/AdbBackupParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move/from16 v16, v4

    move-object/from16 v4, v20

    move/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v1

    invoke-direct/range {v4 .. v19}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/IFullBackupRestoreObserver;ZZZZLjava/lang/String;Ljava/lang/String;ZZZZ[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    move-object/from16 v1, v20

    .line 221
    .local v1, "task":Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;
    new-instance v2, Ljava/lang/Thread;

    const-string v3, "adb-backup"

    invoke-direct {v2, v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 222
    nop

    .line 427
    move-object/from16 v3, v22

    move-object/from16 v1, p0

    goto/16 :goto_4b9

    .line 100
    .end local v0    # "params":Lcom/android/server/backup/params/AdbBackupParams;
    .end local v1    # "task":Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;
    .end local v22    # "transportManager":Lcom/android/server/backup/TransportManager;
    .restart local v3    # "transportManager":Lcom/android/server/backup/TransportManager;
    :pswitch_39b
    move-object/from16 v22, v3

    .line 100
    .end local v3    # "transportManager":Lcom/android/server/backup/TransportManager;
    .restart local v22    # "transportManager":Lcom/android/server/backup/TransportManager;
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/backup/BackupManagerService;->setLastBackupPass(J)V

    .line 102
    const-string v2, "BH/MSG_RUN_BACKUP"

    .line 103
    .local v2, "callerLogString":Ljava/lang/String;
    nop

    .line 104
    move-object/from16 v3, v22

    invoke-virtual {v3, v2}, Lcom/android/server/backup/TransportManager;->getCurrentTransportClient(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v4

    .line 106
    .end local v22    # "transportManager":Lcom/android/server/backup/TransportManager;
    .restart local v3    # "transportManager":Lcom/android/server/backup/TransportManager;
    .local v4, "transportClient":Lcom/android/server/backup/transport/TransportClient;
    const/4 v0, 0x0

    if-eqz v4, :cond_3b9

    .line 107
    invoke-virtual {v4, v2}, Lcom/android/server/backup/transport/TransportClient;->connect(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v5

    goto :goto_3ba

    .line 108
    :cond_3b9
    move-object v5, v0

    .line 109
    .local v5, "transport":Lcom/android/internal/backup/IBackupTransport;
    :goto_3ba
    if-nez v5, :cond_3e4

    .line 110
    if-eqz v4, :cond_3c2

    .line 111
    nop

    .line 112
    invoke-virtual {v3, v4, v2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    .line 114
    :cond_3c2
    const-string v0, "BackupManagerService"

    const-string v7, "Backup requested but no transport available"

    invoke-static {v0, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 116
    :try_start_3d0
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, v6}, Lcom/android/server/backup/BackupManagerService;->setBackupRunning(Z)V

    .line 117
    monitor-exit v7
    :try_end_3d6
    .catchall {:try_start_3d0 .. :try_end_3d6} :catchall_3e1

    .line 118
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 119
    goto/16 :goto_4b9

    .line 117
    :catchall_3e1
    move-exception v0

    :try_start_3e2
    monitor-exit v7
    :try_end_3e3
    .catchall {:try_start_3e2 .. :try_end_3e3} :catchall_3e1

    throw v0

    .line 123
    :cond_3e4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v7

    .line 124
    .local v14, "queue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/internal/BackupRequest;>;"
    iget-object v7, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v7}, Lcom/android/server/backup/BackupManagerService;->getJournal()Lcom/android/server/backup/DataChangedJournal;

    move-result-object v19

    .line 125
    .local v19, "oldJournal":Lcom/android/server/backup/DataChangedJournal;
    iget-object v7, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v7}, Lcom/android/server/backup/BackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 129
    :try_start_3f7
    iget-object v8, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v8}, Lcom/android/server/backup/BackupManagerService;->getPendingBackups()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8
    :try_end_401
    .catchall {:try_start_3f7 .. :try_end_401} :catchall_4b2

    if-lez v8, :cond_43c

    .line 130
    :try_start_403
    iget-object v8, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v8}, Lcom/android/server/backup/BackupManagerService;->getPendingBackups()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_411
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_421

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/backup/internal/BackupRequest;

    .line 131
    .local v9, "b":Lcom/android/server/backup/internal/BackupRequest;
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    .end local v9    # "b":Lcom/android/server/backup/internal/BackupRequest;
    goto :goto_411

    .line 134
    :cond_421
    const-string v8, "BackupManagerService"

    const-string v9, "clearing pending backups"

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v8, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v8}, Lcom/android/server/backup/BackupManagerService;->getPendingBackups()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 139
    iget-object v8, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v8, v0}, Lcom/android/server/backup/BackupManagerService;->setJournal(Lcom/android/server/backup/DataChangedJournal;)V
    :try_end_436
    .catchall {:try_start_403 .. :try_end_436} :catchall_437

    goto :goto_43c

    .line 142
    :catchall_437
    move-exception v0

    move-object/from16 v23, v14

    goto/16 :goto_4b5

    :cond_43c
    :goto_43c
    :try_start_43c
    monitor-exit v7
    :try_end_43d
    .catchall {:try_start_43c .. :try_end_43d} :catchall_4b2

    .line 149
    const/16 v21, 0x1

    .line 150
    .local v21, "staged":Z
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_488

    .line 153
    :try_start_445
    invoke-interface {v5}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v10

    .line 154
    .local v10, "dirName":Ljava/lang/String;
    new-instance v15, Lcom/android/server/backup/internal/-$$Lambda$BackupHandler$TJcRazGYTaUxjeiX6mPLlipfZUI;

    invoke-direct {v15, v3, v4}, Lcom/android/server/backup/internal/-$$Lambda$BackupHandler$TJcRazGYTaUxjeiX6mPLlipfZUI;-><init>(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportClient;)V

    .line 158
    .local v15, "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    new-instance v0, Lcom/android/server/backup/internal/PerformBackupTask;

    iget-object v8, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const/4 v13, 0x0

    const/16 v16, 0x0

    .line 160
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v17
    :try_end_459
    .catch Ljava/lang/Exception; {:try_start_445 .. :try_end_459} :catch_47b

    const/16 v18, 0x0

    const/16 v22, 0x0

    move-object v7, v0

    move-object v9, v4

    move-object v11, v14

    move-object/from16 v12, v19

    move-object/from16 v23, v14

    move-object/from16 v14, v16

    .end local v14    # "queue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/internal/BackupRequest;>;"
    .local v23, "queue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/internal/BackupRequest;>;"
    move-object/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v22

    :try_start_46c
    invoke-direct/range {v7 .. v18}, Lcom/android/server/backup/internal/PerformBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/server/backup/DataChangedJournal;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;Ljava/util/List;ZZ)V

    .line 162
    .local v0, "pbt":Lcom/android/server/backup/internal/PerformBackupTask;
    const/16 v7, 0x14

    invoke-virtual {v1, v7, v0}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 163
    .local v7, "pbtMessage":Landroid/os/Message;
    invoke-virtual {v1, v7}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_478
    .catch Ljava/lang/Exception; {:try_start_46c .. :try_end_478} :catch_479

    .line 163
    .end local v0    # "pbt":Lcom/android/server/backup/internal/PerformBackupTask;
    .end local v7    # "pbtMessage":Landroid/os/Message;
    .end local v10    # "dirName":Ljava/lang/String;
    .end local v15    # "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    goto :goto_487

    .line 164
    :catch_479
    move-exception v0

    goto :goto_47e

    .line 164
    .end local v23    # "queue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/internal/BackupRequest;>;"
    .restart local v14    # "queue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/internal/BackupRequest;>;"
    :catch_47b
    move-exception v0

    move-object/from16 v23, v14

    .line 167
    .end local v14    # "queue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/internal/BackupRequest;>;"
    .local v0, "e":Ljava/lang/Exception;
    .restart local v23    # "queue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/internal/BackupRequest;>;"
    :goto_47e
    const-string v7, "BackupManagerService"

    const-string v8, "Transport became unavailable attempting backup or error initializing backup task"

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    const/16 v21, 0x0

    .line 170
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_487
    goto :goto_493

    .line 172
    .end local v23    # "queue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/internal/BackupRequest;>;"
    .restart local v14    # "queue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/internal/BackupRequest;>;"
    :cond_488
    move-object/from16 v23, v14

    .line 172
    .end local v14    # "queue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/internal/BackupRequest;>;"
    .restart local v23    # "queue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/internal/BackupRequest;>;"
    const-string v0, "BackupManagerService"

    const-string v7, "Backup requested but nothing pending"

    invoke-static {v0, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/16 v21, 0x0

    .line 176
    :goto_493
    if-nez v21, :cond_4b9

    .line 177
    invoke-virtual {v3, v4, v2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    .line 179
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 180
    :try_start_49f
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, v6}, Lcom/android/server/backup/BackupManagerService;->setBackupRunning(Z)V

    .line 181
    monitor-exit v7
    :try_end_4a5
    .catchall {:try_start_49f .. :try_end_4a5} :catchall_4af

    .line 182
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_4b9

    .line 181
    :catchall_4af
    move-exception v0

    :try_start_4b0
    monitor-exit v7
    :try_end_4b1
    .catchall {:try_start_4b0 .. :try_end_4b1} :catchall_4af

    throw v0

    .line 142
    .end local v21    # "staged":Z
    .end local v23    # "queue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/internal/BackupRequest;>;"
    .restart local v14    # "queue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/internal/BackupRequest;>;"
    :catchall_4b2
    move-exception v0

    move-object/from16 v23, v14

    .line 142
    .end local v14    # "queue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/internal/BackupRequest;>;"
    .restart local v23    # "queue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/internal/BackupRequest;>;"
    :goto_4b5
    :try_start_4b5
    monitor-exit v7
    :try_end_4b6
    .catchall {:try_start_4b5 .. :try_end_4b6} :catchall_4b7

    throw v0

    :catchall_4b7
    move-exception v0

    goto :goto_4b5

    .line 427
    .end local v2    # "callerLogString":Ljava/lang/String;
    .end local v4    # "transportClient":Lcom/android/server/backup/transport/TransportClient;
    .end local v5    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v19    # "oldJournal":Lcom/android/server/backup/DataChangedJournal;
    .end local v23    # "queue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/internal/BackupRequest;>;"
    :cond_4b9
    :goto_4b9
    return-void

    nop

    nop

    :pswitch_data_4bc
    .packed-switch 0x1
        :pswitch_39b
        :pswitch_355
        :pswitch_2d9
        :pswitch_2c3
        :pswitch_13
        :pswitch_1d8
        :pswitch_13
        :pswitch_19e
        :pswitch_145
        :pswitch_123
        :pswitch_13
        :pswitch_114
        :pswitch_103
        :pswitch_f2
        :pswitch_99
        :pswitch_8e
        :pswitch_69
        :pswitch_69
        :pswitch_13
        :pswitch_45
        :pswitch_15
    .end packed-switch
.end method
